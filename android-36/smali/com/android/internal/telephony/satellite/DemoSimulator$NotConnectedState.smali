.class Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;
.super Lcom/android/internal/telephony/State;
.source "DemoSimulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/DemoSimulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotConnectedState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/satellite/DemoSimulator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/DemoSimulator;Lcom/android/internal/telephony/satellite/DemoSimulator-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;-><init>(Lcom/android/internal/telephony/satellite/DemoSimulator;)V

    return-void
.end method

.method private blacklist handleEventDeviceAlignedWithSatellite(Z)V
    .registers 7

    const/4 v0, 0x4

    if-eqz p1, :cond_31

    .line 171
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    # invokes: Lcom/android/internal/telephony/StateMachine;->hasMessages(I)Z
    invoke-static {v1, v0}, Lcom/android/internal/telephony/satellite/DemoSimulator;->access$700(Lcom/android/internal/telephony/satellite/DemoSimulator;I)Z

    move-result v1

    if-nez v1, :cond_31

    .line 172
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/DemoSimulator;->-$$Nest$fgetmSatelliteController(Lcom/android/internal/telephony/satellite/DemoSimulator;)Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->getDemoPointingAlignedDurationMillis()J

    move-result-wide v1

    .line 173
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotConnectedState: handleEventAlignedWithSatellite isAligned=true. Send delayed EVENT_DEVICE_ALIGNED message in durationMillis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {p1, v3}, Lcom/android/internal/telephony/satellite/DemoSimulator;->access$800(Lcom/android/internal/telephony/satellite/DemoSimulator;Ljava/lang/String;)V

    .line 176
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IJ)V

    return-void

    :cond_31
    if-nez p1, :cond_47

    .line 177
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    # invokes: Lcom/android/internal/telephony/StateMachine;->hasMessages(I)Z
    invoke-static {p1, v0}, Lcom/android/internal/telephony/satellite/DemoSimulator;->access$900(Lcom/android/internal/telephony/satellite/DemoSimulator;I)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 178
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    const-string v1, "NotConnectedState: handleEventAlignedWithSatellite isAligned=false. Remove EVENT_DEVICE_ALIGNED message."

    # invokes: Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/android/internal/telephony/satellite/DemoSimulator;->access$1000(Lcom/android/internal/telephony/satellite/DemoSimulator;Ljava/lang/String;)V

    .line 180
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    # invokes: Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V
    invoke-static {p0, v0}, Lcom/android/internal/telephony/satellite/DemoSimulator;->access$1100(Lcom/android/internal/telephony/satellite/DemoSimulator;I)V

    :cond_47
    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    const-string v1, "Entering NotConnectedState"

    # invokes: Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/DemoSimulator;->access$300(Lcom/android/internal/telephony/satellite/DemoSimulator;Ljava/lang/String;)V

    .line 131
    :try_start_7
    new-instance v0, Landroid/telephony/satellite/stub/NtnSignalStrength;

    invoke-direct {v0}, Landroid/telephony/satellite/stub/NtnSignalStrength;-><init>()V

    const/4 v1, 0x0

    .line 132
    iput v1, v0, Landroid/telephony/satellite/stub/NtnSignalStrength;->signalStrengthLevel:I

    .line 133
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    invoke-static {v1}, Lcom/android/internal/telephony/satellite/DemoSimulator;->-$$Nest$fgetmISatelliteListener(Lcom/android/internal/telephony/satellite/DemoSimulator;)Landroid/telephony/satellite/stub/ISatelliteListener;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/telephony/satellite/stub/ISatelliteListener;->onSatelliteModemStateChanged(I)V

    .line 135
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    invoke-static {v1}, Lcom/android/internal/telephony/satellite/DemoSimulator;->-$$Nest$fgetmISatelliteListener(Lcom/android/internal/telephony/satellite/DemoSimulator;)Landroid/telephony/satellite/stub/ISatelliteListener;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/telephony/satellite/stub/ISatelliteListener;->onNtnSignalStrengthChanged(Landroid/telephony/satellite/stub/NtnSignalStrength;)V

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/DemoSimulator;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/satellite/DemoSimulator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_29} :catch_3c

    .line 138
    :try_start_29
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    invoke-static {v1}, Lcom/android/internal/telephony/satellite/DemoSimulator;->-$$Nest$fgetmIsAligned(Lcom/android/internal/telephony/satellite/DemoSimulator;)Z

    move-result v1

    if-eqz v1, :cond_38

    const/4 v1, 0x1

    .line 139
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;->handleEventDeviceAlignedWithSatellite(Z)V

    goto :goto_38

    :catchall_36
    move-exception v1

    goto :goto_3a

    .line 141
    :cond_38
    :goto_38
    monitor-exit v0

    return-void

    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_29 .. :try_end_3b} :catchall_36

    :try_start_3b
    throw v1
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3c} :catch_3c

    :catch_3c
    move-exception v0

    .line 143
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotConnectedState: RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/StateMachine;->loge(Ljava/lang/String;)V
    invoke-static {p0, v0}, Lcom/android/internal/telephony/satellite/DemoSimulator;->access$400(Lcom/android/internal/telephony/satellite/DemoSimulator;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist exit()V
    .registers 2

    .line 149
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    const-string v0, "Exiting NotConnectedState"

    # invokes: Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {p0, v0}, Lcom/android/internal/telephony/satellite/DemoSimulator;->access$500(Lcom/android/internal/telephony/satellite/DemoSimulator;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotConnectedState: processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/DemoSimulator;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/DemoSimulator;->access$600(Lcom/android/internal/telephony/satellite/DemoSimulator;Ljava/lang/String;)V

    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_40

    const/4 v1, 0x3

    if-eq v0, v1, :cond_34

    const/4 p1, 0x4

    if-eq v0, p1, :cond_2a

    goto :goto_49

    .line 163
    :cond_2a
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/DemoSimulator;->-$$Nest$fgetmConnectedState(Lcom/android/internal/telephony/satellite/DemoSimulator;)Lcom/android/internal/telephony/satellite/DemoSimulator$ConnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_49

    .line 160
    :cond_34
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;->handleEventDeviceAlignedWithSatellite(Z)V

    goto :goto_49

    .line 157
    :cond_40
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DemoSimulator$NotConnectedState;->this$0:Lcom/android/internal/telephony/satellite/DemoSimulator;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/DemoSimulator;->-$$Nest$fgetmPowerOffState(Lcom/android/internal/telephony/satellite/DemoSimulator;)Lcom/android/internal/telephony/satellite/DemoSimulator$PowerOffState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :goto_49
    const/4 p0, 0x1

    return p0
.end method
