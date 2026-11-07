.class Landroid/app/SystemServiceRegistry$136;
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
        "Landroid/app/wearable/WearableSensingManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1674
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/app/wearable/WearableSensingManager;
    .registers 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1678
    const-string/jumbo v0, "wearable_sensing"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1680
    .local v1, "iBinder":Landroid/os/IBinder;
    if-eqz v1, :cond_18

    .line 1681
    nop

    .line 1682
    invoke-static {v1}, Landroid/app/wearable/IWearableSensingManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/wearable/IWearableSensingManager;

    move-result-object v0

    .line 1683
    .local v0, "manager":Landroid/app/wearable/IWearableSensingManager;
    new-instance v2, Landroid/app/wearable/WearableSensingManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/app/wearable/WearableSensingManager;-><init>(Landroid/content/Context;Landroid/app/wearable/IWearableSensingManager;)V

    return-object v2

    .line 1687
    .end local v0    # "manager":Landroid/app/wearable/IWearableSensingManager;
    :cond_18
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1688
    invoke-static {}, Landroid/server/Flags;->removeWearableSensingServiceFromWear()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1689
    const/4 v0, 0x0

    return-object v0

    .line 1691
    :cond_2c
    new-instance v2, Landroid/os/ServiceManager$ServiceNotFoundException;

    invoke-direct {v2, v0}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
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

    .line 1674
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$136;->createService(Landroid/app/ContextImpl;)Landroid/app/wearable/WearableSensingManager;

    move-result-object p1

    return-object p1
.end method
