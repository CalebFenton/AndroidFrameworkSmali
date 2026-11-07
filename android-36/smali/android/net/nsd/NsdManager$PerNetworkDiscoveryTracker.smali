.class Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;
.super Ljava/lang/Object;
.source "NsdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerNetworkDiscoveryTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;,
        Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;
    }
.end annotation


# instance fields
.field final blacklist mBaseExecutor:Ljava/util/concurrent/Executor;

.field final blacklist mBaseListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

.field final blacklist mNetworkCb:Landroid/net/ConnectivityManager$NetworkCallback;

.field final blacklist mPerNetworkListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Network;",
            "Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mProtocolType:I

.field final blacklist mServiceType:Ljava/lang/String;

.field private blacklist mStopRequested:Z

.field final synthetic blacklist this$0:Landroid/net/nsd/NsdManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$1Ja5uEzAPBQyfvdxm1p3H7jlD_w(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->lambda$requestStop$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$SmubD2RP2KDDvyOEfeUtrzA8_3Q(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->lambda$start$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$U9hCg3lg1_fY57SuOdFALoJ-d_M(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->lambda$requestStop$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$il49kFuHmPjK1niZ9bpH70s9vb4(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->lambda$start$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStopRequested(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mStopRequested:Z

    return p0
.end method

.method private constructor blacklist <init>(Landroid/net/nsd/NsdManager;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/net/nsd/NsdManager$DiscoveryListener;)V
    .registers 6
    .param p2, "serviceType"    # Ljava/lang/String;
    .param p3, "protocolType"    # I
    .param p4, "baseExecutor"    # Ljava/util/concurrent/Executor;
    .param p5, "baseListener"    # Landroid/net/nsd/NsdManager$DiscoveryListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 573
    iput-object p1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->this$0:Landroid/net/nsd/NsdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mPerNetworkListeners:Landroid/util/ArrayMap;

    .line 515
    new-instance p1, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$1;

    invoke-direct {p1, p0}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$1;-><init>(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;)V

    iput-object p1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mNetworkCb:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 574
    iput-object p2, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mServiceType:Ljava/lang/String;

    .line 575
    iput p3, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mProtocolType:I

    .line 576
    iput-object p4, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mBaseExecutor:Ljava/util/concurrent/Executor;

    .line 577
    iput-object p5, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mBaseListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 578
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/nsd/NsdManager;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/net/nsd/NsdManager$DiscoveryListener;Landroid/net/nsd/NsdManager-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;-><init>(Landroid/net/nsd/NsdManager;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/net/nsd/NsdManager$DiscoveryListener;)V

    return-void
.end method

.method private synthetic blacklist lambda$requestStop$2()V
    .registers 3

    .line 562
    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mBaseListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    iget-object v1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mServiceType:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStopped(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$requestStop$3()V
    .registers 5

    .line 558
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mStopRequested:Z

    .line 559
    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v0}, Landroid/net/nsd/NsdManager;->-$$Nest$fgetmContext(Landroid/net/nsd/NsdManager;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 560
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mNetworkCb:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 561
    iget-object v1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mPerNetworkListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_29

    .line 562
    iget-object v1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mBaseExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$$ExternalSyntheticLambda2;-><init>(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 563
    return-void

    .line 565
    :cond_29
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2a
    iget-object v2, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mPerNetworkListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 566
    iget-object v2, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mPerNetworkListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;

    .line 567
    .local v2, "listener":Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;
    iget-object v3, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->this$0:Landroid/net/nsd/NsdManager;

    invoke-virtual {v3, v2}, Landroid/net/nsd/NsdManager;->stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V

    .line 565
    .end local v2    # "listener":Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$DelegatingDiscoveryListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 569
    .end local v1    # "i":I
    :cond_42
    return-void
.end method

.method private synthetic blacklist lambda$start$0()V
    .registers 3

    .line 545
    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mBaseListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    iget-object v1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mServiceType:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStarted(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$start$1()V
    .registers 3

    .line 544
    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mBaseExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$$ExternalSyntheticLambda1;-><init>(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist requestStop()V
    .registers 3

    .line 557
    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v0}, Landroid/net/nsd/NsdManager;->-$$Nest$fgetmHandler(Landroid/net/nsd/NsdManager;)Landroid/net/nsd/NsdManager$ServiceHandler;

    move-result-object v0

    new-instance v1, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$$ExternalSyntheticLambda3;-><init>(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;)V

    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdManager$ServiceHandler;->post(Ljava/lang/Runnable;)Z

    .line 570
    return-void
.end method

.method public blacklist start(Landroid/net/NetworkRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .line 542
    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v0}, Landroid/net/nsd/NsdManager;->-$$Nest$fgetmContext(Landroid/net/nsd/NsdManager;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 543
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->mNetworkCb:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v2, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v2}, Landroid/net/nsd/NsdManager;->-$$Nest$fgetmHandler(Landroid/net/nsd/NsdManager;)Landroid/net/nsd/NsdManager$ServiceHandler;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 544
    iget-object v1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v1}, Landroid/net/nsd/NsdManager;->-$$Nest$fgetmHandler(Landroid/net/nsd/NsdManager;)Landroid/net/nsd/NsdManager$ServiceHandler;

    move-result-object v1

    new-instance v2, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$$ExternalSyntheticLambda0;-><init>(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;)V

    invoke-virtual {v1, v2}, Landroid/net/nsd/NsdManager$ServiceHandler;->post(Ljava/lang/Runnable;)Z

    .line 546
    return-void
.end method
