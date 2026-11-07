.class Landroid/app/SystemServiceRegistry$94;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/hardware/location/ContextHubManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1228
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/hardware/location/ContextHubManager;
    .registers 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1231
    const-string v0, "contexthub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1232
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_a

    .line 1233
    const/4 v1, 0x0

    return-object v1

    .line 1235
    :cond_a
    new-instance v1, Landroid/hardware/location/ContextHubManager;

    invoke-static {v0}, Landroid/hardware/location/IContextHubService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubService;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1236
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/hardware/location/ContextHubManager;-><init>(Landroid/hardware/location/IContextHubService;Landroid/os/Looper;)V

    .line 1235
    return-object v1
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1228
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$94;->createService(Landroid/app/ContextImpl;)Landroid/hardware/location/ContextHubManager;

    move-result-object p1

    return-object p1
.end method
