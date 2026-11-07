.class Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;
.super Landroid/net/wifi/usd/ISubscribeSessionCallback$Stub;
.source "UsdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/usd/UsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubscribeSessionCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mSubscribeSessionCallback:Landroid/net/wifi/usd/SubscribeSessionCallback;

.field private final blacklist mUsdManager:Landroid/net/wifi/usd/UsdManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$BAnSc0iiI6YO4HSevUurSFAMOg0(Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;I[B)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;->lambda$onMessageReceived$4(I[B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BH52q0g2fmhZuiahnDvECK31a4Q(Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;->lambda$onSubscribeSessionTerminated$3(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OHeUN2EZdTGbzPrv3i_IOJx05lk(Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;Landroid/net/wifi/usd/DiscoveryResult;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;->lambda$onSubscribeDiscovered$2(Landroid/net/wifi/usd/DiscoveryResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$SEaTRPfcrWxw5LJx69iJfNR_pdE(Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;->lambda$onSubscribeStarted$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bgCK2Te5C8S44ZUSVy2SHxPBMBk(Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;->lambda$onSubscribeFailed$0(I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/wifi/usd/UsdManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/usd/SubscribeSessionCallback;)V
    .registers 4
    .param p1, "usdManager"    # Landroid/net/wifi/usd/UsdManager;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "subscribeSessionCallback"    # Landroid/net/wifi/usd/SubscribeSessionCallback;

    .line 241
    invoke-direct {p0}, Landroid/net/wifi/usd/ISubscribeSessionCallback$Stub;-><init>()V

    .line 242
    iput-object p1, p0, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;->mUsdManager:Landroid/net/wifi/usd/UsdManager;

    .line 243
    iput-object p2, p0, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 244
    iput-object p3, p0, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;->mSubscribeSessionCallback:Landroid/net/wifi/usd/SubscribeSessionCallback;

    .line 245
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/usd/UsdManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/usd/SubscribeSessionCallback;Landroid/net/wifi/usd/UsdManager-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;-><init>(Landroid/net/wifi/usd/UsdManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/usd/SubscribeSessionCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$onMessageReceived$4(I[B)V
    .registers 4
    .param p1, "peerId"    # I
    .param p2, "message"    # [B

    .line 288
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;->mSubscribeSessionCallback:Landroid/net/wifi/usd/SubscribeSessionCallback;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/usd/SubscribeSessionCallback;->onMessageReceived(I[B)V

    return-void
.end method

.method private synthetic blacklist lambda$onSubscribeDiscovered$2(Landroid/net/wifi/usd/DiscoveryResult;)V
    .registers 3
    .param p1, "discoveryResult"    # Landroid/net/wifi/usd/DiscoveryResult;

    .line 274
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;->mSubscribeSessionCallback:Landroid/net/wifi/usd/SubscribeSessionCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/usd/SubscribeSessionCallback;->onServiceDiscovered(Landroid/net/wifi/usd/DiscoveryResult;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSubscribeFailed$0(I)V
    .registers 3
    .param p1, "reasonCode"    # I

    .line 251
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;->mSubscribeSessionCallback:Landroid/net/wifi/usd/SubscribeSessionCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/usd/SubscribeSessionCallback;->onSubscribeFailed(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onSubscribeSessionTerminated$3(I)V
    .registers 3
    .param p1, "reasonCode"    # I

    .line 281
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;->mSubscribeSessionCallback:Landroid/net/wifi/usd/SubscribeSessionCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/usd/SubscribeSessionCallback;->onSessionTerminated(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onSubscribeStarted$1(I)V
    .registers 5
    .param p1, "sessionId"    # I

    .line 258
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;->mSubscribeSessionCallback:Landroid/net/wifi/usd/SubscribeSessionCallback;

    new-instance v1, Landroid/net/wifi/usd/SubscribeSession;

    iget-object v2, p0, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;->mUsdManager:Landroid/net/wifi/usd/UsdManager;

    invoke-direct {v1, v2, p1}, Landroid/net/wifi/usd/SubscribeSession;-><init>(Landroid/net/wifi/usd/UsdManager;I)V

    invoke-virtual {v0, v1}, Landroid/net/wifi/usd/SubscribeSessionCallback;->onSubscribeStarted(Landroid/net/wifi/usd/SubscribeSession;)V

    return-void
.end method


# virtual methods
.method public blacklist onMessageReceived(I[B)V
    .registers 6
    .param p1, "peerId"    # I
    .param p2, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    invoke-static {}, Landroid/net/wifi/usd/UsdManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageReceived ( peerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 288
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;I[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 289
    return-void
.end method

.method public blacklist onSubscribeDiscovered(I[BIZ)V
    .registers 8
    .param p1, "peerId"    # I
    .param p2, "ssi"    # [B
    .param p3, "protoType"    # I
    .param p4, "isFsdEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    invoke-static {}, Landroid/net/wifi/usd/UsdManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscribeDiscovered ( peerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", protoType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isFsdEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 269
    new-instance v0, Landroid/net/wifi/usd/DiscoveryResult$Builder;

    invoke-direct {v0, p1}, Landroid/net/wifi/usd/DiscoveryResult$Builder;-><init>(I)V

    .line 270
    invoke-virtual {v0, p2}, Landroid/net/wifi/usd/DiscoveryResult$Builder;->setServiceSpecificInfo([B)Landroid/net/wifi/usd/DiscoveryResult$Builder;

    move-result-object v0

    .line 271
    invoke-virtual {v0, p3}, Landroid/net/wifi/usd/DiscoveryResult$Builder;->setServiceProtoType(I)Landroid/net/wifi/usd/DiscoveryResult$Builder;

    move-result-object v0

    .line 272
    invoke-virtual {v0, p4}, Landroid/net/wifi/usd/DiscoveryResult$Builder;->setFsdEnabled(Z)Landroid/net/wifi/usd/DiscoveryResult$Builder;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/net/wifi/usd/DiscoveryResult$Builder;->build()Landroid/net/wifi/usd/DiscoveryResult;

    move-result-object v0

    .line 274
    .local v0, "discoveryResult":Landroid/net/wifi/usd/DiscoveryResult;
    iget-object v1, p0, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;Landroid/net/wifi/usd/DiscoveryResult;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 275
    return-void
.end method

.method public blacklist onSubscribeFailed(I)V
    .registers 5
    .param p1, "reasonCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    invoke-static {}, Landroid/net/wifi/usd/UsdManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscribeFailed (reasonCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 251
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy$$ExternalSyntheticLambda3;-><init>(Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 252
    return-void
.end method

.method public blacklist onSubscribeSessionTerminated(I)V
    .registers 5
    .param p1, "reasonCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    invoke-static {}, Landroid/net/wifi/usd/UsdManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscribeSessionTerminated ( reasonCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 281
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy$$ExternalSyntheticLambda4;-><init>(Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 282
    return-void
.end method

.method public blacklist onSubscribeStarted(I)V
    .registers 5
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    invoke-static {}, Landroid/net/wifi/usd/UsdManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscribeStarted ( sessionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 258
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/usd/UsdManager$SubscribeSessionCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 260
    return-void
.end method
