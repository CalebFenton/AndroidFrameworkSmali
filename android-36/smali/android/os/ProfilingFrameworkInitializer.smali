.class public Landroid/os/ProfilingFrameworkInitializer;
.super Ljava/lang/Object;
.source "ProfilingFrameworkInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static volatile blacklist sProfilingServiceManager:Landroid/os/ProfilingServiceManager;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getProfilingServiceManager()Landroid/os/ProfilingServiceManager;
    .registers 1

    .line 62
    sget-object v0, Landroid/os/ProfilingFrameworkInitializer;->sProfilingServiceManager:Landroid/os/ProfilingServiceManager;

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;)Landroid/os/ProfilingManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 76
    new-instance v0, Landroid/os/ProfilingManager;

    invoke-direct {v0, p0}, Landroid/os/ProfilingManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static blacklist registerServiceWrappers()V
    .registers 3

    .line 73
    const-class v0, Landroid/os/ProfilingManager;

    new-instance v1, Landroid/os/ProfilingFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/os/ProfilingFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "profiling"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 78
    return-void
.end method

.method public static blacklist setProfilingServiceManager(Landroid/os/ProfilingServiceManager;)V
    .registers 3
    .param p0, "profilingServiceManager"    # Landroid/os/ProfilingServiceManager;

    .line 49
    sget-object v0, Landroid/os/ProfilingFrameworkInitializer;->sProfilingServiceManager:Landroid/os/ProfilingServiceManager;

    if-nez v0, :cond_11

    .line 53
    if-eqz p0, :cond_9

    .line 57
    sput-object p0, Landroid/os/ProfilingFrameworkInitializer;->sProfilingServiceManager:Landroid/os/ProfilingServiceManager;

    .line 58
    return-void

    .line 54
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "profilingServiceManager is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setProfilingServiceManager called twice!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
