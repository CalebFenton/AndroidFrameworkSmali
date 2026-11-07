.class Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;
.super Lcom/android/internal/telephony/State;
.source "SatelliteSessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteSessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisablingState"
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

    .line 849
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    return-void
.end method

.method private blacklist handleEventSatelliteModemStateChanged(Landroid/os/Message;)V
    .registers 4

    .line 918
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    .line 920
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    return-void

    :cond_b
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    .line 922
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v1, "Modem OFF state will be processed after getting the confirmation of the disable request"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 924
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->deferMessage(Landroid/os/Message;)V

    :cond_1a
    return-void
.end method

.method private blacklist handleSatelliteEnabledStateChanged(Z)V
    .registers 3

    if-eqz p1, :cond_10

    .line 910
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 911
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string p1, "Enable request has succeeded. Set mPreviousState to NOT_CONNECTED"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    return-void

    .line 913
    :cond_10
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmPowerOffState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 3

    .line 852
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v1, "Entering DisablingState"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 855
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mnotifyStateChangedEvent(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 858
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$munregisterForScreenStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    return-void
.end method

.method public blacklist exit()V
    .registers 2

    .line 863
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string v0, "Exiting DisablingState"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 868
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisablingState: processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    .line 869
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_9b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_97

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2d

    goto/16 :goto_a6

    .line 874
    :cond_2d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_44

    .line 880
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V

    .line 881
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const-string p1, "Enable request has failed. Set mPreviousState to OFF"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V

    goto :goto_a6

    .line 884
    :cond_44
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_8d

    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8d

    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I

    move-result p1

    if-ne p1, v2, :cond_5f

    goto :goto_8d

    .line 888
    :cond_5f
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I

    move-result p1

    if-ne p1, v3, :cond_71

    .line 889
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmEnablingState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_a6

    .line 890
    :cond_71
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I

    move-result p1

    if-ne p1, v1, :cond_83

    .line 891
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmPowerOffState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_a6

    .line 893
    :cond_83
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmNotConnectedState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_a6

    .line 887
    :cond_8d
    :goto_8d
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->-$$Nest$fgetmConnectedState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_a6

    .line 897
    :cond_97
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->handleEventSatelliteModemStateChanged(Landroid/os/Message;)V

    goto :goto_a6

    .line 871
    :cond_9b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;->handleSatelliteEnabledStateChanged(Z)V

    :goto_a6
    return v2
.end method
