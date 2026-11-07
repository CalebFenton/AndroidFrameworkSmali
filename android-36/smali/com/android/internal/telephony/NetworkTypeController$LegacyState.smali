.class final Lcom/android/internal/telephony/NetworkTypeController$LegacyState;
.super Lcom/android/internal/telephony/State;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkTypeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LegacyState"
.end annotation


# instance fields
.field private blacklist mIsNrRestricted:Z

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

    .line 847
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    const/4 p1, 0x0

    .line 848
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->mIsNrRestricted:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 3

    .line 852
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v1, "Entering LegacyState"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 854
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 855
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->mIsNrRestricted:Z

    .line 857
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    :cond_32
    return-void
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 1

    .line 922
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->mIsNrRestricted:Z

    if-eqz p0, :cond_7

    const-string p0, "restricted"

    return-object p0

    :cond_7
    const-string p0, "legacy"

    return-object p0
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 863
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LegacyState: process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetEventName(Lcom/android/internal/telephony/NetworkTypeController;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 866
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_a2

    const/16 v1, 0xb

    const-string v2, "Reset timers since timer reset is enabled for RRC idle."

    if-eq v0, v1, :cond_63

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5d

    const/4 v1, 0x4

    if-eq v0, v1, :cond_35

    const/4 p0, 0x0

    return p0

    .line 904
    :cond_35
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 905
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsTimerResetEnabledForLegacyStateRrcIdle(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_132

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_132

    .line 906
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 907
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 908
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_132

    .line 868
    :cond_5d
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monServiceStateChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_a2

    .line 892
    :cond_63
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 893
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdatePhysicalChannelConfigs(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/List;)V

    .line 894
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misUsingPhysicalChannelConfigForRrcDetection(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_132

    .line 895
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetPhysicalLinkStatusFromPhysicalChannelConfig(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 896
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsTimerResetEnabledForLegacyStateRrcIdle(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_132

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_132

    .line 897
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 898
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 899
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_132

    .line 871
    :cond_a2
    :goto_a2
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result p1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_100

    .line 872
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_bd

    goto :goto_100

    .line 879
    :cond_bd
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result v0

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrNotRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 880
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 881
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLteConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    move-result-object v0

    goto :goto_e2

    :cond_dc
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    move-result-object v0

    .line 880
    :goto_e2
    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_12a

    .line 883
    :cond_e6
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result p1

    if-nez p1, :cond_fa

    .line 884
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "Reset timers since 2G and 3G don\'t need NR timers."

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 885
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 887
    :cond_fa
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_12a

    .line 873
    :cond_100
    :goto_100
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_112

    .line 874
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrConnectedAdvancedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_12a

    .line 876
    :cond_112
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 877
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    move-result-object v0

    goto :goto_127

    :cond_121
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

    move-result-object v0

    .line 876
    :goto_127
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 889
    :goto_12a
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->mIsNrRestricted:Z

    .line 914
    :cond_132
    :goto_132
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_14b

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_14b

    .line 915
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    :cond_14b
    const/4 p0, 0x1

    return p0
.end method
