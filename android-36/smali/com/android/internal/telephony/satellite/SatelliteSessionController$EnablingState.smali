.class Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;
.super Lcom/android/internal/telephony/State;
.source "SatelliteSessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteSessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnablingState"
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

    .line 777
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    return-void
.end method

.method private blacklist handleSatelliteEnabledStateChanged(Z)V
    .registers 3

    if-eqz p1, :cond_2e

    .line 819
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmSatelliteController(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteAttachRequired()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 820
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmNotConnectedState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_21

    .line 822
    :cond_18
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 824
    :goto_21
    invoke-static {}, Lcom/android/internal/telephony/satellite/DemoSimulator;->getInstance()Lcom/android/internal/telephony/satellite/DemoSimulator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/DemoSimulator;->onSatelliteModeOn()V

    .line 826
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mregisterForScreenStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    return-void

    .line 834
    :cond_2e
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/4 v0, 0x4

    # invokes: Lcom/android/internal/telephony/StateMachine;->removeDeferredMessages(I)V
    invoke-static {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->access$000(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 835
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmPowerOffState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method private blacklist handleSatelliteModemStateChanged(Landroid/os/Message;)V
    .registers 4

    .line 840
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    .line 842
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmPowerOffState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    .line 844
    :cond_f
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 3

    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v1, "Entering EnablingState"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 783
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 784
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mnotifyStateChangedEvent(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    return-void
.end method

.method public blacklist exit()V
    .registers 2

    .line 789
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v0, "Exiting EnablingState"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 794
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EnablingState: processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 795
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_58

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4a

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2e

    goto :goto_67

    .line 800
    :cond_2e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 801
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmPowerOffState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_67

    .line 803
    :cond_42
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string p1, "Unexpected failed disable event in EnablingState"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mploge(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    goto :goto_67

    .line 810
    :cond_4a
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mhandleSatelliteEnablementStarted(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Z)V

    goto :goto_67

    .line 807
    :cond_58
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;->handleSatelliteModemStateChanged(Landroid/os/Message;)V

    goto :goto_67

    .line 797
    :cond_5c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;->handleSatelliteEnabledStateChanged(Z)V

    :goto_67
    const/4 p0, 0x1

    return p0
.end method
