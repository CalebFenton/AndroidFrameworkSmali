.class Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1;
.super Ljava/lang/Object;
.source "SharedConnectivityManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->bind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$mlb7fWhC1Zt_3xRG12STYw0qiDg(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1;->lambda$onServiceConnected$0(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 241
    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1;->this$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onServiceConnected$0(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    .line 249
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1;->this$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1;->this$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-static {v1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->-$$Nest$fgetmCallbackProxyCache(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)Ljava/util/Map;

    move-result-object v1

    .line 250
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;

    .line 249
    invoke-static {v0, p1, v1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->-$$Nest$mregisterCallbackInternal(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;)V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 245
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1;->this$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-static {p2}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->-$$Nest$fputmService(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;)V

    .line 246
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1;->this$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-static {v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->-$$Nest$fgetmProxyDataLock(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 247
    :try_start_10
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1;->this$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-static {v1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->-$$Nest$fgetmCallbackProxyCache(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    .line 248
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1;->this$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-static {v1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->-$$Nest$fgetmCallbackProxyCache(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 251
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1;->this$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-static {v1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->-$$Nest$fgetmCallbackProxyCache(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 253
    :cond_37
    monitor-exit v0

    .line 254
    return-void

    .line 253
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_10 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 259
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1;->this$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->-$$Nest$fputmService(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;)V

    .line 260
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1;->this$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-static {v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->-$$Nest$fgetmProxyDataLock(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 261
    :try_start_d
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1;->this$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-static {v1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->-$$Nest$fgetmCallbackProxyCache(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_34

    .line 262
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1;->this$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-static {v1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->-$$Nest$fgetmCallbackProxyCache(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 264
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1;->this$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-static {v1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->-$$Nest$fgetmCallbackProxyCache(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 266
    :cond_34
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1;->this$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-static {v1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->-$$Nest$fgetmProxyMap(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 267
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1;->this$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-static {v1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->-$$Nest$fgetmProxyMap(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 269
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1;->this$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-static {v1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->-$$Nest$fgetmProxyMap(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 271
    :cond_5b
    monitor-exit v0

    .line 272
    return-void

    .line 271
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_d .. :try_end_5f} :catchall_5d

    throw v1
.end method
