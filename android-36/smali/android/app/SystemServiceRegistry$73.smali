.class Landroid/app/SystemServiceRegistry$73;
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
        "Landroid/hardware/iris/IrisManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1003
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/hardware/iris/IrisManager;
    .registers 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1007
    nop

    .line 1008
    const-string/jumbo v0, "iris"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1009
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/iris/IIrisService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/iris/IIrisService;

    move-result-object v1

    .line 1010
    .local v1, "service":Landroid/hardware/iris/IIrisService;
    new-instance v2, Landroid/hardware/iris/IrisManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/hardware/iris/IrisManager;-><init>(Landroid/content/Context;Landroid/hardware/iris/IIrisService;)V

    return-object v2
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

    .line 1003
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$73;->createService(Landroid/app/ContextImpl;)Landroid/hardware/iris/IrisManager;

    move-result-object p1

    return-object p1
.end method
