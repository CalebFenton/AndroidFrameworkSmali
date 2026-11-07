.class Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;
.super Lcom/android/internal/telephony/State;
.source "SatelliteSessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteSessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotConnectedState"
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

    .line 1243
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    return-void
.end method

.method private blacklist handleEventDatagramTransferStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;)V
    .registers 5

    .line 1314
    iget v0, p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->sendState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_63

    iget v2, p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->receiveState:I

    if-ne v2, v1, :cond_b

    goto :goto_63

    :cond_b
    if-nez v0, :cond_1f

    if-nez v2, :cond_1f

    .line 1327
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mstartNbIotInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    .line 1328
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mevaluateStartingEsosInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    .line 1329
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mevaluateStartingP2pSmsInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    return-void

    .line 1330
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$misSending(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget v1, p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->receiveState:I

    .line 1331
    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$misReceiving(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_33

    :cond_32
    return-void

    .line 1332
    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mstopNbIotInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    .line 1334
    iget p1, p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->datagramType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_43

    .line 1336
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mstopEsosInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    return-void

    :cond_43
    const/4 v0, 0x6

    if-ne p1, v0, :cond_4c

    .line 1338
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mstopP2pSmsInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    return-void

    .line 1340
    :cond_4c
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "datagram type is not SOS_Message and SMS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    return-void

    .line 1318
    :cond_63
    :goto_63
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mstopNbIotInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    .line 1320
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmSatelliteController(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->getRequestIsEmergency()Z

    move-result p1

    if-eqz p1, :cond_79

    .line 1321
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mstopEsosInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    .line 1323
    :cond_79
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mstopP2pSmsInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    return-void
.end method

.method private blacklist handleEventSatelliteModemStateChanged(I)V
    .registers 3

    const/4 v0, 0x7

    if-ne p1, v0, :cond_d

    .line 1306
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmConnectedState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    :cond_d
    const/4 v0, 0x4

    if-ne p1, v0, :cond_19

    .line 1308
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmPowerOffState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :cond_19
    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 3

    .line 1246
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v1, "Entering NotConnectedState"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 1248
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 1249
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 1250
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mnotifyStateChangedEvent(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 1251
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mstartNbIotInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    .line 1252
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mevaluateStartingEsosInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    .line 1253
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mevaluateStartingP2pSmsInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    return-void
.end method

.method public blacklist exit()V
    .registers 2

    .line 1258
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v0, "Exiting NotConnectedState"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 1263
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotConnectedState: processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 1264
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

    .line 1273
    :pswitch_37
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isP2pSmsInActivityTimerStarted()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 1274
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string p1, "NotConnectedState: processing: P2P_SMS inactivity timer running can not move to IDLE"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    goto :goto_9d

    .line 1277
    :cond_47
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_9d

    .line 1296
    :pswitch_51
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleEventScreenOffInactivityTimerTimedOut(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    goto :goto_9d

    .line 1293
    :pswitch_57
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleEventScreenStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Landroid/os/AsyncResult;)V

    goto :goto_9d

    .line 1290
    :cond_61
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleSatelliteEnablementStarted(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Z)V

    goto :goto_9d

    .line 1284
    :cond_6f
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_9d

    .line 1270
    :cond_79
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->handleEventSatelliteModemStateChanged(I)V

    goto :goto_9d

    .line 1266
    :cond_7f
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 1267
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v1

    const-string v0, "NotConnectedState"

    .line 1266
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleSatelliteEnabledStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController;ZLjava/lang/String;)V

    goto :goto_9d

    .line 1281
    :cond_90
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleEventP2pSmsInactivityTimerTimedOut(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    goto :goto_9d

    .line 1287
    :cond_96
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;->handleEventDatagramTransferStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;)V

    :goto_9d
    return v1

    :pswitch_data_9e
    .packed-switch 0x9
        :pswitch_57
        :pswitch_51
        :pswitch_37
    .end packed-switch
.end method
