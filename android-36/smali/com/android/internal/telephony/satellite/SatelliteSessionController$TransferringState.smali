.class Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;
.super Lcom/android/internal/telephony/State;
.source "SatelliteSessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteSessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransferringState"
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

    .line 1092
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    return-void
.end method

.method private blacklist handleEventDatagramTransferStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;)V
    .registers 4

    .line 1134
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget v1, p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->sendState:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$misSending(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget v1, p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->receiveState:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$misReceiving(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_49

    .line 1138
    :cond_15
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmSatelliteController(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteAttachRequired()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1139
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmConnectedState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    .line 1141
    :cond_2b
    iget v0, p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->sendState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_40

    iget p1, p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->receiveState:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_36

    goto :goto_40

    .line 1147
    :cond_36
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmListeningState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    .line 1145
    :cond_40
    :goto_40
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :cond_49
    :goto_49
    return-void
.end method

.method private blacklist handleEventSatelliteModemStateChange(I)V
    .registers 3

    const/4 v0, 0x6

    if-ne p1, v0, :cond_d

    .line 1156
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmNotConnectedState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    :cond_d
    const/4 v0, 0x4

    if-ne p1, v0, :cond_19

    .line 1158
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmPowerOffState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :cond_19
    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 3

    .line 1095
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v1, "Entering TransferringState"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 1096
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mstopNbIotInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    .line 1097
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mstopEsosInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    .line 1098
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mstopP2pSmsInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    .line 1100
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 1101
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 1102
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mnotifyStateChangedEvent(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 1107
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransferringState: processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 1108
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6a

    const/4 v2, 0x7

    if-eq v0, v2, :cond_5c

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4b

    const/4 v2, 0x4

    if-eq v0, v2, :cond_45

    const/16 v2, 0x9

    if-eq v0, v2, :cond_3b

    const/16 p1, 0xa

    if-eq v0, p1, :cond_35

    goto :goto_69

    .line 1125
    :cond_35
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleEventScreenOffInactivityTimerTimedOut(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    goto :goto_69

    .line 1122
    :cond_3b
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleEventScreenStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Landroid/os/AsyncResult;)V

    goto :goto_69

    .line 1116
    :cond_45
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;->handleEventSatelliteModemStateChange(I)V

    goto :goto_69

    .line 1113
    :cond_4b
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v1

    const-string v0, "TransferringState"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleSatelliteEnabledStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController;ZLjava/lang/String;)V

    goto :goto_69

    .line 1119
    :cond_5c
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleSatelliteEnablementStarted(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Z)V

    :goto_69
    return v1

    .line 1110
    :cond_6a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;->handleEventDatagramTransferStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;)V

    return v1
.end method
