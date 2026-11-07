.class Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1;
.super Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;
.source "QuickAccessWalletClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->getWalletCards(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 136
    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1;->val$callback:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl-IA;)V

    return-void
.end method

.method static synthetic blacklist lambda$onGetWalletCardsFailure$1(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .registers 2
    .param p0, "callback"    # Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;
    .param p1, "error"    # Landroid/service/quickaccesswallet/GetWalletCardsError;

    .line 144
    invoke-interface {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;->onWalletCardRetrievalError(Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    return-void
.end method

.method static synthetic blacklist lambda$onGetWalletCardsSuccess$0(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .registers 2
    .param p0, "callback"    # Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;
    .param p1, "response"    # Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    .line 139
    invoke-interface {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;->onWalletCardsRetrieved(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V

    return-void
.end method


# virtual methods
.method public blacklist onGetWalletCardsFailure(Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .registers 5
    .param p1, "error"    # Landroid/service/quickaccesswallet/GetWalletCardsError;

    .line 144
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1;->val$callback:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

    new-instance v2, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1$$ExternalSyntheticLambda1;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method public blacklist onGetWalletCardsSuccess(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .registers 5
    .param p1, "response"    # Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    .line 139
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1;->val$callback:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

    new-instance v2, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1$$ExternalSyntheticLambda0;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method
