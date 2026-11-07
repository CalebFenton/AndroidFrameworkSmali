.class Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;
.super Landroid/net/wifi/INetworkRequestMatchCallback$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkRequestMatchCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$AMV9qFjNstb-PMUZWLZXF5te8Pw(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;Landroid/net/wifi/INetworkRequestUserSelectionCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->lambda$onUserSelectionCallbackRegistration$0(Landroid/net/wifi/INetworkRequestUserSelectionCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_3OHY7MMGTXtc1bLaUJnbhgi1Os(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->lambda$onUserSelectionConnectSuccess$3(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dZKH3Q1Ggv6tAC3EWw3H_xcsvBM(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->lambda$onMatch$2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mG2NjdDDJJDOg5bQgw2u4_A0WCQ(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->lambda$onAbort$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zOx0oKNXfhuXXeDxh-DrKONTC3I(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->lambda$onUserSelectionConnectFailure$4(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;)V
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 3220
    iput-object p1, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Landroid/net/wifi/INetworkRequestMatchCallback$Stub;-><init>()V

    .line 3221
    iput-object p2, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 3222
    iput-object p3, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;

    .line 3223
    return-void
.end method

.method private synthetic blacklist lambda$onAbort$1()V
    .registers 2

    .line 3246
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;

    invoke-interface {v0}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;->onAbort()V

    .line 3247
    return-void
.end method

.method private synthetic blacklist lambda$onMatch$2(Ljava/util/List;)V
    .registers 3
    .param p1, "scanResults"    # Ljava/util/List;

    .line 3258
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;->onMatch(Ljava/util/List;)V

    .line 3259
    return-void
.end method

.method private synthetic blacklist lambda$onUserSelectionCallbackRegistration$0(Landroid/net/wifi/INetworkRequestUserSelectionCallback;)V
    .registers 5
    .param p1, "userSelectionCallback"    # Landroid/net/wifi/INetworkRequestUserSelectionCallback;

    .line 3234
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;

    new-instance v1, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallbackProxy;

    iget-object v2, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {v1, v2, p1}, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallbackProxy;-><init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/INetworkRequestUserSelectionCallback;)V

    invoke-interface {v0, v1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;->onUserSelectionCallbackRegistration(Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;)V

    .line 3236
    return-void
.end method

.method private synthetic blacklist lambda$onUserSelectionConnectFailure$4(Landroid/net/wifi/WifiConfiguration;)V
    .registers 3
    .param p1, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;

    .line 3282
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;->onUserSelectionConnectFailure(Landroid/net/wifi/WifiConfiguration;)V

    .line 3283
    return-void
.end method

.method private synthetic blacklist lambda$onUserSelectionConnectSuccess$3(Landroid/net/wifi/WifiConfiguration;)V
    .registers 3
    .param p1, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;

    .line 3270
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;->onUserSelectionConnectSuccess(Landroid/net/wifi/WifiConfiguration;)V

    .line 3271
    return-void
.end method


# virtual methods
.method public blacklist onAbort()V
    .registers 3

    .line 3241
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3242
    const-string v0, "WifiManager"

    const-string v1, "NetworkRequestMatchCallbackProxy: onAbort"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3245
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3248
    return-void
.end method

.method public blacklist onMatch(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 3252
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkRequestMatchCallbackProxy: onMatch scanResults: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3257
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda3;-><init>(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3260
    return-void
.end method

.method public blacklist onUserSelectionCallbackRegistration(Landroid/net/wifi/INetworkRequestUserSelectionCallback;)V
    .registers 4
    .param p1, "userSelectionCallback"    # Landroid/net/wifi/INetworkRequestUserSelectionCallback;

    .line 3228
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkRequestMatchCallbackProxy: onUserSelectionCallbackRegistration callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3233
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda4;-><init>(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;Landroid/net/wifi/INetworkRequestUserSelectionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3237
    return-void
.end method

.method public blacklist onUserSelectionConnectFailure(Landroid/net/wifi/WifiConfiguration;)V
    .registers 4
    .param p1, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;

    .line 3276
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkRequestMatchCallbackProxy: onUserSelectionConnectFailure wificonfiguration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3281
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3284
    return-void
.end method

.method public blacklist onUserSelectionConnectSuccess(Landroid/net/wifi/WifiConfiguration;)V
    .registers 4
    .param p1, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;

    .line 3264
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkRequestMatchCallbackProxy: onUserSelectionConnectSuccess  wificonfiguration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3269
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3272
    return-void
.end method
