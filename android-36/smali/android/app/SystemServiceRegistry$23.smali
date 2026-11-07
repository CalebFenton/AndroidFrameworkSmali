.class Landroid/app/SystemServiceRegistry$23;
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
        "Landroid/os/DropBoxManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 519
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/os/DropBoxManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 522
    const-string v0, "dropbox"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 523
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IDropBoxManagerService;

    move-result-object v1

    .line 524
    .local v1, "service":Lcom/android/internal/os/IDropBoxManagerService;
    new-instance v2, Landroid/os/DropBoxManager;

    invoke-direct {v2, p1, v1}, Landroid/os/DropBoxManager;-><init>(Landroid/content/Context;Lcom/android/internal/os/IDropBoxManagerService;)V

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

    .line 519
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$23;->createService(Landroid/app/ContextImpl;)Landroid/os/DropBoxManager;

    move-result-object p1

    return-object p1
.end method
