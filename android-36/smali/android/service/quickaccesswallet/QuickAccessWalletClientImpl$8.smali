.class Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8;
.super Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;
.source "QuickAccessWalletClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->getWalletPendingIntent(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$pendingIntentCallback:Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;)V
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

    .line 264
    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8;->val$pendingIntentCallback:Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl-IA;)V

    return-void
.end method

.method static synthetic blacklist lambda$onTargetActivityPendingIntentReceived$0(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;Landroid/app/PendingIntent;)V
    .registers 2
    .param p0, "pendingIntentCallback"    # Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 268
    invoke-interface {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;->onWalletPendingIntentRetrieved(Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public blacklist onTargetActivityPendingIntentReceived(Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 267
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8;->val$pendingIntentCallback:Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;

    new-instance v2, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8$$ExternalSyntheticLambda0;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;Landroid/app/PendingIntent;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 269
    return-void
.end method
