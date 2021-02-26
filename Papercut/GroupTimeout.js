function printJobHook(inputs, actions) {
  /*
  * Edit the settings below according to your policy and environment.
  * 5 MINUTES IS THE MINIMUM TIME OUT LOL
  */
  var GROUP_FOR_NEW_TIMEOUT = "Papercut Cashiers";
  var NEW_TIMEOUT_IN_MINUTES = 6;
  var GROUP_FOR_NEW_TIMEOUT2 = "Papercut Admins";
  var NEW_TIMEOUT_IN_MINUTES2 = 8;
  
  //Test to see if the user printing is a member of this group
  if(inputs.user.isInGroup(GROUP_FOR_NEW_TIMEOUT))
  {
    //This user is a member of the defined group. Adjust the timeout of this job.
    actions.job.setHoldReleaseTimeout(NEW_TIMEOUT_IN_MINUTES);
  }
  else if(inputs.user.isInGroup(GROUP_FOR_NEW_TIMEOUT2))
  {
    //This user is a member of the defined group. Adjust the timeout of this job.
    actions.job.setHoldReleaseTimeout(NEW_TIMEOUT_IN_MINUTES2);
  }
}

//This was achieved with the help of Papercut
