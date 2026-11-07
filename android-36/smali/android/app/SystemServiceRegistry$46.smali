.class Landroid/app/SystemServiceRegistry$46;
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
        "Landroid/os/SystemUpdateManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 729
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/os/SystemUpdateManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 733
    const-string/jumbo v0, "system_update"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 735
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/ISystemUpdateManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISystemUpdateManager;

    move-result-object v1

    .line 736
    .local v1, "service":Landroid/os/ISystemUpdateManager;
    new-instance v2, Landroid/os/SystemUpdateManager;

    invoke-direct {v2, v1}, Landroid/os/SystemUpdateManager;-><init>(Landroid/os/ISystemUpdateManager;)V

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

    .line 729
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$46;->createService(Landroid/app/ContextImpl;)Landroid/os/SystemUpdateManager;

    move-result-object p1

    return-object p1
.end method
