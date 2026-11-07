.class Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;
.super Landroid/os/Handler;
.source "EmergencyStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/emergency/EmergencyStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Landroid/os/Looper;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 293
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    .line 294
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 11

    .line 299
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "EmergencyStateTracker"

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 407
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    packed-switch v0, :pswitch_data_360

    goto/16 :goto_35f

    .line 474
    :pswitch_12
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmIsWaitingForRadioOff(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Z

    move-result p1

    if-eqz p1, :cond_35f

    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$misPowerOff(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Z

    move-result p1

    if-eqz p1, :cond_35f

    .line 475
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$munregisterForVoiceRegStateOrRatChanged(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)V

    .line 476
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_35f

    .line 477
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmIsTestEmergencyNumber(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Z

    move-result p0

    invoke-static {p1, v0, v6, p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mturnOnRadioAndSwitchDds(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Lcom/android/internal/telephony/Phone;IZ)V

    return-void

    .line 470
    :pswitch_3f
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mhandleNewRingingConnection(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Landroid/os/Message;)V

    return-void

    .line 466
    :pswitch_45
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    const/4 p1, 0x5

    invoke-static {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mexitEmergencySmsCallbackModeAndEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;I)V

    return-void

    .line 430
    :pswitch_4c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 431
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_SET_EMERGENCY_CALLBACK_MODE_DONE for "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$smemergencyTypeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$msetEmergencyModeInProgress(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Z)V

    .line 437
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_89

    .line 438
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmSmsPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_35f

    .line 439
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p0, v3}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mcompleteEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;I)V

    return-void

    .line 441
    :cond_89
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_35f

    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmIsEmergencyCallStartedDuringEmergencySms(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Z

    move-result v0

    if-eqz v0, :cond_35f

    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmSmsPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 446
    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {v3, v2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mexitEmergencySmsCallbackMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;I)V

    .line 449
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_d2

    if-eqz v0, :cond_d2

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 450
    invoke-static {v2, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$smisSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-nez v2, :cond_d2

    .line 451
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 452
    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {v3, v1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fputmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Lcom/android/internal/telephony/Phone;)V

    .line 453
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mexitEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Lcom/android/internal/telephony/Phone;I)V

    .line 455
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p0, v2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fputmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Lcom/android/internal/telephony/Phone;)V

    return-void

    .line 457
    :cond_d2
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1, v5}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fputmIsEmergencyCallStartedDuringEmergencySms(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Z)V

    .line 458
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmIsTestEmergencyNumber(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Z

    move-result p0

    invoke-static {p1, v0, v6, p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mturnOnRadioAndSwitchDds(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Lcom/android/internal/telephony/Phone;IZ)V

    return-void

    .line 389
    :pswitch_e7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 390
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_EXIT_EMERGENCY_MODE_DONE for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$smemergencyTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$msetEmergencyModeInProgress(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Z)V

    .line 395
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_15f

    .line 396
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1, v5}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$msetIsInEmergencyCall(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Z)V

    .line 397
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmOnEcmExitCompleteRunnable(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_131

    .line 398
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmOnEcmExitCompleteRunnable(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 399
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fputmOnEcmExitCompleteRunnable(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Ljava/lang/Runnable;)V

    .line 401
    :cond_131
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_35f

    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)I

    move-result p1

    if-ne p1, v6, :cond_35f

    .line 403
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1, v6}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$msetEmergencyModeInProgress(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Z)V

    .line 404
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1, v6}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fputmWasEmergencyModeSetOnModem(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Z)V

    .line 405
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Landroid/os/Handler;

    move-result-object p0

    .line 406
    invoke-virtual {p0, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 405
    invoke-virtual {p1, v6, p0}, Lcom/android/internal/telephony/Phone;->setEmergencyMode(ILandroid/os/Message;)V

    return-void

    .line 409
    :cond_15f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_35f

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmIsEmergencyCallStartedDuringEmergencySms(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Z

    move-result v0

    if-eqz v0, :cond_182

    .line 411
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1, v5}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fputmIsEmergencyCallStartedDuringEmergencySms(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Z)V

    .line 412
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmIsTestEmergencyNumber(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Z

    move-result p0

    invoke-static {p1, v0, v6, p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mturnOnRadioAndSwitchDds(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Lcom/android/internal/telephony/Phone;IZ)V

    return-void

    .line 414
    :cond_182
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_1b0

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)I

    move-result v0

    if-ne v0, v6, :cond_1b0

    .line 416
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1, v6}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$msetEmergencyModeInProgress(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Z)V

    .line 417
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1, v6}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fputmWasEmergencyModeSetOnModem(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Z)V

    .line 418
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Landroid/os/Handler;

    move-result-object p0

    .line 419
    invoke-virtual {p0, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 418
    invoke-virtual {p1, v6, p0}, Lcom/android/internal/telephony/Phone;->setEmergencyMode(ILandroid/os/Message;)V

    return-void

    .line 421
    :cond_1b0
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmIsEmergencySmsStartedDuringScbm(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Z

    move-result v0

    if-eqz v0, :cond_35f

    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fputmIsEmergencySmsStartedDuringScbm(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Z)V

    .line 423
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmSmsPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, v0, p1, v6, v6}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$msetEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Lcom/android/internal/telephony/Phone;III)V

    return-void

    .line 301
    :pswitch_1cb
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 302
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 303
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_SET_EMERGENCY_MODE_DONE for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$smemergencyTypeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 303
    invoke-static {v4, v7}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_1fd

    .line 306
    iget-object v7, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/EmergencyRegistrationResult;

    invoke-static {v7, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fputmLastEmergencyRegistrationResult(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Landroid/telephony/EmergencyRegistrationResult;)V

    goto :goto_218

    .line 308
    :cond_1fd
    iget-object v7, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {v7, v1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fputmLastEmergencyRegistrationResult(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Landroid/telephony/EmergencyRegistrationResult;)V

    .line 309
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LastEmergencyRegistrationResult not set. AsyncResult.exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :goto_218
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1, v5}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$msetEmergencyModeInProgress(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Z)V

    .line 316
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p1, v7, v5}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mmaybeNotifyTransportChangeCompleted(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;IZ)V

    .line 318
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v6, :cond_28f

    .line 324
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmFeatureFlags(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmLastEmergencyRegistrationResult(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Landroid/telephony/EmergencyRegistrationResult;

    move-result-object p1

    if-nez p1, :cond_273

    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_273

    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 327
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-nez p1, :cond_273

    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 328
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->needToSwitchPhone(Lcom/android/internal/telephony/Phone;)Z

    move-result p1

    if-eqz p1, :cond_273

    .line 329
    const-string p1, "setEmergencyMode failed: need to switch stacks."

    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1, v5}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fputmEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;I)V

    .line 331
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x40

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mcompleteEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;II)V

    goto :goto_281

    .line 334
    :cond_273
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1, v6}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$msetIsInEmergencyCall(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Z)V

    .line 335
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mcompleteEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;I)V

    .line 343
    :goto_281
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmSmsPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_35f

    .line 344
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p0, v3}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mcompleteEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;I)V

    return-void

    .line 346
    :cond_28f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_35f

    .line 347
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_335

    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmSmsPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_335

    .line 348
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmIsEmergencyCallStartedDuringEmergencySms(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Z

    move-result p1

    if-eqz p1, :cond_32b

    .line 349
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmSmsPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$smisSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result p1

    if-eqz p1, :cond_2eb

    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInScbm()Z

    move-result p1

    if-nez p1, :cond_2c8

    goto :goto_2eb

    .line 364
    :cond_2c8
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mcompleteEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;I)V

    .line 365
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1, v5}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fputmIsEmergencyCallStartedDuringEmergencySms(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Z)V

    .line 366
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mexitEmergencySmsCallbackMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;I)V

    .line 368
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmIsTestEmergencyNumber(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Z

    move-result p0

    invoke-static {p1, v0, v6, p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mturnOnRadioAndSwitchDds(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Lcom/android/internal/telephony/Phone;IZ)V

    return-void

    .line 352
    :cond_2eb
    :goto_2eb
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 353
    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {v3, v1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fputmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Lcom/android/internal/telephony/Phone;)V

    .line 354
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmSmsPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mexitEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Lcom/android/internal/telephony/Phone;I)V

    .line 356
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fputmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Lcom/android/internal/telephony/Phone;)V

    .line 357
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmSmsPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$smisSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result p1

    if-nez p1, :cond_35f

    .line 358
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x50

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mcompleteEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;II)V

    .line 360
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p0, v2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mexitEmergencySmsCallbackMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;I)V

    return-void

    .line 372
    :cond_32b
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mcompleteEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;I)V

    return-void

    .line 375
    :cond_335
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mcompleteEmergencyMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;I)V

    .line 377
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmIsEmergencyCallStartedDuringEmergencySms(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Z

    move-result p1

    if-eqz p1, :cond_35f

    .line 378
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1, v5}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fputmIsEmergencyCallStartedDuringEmergencySms(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Z)V

    .line 379
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mexitEmergencySmsCallbackMode(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;I)V

    .line 381
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$MyHandler;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$fgetmIsTestEmergencyNumber(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)Z

    move-result p0

    invoke-static {p1, v0, v6, p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->-$$Nest$mturnOnRadioAndSwitchDds(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Lcom/android/internal/telephony/Phone;IZ)V

    :cond_35f
    :goto_35f
    return-void

    :pswitch_data_360
    .packed-switch 0x1
        :pswitch_1cb
        :pswitch_e7
        :pswitch_4c
        :pswitch_45
        :pswitch_3f
        :pswitch_12
    .end packed-switch
.end method
