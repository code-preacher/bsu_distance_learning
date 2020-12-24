<?php
session_start();
error_reporting(0);
include '../inc/checklogin.php';
check_login();
$_SESSION['wmsg']="";
?>
<?php
include '../inc/config.php';
$qx=mysqli_query($con,"select matno,year from student where matno='".$_SESSION['user_id']."'");
$qb=mysqli_fetch_array($qx);
$matno=$qb['matno'];
$year=$qb['year'];

$qd=mysqli_query($con,"select reference.year,reference.matno,reference.status,student.matno,student.year,student.department from reference inner join student on reference.matno='$matno' and reference.year='$year' ");
$qs=mysqli_fetch_array($qd);
$qdp=$qs['department'];
$qyr=$qs['year'];

if ($qs['status']=='1') {

  $ad=mysqli_query($con,"select syllabus.year,syllabus.id,syllabus.coursename,syllabus.department,learning_content.content_name,learning_content.audio,learning_content.video,learning_content.document,learning_content.syllabus_id,learning_content.date from syllabus inner join learning_content on syllabus.id=learning_content.syllabus_id where syllabus.department='$qdp' and syllabus.coursename=learning_content.content_name ");
  $da=mysqli_num_rows($ad);
  if ($ad) {
//echo "yes";
  } else {
//echo "no";
  }


} else {
// echo "no";
}



//$qk=mysqli_query($con,"select * from learning_content where lecturer_id='$id' order by id desc");
?>
<!DOCTYPE html>
<html lang="en">

<head>

  <!-- important meta tags -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Title -->
  <title>COURSEWARE FOR DISTANCE LEARNING, BENUE STATE UNIVERSITY MAKURDI</title>

  <!-- Basic SEO -->
  <meta name="description" content="COURSEWARE FOR DISTANCE LEARNING, BENUE STATE UNIVERSITY MAKURDI">
  <meta name="keywords" content="COURSEWARE FOR DISTANCE LEARNING, BENUE STATE UNIVERSITY MAKURDI">

  <!-- Favicon -->
  <link rel="icon" type="img/jpg" href="img/bsu2.jpg">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">

  <link href="css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
  <link href="../fonts/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet">
  <!-- Custom CSS -->


  <link href="css/helper.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:** -->
    <!--[if lt IE 9]>
    <script src="https:**oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https:**oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
  <script>
    function myFunction() {
  // Declare variables 
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    } 
  }
}
</script>
</head>

<body class="fix-header fix-sidebar">
  <!-- Preloader - style you can find in spinners.css -->
  <div class="preloader">
    <svg class="circular" viewBox="25 25 50 50">
      <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
    </div>
    <!-- Main wrapper  -->
    <div id="main-wrapper">
     <?php
     include "inc/header.php";
     ?>
     <!-- End header header -->
     <!-- Left Sidebar  -->
     <?php
     include "inc/sidebar.php";
     ?>     
     <!-- End Left Sidebar  -->
     <!-- Page wrapper  -->
     <div class="page-wrapper">
      <!-- Bread crumb -->
      <div class="row page-titles">
        <div class="col-md-5 align-self-center">
          <h3 class="text-primary">Dashboard</h3> </div>
          <div class="col-md-7 align-self-center">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="javascript:void(0)">View Learning Content</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
          </div>
        </div>
        <!-- End Bread crumb -->
        <!-- Container fluid  -->
        <div class="container-fluid">
          <!-- Start Page Content -->
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-title">
                  <h4>VIEW LEARNING CONTENT</h4>

                  <p>

                    <?php if (!empty($_SESSION['lkmsg'])) {
                      echo $_SESSION['lkmsg'];
                      $_SESSION['lkmsg']="";
                    } 
                    ?>
                  </p>

                </div>
                <div class="card-body">

                 <div class="form-group">


                  <div class="table-responsive">
                    <table id="example23" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                      <thead>
                        <tr>
                          <th>#</th>

                          <th>Content Details</th>
                          <th>Document</th>
                          <th>Audio</th>
                          <th>Video</th>
                          <th>Date</th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php
                        if ($da > 0) {
                          $id=0;
                          while ($r=mysqli_fetch_array($ad)) {
                            $id++;

                            ?>
                            <tr>
                              <th scope="row"><?php echo $id; ?></th>
                              <td><?php echo $r['content_name']; ?></td>

                              <td><a href="view.php?id=<?php echo $r['id']?>&type=document"><i class="fa fa-file text-primary"></i></a></td>
                              <td><a href="view.php?id=<?php echo $r['id']?>&type=audio"><i class="fa  fa-microphone text-primary"></i></a></td>
                              <td><a href="view.php?id=<?php echo $r['id']?>&type=video"><i class="fa fa-youtube-play text-primary"></i></a></td>
                              <td><?php echo $r['date']; ?></td>
                            </tr>
                            <?php                                                
                          }

                          # code...
                        } else {
                          echo "<tr><td colspan='6' style='text-align:center;color:red;'>Please pay your fees or validate your payment using the payment option at the sidebar if you have already paid..</td></tr>";
                        }
                        
                        ?>

                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <!-- /# column -->
            </div>
            <!-- End PAge Content -->
          </div>
          <!-- End Container fluid  -->
          <!-- footer -->

          <!-- FOOTER REGION -->

          <!-- End footer -->
        </div>
        <!-- End Page wrapper  -->
      </div>
      <!-- End Wrapper -->
      <!-- All Jquery -->
      <script src="js/lib/jquery/jquery.min.js"></script>
      <!-- Bootstrap tether Core JavaScript -->
      <script src="js/lib/bootstrap/js/popper.min.js"></script>
      <script src="js/lib/bootstrap/js/bootstrap.min.js"></script>
      <!-- slimscrollbar scrollbar JavaScript -->
      <script src="js/jquery.slimscroll.js"></script>
      <!--Menu sidebar -->
      <script src="js/sidebarmenu.js"></script>
      <!--stickey kit -->
      <script src="js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
      <!--Custom JavaScript -->
      <script src="js/scripts.js"></script>



      <script src="js/lib/datatables/datatables.min.js"></script>
      <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
      <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
      <script src="js/lib/datatables/cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
      <script src="js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
      <script src="js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
      <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
      <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
      <script src="js/lib/datatables/datatables-init.js"></script>

      <?php
      include "inc/footer.php";
      ?>

    </body>

    </html>