.class Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;
.super Landroid/net/connectivity/android/net/INetworkOfferCallback$Stub;
.source "NetworkProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkOfferCallbackProxy"
.end annotation


# instance fields
.field public final blacklist callback:Landroid/net/NetworkProvider$NetworkOfferCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$OlpKyUb98IHz4hrliK2COKjZzok(Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;Landroid/net/NetworkRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;->lambda$onNetworkUnneeded$1(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nxWwpBnJAeQuNB1OM57KI8ut-Sk(Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;Landroid/net/NetworkRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;->lambda$onNetworkNeeded$0(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/NetworkProvider;Landroid/net/NetworkProvider$NetworkOfferCallback;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p2, "callback"    # Landroid/net/NetworkProvider$NetworkOfferCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x10
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Landroid/net/connectivity/android/net/INetworkOfferCallback$Stub;-><init>()V

    .line 198
    iput-object p2, p0, Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;->callback:Landroid/net/NetworkProvider$NetworkOfferCallback;

    .line 199
    iput-object p3, p0, Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 200
    return-void
.end method

.method private synthetic blacklist lambda$onNetworkNeeded$0(Landroid/net/NetworkRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .line 204
    iget-object v0, p0, Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;->callback:Landroid/net/NetworkProvider$NetworkOfferCallback;

    invoke-interface {v0, p1}, Landroid/net/NetworkProvider$NetworkOfferCallback;->onNetworkNeeded(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method private synthetic blacklist lambda$onNetworkUnneeded$1(Landroid/net/NetworkRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .line 209
    iget-object v0, p0, Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;->callback:Landroid/net/NetworkProvider$NetworkOfferCallback;

    invoke-interface {v0, p1}, Landroid/net/NetworkProvider$NetworkOfferCallback;->onNetworkUnneeded(Landroid/net/NetworkRequest;)V

    return-void
.end method


# virtual methods
.method public blacklist onNetworkNeeded(Landroid/net/NetworkRequest;)V
    .registers 4
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .line 204
    iget-object v0, p0, Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/NetworkProvider$NetworkOfferCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/NetworkProvider$NetworkOfferCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;Landroid/net/NetworkRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method public blacklist onNetworkUnneeded(Landroid/net/NetworkRequest;)V
    .registers 4
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .line 209
    iget-object v0, p0, Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/NetworkProvider$NetworkOfferCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/net/NetworkProvider$NetworkOfferCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;Landroid/net/NetworkRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 210
    return-void
.end method
