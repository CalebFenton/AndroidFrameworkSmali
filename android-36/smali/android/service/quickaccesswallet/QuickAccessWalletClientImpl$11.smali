.class Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$11;
.super Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;
.source "QuickAccessWalletClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->getGestureTargetActivityPendingIntent(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$GesturePendingIntentCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callbacks:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;


# direct methods
.method constructor blacklist <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;)V
    .registers 4
    .param p1, "this$0"    # Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;
    .param p2, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 299
    iput-object p3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$11;->val$callbacks:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;-><init>(Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl-IA;)V

    return-void
.end method


# virtual methods
.method blacklist performApiCall(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V
    .registers 3
    .param p1, "service"    # Landroid/service/quickaccesswallet/IQuickAccessWalletService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$11;->val$callbacks:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;

    invoke-interface {p1, v0}, Landroid/service/quickaccesswallet/IQuickAccessWalletService;->onGestureTargetActivityIntentRequested(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    .line 303
    return-void
.end method
