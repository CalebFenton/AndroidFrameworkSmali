.class Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;
.super Lcom/android/internal/telephony/State;
.source "SatelliteSessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteSessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
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

    .line 929
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    return-void
.end method

.method private blacklist handleEventDatagramTransferStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;)V
    .registers 4

    .line 1006
    iget v0, p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->sendState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_31

    iget p1, p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->receiveState:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_b

    goto :goto_31

    :cond_b
    const/16 v1, 0x8

    if-eq v0, v1, :cond_13

    if-ne p1, v1, :cond_12

    goto :goto_13

    :cond_12
    return-void

    .line 1014
    :cond_13
    :goto_13
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmSatelliteController(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteAttachRequired()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 1015
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmNotConnectedState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    .line 1017
    :cond_29
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string p1, "Unexpected transferring state received for non-NB-IOT NTN"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mploge(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    return-void

    .line 1009
    :cond_31
    :goto_31
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmTransferringState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method private blacklist handleEventDisableCellularModemWhileSatelliteModeIsOnDone(Landroid/os/AsyncResult;)V
    .registers 4

    .line 1063
    const-string v0, "DisableCellularModemWhileSatelliteModeIsOnDone"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getSatelliteError(Landroid/os/AsyncResult;Ljava/lang/String;)I

    move-result p1

    .line 1065
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disable TN scanning done with result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist handleEventServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 6

    .line 1024
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 1025
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 1026
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_1b

    .line 1028
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string p1, "handleEventServiceStateChanged: is not IN_SERVICE or EMERGENCY_ONLY"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    return-void

    .line 1033
    :cond_1b
    :goto_1b
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmSatelliteController(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->getRequestIsEmergency()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_58

    .line 1035
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmDatagramController(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/DatagramController;

    move-result-object v1

    if-nez v1, :cond_32

    move v1, v0

    goto :goto_3c

    .line 1036
    :cond_32
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmDatagramController(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/DatagramController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/DatagramController;->isEmergencyCommunicationEstablished()Z

    move-result v1

    .line 1037
    :goto_3c
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v2}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmSatelliteController(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    .line 1038
    invoke-static {v3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mgetSubId(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteController;->turnOffSatelliteSessionForEmergencyCall(I)Z

    move-result v2

    if-nez v1, :cond_50

    if-nez v2, :cond_58

    .line 1040
    :cond_50
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string p1, "handleEventServiceStateChanged: can\'t disable emergency satellite session"

    # invokes: Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->access$100(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    return-void

    .line 1046
    :cond_58
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmSatelliteController(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState$1;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;)V

    invoke-virtual {v1, v0, v0, p1, v2}, Lcom/android/internal/telephony/satellite/SatelliteController;->requestSatelliteEnabled(ZZZLcom/android/internal/telephony/IIntegerConsumer;)V

    return-void
.end method

.method private blacklist handleSatelliteModemStateChanged(Landroid/os/Message;)V
    .registers 5

    .line 1069
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_f

    .line 1071
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmPowerOffState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    :cond_f
    const/4 v0, 0x6

    if-eq p1, v0, :cond_17

    const/4 v0, 0x7

    if-ne p1, v0, :cond_16

    goto :goto_17

    :cond_16
    return-void

    .line 1074
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$misConcurrentTnScanningSupported(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1075
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifying the new state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to clients but still stay at IDLE state internally"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 1077
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mnotifyStateChangedEvent(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    return-void

    .line 1079
    :cond_40
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring the modem state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 6

    .line 932
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v1, "Entering IdleState"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 934
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 935
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object v0, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsSendingTriggeredDuringTransferringState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 936
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mstopNbIotInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    .line 939
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    .line 940
    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$misTnScanningAllowedDuringSatelliteSession(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 942
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/16 v3, 0xc

    .line 943
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 944
    iget-object v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmSatelliteModemInterface(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object v3

    const/4 v4, 0x1

    .line 945
    invoke-virtual {v3, v4, v2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->enableCellularModemWhileSatelliteModeIsOn(ZLandroid/os/Message;)V

    goto :goto_44

    .line 947
    :cond_3d
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v3, "Device does not allow cellular modem scanning"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 949
    :goto_44
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v2}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$misConcurrentTnScanningSupported(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Z

    move-result v2

    if-nez v2, :cond_55

    if-nez v0, :cond_4f

    goto :goto_55

    .line 953
    :cond_4f
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mnotifyStateChangedEvent(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    return-void

    .line 951
    :cond_55
    :goto_55
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v0, "IDLE state is hidden from clients"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist exit()V
    .registers 3

    .line 1086
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v1, "Exiting IdleState"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 1088
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmSatelliteModemInterface(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->enableCellularModemWhileSatelliteModeIsOn(ZLandroid/os/Message;)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 959
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdleState: processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 960
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_a3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_92

    const/4 v2, 0x4

    if-eq v0, v2, :cond_8e

    const/4 v2, 0x5

    if-eq v0, v2, :cond_86

    const/16 v2, 0x9

    if-eq v0, v2, :cond_7c

    const/16 v2, 0xa

    if-eq v0, v2, :cond_76

    const/16 v2, 0xc

    if-eq v0, v2, :cond_6e

    const/16 v2, 0xd

    if-eq v0, v2, :cond_41

    goto/16 :goto_b8

    .line 987
    :cond_41
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmIgnoreCellularServiceState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 988
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_50

    check-cast p1, Landroid/os/AsyncResult;

    goto :goto_51

    :cond_50
    const/4 p1, 0x0

    :goto_51
    if-eqz p1, :cond_5e

    .line 989
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez p1, :cond_58

    goto :goto_5e

    .line 992
    :cond_58
    check-cast p1, Landroid/telephony/ServiceState;

    .line 993
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->handleEventServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_b8

    .line 990
    :cond_5e
    :goto_5e
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string p1, "IdleState: processing: can\'t access ServiceState"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    goto :goto_b8

    .line 996
    :cond_66
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string p1, "IdleState: processing: ignore EVENT_SERVICE_STATE_CHANGED"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    goto :goto_b8

    .line 984
    :cond_6e
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string p1, "EVENT_ENABLE_CELLULAR_MODEM_WHILE_SATELLITE_MODE_IS_ON_DONE"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    goto :goto_b8

    .line 978
    :cond_76
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleEventScreenOffInactivityTimerTimedOut(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    goto :goto_b8

    .line 975
    :cond_7c
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleEventScreenStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Landroid/os/AsyncResult;)V

    goto :goto_b8

    .line 968
    :cond_86
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->handleEventDisableCellularModemWhileSatelliteModeIsOnDone(Landroid/os/AsyncResult;)V

    goto :goto_b8

    .line 981
    :cond_8e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->handleSatelliteModemStateChanged(Landroid/os/Message;)V

    goto :goto_b8

    .line 965
    :cond_92
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v1

    const-string v0, "IdleState"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleSatelliteEnabledStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController;ZLjava/lang/String;)V

    goto :goto_b8

    .line 972
    :cond_a3
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleSatelliteEnablementStarted(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Z)V

    goto :goto_b8

    .line 962
    :cond_b1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;->handleEventDatagramTransferStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;)V

    :goto_b8
    return v1
.end method
