<%@ Page Title="Individual Proposer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Individual.aspx.cs" Inherits="Damal_Insurance.Medical_Insurance.Individual" %>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!--Container Main start-->
    <div style="margin-top:200px;" class="container">
        <form style="margin-top: 135px; margin-left: 25px;" class="common" id="regForm" action="">
            <div class="tab">
                <script src="JavaScript.js"></script>
                <h2>Step 1: Personal Information</h2>
                <!-- Text input -->
                <div class="row mb-4">
                    <div class="col">
                        <div class="form-outline">

                            <input type="text" id="name" class="form-control" oninput="this.className = ''" required>
                            <label class="form-label" for="name">Name</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-outline">
                            <input type="text" id="nationality" class="form-control" oninput="this.className = ''" required>
                            <label class="form-label" for="nationality">Nationality</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-outline">
                            <input type="date" id="DOB" class="form-control" oninput="this.className = ''" required>
                            <label class="form-label" for="DOB">Date Of Birth</label>
                        </div>
                    </div>
                </div>

                <!-- Text input -->
                <div class="row mb-4">
                    <div class="col">
                        <div class="form-outline">
                            <input type="text" id="telephone" class="form-control" oninput="this.className = ''" required>
                            <label class="form-label" for="telephone">Telephone</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-outline">
                            <input type="text" id="mobile" class="form-control" oninput="this.className = ''" required>
                            <label class="form-label" for="mobile">Mobile</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-outline">
                            <input type="text" id="email" class="form-control" oninput="this.className = ''" required>
                            <label class="form-label" for="email">Email</label>
                        </div>
                    </div>
                </div>

                <!-- Email input -->
                <div class="row mb-4">
                    <div class="col">
                        <div class="form-outline">
                            <input type="text" id="location" class="form-control" oninput="this.className = ''" required>
                            <label class="form-label" for="location">Location</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-outline">
                            <input type="text" id="address" class="form-control" oninput="this.className = ''" required>
                            <label class="form-label" for="mobile">Address</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-outline">
                            <input type="text" id="occupation" class="form-control"oninput="this.className = ''" required>
                            <label class="form-label" for="email">Occupation</label>
                        </div>
                    </div>
                </div>

                <!-- Number input -->
<%--                 <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>--%>
<%--                <asp:Button ID="nextBtn" runat="server" Text="Next" onclick="nextPrev(1)" cssclass="btn next-button btn-lg" style="background-color: #375e43; color: #fff; width: 120px;" />--%>
                <%--<button type="button" style="background-color: #375e43; color: #fff; width: 120px;" class="btn next-button btn-lg">Next</button>--%>

            </div>

            <div class="tab">
                <h2>Step 2: Personal Information</h2>


                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">1. Do you hold any other health Insurance Cover?</label>

                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="radio-option" id="radio-yes" value="yes" >
                        <label class="form-check-label" for="radio-yes">
                            Yes
                       
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="radio-option" id="radio-no" value="no">
                        <label class="form-check-label" for="radio-no">
                            No
                       
                        </label>
                    </div>


                    <div id="radio-input" class="mt-3" style="display: none;">


                        <div class="row mb-4">
                            <div class="col">
                                <div class="form-outline">
                                    <label for="exampleInputEmail1" class="form-label">2. Insurance Company's name</label>
                                    <input type="text" id="telephone" class="form-control" oninput="this.className = ''" required>
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-outline">

                                    <label for="exampleInputEmail1" class="form-label">3. Type of Policy</label>
                                    <input type="text" class="form-control" id="radio-text" oninput="this.className = ''" placeholder="Insurance Company's name...">
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-outline">

                                    <label for="exampleInputEmail1" class="form-label">4. Insured Since</label>
                                    <input type="text" class="form-control" id="radio-text" oninput="this.className = ''" placeholder="Type of Policy...">
                                </div>
                            </div>
                        </div>

                        <div class="row mb-4">
                            <div class="col">
                                <div class="form-outline">
                                    <label for="exampleInputEmail1" class="form-label">5. Period of Insurance (from: DD.MM.YYYY To: DD.MM.YYYY)</label>
                                    <input type="text" class="form-control" id="radio-text" oninput="this.className = ''" placeholder="Insured Since...">
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-outline">

                                    <label for="exampleInputEmail1" class="form-label">6. Sum Insured</label>
                                    <input type="text" class="form-control" id="radio-text" oninput="this.className = ''" placeholder="Insurance Company's name...">
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-outline">
                                    <label for="exampleInputEmail1" class="form-label">7. Any Special condition or Exclution?</label>
                                    <input type="text" class="form-control" id="radio-text" oninput="this.className = ''" placeholder="If yes, please Provide details">
                                </div>
                            </div>
                        </div>

                        <div class="row mb-4">


                            <div class="col">
                                <div class="form-outline">
                                    <label for="exampleInputEmail1" class="form-label">8. Have you made any claim in the Policy</label>
                                    <input type="text" class="form-control" id="radio-text" oninput="this.className = ''" placeholder="If yes, please Provide reason for claim and Claimed amount">
                                </div>
                            </div>
                        </div>

                       

                        <button class="previous-button btn-lg" style="background-color: #375e43; color: #fff; width: 120px;">Submit</button>
                       
                    </div>
                </div>
            </div>
           
        </form>
    </div>

   


    <script type='text/javascript'
      src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js'></script>
    <script type='text/javascript' src='#'></script>
    <script type='text/javascript' src='#'></script>
    <script type='text/javascript' src='#'></script>
    <script type='text/javascript'>document.addEventListener("DOMContentLoaded", function (event) {

            const showNavbar = (toggleId, navId, bodyId, headerId) => {
                const toggle = document.getElementById(toggleId),
                    nav = document.getElementById(navId),
                    bodypd = document.getElementById(bodyId),
                    headerpd = document.getElementById(headerId)

                // Validate that all variables exist
                if (toggle && nav && bodypd && headerpd) {
                    toggle.addEventListener('click', () => {
                        // show navbar
                        nav.classList.toggle('show')
                        // change icon
                        toggle.classList.toggle('bx-x')
                        // add padding to body
                        bodypd.classList.toggle('body-pd')
                        // add padding to header
                        headerpd.classList.toggle('body-pd')
                    })
                }
            }

            showNavbar('header-toggle', 'nav-bar', 'body-pd', 'header')

            /*===== LINK ACTIVE =====*/
            const linkColor = document.querySelectorAll('.nav_link')

            function colorLink() {
                if (linkColor) {
                    linkColor.forEach(l => l.classList.remove('active'))
                    this.classList.add('active')
                }
            }
            linkColor.forEach(l => l.addEventListener('click', colorLink))

            // Your code to run since DOM is loaded and ready
        });</script>
    <script type='text/javascript'>var myLink = document.querySelector('a[href="#"]');
        myLink.addEventListener('click', function (e) {
            e.preventDefault();
        });</script>


<script>
    const form = document.getElementById("insurance-form");
    const steps = form.querySelectorAll(".step");
    const nextButtons = form.querySelectorAll(".next-button");
    const previousButtons = form.querySelectorAll(".previous-button");

    let currentStep = 0;

    nextButtons.forEach((button) => {
        button.addEventListener("click", (event) => {
            event.preventDefault();
            steps[currentStep].style.display = "none";
            currentStep++;
            steps[currentStep].style.display = "block";
        });
    });

    previousButtons.forEach((button) => {
        button.addEventListener("click", (event) => {
            event.preventDefault();
            steps[currentStep].style.display = "none";
            currentStep--;
            steps[currentStep].style.display = "block";
        });
    });

</script>


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.2/js/bootstrap.min.js"></script>

<script>
    $(document).ready(function () {
        $('input[type="radio"]').click(function () {
            if ($(this).attr('id') == 'radio-yes') {
                $('#radio-input').fadeIn('slow');
            } else {
                $('#radio-input').fadeOut('slow');
            }
        });
        $('#radio-form').submit(function (e) {
            e.preventDefault();
            var formData = $(this).serialize();
            alert(formData);
        });
    });
</script>

   

    <!--Container Main end-->
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" runat="server">
    

    
</asp:Content>