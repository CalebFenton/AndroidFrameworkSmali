.class public Landroid/os/ProfilingServiceHelper;
.super Ljava/lang/Object;
.source "ProfilingServiceHelper.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sInstance:Landroid/os/ProfilingServiceHelper;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mProfilingService:Landroid/os/IProfilingService;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    const-class v0, Landroid/os/ProfilingServiceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/ProfilingServiceHelper;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/ProfilingServiceHelper;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/IProfilingService;)V
    .registers 3
    .param p1, "service"    # Landroid/os/IProfilingService;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/ProfilingServiceHelper;->mLock:Ljava/lang/Object;

    .line 53
    iput-object p1, p0, Landroid/os/ProfilingServiceHelper;->mProfilingService:Landroid/os/IProfilingService;

    .line 54
    return-void
.end method

.method public static blacklist getInstance()Landroid/os/ProfilingServiceHelper;
    .registers 4

    .line 63
    sget-object v0, Landroid/os/ProfilingServiceHelper;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_3
    sget-object v1, Landroid/os/ProfilingServiceHelper;->sInstance:Landroid/os/ProfilingServiceHelper;

    if-eqz v1, :cond_b

    .line 65
    sget-object v1, Landroid/os/ProfilingServiceHelper;->sInstance:Landroid/os/ProfilingServiceHelper;

    monitor-exit v0

    return-object v1

    .line 68
    :cond_b
    invoke-static {}, Landroid/os/profiling/Flags;->telemetryApis()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 69
    invoke-static {}, Landroid/os/ProfilingFrameworkInitializer;->getProfilingServiceManager()Landroid/os/ProfilingServiceManager;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Landroid/os/ProfilingServiceManager;->getProfilingServiceRegisterer()Landroid/os/ProfilingServiceManager$ServiceRegisterer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ProfilingServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v1

    .line 68
    invoke-static {v1}, Landroid/os/IProfilingService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProfilingService;

    move-result-object v1

    goto :goto_23

    .line 70
    :cond_22
    const/4 v1, 0x0

    :goto_23
    nop

    .line 72
    .local v1, "service":Landroid/os/IProfilingService;
    if-eqz v1, :cond_31

    .line 76
    new-instance v2, Landroid/os/ProfilingServiceHelper;

    invoke-direct {v2, v1}, Landroid/os/ProfilingServiceHelper;-><init>(Landroid/os/IProfilingService;)V

    sput-object v2, Landroid/os/ProfilingServiceHelper;->sInstance:Landroid/os/ProfilingServiceHelper;

    .line 78
    sget-object v2, Landroid/os/ProfilingServiceHelper;->sInstance:Landroid/os/ProfilingServiceHelper;

    monitor-exit v0

    return-object v2

    .line 73
    :cond_31
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "ProfilingService not yet set up."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    .end local v1    # "service":Landroid/os/IProfilingService;
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method


# virtual methods
.method public blacklist onProfilingTriggerOccurred(ILjava/lang/String;I)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "triggerType"    # I

    .line 84
    iget-object v0, p0, Landroid/os/ProfilingServiceHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_3
    iget-object v1, p0, Landroid/os/ProfilingServiceHelper;->mProfilingService:Landroid/os/IProfilingService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IProfilingService;->processTrigger(ILjava/lang/String;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    .line 90
    goto :goto_c

    .line 91
    :catchall_9
    move-exception v1

    goto :goto_e

    .line 87
    :catch_b
    move-exception v1

    .line 91
    :goto_c
    :try_start_c
    monitor-exit v0

    .line 92
    return-void

    .line 91
    :goto_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_9

    throw v1
.end method
