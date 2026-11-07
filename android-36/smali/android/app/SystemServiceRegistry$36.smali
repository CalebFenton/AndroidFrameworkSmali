.class Landroid/app/SystemServiceRegistry$36;
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
        "Landroid/os/PowerManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 639
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/os/PowerManager;
    .registers 9
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 642
    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 643
    .local v0, "powerBinder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 644
    .local v1, "powerService":Landroid/os/IPowerManager;
    const-string/jumbo v2, "thermalservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 645
    .local v2, "thermalBinder":Landroid/os/IBinder;
    invoke-static {v2}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v3

    .line 646
    .local v3, "thermalService":Landroid/os/IThermalService;
    new-instance v4, Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 647
    invoke-virtual {v6}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v4, v5, v1, v3, v6}, Landroid/os/PowerManager;-><init>(Landroid/content/Context;Landroid/os/IPowerManager;Landroid/os/IThermalService;Landroid/os/Handler;)V

    .line 646
    return-object v4
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

    .line 639
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$36;->createService(Landroid/app/ContextImpl;)Landroid/os/PowerManager;

    move-result-object p1

    return-object p1
.end method
