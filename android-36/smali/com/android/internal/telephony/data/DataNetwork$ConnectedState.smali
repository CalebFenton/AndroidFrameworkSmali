.class final Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;
.super Lcom/android/internal/telephony/State;
.source "DataNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetwork;


# direct methods
.method public static synthetic blacklist $r8$lambda$4I70rOFKKI_dS2_2bIUvPmhkhpQ(Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->lambda$enter$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MQlAIh1rTiGPRJQdhyDN1GaEem0(Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->lambda$enter$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Xt62q4IVY9fMrDY4Ohgu549XhLk(Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->lambda$enter$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$abOVdjNfjQAA7b_VLSoUSdAWFzI(Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;Ljava/lang/Integer;Landroid/telephony/PcoData;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->lambda$enter$2(Ljava/lang/Integer;Landroid/telephony/PcoData;)V

    return-void
.end method

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

    .line 1710
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$enter$0()V
    .registers 2

    .line 1721
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onConnected(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$enter$1()V
    .registers 4

    .line 1735
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string v1, "VCN policy changed."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1736
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmVcnManager(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmLinkProperties(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/vcn/VcnManager;->applyVcnNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnNetworkPolicyResult;

    move-result-object v0

    .line 1737
    invoke-virtual {v0}, Landroid/net/vcn/VcnNetworkPolicyResult;->isTeardownRequested()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1738
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->tearDown(I)V

    return-void

    .line 1740
    :cond_2b
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$enter$2(Ljava/lang/Integer;Landroid/telephony/PcoData;)V
    .registers 3

    .line 1750
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monPcoDataChanged(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/PcoData;)V

    return-void
.end method

.method private synthetic blacklist lambda$enter$3()V
    .registers 3

    .line 1753
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmLinkStatus(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onLinkStatusChanged(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 8

    .line 1715
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmEverConnected(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 1717
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string v1, "network connected."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1718
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmEverConnected(Lcom/android/internal/telephony/data/DataNetwork;Z)V

    .line 1719
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkAgent;->markConnected()V

    .line 1720
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    .line 1723
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v2, Lcom/android/internal/telephony/data/QosCallbackTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v4}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/telephony/data/QosCallbackTracker;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkAgent;Lcom/android/internal/telephony/Phone;)V

    invoke-static {v0, v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmQosCallbackTracker(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/QosCallbackTracker;)V

    .line 1724
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmQosCallbackTracker(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/QosCallbackTracker;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmQosBearerSessions(Lcom/android/internal/telephony/data/DataNetwork;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/QosCallbackTracker;->updateSessions(Ljava/util/List;)V

    .line 1725
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v2, Lcom/android/internal/telephony/data/KeepaliveTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1726
    invoke-virtual {v4}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v5}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/data/KeepaliveTracker;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkAgent;)V

    invoke-static {v0, v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmKeepaliveTracker(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/KeepaliveTracker;)V

    .line 1727
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v0

    if-ne v0, v1, :cond_7e

    .line 1728
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mregisterForWwanEvents(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1733
    :cond_7e
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmVcnManager(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager;

    move-result-object v0

    if-eqz v0, :cond_ad

    .line 1734
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;)V

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmVcnPolicyChangeListener(Lcom/android/internal/telephony/data/DataNetwork;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V

    .line 1743
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmVcnManager(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1744
    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmVcnPolicyChangeListener(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;

    move-result-object v1

    .line 1743
    invoke-virtual {v0, v2, v1}, Landroid/net/vcn/VcnManager;->addVcnNetworkPolicyChangeListener(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V

    .line 1749
    :cond_ad
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPcoData(Lcom/android/internal/telephony/data/DataNetwork;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/util/SparseIntArray;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;)V

    .line 1750
    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1752
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    .line 1754
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mnotifyPreciseDataConnectionState(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1755
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateSuspendState(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 8

    .line 1760
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

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

    .line 1761
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_130

    const/16 v2, 0x10

    if-eq v0, v2, :cond_12a

    const/16 v2, 0x13

    if-eq v0, v2, :cond_122

    const/16 v2, 0x1c

    if-eq v0, v2, :cond_118

    packed-switch v0, :pswitch_data_15c

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_166

    return v2

    .line 1793
    :pswitch_35
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying source transport "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v3

    .line 1794
    invoke-static {v3}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " that handover is about to start."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1793
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1796
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataServiceManagers(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/util/SparseIntArray;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v5, 0x1a

    .line 1797
    invoke-virtual {v3, v5, v2, v4, p1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1796
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->startHandover(ILandroid/os/Message;)V

    .line 1801
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmHandoverState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$HandoverState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_15a

    .line 1817
    :pswitch_96
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateSuspendState(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1818
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto/16 :goto_15a

    .line 1811
    :pswitch_a2
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDisconnectingState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 1812
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    int-to-long v2, p1

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IIJ)V

    goto/16 :goto_15a

    .line 1785
    :pswitch_b7
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monDisplayInfoChanged(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto/16 :goto_15a

    .line 1825
    :pswitch_be
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel handover no response within "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object p0

    .line 1827
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getNetworkHandoverTimeoutMs()I

    move-result p0

    int-to-long v2, p0

    .line 1826
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " seconds."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ad320988-0601-4955-836a-e6b67289c294"

    .line 1825
    invoke-static {p1, p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mreportAnomaly(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15a

    .line 1776
    :pswitch_ed
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1777
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_10e

    .line 1778
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_BANDWIDTH_ESTIMATE_FROM_MODEM_CHANGED: error ignoring, e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_15a

    .line 1782
    :cond_10e
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monBandwidthUpdatedFromModem(Lcom/android/internal/telephony/data/DataNetwork;Ljava/util/List;)V

    goto :goto_15a

    .line 1822
    :cond_118
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/function/Consumer;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mhandleDataNetworkValidationRequest(Lcom/android/internal/telephony/data/DataNetwork;Ljava/util/function/Consumer;)V

    goto :goto_15a

    .line 1807
    :cond_122
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1808
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monDeactivateResponse(Lcom/android/internal/telephony/data/DataNetwork;I)V

    goto :goto_15a

    .line 1804
    :cond_12a
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateMeteredAndCongested(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto :goto_15a

    .line 1763
    :cond_130
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmInvokedDataDeactivation(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result v0

    if-eqz v0, :cond_140

    .line 1764
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string p1, "Ignore tear down request because network is being torn down."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_15a

    .line 1768
    :cond_140
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1770
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    # invokes: Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->access$200(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1771
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    # invokes: Lcom/android/internal/telephony/StateMachine;->removeDeferredMessages(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->access$300(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1772
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDisconnectingState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 1773
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monTearDown(Lcom/android/internal/telephony/data/DataNetwork;I)V

    :goto_15a
    const/4 p0, 0x1

    return p0

    :pswitch_data_15c
    .packed-switch 0xb
        :pswitch_ed
        :pswitch_be
        :pswitch_b7
    .end packed-switch

    :pswitch_data_166
    .packed-switch 0x15
        :pswitch_a2
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_35
    .end packed-switch
.end method
