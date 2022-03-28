<?php

session_start();

if (!isset($_SESSION['logged_in'])) {
    $nav ='includes/nav.php';
}

elseif($_SESSION['logged_in'] == 'True') {
    header('Location: index');
}

else{
    $nav ='includes/navconnected.php';
    $idsess = $_SESSION['id'];
}
error_reporting(0);

require 'includes/header.php';
require $nav; ?>



<div class="container-fluid center-align sign">
    <div class="container">

        <div class="row">
            <div class="col s12">
                <ul class="tabs">
                    <li class="tab col s3"><a class="active" href="#test1">Connexion</a></li>
                    <li class="tab col s3"><a  href="#test2">Inscription</a></li>
                </ul>
            </div>

            <div class="container forms">
                <div class="row">

                    <div id="test2" class="col s12 left-align">
                        <div class="card">
                            <div class="row">

                                <form class="col s12" method="POST" enctype="multipart/form-data">
                                    <div class="row">

                                        <div class="input-field col s6">
                                            <i class="material-icons prefix">email</i>
                                            <input id="icon_prefix" type="text" name="email" class="validate" required>
                                            <label for="icon_prefix">Email</label>
                                        </div>

                                        <div class="input-field col s6">
                                            <select class="icons" name="country">
                                                <option value=""  disabled selected>Choisissez votrer pays</option>
                                                <option value="India">France</option>
                                                <option value="Morocco">England</option>
                                                <option value="Egypt">Japan</option>
                                                <option value="Algeria">Brazil</option>
                                            </select>
                                            <label>Country</label>
                                        </div>

                                        <div class="input-field col s6">
                                            <i class="material-icons prefix">account_circle</i>
                                            <input id="icon_prefix" type="text" name="firstname" class="validate" required>
                                            <label for="icon_prefix">Nom</label>
                                        </div>

                                        <div class="input-field col s6">
                                            <i class="material-icons prefix">perm_identity</i>
                                            <input id="icon_prefix" type="text" name="lastname" class="validate" required>
                                            <label for="icon_prefix">Prenom</label>
                                        </div>

                                        <div class="input-field col s6">
                                            <i class="material-icons prefix">lock</i>
                                            <input id="icon_prefix" type="password" name="password" class="validate value1" required>
                                            <label for="icon_prefix">Mot de passe</label>
                                        </div>

                                        <div class="input-field col s6">
                                            <i class="material-icons prefix">lock</i>
                                            <input id="icon_prefix" type="password" name="confirmation" class="validate value2" required>
                                            <label for="icon_prefix">Confirmation du mdp</label>
                                        </div>

                                        <div class="input-field col s6">
                                            <i class="material-icons prefix">business</i>
                                            <input id="icon_prefix" type="text" name="city" class="validate" required>
                                            <label for="icon_prefix">Ville</label>
                                        </div>

                                        <div class="input-field col s6 meh">
                                            <i class="material-icons prefix">location_on</i>
                                            <input id="icon_prefix" type="text" name="address" class="validate" required>
                                            <label for="icon_prefix">Adresse</label>
                                        </div>


                                        <?php require 'includes/signupconfirmation.php'; ?>
                                        <div class="center-align">
                                            <button type="submit" id="confirmed" name="signup" class="btn meh button-rounded waves-effect waves-light ">Creation</button>
                                        </div>

                                        <p>En vous inscrivant, vous reconnaissez que vous avez lu et accepté notre accord d'utilisation, 
                                            que vous avez au moins 18 ans, et que vous consentez à 
                                            notre avis de confidentialité et que vous recevez des communications marketing de notre part.</p>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div id="test1" class="col s12 left-align">

                        <div class="card">
                            <div class="row">
                                <form class="col s12" method="POST">

                                    <div class="input-field col s12">
                                        <i class="material-icons prefix">email</i>
                                        <input id="icon_prefix" type="text" name="emaillog" class="validate">
                                        <label for="icon_prefix">Email</label>
                                    </div>
                                    <div class="input-field col s12 meh">
                                        <i class="material-icons prefix">lock</i>
                                        <input id="icon_prefix" type="password" name="passworddb" class="validate">
                                        <label for="icon_prefix">Mot de passe</label>
                                    </div>

                                    <?php require 'includes/loginconfirmation.php';?>
                                    <div class="center-align">
                                        <button type="submit" name="login" class="btn button-rounded waves-effect waves-light ">Connexion</button>
                                    </div>

                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<?php require 'includes/footer.php'; ?>
