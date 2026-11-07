.class Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;
.super Ljava/lang/Object;
.source "NsdManager.java"

# interfaces
.implements Landroid/net/nsd/NsdManager$DiscoveryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelegatingDiscoveryListener"
.end annotation


# instance fields
.field private blacklist mAllServicesLost:Z

.field private final blacklist mFoundInfo:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNetwork:Landroid/net/Network;

.field private final blacklist mWrapped:Landroid/net/nsd/NsdManager$DiscoveryListener;

.field private final blacklist mWrappedExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist this$1:Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;


# direct methods
.method public static synthetic blacklist $r8$lambda$-Pc832Qgr05ZUwZRlHW9ZeEYTx4(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->lambda$onDiscoveryStopped$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EOjNW0M7qIeD9QojgsLEOGZsau4(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;Landroid/net/nsd/NsdServiceInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->lambda$onServiceLost$4(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Q5rThKB9HT20wW44emjmhT5vss0(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;Landroid/net/nsd/NsdServiceInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->lambda$onServiceFound$3(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rmtKEisWG4s0vwfu49inHeEh0bE(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->lambda$onStopDiscoveryFailed$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tLwa2lqFcDPgP-BPxOKGh3v6CTY(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;Landroid/net/nsd/NsdServiceInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->lambda$notifyAllServicesLost$0(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;Landroid/net/Network;Landroid/net/nsd/NsdManager$DiscoveryListener;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "listener"    # Landroid/net/nsd/NsdManager$DiscoveryListener;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 627
    iput-object p1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->this$1:Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mFoundInfo:Landroid/util/ArraySet;

    .line 624
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mAllServicesLost:Z

    .line 628
    iput-object p2, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mNetwork:Landroid/net/Network;

    .line 629
    iput-object p3, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mWrapped:Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 630
    iput-object p4, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mWrappedExecutor:Ljava/util/concurrent/Executor;

    .line 631
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;Landroid/net/Network;Landroid/net/nsd/NsdManager$DiscoveryListener;Ljava/util/concurrent/Executor;Landroid/net/nsd/NsdManager-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;-><init>(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;Landroid/net/Network;Landroid/net/nsd/NsdManager$DiscoveryListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$notifyAllServicesLost$0(Landroid/net/nsd/NsdServiceInfo;)V
    .registers 3
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .line 639
    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mWrapped:Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-interface {v0, p1}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDiscoveryStopped$2(Ljava/lang/String;)V
    .registers 3
    .param p1, "serviceType"    # Ljava/lang/String;

    .line 677
    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mWrapped:Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-interface {v0, p1}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStopped(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onServiceFound$3(Landroid/net/nsd/NsdServiceInfo;)V
    .registers 3
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .line 689
    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mWrapped:Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-interface {v0, p1}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onServiceLost$4(Landroid/net/nsd/NsdServiceInfo;)V
    .registers 3
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .line 700
    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mWrapped:Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-interface {v0, p1}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onStopDiscoveryFailed$1(Ljava/lang/String;)V
    .registers 3
    .param p1, "serviceType"    # Ljava/lang/String;

    .line 669
    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mWrapped:Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-interface {v0, p1}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStopped(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method blacklist notifyAllServicesLost()V
    .registers 6

    .line 634
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mFoundInfo:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 635
    iget-object v1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mFoundInfo:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;

    .line 636
    .local v1, "trackedInfo":Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;
    new-instance v2, Landroid/net/nsd/NsdServiceInfo;

    invoke-static {v1}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;->-$$Nest$fgetmServiceName(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;->-$$Nest$fgetmServiceType(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    .local v2, "serviceInfo":Landroid/net/nsd/NsdServiceInfo;
    iget-object v3, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v3}, Landroid/net/nsd/NsdServiceInfo;->setNetwork(Landroid/net/Network;)V

    .line 639
    iget-object v3, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mWrappedExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener$$ExternalSyntheticLambda1;-><init>(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;Landroid/net/nsd/NsdServiceInfo;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 634
    .end local v1    # "trackedInfo":Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;
    .end local v2    # "serviceInfo":Landroid/net/nsd/NsdServiceInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 641
    .end local v0    # "i":I
    :cond_30
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mAllServicesLost:Z

    .line 642
    return-void
.end method

.method public whitelist onDiscoveryStarted(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceType"    # Ljava/lang/String;

    .line 658
    return-void
.end method

.method public whitelist onDiscoveryStopped(Ljava/lang/String;)V
    .registers 4
    .param p1, "serviceType"    # Ljava/lang/String;

    .line 675
    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->this$1:Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;

    iget-object v0, v0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mPerNetworkListeners:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->this$1:Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;

    invoke-static {v0}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->-$$Nest$fgetmStopRequested(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->this$1:Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;

    iget-object v0, v0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mPerNetworkListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_25

    .line 677
    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mWrappedExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener$$ExternalSyntheticLambda3;-><init>(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 679
    :cond_25
    return-void
.end method

.method public whitelist onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V
    .registers 5
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .line 683
    iget-boolean v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mAllServicesLost:Z

    if-eqz v0, :cond_5

    .line 686
    return-void

    .line 688
    :cond_5
    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mFoundInfo:Landroid/util/ArraySet;

    new-instance v1, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;

    iget-object v2, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->this$1:Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;

    invoke-direct {v1, v2, p1}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;-><init>(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;Landroid/net/nsd/NsdServiceInfo;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 689
    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mWrappedExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener$$ExternalSyntheticLambda2;-><init>(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;Landroid/net/nsd/NsdServiceInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 690
    return-void
.end method

.method public whitelist onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V
    .registers 5
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .line 694
    iget-boolean v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mAllServicesLost:Z

    if-eqz v0, :cond_5

    .line 697
    return-void

    .line 699
    :cond_5
    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mFoundInfo:Landroid/util/ArraySet;

    new-instance v1, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;

    iget-object v2, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->this$1:Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;

    invoke-direct {v1, v2, p1}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;-><init>(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;Landroid/net/nsd/NsdServiceInfo;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 700
    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mWrappedExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener$$ExternalSyntheticLambda0;-><init>(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;Landroid/net/nsd/NsdServiceInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 701
    return-void
.end method

.method public whitelist onStartDiscoveryFailed(Ljava/lang/String;I)V
    .registers 6
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .line 649
    invoke-static {}, Landroid/net/nsd/NsdManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start discovery for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->this$1:Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;

    iget-object v0, v0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mPerNetworkListeners:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    return-void
.end method

.method public whitelist onStopDiscoveryFailed(Ljava/lang/String;I)V
    .registers 6
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .line 662
    invoke-static {}, Landroid/net/nsd/NsdManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to stop discovery for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->this$1:Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;

    iget-object v0, v0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mPerNetworkListeners:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->this$1:Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;

    invoke-static {v0}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->-$$Nest$fgetmStopRequested(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->this$1:Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;

    iget-object v0, v0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mPerNetworkListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_55

    .line 669
    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;->mWrappedExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener$$ExternalSyntheticLambda4;-><init>(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 671
    :cond_55
    return-void
.end method
