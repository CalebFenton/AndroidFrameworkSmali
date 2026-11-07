.class public Landroid/os/StatsServiceManager;
.super Ljava/lang/Object;
.source "StatsServiceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StatsServiceManager$ServiceRegisterer;,
        Landroid/os/StatsServiceManager$ServiceNotFoundException;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getStatsCompanionServiceRegisterer()Landroid/os/StatsServiceManager$ServiceRegisterer;
    .registers 3

    .line 105
    new-instance v0, Landroid/os/StatsServiceManager$ServiceRegisterer;

    const-string/jumbo v1, "statscompanion"

    invoke-direct {v0, v1}, Landroid/os/StatsServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getStatsManagerServiceRegisterer()Landroid/os/StatsServiceManager$ServiceRegisterer;
    .registers 3

    .line 113
    new-instance v0, Landroid/os/StatsServiceManager$ServiceRegisterer;

    const-string/jumbo v1, "statsmanager"

    invoke-direct {v0, v1}, Landroid/os/StatsServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getStatsdServiceRegisterer()Landroid/os/StatsServiceManager$ServiceRegisterer;
    .registers 3

    .line 121
    new-instance v0, Landroid/os/StatsServiceManager$ServiceRegisterer;

    const-string/jumbo v1, "stats"

    invoke-direct {v0, v1}, Landroid/os/StatsServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
