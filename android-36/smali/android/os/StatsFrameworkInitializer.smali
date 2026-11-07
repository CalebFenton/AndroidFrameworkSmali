.class public Landroid/os/StatsFrameworkInitializer;
.super Ljava/lang/Object;
.source "StatsFrameworkInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static volatile blacklist sStatsServiceManager:Landroid/os/StatsServiceManager;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static blacklist getStatsServiceManager()Landroid/os/StatsServiceManager;
    .registers 1

    .line 60
    sget-object v0, Landroid/os/StatsFrameworkInitializer;->sStatsServiceManager:Landroid/os/StatsServiceManager;

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;)Landroid/app/StatsManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 74
    new-instance v0, Landroid/app/StatsManager;

    invoke-direct {v0, p0}, Landroid/app/StatsManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static blacklist registerServiceWrappers()V
    .registers 3

    .line 71
    const-class v0, Landroid/app/StatsManager;

    new-instance v1, Landroid/os/StatsFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/os/StatsFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "stats"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 76
    return-void
.end method

.method public static blacklist setStatsServiceManager(Landroid/os/StatsServiceManager;)V
    .registers 3
    .param p0, "statsServiceManager"    # Landroid/os/StatsServiceManager;

    .line 47
    sget-object v0, Landroid/os/StatsFrameworkInitializer;->sStatsServiceManager:Landroid/os/StatsServiceManager;

    if-nez v0, :cond_11

    .line 51
    if-eqz p0, :cond_9

    .line 55
    sput-object p0, Landroid/os/StatsFrameworkInitializer;->sStatsServiceManager:Landroid/os/StatsServiceManager;

    .line 56
    return-void

    .line 52
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "statsServiceManager is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setStatsServiceManager called twice!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
