.class public final Landroid/os/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ServiceManager$ServiceNotFoundException;,
        Landroid/os/ServiceManager$Stats;
    }
.end annotation


# static fields
.field private static final greylist-max-o GET_SERVICE_LOG_EVERY_CALLS_CORE:I

.field private static final greylist-max-o GET_SERVICE_LOG_EVERY_CALLS_NON_CORE:I

.field private static final greylist-max-o GET_SERVICE_SLOW_THRESHOLD_US_CORE:J

.field private static final greylist-max-o GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE:J

.field private static final greylist-max-o SLOW_LOG_INTERVAL_MS:I = 0x1388

.field private static final greylist-max-o STATS_LOG_INTERVAL_MS:I = 0x1388

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ServiceManager"

.field private static greylist sCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sCache$ravenwood:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sGetServiceAccumulatedCallCount:I

.field private static greylist-max-o sGetServiceAccumulatedUs:I

.field private static greylist-max-o sLastSlowLogActualTime:J

.field private static greylist-max-o sLastSlowLogUptime:J

.field private static greylist-max-o sLastStatsLogUptime:J

.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field private static greylist sServiceManager:Landroid/os/IServiceManager;

.field public static final greylist-max-o sStatLogger:Lcom/android/internal/util/StatLogger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/ServiceManager;->sLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    .line 77
    nop

    .line 78
    const-string v0, "debug.servicemanager.slow_call_core_ms"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_CORE:J

    .line 84
    nop

    .line 85
    const-string v0, "debug.servicemanager.slow_call_ms"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE:J

    .line 90
    nop

    .line 91
    const-string v0, "debug.servicemanager.log_calls_core"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_CORE:I

    .line 96
    nop

    .line 97
    const-string v0, "debug.servicemanager.log_calls"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_NON_CORE:I

    .line 121
    new-instance v0, Lcom/android/internal/util/StatLogger;

    const-string/jumbo v1, "getService()"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/os/ServiceManager;->sStatLogger:Lcom/android/internal/util/StatLogger;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method public static greylist addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/IBinder;

    .line 218
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {p0, p1, v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 219
    return-void
.end method

.method public static greylist addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "allowIsolated"    # Z

    .line 234
    const/16 v0, 0x8

    invoke-static {p0, p1, p2, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 235
    return-void
.end method

.method public static greylist-max-r addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    .registers 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "allowIsolated"    # Z
    .param p3, "dumpPriority"    # I

    .line 253
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/os/IServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 256
    goto :goto_10

    .line 254
    :catch_8
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in addService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public static blacklist addService$ravenwood(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "allowIsolated"    # Z
    .param p3, "dumpPriority"    # I

    .line 262
    const-class v0, Landroid/os/ServiceManager;

    monitor-enter v0

    .line 264
    :try_start_3
    sget-object v1, Landroid/os/ServiceManager;->sCache$ravenwood:Ljava/util/Map;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->requireNonNullViaRavenwoodRule(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    monitor-exit v0

    .line 266
    return-void

    .line 265
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public static greylist checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 276
    :try_start_0
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 277
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_b

    .line 278
    return-object v0

    .line 281
    :cond_b
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/os/IServiceManager;->checkService2(Ljava/lang/String;)Landroid/os/Service;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Service;->getServiceWithMetadata()Landroid/os/ServiceWithMetadata;

    move-result-object v1

    iget-object v1, v1, Landroid/os/ServiceWithMetadata;->service:Landroid/os/IBinder;

    .line 280
    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object v1

    .line 283
    .end local v0    # "service":Landroid/os/IBinder;
    :catch_1e
    move-exception v0

    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in checkService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "iface"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 317
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/os/IServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 318
    :catch_9
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in getDeclaredInstances"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static greylist getIServiceManager()Landroid/os/IServiceManager;
    .registers 1

    .line 150
    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    if-eqz v0, :cond_7

    .line 151
    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    return-object v0

    .line 156
    :cond_7
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getContextObject()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;

    move-result-object v0

    sput-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    .line 157
    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    return-object v0
.end method

.method public static greylist getService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 171
    :try_start_0
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 172
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_b

    .line 173
    return-object v0

    .line 175
    :cond_b
    invoke-static {p0}, Landroid/os/ServiceManager;->rawGetService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v1

    .line 177
    .end local v0    # "service":Landroid/os/IBinder;
    :catch_14
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in getService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getService$ravenwood(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 185
    const-class v0, Landroid/os/ServiceManager;

    monitor-enter v0

    .line 187
    :try_start_3
    sget-object v1, Landroid/os/ServiceManager;->sCache$ravenwood:Ljava/util/Map;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->requireNonNullViaRavenwoodRule(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    monitor-exit v0

    return-object v1

    .line 188
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public static blacklist getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;
    .registers 3

    .line 390
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IServiceManager;->getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 391
    :catch_9
    move-exception v0

    .line 392
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in getServiceDebugInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    const/4 v1, 0x0

    return-object v1
.end method

.method public static greylist-max-o getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 199
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 200
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_7

    .line 201
    return-object v0

    .line 203
    :cond_7
    new-instance v1, Landroid/os/ServiceManager$ServiceNotFoundException;

    invoke-direct {v1, p0}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist init$ravenwood()V
    .registers 2

    .line 134
    const-class v0, Landroid/os/ServiceManager;

    monitor-enter v0

    .line 135
    :try_start_3
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Landroid/os/ServiceManager;->sCache$ravenwood:Ljava/util/Map;

    .line 136
    monitor-exit v0

    .line 137
    return-void

    .line 136
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public static greylist-max-o initServiceCache(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 406
    .local p0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 409
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 410
    return-void

    .line 407
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setServiceCache may only be called once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist isDeclared(Ljava/lang/String;)Z
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 297
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/os/IServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 298
    :catch_9
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ServiceManager"

    const-string v2, "error in isDeclared"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    const/4 v1, 0x0

    return v1
.end method

.method public static greylist listServices()[Ljava/lang/String;
    .registers 3

    .line 376
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Landroid/os/IServiceManager;->listServices(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 377
    :catch_b
    move-exception v0

    .line 378
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in listServices"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    const/4 v1, 0x0

    return-object v1
.end method

.method private static greylist-max-o rawGetService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 21
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 427
    move-object/from16 v1, p0

    sget-object v0, Landroid/os/ServiceManager;->sStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v2

    .line 430
    .local v2, "start":J
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/os/IServiceManager;->getService2(Ljava/lang/String;)Landroid/os/Service;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Service;->getServiceWithMetadata()Landroid/os/ServiceWithMetadata;

    move-result-object v0

    iget-object v4, v0, Landroid/os/ServiceWithMetadata;->service:Landroid/os/IBinder;

    .line 432
    .local v4, "binder":Landroid/os/IBinder;
    sget-object v0, Landroid/os/ServiceManager;->sStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    move-result-wide v6

    long-to-int v6, v6

    .line 434
    .local v6, "time":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    .line 435
    .local v7, "myUid":I
    invoke-static {v7}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v8

    .line 437
    .local v8, "isCore":Z
    if-eqz v8, :cond_2b

    .line 438
    sget-wide v9, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_CORE:J

    goto :goto_2d

    .line 439
    :cond_2b
    sget-wide v9, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE:J

    :goto_2d
    nop

    .line 441
    .local v9, "slowThreshold":J
    sget-object v11, Landroid/os/ServiceManager;->sLock:Ljava/lang/Object;

    monitor-enter v11

    .line 442
    :try_start_31
    sget v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    add-int/2addr v0, v6

    sput v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    .line 443
    sget v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    .line 445
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12
    :try_end_40
    .catchall {:try_start_31 .. :try_end_40} :catchall_9d

    .line 448
    .local v12, "nowUptime":J
    int-to-long v14, v6

    cmp-long v0, v14, v9

    const-wide/16 v14, 0x1388

    if-ltz v0, :cond_6a

    .line 452
    :try_start_47
    sget-wide v16, Landroid/os/ServiceManager;->sLastSlowLogUptime:J

    add-long v16, v16, v14

    cmp-long v0, v12, v16

    if-gtz v0, :cond_59

    sget-wide v16, Landroid/os/ServiceManager;->sLastSlowLogActualTime:J

    move-wide/from16 v18, v14

    int-to-long v14, v6

    cmp-long v0, v16, v14

    if-gez v0, :cond_6c

    goto :goto_5b

    :cond_59
    move-wide/from16 v18, v14

    .line 454
    :goto_5b
    div-int/lit16 v0, v6, 0x3e8

    invoke-static {v0, v1}, Landroid/os/EventLogTags;->writeServiceManagerSlow(ILjava/lang/String;)V

    .line 456
    sput-wide v12, Landroid/os/ServiceManager;->sLastSlowLogUptime:J

    .line 457
    int-to-long v14, v6

    sput-wide v14, Landroid/os/ServiceManager;->sLastSlowLogActualTime:J

    goto :goto_6c

    .line 478
    .end local v12    # "nowUptime":J
    :catchall_66
    move-exception v0

    move/from16 v18, v6

    goto :goto_a0

    .line 448
    .restart local v12    # "nowUptime":J
    :cond_6a
    move-wide/from16 v18, v14

    .line 463
    :cond_6c
    :goto_6c
    if-eqz v8, :cond_71

    .line 464
    sget v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_CORE:I
    :try_end_70
    .catchall {:try_start_47 .. :try_end_70} :catchall_66

    goto :goto_73

    .line 465
    :cond_71
    :try_start_71
    sget v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_NON_CORE:I

    :goto_73
    nop

    .line 467
    .local v0, "logInterval":I
    sget v14, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    if-lt v14, v0, :cond_99

    sget-wide v14, Landroid/os/ServiceManager;->sLastStatsLogUptime:J

    add-long v14, v14, v18

    cmp-long v14, v12, v14

    if-ltz v14, :cond_99

    .line 470
    sget v14, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    sget v15, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    div-int/lit16 v15, v15, 0x3e8

    sget-wide v16, Landroid/os/ServiceManager;->sLastStatsLogUptime:J
    :try_end_88
    .catchall {:try_start_71 .. :try_end_88} :catchall_9d

    move/from16 v19, v5

    move/from16 v18, v6

    .end local v6    # "time":I
    .local v18, "time":I
    sub-long v5, v12, v16

    long-to-int v5, v5

    :try_start_8f
    invoke-static {v14, v15, v5}, Landroid/os/EventLogTags;->writeServiceManagerStats(III)V

    .line 474
    sput v19, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    .line 475
    sput v19, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    .line 476
    sput-wide v12, Landroid/os/ServiceManager;->sLastStatsLogUptime:J

    goto :goto_9b

    .line 467
    .end local v18    # "time":I
    .restart local v6    # "time":I
    :cond_99
    move/from16 v18, v6

    .line 478
    .end local v0    # "logInterval":I
    .end local v6    # "time":I
    .end local v12    # "nowUptime":J
    .restart local v18    # "time":I
    :goto_9b
    monitor-exit v11

    .line 479
    return-object v4

    .line 478
    .end local v18    # "time":I
    .restart local v6    # "time":I
    :catchall_9d
    move-exception v0

    move/from16 v18, v6

    .end local v6    # "time":I
    .restart local v18    # "time":I
    :goto_a0
    monitor-exit v11
    :try_end_a1
    .catchall {:try_start_8f .. :try_end_a1} :catchall_a2

    throw v0

    :catchall_a2
    move-exception v0

    goto :goto_a0
.end method

.method public static blacklist registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "callback"    # Landroid/os/IServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/os/IServiceManager;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V

    .line 365
    return-void
.end method

.method public static blacklist reset$ravenwood()V
    .registers 2

    .line 142
    const-class v0, Landroid/os/ServiceManager;

    monitor-enter v0

    .line 143
    :try_start_3
    sget-object v1, Landroid/os/ServiceManager;->sCache$ravenwood:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 144
    const/4 v1, 0x0

    sput-object v1, Landroid/os/ServiceManager;->sCache$ravenwood:Ljava/util/Map;

    .line 145
    monitor-exit v0

    .line 146
    return-void

    .line 145
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static blacklist waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 353
    invoke-static {p0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public static blacklist waitForService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 334
    invoke-static {p0}, Landroid/os/ServiceManager;->waitForServiceNative(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist waitForServiceNative(Ljava/lang/String;)Landroid/os/IBinder;
.end method
