Subject: amanda-common: Amanda::Changer::robot::Interface::MTX calls confess but does not use Carp
From:  Will Aoki <waoki@umnh.utah.edu>
   
Index: amanda.git/perl/Amanda/Changer/robot.pm
===================================================================
--- amanda.git.orig/perl/Amanda/Changer/robot.pm	2017-03-05 18:46:31.750255709 +0000
+++ amanda.git/perl/Amanda/Changer/robot.pm	2017-03-05 18:46:31.746255704 +0000
@@ -2550,6 +2550,7 @@ use Amanda::Config qw( :getconf );
 use Amanda::Debug qw( debug warning );
 use Amanda::MainLoop qw( :GIOCondition synchronized make_cb define_steps step );
 use Amanda::Device qw( :constants );
+use Carp;
 
 sub new {
     my $class = shift;
