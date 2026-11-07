.class final Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;
.super Lcom/android/internal/telephony/State;
.source "DataNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectingState"
.end annotation


# instance fields
.field private blacklist mRegStateWhenSetup:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetwork;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1498
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method private blacklist onSetupResponse(ILandroid/telephony/data/DataCallResponse;)V
    .registers 10

    .line 1645
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetupResponse: resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telephony/data/DataServiceCallback;->resultCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mlogl(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;)V

    .line 1647
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mgetFailCauseFromDataCallResponse(Lcom/android/internal/telephony/data/DataNetwork;ILandroid/telephony/data/DataCallResponse;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmFailCause(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1648
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->mRegStateWhenSetup:I

    invoke-static {p1, p2, v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mvalidateDataCallResponse(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/data/DataCallResponse;I)V

    .line 1649
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmFailCause(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result p1

    const-wide/16 v0, -0x1

    if-nez p1, :cond_fd

    .line 1650
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkController(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object p1

    .line 1651
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 1650
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkByInterface(Ljava/lang/String;)Lcom/android/internal/telephony/data/DataNetwork;

    move-result-object p1

    if-eqz p1, :cond_bb

    .line 1653
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has been already used by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Silently tear down now."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mlogl(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;)V

    .line 1657
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getTrafficDescriptors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 1658
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate network interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " detected."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "62f66e7e-8d71-45de-a57b-dc5c78223fd5"

    invoke-static {p1, p2, v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mreportAnomaly(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    :cond_a4
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmRetryDelayMillis(Lcom/android/internal/telephony/data/DataNetwork;J)V

    .line 1665
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const p2, 0x1000b

    invoke-static {p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmFailCause(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1666
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDisconnectedState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    .line 1670
    :cond_bb
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/data/DataCallResponse;)V

    .line 1672
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmVcnManager(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager;

    move-result-object p1

    if-eqz p1, :cond_f3

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmVcnManager(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmLinkProperties(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/vcn/VcnManager;->applyVcnNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnNetworkPolicyResult;

    move-result-object p1

    .line 1673
    invoke-virtual {p1}, Landroid/net/vcn/VcnNetworkPolicyResult;->isTeardownRequested()Z

    move-result p1

    if-eqz p1, :cond_f3

    .line 1674
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string p2, "VCN service requested to tear down the network."

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1678
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/16 p1, 0xf

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monTearDown(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void

    .line 1682
    :cond_f3
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmConnectedState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_111

    .line 1685
    :cond_fd
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    if-eqz p2, :cond_105

    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getRetryDurationMillis()J

    move-result-wide v0

    .line 1686
    :cond_105
    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmRetryDelayMillis(Lcom/android/internal/telephony/data/DataNetwork;J)V

    .line 1687
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDisconnectedState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 1692
    :goto_111
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    if-eqz p1, :cond_13c

    .line 1693
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result p1

    .line 1694
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v0

    :goto_139
    move v4, p1

    move v5, v0

    goto :goto_13f

    :cond_13c
    const/4 p1, 0x0

    const/4 v0, -0x1

    goto :goto_139

    .line 1696
    :goto_13f
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataCallSessionStats(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    move-result-object v1

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1697
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mgetDataNetworkType(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v3

    if-eqz p2, :cond_154

    .line 1701
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result p0

    :goto_151
    move v6, p0

    move-object v2, p2

    goto :goto_15b

    :cond_154
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmFailCause(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result p0

    goto :goto_151

    .line 1696
    :goto_15b
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->onSetupDataCallResponse(Landroid/telephony/data/DataCallResponse;IIII)V

    return-void
.end method

.method private blacklist setupData()V
    .registers 16

    .line 1588
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mgetDataNetworkType(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v0

    .line 1590
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mgetNetworkRegistrationInfo(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 1592
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getNetworkRegistrationState()I

    move-result v1

    goto :goto_14

    :cond_13
    const/4 v1, 0x4

    .line 1593
    :goto_14
    iput v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->mRegStateWhenSetup:I

    .line 1597
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v5

    .line 1602
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDataRoamingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v14, 0x0

    if-nez v1, :cond_47

    if-eqz v5, :cond_45

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1603
    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    if-nez v1, :cond_45

    goto :goto_47

    :cond_45
    move v6, v14

    goto :goto_48

    :cond_47
    :goto_47
    move v6, v2

    .line 1606
    :goto_48
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v11

    if-eqz v11, :cond_71

    .line 1608
    invoke-virtual {v11}, Landroid/telephony/data/TrafficDescriptor;->getDataNetworkName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1611
    invoke-virtual {v11}, Landroid/telephony/data/TrafficDescriptor;->getDataNetworkName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1612
    invoke-virtual {v11}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object v1

    if-nez v1, :cond_6f

    goto :goto_71

    :cond_6f
    move v12, v14

    goto :goto_72

    :cond_71
    :goto_71
    move v12, v2

    .line 1614
    :goto_72
    invoke-static {v0}, Lcom/android/internal/telephony/data/DataUtils;->networkTypeToAccessNetworkType(I)I

    move-result v3

    .line 1616
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataServiceManagers(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v4

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPduSessionId(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v9

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/4 v7, 0x6

    .line 1620
    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 1617
    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/data/DataServiceManager;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V

    .line 1622
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_bc

    .line 1623
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v14

    .line 1624
    :cond_bc
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataCallSessionStats(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataNetwork;->isSatellite()Z

    move-result v2

    invoke-virtual {v1, v14, v2}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->onSetupDataCall(IZ)V

    .line 1626
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupData: accessNetwork="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    invoke-static {v3}, Landroid/telephony/AccessNetworkConstants$AccessNetworkType;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isModemRoaming="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", allowRoaming="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", PDU session id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPduSessionId(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", matchAllRuleAllowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1626
    invoke-static {v1, v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mlogl(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;)V

    .line 1631
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    .line 1632
    invoke-static {v0}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v5

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v0

    .line 1633
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result v6

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v7

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object p0

    .line 1634
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v8

    .line 1631
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeSetupDataCall(IIILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 5

    .line 1503
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v1

    .line 1504
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyNetworkConnectingTimeoutMs()I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x14

    .line 1503
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IJ)V

    .line 1505
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mcreateNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkAgent;)V

    .line 1506
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmInitialNetworkAgentId(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1507
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DN-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmInitialNetworkAgentId(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4c

    const-string v2, "C"

    goto :goto_4e

    :cond_4c
    const-string v2, "I"

    :goto_4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmLogTag(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;)V

    .line 1512
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCarrierPrivilegesTracker()Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    move-result-object v1

    .line 1513
    invoke-virtual {v1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getCarrierServicePackageUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmCarrierServicePackageUid(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1515
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mnotifyPreciseDataConnectionState(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1516
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7d

    .line 1518
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mallocatePduSessionId(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void

    .line 1522
    :cond_7d
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->setupData()V

    return-void
.end method

.method public blacklist exit()V
    .registers 2

    .line 1527
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/16 v0, 0x14

    # invokes: Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V
    invoke-static {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->access$100(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 8

    .line 1532
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->logv(Ljava/lang/String;)V

    .line 1533
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const-wide/16 v2, -0x1

    if-eq v0, v1, :cond_b6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_a4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_81

    const/16 v1, 0x19

    if-eq v0, v1, :cond_81

    packed-switch v0, :pswitch_data_120

    const/4 p0, 0x0

    return p0

    .line 1564
    :pswitch_32
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data network stuck in connecting state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v4}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v4

    .line 1566
    invoke-virtual {v4}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyNetworkConnectingTimeoutMs()I

    move-result v4

    int-to-long v4, v4

    .line 1565
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "58c56403-7ea7-4e56-a0c7-e467114d09b8"

    .line 1564
    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mreportAnomaly(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1, v2, v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmRetryDelayMillis(Lcom/android/internal/telephony/data/DataNetwork;J)V

    .line 1571
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const v0, 0x1000b

    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmFailCause(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1572
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDisconnectedState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_11e

    .line 1575
    :pswitch_78
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1576
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monDeactivateResponse(Lcom/android/internal/telephony/data/DataNetwork;I)V

    goto/16 :goto_11e

    .line 1560
    :cond_81
    :pswitch_81
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Defer message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1561
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_11e

    .line 1551
    :cond_a4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1553
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "data_call_response"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/telephony/data/DataCallResponse;

    .line 1554
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->onSetupResponse(ILandroid/telephony/data/DataCallResponse;)V

    goto :goto_11e

    .line 1535
    :cond_b6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1536
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_e8

    .line 1537
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmPduSessionId(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1538
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set PDU session id to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPduSessionId(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_100

    .line 1540
    :cond_e8
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to allocate PDU session id. e="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    .line 1543
    :goto_100
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmAttachedNetworkRequestList(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_110

    .line 1544
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->setupData()V

    goto :goto_11e

    .line 1546
    :cond_110
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1, v2, v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmRetryDelayMillis(Lcom/android/internal/telephony/data/DataNetwork;J)V

    .line 1547
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDisconnectedState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :goto_11e
    const/4 p0, 0x1

    return p0

    :pswitch_data_120
    .packed-switch 0x13
        :pswitch_78
        :pswitch_32
        :pswitch_81
    .end packed-switch
.end method
