.class Landroid/app/SystemServiceRegistry$125;
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
        "Landroid/os/incremental/IncrementalManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1548
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/os/incremental/IncrementalManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 1551
    const-string/jumbo v0, "incremental"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1552
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_b

    .line 1553
    const/4 v1, 0x0

    return-object v1

    .line 1555
    :cond_b
    new-instance v1, Landroid/os/incremental/IncrementalManager;

    .line 1556
    invoke-static {v0}, Landroid/os/incremental/IIncrementalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IIncrementalService;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/incremental/IncrementalManager;-><init>(Landroid/os/incremental/IIncrementalService;)V

    .line 1555
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

    .line 1548
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$125;->createService(Landroid/app/ContextImpl;)Landroid/os/incremental/IncrementalManager;

    move-result-object p1

    return-object p1
.end method
