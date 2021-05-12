class FormulaireCommande{
    constructor(el) {
        this._el = el;
        this._elSubmit = this._el.querySelector('[data-js-submit]');
        this._elForm = this._el.querySelector('[data-js-livraisonform]');
        this._elExpedition= this._el.querySelectorAll('[data-js-param="expedition"]');
        this._elNomUtilisateur = this._el.dataset.jsNomutilisateur;
        this._elCarteCredit = this._el.querySelector('[data-js-carte]');
        this._elMPaiment= this._el.querySelector('[data-js-paiment]');
        

        this._elProce = this._el.querySelector('[data-js-btnProceder]');

        this.el_FormCarteCredit = this._el.querySelector('[data-js-paimentform]');
        this.el_Btncommander3 = this._el.querySelector('[data-js-btncommander3]');
        

        console.log(this._elCarteCredit);
  
        // récupère élément username

        this.init();
        
    }
    init = (e) => {
        /* au change le btn recherche s'active */
        // si le formulaire est valide, appelle la fonction showThanks
        // appel le script de validation front-end
        
        /* if (validation.isValid){ */

        this._elSubmit.addEventListener('click', (e) => {
            e.preventDefault();
            this.afficherRecapCommande();
           
            
        });

        

    }
    afficherRecapCommande =() =>{
            
        let validation = new FormValidator(this._elForm);
        console.log(validation.isValid);
        if (validation.isValid){
            

            this._elForm.querySelector('[data-js-submit]').style.display ="none";
            let html = "<div data-js-recap class=''><div>"
            this._elForm.insertAdjacentHTML("afterend", html);

            /* populer information utilisateur */
            let paramUtilisateur = `nomUtilisateur=${this._elNomUtilisateur}`;
            let pathUtilisateur =`Utilisateur_AJAX&action=verifierEnregistrement`;
            console.log(paramUtilisateur);
            this.callAJAXA(paramUtilisateur, pathUtilisateur);
            
            /* populer information produits*/
            let commande = JSON.parse(sessionStorage.commande);
            for (let j = 0; j < commande.length; j++) {
                let idVoiture = commande[j].idVoiture;
                let param = `idVoiture=${idVoiture}`;
                let path =`Voiture_AJAX&action=voitureParId`;
                this.callAJAXA(param, path);                     
            }
            /* revenir etape precedente */
            


        /* this._elProce.addEventListener('click', (e) => {
            e.preventDefault();

            this._elProce.classList.add('hidden');
            let recap = this._el.querySelector('[data-js-recap]');
            recap.classList.add('hidden');
            
            let payement = document.querySelector('[data-js-payement]');
                            
            payement.classList.remove('hidden');

            let eltotaltvs = "" + document.querySelector('[data-js-prix]').dataset.jsPrix;
            let elQuantite = document.querySelector('[data-js-quantite]');
            elQuantite.innerHTML = Intl.NumberFormat('fr-CA').format(eltotaltvs) + "$";
        }); */

        }else{
            console.log("Non valide");
        }

    }

    callAJAXA = (param, path) => {

        // Déclaration de l'objet XMLHttpRequest
        let xhr;
        xhr = new XMLHttpRequest();

        // Initialisation de la requète
        if (xhr) {	
            
            // Ouverture de la requète : fichier recherché
            xhr.open('POST', 'index.php?'+path);
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            
            // Écoute l'objet XMLHttpRequest instancié et défini le comportement en callback
            xhr.addEventListener('readystatechange', () => {

                if (xhr.readyState === 4) {							
                    if (xhr.status === 200) {
                        let reponse = JSON.parse(xhr.responseText);
                        if(reponse.modele && reponse.marque && reponse.couleurfr && reponse.km && reponse.prixVente){
                            let html =`<div data-js-voiturcommande=${reponse.idVoiture}>
                                            <div data-js-description>
                                                Modele voiture : ${reponse.modele} de la marque ${reponse.marque} de couleur ${reponse.couleurfr} avec ${reponse.km} au compteur
                                            </div>
                                            <div data-js-prix="${reponse.prixVente}">
                                                ${reponse.prixVente} $
                                            </div>
                                        </div>`;

                            let recap = this._el.querySelector('[data-js-utilisateur]');
                            recap.insertAdjacentHTML("beforeend", html);
                              //Afficher le boutton payment par paypal
/*                             let payement = document.querySelector('[data-js-payement]');
                            
                             payement.classList.remove('hidden'); */
                             /* this._elProce.classList.remove('hidden'); */


                            
                            /* calcul prix facture */
                            this.calculTotal(reponse.prixVente);
                            this. gesionbtncommander2();
                            /* gestion du btn pour le paiement */
                            this.gesionbtncommander3(); 
                            /* gestion btn retour */
                            this.gestionBtnRetour();

                        }
                        
                        if(reponse[0].nomFamille && reponse[0].telephone){
                            let shipping = 0; 
                            for (let j = 0; j < this._elExpedition.length; j++) {
                                const livraison = this._elExpedition[j];
                                if(livraison.checked && livraison.value == 1){
                                    shipping = 75;
                                }
                            }
                            let htmlUtilisateur =`<h2>Veuillez vérifier vos les informations ci dessous</h2>
                                                <div data-js-utilisateur="${reponse[0].idUtilisateur}">
                                                    <p>Nom :${reponse[0].nomFamille}</p>
                                                    <p>Prenom :${reponse[0].prenom}</p>
                                                    <p>Adresse :${reponse[0].noCivique} ${reponse[0].rue} ${reponse[0].ville} ${reponse[0].province} ${reponse[0].codePostal}</p>
                                                    <p>telephone :${reponse[0].telephone}</p>
                                                </div>
                                                <div data-js-taxe>
                                                    <div class="prixTaxe" data-js-tvh='${reponse[0].tvh}'><div>TVH: ${reponse[0].tvh} % </div><div data-js-totaltvh></div></div>
                                                    <div class="prixTaxe" data-js-tvp='${reponse[0].tvp}'><div>TVP: ${reponse[0].tvp} % </div><div data-js-totaltvp></div></div>
                                                    <div class="prixTaxe" data-js-tvs='${reponse[0].tvs}'><div>TVS: ${reponse[0].tvs} % </div><div data-js-totaltvs></div></div>
                                                    <div class="prixTaxe" data-js-shiping='${shipping}' ><div>Livraison: </div><div data-js-totalshiping></div></div>
                                                    <div class="prixTaxe" data-js-total><div>TOTAL :</div><div data-js-totalfacture></div></div>
                                                </div>
                                                <button data-js-payer id="btn2"><a href="#btn3">Commander 2/3</a></button>
                                                <a data-js-retour>Retour</a>`;

                            let recap = this._el.querySelector('[data-js-recap]');
                            recap.insertAdjacentHTML("afterbegin", htmlUtilisateur);

          
                        }
                        
                        
                    } else if (xhr.status === 404) {
                        console.log('Le fichier appelé dans la méthode open() n’existe pas.');
                    }
                }
            });
            // Envoi de la requète

            xhr.send(param);
        }
    }
    
    calculTotal = (prixVente) => {
        
        

        let recap = this._el.querySelector('[data-js-recap]');
        let elTvh = recap.querySelector('[data-js-tvh]').dataset.jsTvh;
        let elTvp = recap.querySelector('[data-js-tvp]').dataset.jsTvp;
        let elTvs = recap.querySelector('[data-js-tvs]').dataset.jsTvs;
        
        let eltotaltvh = recap.querySelector('[data-js-totaltvh]');
        let eltotaltvp = recap.querySelector('[data-js-totaltvp]');
        let eltotaltvs = recap.querySelector('[data-js-totaltvs]');
        let eltotalShiping = recap.querySelector('[data-js-totalShiping]');
        let elTotal = recap.querySelector('[data-js-totalfacture]');

        let totalFacture = 0;
        let totalTvh = 0;
        let totalTvp = 0;
        let totalTvs = 0;
        let totalShiping = Number(recap.querySelector('[data-js-shiping]').dataset.jsShiping);
        console.log(totalShiping);
        console.log(eltotaltvs);
        console.log(elTotal);


        totalTvh = (Number(prixVente)*Number(elTvh))/100;
        totalTvp = (Number(prixVente)*Number(elTvp))/100;
        totalTvs = (Number(prixVente)*Number(elTvs))/100;
        totalFacture = (Number(prixVente) +totalTvh+totalTvp+totalTvs+totalShiping);
        
        eltotaltvh.innerHTML = (Number(eltotaltvh.innerHTML) + totalTvh).toFixed(2);
        eltotaltvp.innerHTML = (Number(eltotaltvp.innerHTML) + totalTvp).toFixed(2);
        eltotaltvs.innerHTML = (Number(eltotaltvs.innerHTML) + totalTvs).toFixed(2);
        elTotal.innerHTML = (Number(elTotal.innerHTML) + totalFacture).toFixed(2);
        eltotalShiping.innerHTML = (Number(eltotalShiping.innerHTML) + totalShiping).toFixed(2);

    }
 
    gestionChoixCarte = () =>{
        if(this._elCarteCredit.checked){
            if(!this._el.querySelector('[data-js-formcredit]')){
                let html =`<fieldset data-js-formcredit>
                        <legend>Informations CB</legend>
                        <div class="input-wrapper" data-js-input-wrapper>
                            <fieldset>
                            <legend>Type de carte bancaire</legend>
                            <div class="input-wrapper" data-js-input-wrapper data-js-radio="required" data-js-param="info" data-js-input="Type de carte bancaire">
                                <input id=visa name=type_de_carte data-js-param="carte" type=radio>
                                <label for=visa>VISA</label>
                                
                                <input id=amex name=type_de_carte data-js-param="carte" type=radio>
                                <label for=amex>AmEx</label>
                                
                                <input id=mastercard name=type_de_carte data-js-param="carte" type=radio>
                                <label for=mastercard>Mastercard</label><small class="error-message" data-js-error-msg></small>                       
                            </div>
                            </fieldset>
                        </div>
                        
                        <div class="input-wrapper" data-js-input-wrapper>
                            <label for=numero_de_carte>N° de carte</label>
                            <input id=numero_de_carte name=numero_de_carte type=number required data-js-param="numerocarte"><small class="error-message" data-js-error-msg></small>
                        </div>
                        <div class="input-wrapper" data-js-input-wrapper>
                            <label for=securite>Code sécurité</label>
                            <input id=securite name=securite type=number required data-js-param="code"><small class="error-message" data-js-error-msg></small>
                        </div>
                        
                    </fieldset>`;
                this._elMPaiment.insertAdjacentHTML('afterend', html);
            }
        }else{
            console.log("pas check");
            if(this._el.querySelector('[data-js-formcredit]')){
                this._el.querySelector('[data-js-formcredit]').remove();
            }
            
            
        }
    }
    gesionbtncommander2 = () =>{
        let btnPayer = this._el.querySelector('[data-js-payer]');
        let recap = this._el.querySelector('[data-js-recap]');

        
        btnPayer.addEventListener('click', () => {
            this.el_FormCarteCredit.style.display = "block";
            btnPayer.style.display = "none";
        });
        
    }
    gesionbtncommander3 = () =>{
        /* input radio mode de paiement */
        let optionDePaiement = this.el_FormCarteCredit.querySelectorAll('input');
        console.log(optionDePaiement);
        /* au choix de larte de credit apartion d un sous formulaire */
        this._elMPaiment.addEventListener('change', (e) => {            
            this.gestionChoixCarte();
            
        });
        
        
        
        /* let btncommander3 = this._el.querySelector('[data-js-btncommander3]');
        console.log(btncommander3); */
        console.log(this.el_Btncommander3);
        this.el_Btncommander3.addEventListener('click', (e) => {
            e.preventDefault();
            let validation = new FormValidator( this.el_FormCarteCredit);
             if (validation.isValid){
                /* let totalFacture = totalCommande; */
                let idUtilisateur = this._el.querySelector('[data-js-utilisateur]').dataset.jsUtilisateur;
                let idVoiture = this._el.querySelector('[data-js-voiturcommande').dataset.jsVoiturecommande;
                let totalCommande = Number(this._el.querySelector('[data-js-totalfacture]').innerHTML);
                console.log(this._el.querySelector('[data-js-totalfacture]'));
                let idModedePiement = "";
                let idExpedition = "";
                for (let j = 0; j < this._elExpedition.length; j++) {
                    const livraison = this._elExpedition[j];
                    if(livraison.checked){
                        idExpedition = livraison.value;
                    }
                }
                for (let k = 0; k < optionDePaiement.length; k++) {
                    const option = optionDePaiement[k];
                    
                    if(option.checked){
                        console.log(option.value);
                        idModedePiement = option.value;
                    }
                }

                if(idModedePiement !== "5"){
                    
                    console.log("id utilisateur = ",idUtilisateur, "id mode paiment = ",idModedePiement,"id expedition = ", idExpedition, "total commande = ",totalCommande);
                }else{
                   /*  Gannina */
                   this.el_Btncommander3.style.display ="none";
                   /*  */





                   
                }
                
                
            }
            
        });
    }
    gestionBtnRetour =() =>{
        let el_Btnretour = this._el.querySelector('[data-js-retour]');
        console.log(el_Btnretour);
        el_Btnretour.addEventListener('click', (e) => {
            
            window.location.reload("index.php?Magasin&action=Confirmation");
            
        });
        
    }
      
}