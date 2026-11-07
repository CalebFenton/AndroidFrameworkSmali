.class final Lcom/android/internal/telephony/NetworkTypeController$IdleState;
.super Lcom/android/internal/telephony/State;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkTypeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkTypeController;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 931
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController$IdleState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 3

    .line 934
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v1, "Entering IdleState"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 936
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 937
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 938
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 1

    .line 1005
    const-string p0, "not_restricted_rrc_idle"

    return-object p0
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 944
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdleState: process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetEventName(Lcom/android/internal/telephony/NetworkTypeController;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 947
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_9e

    const/16 v1, 0xb

    const-string v2, "Reevaluating state due to link status changed."

    const/4 v3, 0x0

    if-eq v0, v1, :cond_61

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_35

    return v3

    .line 986
    :cond_35
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 987
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 988
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLteConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_116

    .line 990
    :cond_4f
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 991
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    goto/16 :goto_116

    .line 949
    :cond_5b
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monServiceStateChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_9e

    .line 973
    :cond_61
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 974
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdatePhysicalChannelConfigs(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/List;)V

    .line 975
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misUsingPhysicalChannelConfigForRrcDetection(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_116

    .line 976
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetPhysicalLinkStatusFromPhysicalChannelConfig(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 977
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_92

    .line 978
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLteConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_116

    .line 980
    :cond_92
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 981
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    goto/16 :goto_116

    .line 952
    :cond_9e
    :goto_9e
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result p1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_ec

    .line 953
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    .line 954
    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result v0

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_b9

    goto :goto_ec

    .line 961
    :cond_b9
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result p1

    if-eqz p1, :cond_e2

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrNotRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_ca

    goto :goto_e2

    .line 964
    :cond_ca
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_dc

    .line 965
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLteConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_116

    .line 968
    :cond_dc
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_116

    .line 962
    :cond_e2
    :goto_e2
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLegacyState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_116

    .line 955
    :cond_ec
    :goto_ec
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_fe

    .line 956
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrConnectedAdvancedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_116

    .line 958
    :cond_fe
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 959
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    move-result-object v0

    goto :goto_113

    :cond_10d
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

    move-result-object v0

    .line 958
    :goto_113
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 997
    :cond_116
    :goto_116
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_12f

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_12f

    .line 998
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$IdleState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    :cond_12f
    const/4 p0, 0x1

    return p0
.end method
