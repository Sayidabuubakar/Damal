<%@ Page Title="Individual Proposer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Individual.aspx.cs" Inherits="Damal_Insurance.Medical_Insurance.Individual" %>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!--Container Main start-->
    <div style="margin-top: 23px;" class="container">
        <form style="margin-top: 135px; margin-left: 25px;" class="common" id="insurance-form">
            <div class="step">
                <h2>Step 1: Personal Information</h2>
                <!-- Text input -->
                <div class="row mb-4">
                    <div class="col">
                        <div class="form-outline">
                            <input type="text" id="name" class="form-control" required>
                            <label class="form-label" for="name">Name</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-outline">
                            <input type="text" id="nationality" class="form-control" required>
                            <label class="form-label" for="nationality">Nationality</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-outline">
                            <input type="date" id="DOB" class="form-control" required>
                            <label class="form-label" for="DOB">Date Of Birth</label>
                        </div>
                    </div>
                </div>

                <!-- Text input -->
                <div class="row mb-4">
                    <div class="col">
                        <div class="form-outline">
                            <input type="text" id="telephone" class="form-control" required>
                            <label class="form-label" for="telephone">Telephone</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-outline">
                            <input type="text" id="mobile" class="form-control" required>
                            <label class="form-label" for="mobile">Mobile</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-outline">
                            <input type="text" id="email" class="form-control" required>
                            <label class="form-label" for="email">Email</label>
                        </div>
                    </div>
                </div>

                <!-- Email input -->
                <div class="row mb-4">
                    <div class="col">
                        <div class="form-outline">
                            <input type="text" id="location" class="form-control" required>
                            <label class="form-label" for="location">Location</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-outline">
                            <input type="text" id="mobile" class="form-control" required>
                            <label class="form-label" for="mobile">Mobile</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-outline">
                            <input type="text" id="email" class="form-control" required>
                            <label class="form-label" for="email">Email</label>
                        </div>
                    </div>
                </div>

                <!-- Number input -->

                <button type="button" style="background-color: #375e43; color: #fff; width: 120px;" class="btn next-button btn-lg">Next</button>

            </div>

            <div class="step">
                <h2>Step 2: Personal Information</h2>


                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">1. Do you hold any other health Insurance Cover?</label>

                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="radio-option" id="radio-yes" value="yes">
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
                                    <input type="text" id="telephone" class="form-control" required>
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-outline">

                                    <label for="exampleInputEmail1" class="form-label">3. Type of Policy</label>
                                    <input type="text" class="form-control" id="radio-text" placeholder="Insurance Company's name...">
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-outline">

                                    <label for="exampleInputEmail1" class="form-label">4. Insured Since</label>
                                    <input type="text" class="form-control" id="radio-text" placeholder="Type of Policy...">
                                </div>
                            </div>
                        </div>

                        <div class="row mb-4">
                            <div class="col">
                                <div class="form-outline">
                                    <label for="exampleInputEmail1" class="form-label">5. Period of Insurance (from: DD.MM.YYYY To: DD.MM.YYYY)</label>
                                    <input type="text" class="form-control" id="radio-text" placeholder="Insured Since...">
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-outline">

                                    <label for="exampleInputEmail1" class="form-label">6. Sum Insured</label>
                                    <input type="text" class="form-control" id="radio-text" placeholder="Insurance Company's name...">
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-outline">
                                    <label for="exampleInputEmail1" class="form-label">7. Any Special condition or Exclution?</label>
                                    <input type="text" class="form-control" id="radio-text" placeholder="If yes, please Provide details">
                                </div>
                            </div>
                        </div>

                        <div class="row mb-4">


                            <div class="col">
                                <div class="form-outline">
                                    <label for="exampleInputEmail1" class="form-label">8. Have you made any claim in the Policy</label>
                                    <input type="text" class="form-control" id="radio-text" placeholder="If yes, please Provide reason for claim and Claimed amount">
                                </div>
                            </div>
                        </div>

                        <button class="previous-button btn-lg" style="background-color: #375e43; color: #fff; width: 120px;">Previous</button>
                        <button class="next-button btn-lg" style="background-color: #375e43; color: #fff; width: 120px">Next</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <!--Container Main end-->
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" runat="server">
    

    
</asp:Content>