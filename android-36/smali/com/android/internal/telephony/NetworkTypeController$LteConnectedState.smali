.class final Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;
.super Lcom/android/internal/telephony/State;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkTypeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LteConnectedState"
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

    .line 1014
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 3

    .line 1017
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v1, "Entering LteConnectedState"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1019
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1020
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1021
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 1

    .line 1088
    const-string p0, "not_restricted_rrc_con"

    return-object p0
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 1027
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LteConnectedState: process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetEventName(Lcom/android/internal/telephony/NetworkTypeController;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1030
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

    .line 1069
    :cond_35
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1070
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_4f

    .line 1071
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_116

    .line 1073
    :cond_4f
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1074
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    goto/16 :goto_116

    .line 1032
    :cond_5b
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monServiceStateChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_9e

    .line 1056
    :cond_61
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1057
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdatePhysicalChannelConfigs(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/List;)V

    .line 1058
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misUsingPhysicalChannelConfigForRrcDetection(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_116

    .line 1059
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetPhysicalLinkStatusFromPhysicalChannelConfig(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1060
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_92

    .line 1061
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_116

    .line 1063
    :cond_92
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1064
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    goto/16 :goto_116

    .line 1035
    :cond_9e
    :goto_9e
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result p1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_ec

    .line 1036
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    .line 1037
    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result v0

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_b9

    goto :goto_ec

    .line 1044
    :cond_b9
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result p1

    if-eqz p1, :cond_e2

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrNotRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_ca

    goto :goto_e2

    .line 1047
    :cond_ca
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_dc

    .line 1048
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_116

    .line 1051
    :cond_dc
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_116

    .line 1045
    :cond_e2
    :goto_e2
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLegacyState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_116

    .line 1038
    :cond_ec
    :goto_ec
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_fe

    .line 1039
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrConnectedAdvancedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_116

    .line 1041
    :cond_fe
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 1042
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    move-result-object v0

    goto :goto_113

    :cond_10d
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

    move-result-object v0

    .line 1041
    :goto_113
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 1080
    :cond_116
    :goto_116
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_12f

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_12f

    .line 1081
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    :cond_12f
    const/4 p0, 0x1

    return p0
.end method
