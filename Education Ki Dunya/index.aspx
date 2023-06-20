<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Education_Ki_Dunya.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./css/index.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <main>
      <div class="space"></div>

      <section id="grids">
        <div id="topGrid">
          <div class="grid" id="grid1">
            <img src="./pictures/grid1.jpg" alt="" />
            <p>
              Thousands Could Miss CSS 2022 Exams As FPSC Website Crashes Before
              Deadline
            </p>
          </div>
          <div class="grid" id="grid2">
            <img src="./pictures/grid2.jpeg" alt="" />
            <p>
              Gilgit-Baltistan to Get State-of-The-Art Technical Training
              University
            </p>
          </div>
          <div class="grid" id="grid3">
            <img src="./pictures/grid3.jpg" alt="" />
            <p>
              Education Ministers to Announce Long Winter Vacations After Next
              Week’s Meeting
            </p>
          </div>
          <div class="grid" id="grid4">
            <button type="button" id="gridbtn1" class="gridBtn">
              <i class="fa fa-chevron-circle-left fa-3x"></i>
            </button>

            <img id="gridImage" src="./pictures/transition4.jpg" alt="" />
            <button type="button" id="gridbtn2" class="gridBtn">
              <i class="fa fa-chevron-circle-right fa-3x"></i>
            </button>
          </div>
        </div>

        <div id="gridSecond">
          <div id="gridSecond1" class="gridSecond">
            <img src="./pictures/ad2.jpg" alt="" />
          </div>
          <div id="gridSecond2" class="gridSecond">
            <img src="./pictures/ad3.jpg" alt="" />
          </div>
          <div id="gridSecond3" class="gridSecond">
            <div class="gridSecond3div">
              <p>
                پنجاب بھر میں میٹرک اور انٹرمیڈیٹ کے امتحانات نئے امتحانی پیٹرن
                کے تحت منعقد کرنے کا فیصلہ
              </p>
              <img src="./pictures/grid3.jpg" alt="" />
            </div>
            <div class="gridSecond3div">
              <p>
                میٹرک بورڈ، جماعت نہم 2022ء کے سالانہ امتحانی فارم جمع کرانے کا
                شیڈول جاری
              </p>
              <img src="./pictures/gridSecond2.jpg" alt="" />
            </div>
            <div class="gridSecond3div">
              <p>
                انٹرمیڈیٹ بارہویں جماعت کے سالانہ امتحانات برائے 2021ء کے پہلے
                مرحلہ کے آرٹس ریگولر گروپ کے نتائج کا اعلان
              </p>
              <img src="./pictures/gridSecond3.jpg" alt="" />
            </div>
          </div>
        </div>
          
        <div id="gridThird">
          <div id="ads">
            <img id="ad1" src="./pictures/ad4.gif" alt="" />
            <img id="ad2" src="./pictures/ad5.jpg" alt="" />
          </div>
          <div id="content">
            <div id="books" class="gridContent">
              <h1>Urdu Famous Books</h1>
              <div id="bookDiv" class="gridDivContent" runat="server">
                
              </div>
            </div>
            <div id="poet" class="gridContent">
              <h1>Urdu Famous Poets</h1>
              <div class="gridDivContent">
                <div>
                  <img src="./pictures/mirza1.jpg" alt="" />
                  <p>Mirza Ghalib</p>
                </div>

                <div>
                  <img src="./pictures/iqbal2.jpg" alt="" />
                  <p>Allama Iqbal</p>
                </div>
                <div>
                  <img src="./pictures/parveen3.jpg" alt="" />
                  <p>Parveen Shakir</p>
                </div>
                <div>
                  <img src="./pictures/faraz4.jpg" alt="" />
                  <p>Ahmad Faraz</p>
                </div>
                <div>
                  <img src="./pictures/faiz5.jpg" alt="" />
                  <p>Faiz Ahmad Faiz</p>
                </div>

                <div>
                  <img src="./pictures/jaun6.jpg" alt="" />
                  <p>Jaun Elia</p>
                </div>
              </div>
            </div>
            <div id="bottom">
              <div id="bottom1" class="bottomClass">
                <h1>Latest Jobs</h1>
                <div class="bottomClassDiv">
                  <i class="fa fa-briefcase fa-5x" ></i>
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque, deleniti!lorem5
                  </p> 

                </div>
              </div>
              <div id="bottom2" class="bottomClass">
                <h1>Computer Science MS and MCS Classes</h1>
                <div class="bottomClassDiv">
                  <i class="fa fa-laptop fa-5x" style="margin-top: -13px;"></i>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui, est?Lorem ipsum dolor sit amet.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <div class="space"></div>
    </main>
    <script src="./app.js"></script>
   
</asp:Content>
