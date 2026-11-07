.class Landroid/app/SystemServiceRegistry$93;
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
        "Landroid/os/health/SystemHealthManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1216
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/os/health/SystemHealthManager;
    .registers 9
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1219
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1220
    .local v0, "batteryStats":Landroid/os/IBinder;
    const-string/jumbo v1, "powerstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1221
    .local v1, "powerStats":Landroid/os/IBinder;
    const-string/jumbo v2, "performance_hint"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1222
    .local v2, "perfHint":Landroid/os/IBinder;
    new-instance v3, Landroid/os/health/SystemHealthManager;

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    .line 1223
    invoke-static {v1}, Landroid/os/IPowerStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerStatsService;

    move-result-object v5

    .line 1224
    invoke-static {v2}, Landroid/os/IHintManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHintManager;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/os/health/SystemHealthManager;-><init>(Lcom/android/internal/app/IBatteryStats;Landroid/os/IPowerStatsService;Landroid/os/IHintManager;)V

    .line 1222
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

    .line 1216
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$93;->createService(Landroid/app/ContextImpl;)Landroid/os/health/SystemHealthManager;

    move-result-object p1

    return-object p1
.end method
