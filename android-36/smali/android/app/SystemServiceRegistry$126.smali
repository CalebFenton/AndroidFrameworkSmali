.class Landroid/app/SystemServiceRegistry$126;
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
        "Landroid/security/FileIntegrityManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1560
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/security/FileIntegrityManager;
    .registers 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1564
    const-string v0, "file_integrity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1566
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/security/FileIntegrityManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    .line 1567
    invoke-static {v0}, Landroid/security/IFileIntegrityService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IFileIntegrityService;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/security/FileIntegrityManager;-><init>(Landroid/content/Context;Landroid/security/IFileIntegrityService;)V

    .line 1566
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

    .line 1560
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$126;->createService(Landroid/app/ContextImpl;)Landroid/security/FileIntegrityManager;

    move-result-object p1

    return-object p1
.end method
