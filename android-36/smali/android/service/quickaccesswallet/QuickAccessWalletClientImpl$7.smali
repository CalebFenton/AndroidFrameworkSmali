.class Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$7;
.super Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;
.source "QuickAccessWalletClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->removeWalletServiceEventListener(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

.field final synthetic blacklist val$listener:Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;


# direct methods
.method constructor blacklist <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V
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

    .line 223
    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$7;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    iput-object p3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$7;->val$listener:Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;-><init>(Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist performApiCall(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V
    .registers 4
    .param p1, "service"    # Landroid/service/quickaccesswallet/IQuickAccessWalletService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$7;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->-$$Nest$fgetmEventListeners(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$7;->val$listener:Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    .local v0, "listenerId":Ljava/lang/String;
    if-nez v0, :cond_11

    .line 228
    return-void

    .line 230
    :cond_11
    new-instance v1, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;

    invoke-direct {v1, v0}, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;-><init>(Ljava/lang/String;)V

    .line 232
    .local v1, "request":Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;
    invoke-interface {p1, v1}, Landroid/service/quickaccesswallet/IQuickAccessWalletService;->unregisterWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V

    .line 233
    return-void
.end method
