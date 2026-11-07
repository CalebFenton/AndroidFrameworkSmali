.class Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;
.super Landroid/net/wifi/IDppCallback$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EasyConnectCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mEasyConnectStatusCallback:Landroid/net/wifi/EasyConnectStatusCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$4zihsneFyYNkj6zz9Bbb-1qm5vg(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->lambda$onSuccess$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$CKG0odOieSxSd-x5VRq9qzO1L-M(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->lambda$onSuccessConfigReceived$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$IpIIsHytmdX2DD2uRKHfdJ5mlVU(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->lambda$onBootstrapUriGenerated$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UdLicMqEW2RbdXTh2sKf22FSw3M(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->lambda$onProgress$3(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mM1Dx8LksKP0z3H4IZD7HffrMdA(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;Ljava/lang/String;ILjava/lang/String;[I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->lambda$onFailure$2(Ljava/lang/String;ILjava/lang/String;[I)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/EasyConnectStatusCallback;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "easyConnectStatusCallback"    # Landroid/net/wifi/EasyConnectStatusCallback;

    .line 9621
    invoke-direct {p0}, Landroid/net/wifi/IDppCallback$Stub;-><init>()V

    .line 9622
    iput-object p1, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 9623
    iput-object p2, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mEasyConnectStatusCallback:Landroid/net/wifi/EasyConnectStatusCallback;

    .line 9624
    return-void
.end method

.method private synthetic blacklist lambda$onBootstrapUriGenerated$4(Ljava/lang/String;)V
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;

    .line 9674
    iget-object v0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mEasyConnectStatusCallback:Landroid/net/wifi/EasyConnectStatusCallback;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/EasyConnectStatusCallback;->onBootstrapUriGenerated(Landroid/net/Uri;)V

    .line 9675
    return-void
.end method

.method private synthetic blacklist lambda$onFailure$2(Ljava/lang/String;ILjava/lang/String;[I)V
    .registers 7
    .param p1, "channelList"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "ssid"    # Ljava/lang/String;
    .param p4, "operatingClassArray"    # [I

    .line 9650
    invoke-static {p1}, Landroid/net/wifi/WifiManager;->parseDppChannelList(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 9651
    .local v0, "channelListArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    iget-object v1, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mEasyConnectStatusCallback:Landroid/net/wifi/EasyConnectStatusCallback;

    invoke-virtual {v1, p2, p3, v0, p4}, Landroid/net/wifi/EasyConnectStatusCallback;->onFailure(ILjava/lang/String;Landroid/util/SparseArray;[I)V

    .line 9653
    return-void
.end method

.method private synthetic blacklist lambda$onProgress$3(I)V
    .registers 3
    .param p1, "status"    # I

    .line 9661
    iget-object v0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mEasyConnectStatusCallback:Landroid/net/wifi/EasyConnectStatusCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/EasyConnectStatusCallback;->onProgress(I)V

    .line 9662
    return-void
.end method

.method private synthetic blacklist lambda$onSuccess$1(I)V
    .registers 3
    .param p1, "status"    # I

    .line 9640
    iget-object v0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mEasyConnectStatusCallback:Landroid/net/wifi/EasyConnectStatusCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/EasyConnectStatusCallback;->onConfiguratorSuccess(I)V

    .line 9641
    return-void
.end method

.method private synthetic blacklist lambda$onSuccessConfigReceived$0(I)V
    .registers 3
    .param p1, "newNetworkId"    # I

    .line 9631
    iget-object v0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mEasyConnectStatusCallback:Landroid/net/wifi/EasyConnectStatusCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/EasyConnectStatusCallback;->onEnrolleeSuccess(I)V

    .line 9632
    return-void
.end method


# virtual methods
.method public blacklist onBootstrapUriGenerated(Ljava/lang/String;)V
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;

    .line 9667
    const-string v0, "Easy Connect onBootstrapUriGenerated callback"

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9668
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-nez v0, :cond_13

    .line 9669
    const-string v0, "Easy Connect bootstrap URI callback supported only on S+"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9670
    return-void

    .line 9672
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9673
    iget-object v0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9676
    return-void
.end method

.method public blacklist onFailure(ILjava/lang/String;Ljava/lang/String;[I)V
    .registers 12
    .param p1, "status"    # I
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "channelList"    # Ljava/lang/String;
    .param p4, "operatingClassArray"    # [I

    .line 9647
    const-string v0, "WifiManager"

    const-string v1, "Easy Connect onFailure callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9648
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9649
    iget-object v0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy$$ExternalSyntheticLambda1;

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v3, p3

    move-object v6, p4

    .end local p1    # "status":I
    .end local p2    # "ssid":Ljava/lang/String;
    .end local p3    # "channelList":Ljava/lang/String;
    .end local p4    # "operatingClassArray":[I
    .local v3, "channelList":Ljava/lang/String;
    .local v4, "status":I
    .local v5, "ssid":Ljava/lang/String;
    .local v6, "operatingClassArray":[I
    invoke-direct/range {v1 .. v6}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;Ljava/lang/String;ILjava/lang/String;[I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9654
    return-void
.end method

.method public blacklist onProgress(I)V
    .registers 4
    .param p1, "status"    # I

    .line 9658
    const-string v0, "WifiManager"

    const-string v1, "Easy Connect onProgress callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9659
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9660
    iget-object v0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy$$ExternalSyntheticLambda3;-><init>(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9663
    return-void
.end method

.method public blacklist onSuccess(I)V
    .registers 4
    .param p1, "status"    # I

    .line 9637
    const-string v0, "WifiManager"

    const-string v1, "Easy Connect onSuccess callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9638
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9639
    iget-object v0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9642
    return-void
.end method

.method public blacklist onSuccessConfigReceived(I)V
    .registers 4
    .param p1, "newNetworkId"    # I

    .line 9628
    const-string v0, "WifiManager"

    const-string v1, "Easy Connect onSuccessConfigReceived callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9629
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9630
    iget-object v0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy$$ExternalSyntheticLambda4;-><init>(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9633
    return-void
.end method
