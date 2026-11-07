.class Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$6;
.super Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;
.source "QuickAccessWalletClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->addWalletServiceEventListener(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

.field final synthetic blacklist val$callback:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;

.field final synthetic blacklist val$listener:Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;


# direct methods
.method constructor blacklist <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;)V
    .registers 5
    .param p1, "this$0"    # Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;
    .param p2, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 206
    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$6;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    iput-object p3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$6;->val$listener:Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;

    iput-object p4, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$6;->val$callback:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;-><init>(Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist performApiCall(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V
    .registers 6
    .param p1, "service"    # Landroid/service/quickaccesswallet/IQuickAccessWalletService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "listenerId":Ljava/lang/String;
    new-instance v1, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;

    invoke-direct {v1, v0}, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;-><init>(Ljava/lang/String;)V

    .line 212
    .local v1, "request":Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;
    iget-object v2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$6;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    invoke-static {v2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->-$$Nest$fgetmEventListeners(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$6;->val$listener:Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$6;->val$callback:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;

    invoke-interface {p1, v1, v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletService;->registerWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    .line 214
    return-void
.end method
