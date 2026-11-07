.class Landroid/app/SystemServiceRegistry$132;
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
        "Landroid/app/GameManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1615
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/app/GameManager;
    .registers 8
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1619
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1620
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 1625
    .local v1, "isWatch":Z
    invoke-static {}, Landroid/server/Flags;->removeGameManagerServiceFromWear()Z

    move-result v2

    const-string v3, "game"

    if-eqz v2, :cond_19

    if-eqz v1, :cond_19

    .line 1626
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1d

    .line 1627
    :cond_19
    invoke-static {v3}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    :goto_1d
    nop

    .line 1629
    .local v2, "binder":Landroid/os/IBinder;
    if-nez v2, :cond_2b

    .line 1630
    const-wide/32 v3, 0x14522cc9

    invoke-static {v3, v4}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1631
    const/4 v3, 0x0

    return-object v3

    .line 1634
    :cond_2b
    new-instance v3, Landroid/app/GameManager;

    .line 1635
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v4

    .line 1636
    invoke-static {v2}, Landroid/app/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IGameManagerService;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/app/GameManager;-><init>(Landroid/content/Context;Landroid/app/IGameManagerService;)V

    .line 1634
    return-object v3
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

    .line 1615
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$132;->createService(Landroid/app/ContextImpl;)Landroid/app/GameManager;

    move-result-object p1

    return-object p1
.end method
