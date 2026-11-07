.class final Lcom/android/internal/telephony/NetworkTypeController$DefaultState;
.super Lcom/android/internal/telephony/State;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkTypeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultState"
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

    .line 712
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;)V

    return-void
.end method


# virtual methods
.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 7

    .line 716
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultState: process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetEventName(Lcom/android/internal/telephony/NetworkTypeController;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 717
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_276

    .line 832
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received invalid event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 813
    :pswitch_3e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 814
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmInVoiceCall(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 815
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/QosBearerSession;

    .line 817
    invoke-virtual {v0}, Landroid/telephony/data/QosBearerSession;->getQos()Landroid/telephony/data/Qos;

    move-result-object v2

    instance-of v3, v2, Landroid/telephony/data/EpsQos;

    if-eqz v3, :cond_6d

    check-cast v2, Landroid/telephony/data/EpsQos;

    invoke-virtual {v2}, Landroid/telephony/data/EpsQos;->getQci()I

    move-result v2

    if-ne v2, v1, :cond_6d

    .line 818
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmInVoiceCall(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    goto :goto_82

    .line 820
    :cond_6d
    invoke-virtual {v0}, Landroid/telephony/data/QosBearerSession;->getQos()Landroid/telephony/data/Qos;

    move-result-object v0

    instance-of v2, v0, Landroid/telephony/data/NrQos;

    if-eqz v2, :cond_4b

    check-cast v0, Landroid/telephony/data/NrQos;

    invoke-virtual {v0}, Landroid/telephony/data/NrQos;->get5Qi()I

    move-result v0

    if-ne v0, v1, :cond_4b

    .line 821
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmInVoiceCall(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 825
    :cond_82
    :goto_82
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsTimerResetEnabledOnVoiceQos(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_274

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmInVoiceCall(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_274

    .line 826
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "Device in voice call, reset all timers"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 827
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 828
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionToCurrentState(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_274

    .line 801
    :pswitch_a5
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 802
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsDeviceIdleMode(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 804
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsDeviceIdleMode changed to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsDeviceIdleMode(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 806
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsDeviceIdleMode(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_f0

    .line 807
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "Reset timers since device is in idle mode."

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 808
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 810
    :cond_f0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionToCurrentState(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_274

    .line 793
    :pswitch_f7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 794
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdatePhysicalChannelConfigs(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/List;)V

    .line 795
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misUsingPhysicalChannelConfigForRrcDetection(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_115

    .line 796
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetPhysicalLinkStatusFromPhysicalChannelConfig(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 798
    :cond_115
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionToCurrentState(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_274

    .line 788
    :pswitch_11c
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "Reset timers since preferred network mode changed."

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 789
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 790
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionToCurrentState(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_274

    .line 776
    :pswitch_12f
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "Reset timers since radio is off or unavailable."

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 777
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 778
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmRatchetedNrBands(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 779
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmRatchetedNrBandwidths(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 780
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmLastAnchorNrCellId(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 781
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmDoesPccListIndicateIdle(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 782
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsNrAdvancedAllowedByPco(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 783
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmInVoiceCall(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 784
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalChannelConfigs(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/List;)V

    .line 785
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLegacyState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_274

    .line 767
    :pswitch_16f
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Secondary timer expired for state: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmSecondaryTimerState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 768
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 769
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-wide/16 v3, 0x0

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmSecondaryTimerExpireTimestamp(Lcom/android/internal/telephony/NetworkTypeController;J)V

    .line 770
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmSecondaryTimerState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    .line 771
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 772
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmLastShownNrDueToAdvancedBand(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 773
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_274

    .line 763
    :pswitch_1af
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Primary timer expired for state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPrimaryTimerState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 764
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/IState;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithSecondaryTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_274

    .line 757
    :pswitch_1d6
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mparseCarrierConfigs(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 758
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "Reset timers since carrier configurations changed."

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 759
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 760
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionToCurrentState(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_274

    .line 743
    :pswitch_1ee
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 744
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsPhysicalChannelConfigOn(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 746
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsPhysicalChannelConfigOn changed to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPhysicalChannelConfigOn(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 748
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPhysicalChannelConfigOn(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_22f

    .line 750
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "Reset timers since physical channel config indications are off."

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 752
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 754
    :cond_22f
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionToCurrentState(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_274

    .line 740
    :pswitch_235
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    goto :goto_274

    .line 736
    :pswitch_23d
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monServiceStateChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 737
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionToCurrentState(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_274

    .line 732
    :pswitch_248
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mregisterForAllEvents(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 733
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mparseCarrierConfigs(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_274

    .line 723
    :pswitch_253
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "Reset timers on state machine quitting."

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 724
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 725
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$munRegisterForAllEvents(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 726
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->quit()V

    goto :goto_274

    .line 719
    :pswitch_26a
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 720
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionToCurrentState(Lcom/android/internal/telephony/NetworkTypeController;)V

    :cond_274
    :goto_274
    return v1

    nop

    :pswitch_data_276
    .packed-switch 0x0
        :pswitch_26a
        :pswitch_253
        :pswitch_248
        :pswitch_23d
        :pswitch_235
        :pswitch_1ee
        :pswitch_1d6
        :pswitch_1af
        :pswitch_16f
        :pswitch_12f
        :pswitch_11c
        :pswitch_f7
        :pswitch_a5
        :pswitch_3e
    .end packed-switch
.end method
