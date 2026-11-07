.class Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;
.super Landroid/net/wifi/usd/IPublishSessionCallback$Stub;
.source "UsdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/usd/UsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PublishSessionCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mPublishSessionCallback:Landroid/net/wifi/usd/PublishSessionCallback;

.field private final blacklist mUsdManager:Landroid/net/wifi/usd/UsdManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$Or1VTd-29th4QFS2Wz7Ae_dU0d8(Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;->lambda$onPublishStarted$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$P0l50NvSFWEyIAZE4rbwE8RZ39Q(Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;->lambda$onPublishFailed$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UfHdIUT-PXuaSj_JADqi6eJkoyk(Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;->lambda$onPublishSessionTerminated$3(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$V5vqN4keZKp5UIQ0-GToFWgA3Qk(Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;I[B)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;->lambda$onMessageReceived$4(I[B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$h5cEaXdupDpXA6pwGtrC6U1twFI(Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;Landroid/net/wifi/usd/DiscoveryResult;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;->lambda$onPublishReplied$2(Landroid/net/wifi/usd/DiscoveryResult;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/wifi/usd/UsdManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/usd/PublishSessionCallback;)V
    .registers 4
    .param p1, "usdManager"    # Landroid/net/wifi/usd/UsdManager;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "publishSessionCallback"    # Landroid/net/wifi/usd/PublishSessionCallback;

    .line 150
    invoke-direct {p0}, Landroid/net/wifi/usd/IPublishSessionCallback$Stub;-><init>()V

    .line 151
    iput-object p1, p0, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;->mUsdManager:Landroid/net/wifi/usd/UsdManager;

    .line 152
    iput-object p2, p0, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 153
    iput-object p3, p0, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;->mPublishSessionCallback:Landroid/net/wifi/usd/PublishSessionCallback;

    .line 154
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/usd/UsdManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/usd/PublishSessionCallback;Landroid/net/wifi/usd/UsdManager-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;-><init>(Landroid/net/wifi/usd/UsdManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/usd/PublishSessionCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$onMessageReceived$4(I[B)V
    .registers 4
    .param p1, "peerId"    # I
    .param p2, "message"    # [B

    .line 196
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;->mPublishSessionCallback:Landroid/net/wifi/usd/PublishSessionCallback;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/usd/PublishSessionCallback;->onMessageReceived(I[B)V

    return-void
.end method

.method private synthetic blacklist lambda$onPublishFailed$0(I)V
    .registers 3
    .param p1, "reasonCode"    # I

    .line 160
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;->mPublishSessionCallback:Landroid/net/wifi/usd/PublishSessionCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/usd/PublishSessionCallback;->onPublishFailed(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onPublishReplied$2(Landroid/net/wifi/usd/DiscoveryResult;)V
    .registers 3
    .param p1, "discoveryResult"    # Landroid/net/wifi/usd/DiscoveryResult;

    .line 182
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;->mPublishSessionCallback:Landroid/net/wifi/usd/PublishSessionCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/usd/PublishSessionCallback;->onPublishReplied(Landroid/net/wifi/usd/DiscoveryResult;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPublishSessionTerminated$3(I)V
    .registers 3
    .param p1, "reasonCode"    # I

    .line 189
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;->mPublishSessionCallback:Landroid/net/wifi/usd/PublishSessionCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/usd/PublishSessionCallback;->onSessionTerminated(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onPublishStarted$1(I)V
    .registers 5
    .param p1, "sessionId"    # I

    .line 167
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;->mPublishSessionCallback:Landroid/net/wifi/usd/PublishSessionCallback;

    new-instance v1, Landroid/net/wifi/usd/PublishSession;

    iget-object v2, p0, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;->mUsdManager:Landroid/net/wifi/usd/UsdManager;

    invoke-direct {v1, v2, p1}, Landroid/net/wifi/usd/PublishSession;-><init>(Landroid/net/wifi/usd/UsdManager;I)V

    invoke-virtual {v0, v1}, Landroid/net/wifi/usd/PublishSessionCallback;->onPublishStarted(Landroid/net/wifi/usd/PublishSession;)V

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

    .line 194
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

    .line 195
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 196
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy$$ExternalSyntheticLambda4;-><init>(Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;I[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method public blacklist onPublishFailed(I)V
    .registers 5
    .param p1, "reasonCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    invoke-static {}, Landroid/net/wifi/usd/UsdManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPublishFailed (reasonCode = "

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

    .line 159
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 160
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 161
    return-void
.end method

.method public blacklist onPublishReplied(I[BIZ)V
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

    .line 174
    invoke-static {}, Landroid/net/wifi/usd/UsdManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPublishReplied ( peerId = "

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

    .line 176
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 177
    new-instance v0, Landroid/net/wifi/usd/DiscoveryResult$Builder;

    invoke-direct {v0, p1}, Landroid/net/wifi/usd/DiscoveryResult$Builder;-><init>(I)V

    .line 178
    invoke-virtual {v0, p2}, Landroid/net/wifi/usd/DiscoveryResult$Builder;->setServiceSpecificInfo([B)Landroid/net/wifi/usd/DiscoveryResult$Builder;

    move-result-object v0

    .line 179
    invoke-virtual {v0, p3}, Landroid/net/wifi/usd/DiscoveryResult$Builder;->setServiceProtoType(I)Landroid/net/wifi/usd/DiscoveryResult$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p4}, Landroid/net/wifi/usd/DiscoveryResult$Builder;->setFsdEnabled(Z)Landroid/net/wifi/usd/DiscoveryResult$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/net/wifi/usd/DiscoveryResult$Builder;->build()Landroid/net/wifi/usd/DiscoveryResult;

    move-result-object v0

    .line 182
    .local v0, "discoveryResult":Landroid/net/wifi/usd/DiscoveryResult;
    iget-object v1, p0, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;Landroid/net/wifi/usd/DiscoveryResult;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 183
    return-void
.end method

.method public blacklist onPublishSessionTerminated(I)V
    .registers 5
    .param p1, "reasonCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    invoke-static {}, Landroid/net/wifi/usd/UsdManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPublishSessionTerminated ( reasonCode = "

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

    .line 188
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 189
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy$$ExternalSyntheticLambda3;-><init>(Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method

.method public blacklist onPublishStarted(I)V
    .registers 5
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    invoke-static {}, Landroid/net/wifi/usd/UsdManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPublishStarted ( sessionId = "

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

    .line 166
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 167
    iget-object v0, p0, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/usd/UsdManager$PublishSessionCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method
