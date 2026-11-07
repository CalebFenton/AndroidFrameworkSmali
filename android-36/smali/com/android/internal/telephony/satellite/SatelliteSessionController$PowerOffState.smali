.class Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;
.super Lcom/android/internal/telephony/State;
.source "SatelliteSessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteSessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerOffState"
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

    .line 728
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    return-void
.end method

.method private blacklist handleSatelliteEnablementStarted(Z)V
    .registers 2

    if-eqz p1, :cond_c

    .line 770
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmEnablingState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    .line 772
    :cond_c
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string p1, "Unexpected satellite disablement started in PowerOff state"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogw(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 4

    .line 731
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v1, "Entering PowerOffState"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmSatelliteController(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->moveSatelliteToOffStateAndCleanUpResources(I)V

    .line 735
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 736
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 737
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object v0, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsSendingTriggeredDuringTransferringState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$munbindService(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    .line 739
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mstopNbIotInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    .line 740
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mstopEsosInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    .line 741
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mstopP2pSmsInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    .line 742
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mendUserInactivity(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    .line 743
    invoke-static {}, Lcom/android/internal/telephony/satellite/DemoSimulator;->getInstance()Lcom/android/internal/telephony/satellite/DemoSimulator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/DemoSimulator;->onSatelliteModeOff()V

    .line 744
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mnotifyStateChangedEvent(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 746
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$munregisterForScreenStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    return-void
.end method

.method public blacklist exit()V
    .registers 3

    .line 751
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v1, "Exiting PowerOffState"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v1, "Attempting to bind to SatelliteGatewayService."

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 753
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mbindService(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 758
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerOffState: processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 759
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_24

    goto :goto_2f

    .line 761
    :cond_24
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;->handleSatelliteEnablementStarted(Z)V

    :goto_2f
    const/4 p0, 0x1

    return p0
.end method
