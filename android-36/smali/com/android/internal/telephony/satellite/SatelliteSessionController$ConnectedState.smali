.class Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;
.super Lcom/android/internal/telephony/State;
.source "SatelliteSessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteSessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1346
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    return-void
.end method

.method private blacklist handleEventDatagramTransferStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;)V
    .registers 4

    .line 1419
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget v1, p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->sendState:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$misSending(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget p1, p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->receiveState:I

    .line 1420
    invoke-static {v0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$misReceiving(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    return-void

    .line 1421
    :cond_16
    :goto_16
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmTransferringState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method private blacklist handleEventSatelliteModemStateChanged(I)V
    .registers 3

    const/4 v0, 0x6

    if-ne p1, v0, :cond_d

    .line 1411
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmNotConnectedState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    :cond_d
    const/4 v0, 0x4

    if-ne p1, v0, :cond_19

    .line 1413
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmPowerOffState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :cond_19
    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 3

    .line 1349
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v1, "Entering ConnectedState"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 1351
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 1352
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 1353
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mnotifyStateChangedEvent(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 1354
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mstartNbIotInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    .line 1355
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mevaluateStartingEsosInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    .line 1356
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mevaluateStartingP2pSmsInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    .line 1357
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmSatelliteController(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmSatelliteController(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p0

    .line 1358
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatellitePhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    .line 1357
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->updateLastNotifiedCarrierRoamingNtnSignalStrengthAndNotify(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public blacklist exit()V
    .registers 2

    .line 1363
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v0, "Exiting ConnectedState"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 1368
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectedState: processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 1369
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_96

    const/16 v2, 0xe

    if-eq v0, v2, :cond_90

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7f

    const/4 v2, 0x4

    if-eq v0, v2, :cond_79

    const/4 v2, 0x6

    if-eq v0, v2, :cond_6f

    const/4 v2, 0x7

    if-eq v0, v2, :cond_61

    packed-switch v0, :pswitch_data_9e

    goto :goto_9d

    .line 1393
    :pswitch_37
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isP2pSmsInActivityTimerStarted()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 1394
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string p1, "ConnectedState: processing: P2P_SMS inactivity timer running can not move to IDLE"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    goto :goto_9d

    .line 1397
    :cond_47
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_9d

    .line 1390
    :pswitch_51
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleEventScreenOffInactivityTimerTimedOut(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    goto :goto_9d

    .line 1387
    :pswitch_57
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleEventScreenStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Landroid/os/AsyncResult;)V

    goto :goto_9d

    .line 1384
    :cond_61
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleSatelliteEnablementStarted(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Z)V

    goto :goto_9d

    .line 1378
    :cond_6f
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_9d

    .line 1375
    :cond_79
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->handleEventSatelliteModemStateChanged(I)V

    goto :goto_9d

    .line 1371
    :cond_7f
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 1372
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v1

    const-string v0, "ConnectedState"

    .line 1371
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleSatelliteEnabledStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController;ZLjava/lang/String;)V

    goto :goto_9d

    .line 1401
    :cond_90
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleEventP2pSmsInactivityTimerTimedOut(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    goto :goto_9d

    .line 1381
    :cond_96
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;->handleEventDatagramTransferStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;)V

    :goto_9d
    return v1

    :pswitch_data_9e
    .packed-switch 0x9
        :pswitch_57
        :pswitch_51
        :pswitch_37
    .end packed-switch
.end method
