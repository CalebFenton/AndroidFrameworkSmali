.class public final Landroid/app/time/TimeManager;
.super Ljava/lang/Object;
.source "TimeManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/time/TimeManager$TimeZoneDetectorListener;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "time.TimeManager"


# instance fields
.field private final blacklist mITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;

.field private final blacklist mITimeZoneDetectorService:Landroid/app/timezonedetector/ITimeZoneDetectorService;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mTimeZoneDetectorListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/time/TimeManager$TimeZoneDetectorListener;",
            "Landroid/app/time/TimeManager$TimeZoneDetectorListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTimeZoneDetectorReceiver:Landroid/app/time/ITimeZoneDetectorListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mnotifyTimeZoneDetectorListeners(Landroid/app/time/TimeManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/time/TimeManager;->notifyTimeZoneDetectorListeners()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/time/TimeManager;->mLock:Ljava/lang/Object;

    .line 67
    nop

    .line 68
    const-string/jumbo v0, "time_zone_detector"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/timezonedetector/ITimeZoneDetectorService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/time/TimeManager;->mITimeZoneDetectorService:Landroid/app/timezonedetector/ITimeZoneDetectorService;

    .line 69
    nop

    .line 70
    const-string/jumbo v0, "time_detector"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/app/timedetector/ITimeDetectorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/timedetector/ITimeDetectorService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/time/TimeManager;->mITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;

    .line 71
    return-void
.end method

.method static synthetic blacklist lambda$addTimeZoneDetectorListener$0(Ljava/util/concurrent/Executor;Landroid/app/time/TimeManager$TimeZoneDetectorListener;)V
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "listener"    # Landroid/app/time/TimeManager$TimeZoneDetectorListener;

    .line 228
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/app/time/TimeManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/app/time/TimeManager$$ExternalSyntheticLambda0;-><init>(Landroid/app/time/TimeManager$TimeZoneDetectorListener;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist notifyTimeZoneDetectorListeners()V
    .registers 5

    .line 234
    iget-object v0, p0, Landroid/app/time/TimeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_3
    iget-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorListeners:Landroid/util/ArrayMap;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_2c

    .line 238
    :cond_10
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorListeners:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 239
    .local v1, "timeZoneDetectorListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/time/TimeManager$TimeZoneDetectorListener;Landroid/app/time/TimeManager$TimeZoneDetectorListener;>;"
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_2e

    .line 240
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 241
    .local v0, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-ge v2, v0, :cond_2b

    .line 242
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/time/TimeManager$TimeZoneDetectorListener;

    invoke-interface {v3}, Landroid/app/time/TimeManager$TimeZoneDetectorListener;->onChange()V

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 244
    .end local v2    # "i":I
    :cond_2b
    return-void

    .line 236
    .end local v0    # "size":I
    .end local v1    # "timeZoneDetectorListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/time/TimeManager$TimeZoneDetectorListener;Landroid/app/time/TimeManager$TimeZoneDetectorListener;>;"
    :cond_2c
    :goto_2c
    :try_start_2c
    monitor-exit v0

    return-void

    .line 239
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_2e

    throw v1
.end method


# virtual methods
.method public whitelist addTimeZoneDetectorListener(Ljava/util/concurrent/Executor;Landroid/app/time/TimeManager$TimeZoneDetectorListener;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/app/time/TimeManager$TimeZoneDetectorListener;

    .line 207
    iget-object v0, p0, Landroid/app/time/TimeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_3
    iget-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorListeners:Landroid/util/ArrayMap;

    if-nez v1, :cond_f

    .line 209
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorListeners:Landroid/util/ArrayMap;

    goto :goto_19

    .line 210
    :cond_f
    iget-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 211
    monitor-exit v0

    return-void

    .line 214
    :cond_19
    :goto_19
    iget-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorReceiver:Landroid/app/time/ITimeZoneDetectorListener;

    if-nez v1, :cond_32

    .line 215
    new-instance v1, Landroid/app/time/TimeManager$1;

    invoke-direct {v1, p0}, Landroid/app/time/TimeManager$1;-><init>(Landroid/app/time/TimeManager;)V

    .line 221
    .local v1, "iListener":Landroid/app/time/ITimeZoneDetectorListener;
    iput-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorReceiver:Landroid/app/time/ITimeZoneDetectorListener;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_3e

    .line 223
    :try_start_24
    iget-object v2, p0, Landroid/app/time/TimeManager;->mITimeZoneDetectorService:Landroid/app/timezonedetector/ITimeZoneDetectorService;

    iget-object v3, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorReceiver:Landroid/app/time/ITimeZoneDetectorListener;

    invoke-interface {v2, v3}, Landroid/app/timezonedetector/ITimeZoneDetectorService;->addListener(Landroid/app/time/ITimeZoneDetectorListener;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2b} :catch_2c
    .catchall {:try_start_24 .. :try_end_2b} :catchall_3e

    .line 226
    goto :goto_32

    .line 224
    :catch_2c
    move-exception v2

    .line 225
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2d
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/time/TimeManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/app/time/TimeManager$TimeZoneDetectorListener;
    throw v3

    .line 228
    .end local v1    # "iListener":Landroid/app/time/ITimeZoneDetectorListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/time/TimeManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/app/time/TimeManager$TimeZoneDetectorListener;
    :cond_32
    :goto_32
    iget-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/app/time/TimeManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p2}, Landroid/app/time/TimeManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Landroid/app/time/TimeManager$TimeZoneDetectorListener;)V

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    monitor-exit v0

    .line 230
    return-void

    .line 229
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_2d .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public whitelist confirmTime(Landroid/app/time/UnixEpochTime;)Z
    .registers 4
    .param p1, "unixEpochTime"    # Landroid/app/time/UnixEpochTime;

    .line 328
    :try_start_0
    iget-object v0, p0, Landroid/app/time/TimeManager;->mITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;

    invoke-interface {v0, p1}, Landroid/app/timedetector/ITimeDetectorService;->confirmTime(Landroid/app/time/UnixEpochTime;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 329
    :catch_7
    move-exception v0

    .line 330
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist confirmTimeZone(Ljava/lang/String;)Z
    .registers 4
    .param p1, "timeZoneId"    # Ljava/lang/String;

    .line 395
    :try_start_0
    iget-object v0, p0, Landroid/app/time/TimeManager;->mITimeZoneDetectorService:Landroid/app/timezonedetector/ITimeZoneDetectorService;

    invoke-interface {v0, p1}, Landroid/app/timezonedetector/ITimeZoneDetectorService;->confirmTimeZone(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 396
    :catch_7
    move-exception v0

    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getTimeCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;
    .registers 3

    .line 99
    :try_start_0
    iget-object v0, p0, Landroid/app/time/TimeManager;->mITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;

    invoke-interface {v0}, Landroid/app/timedetector/ITimeDetectorService;->getCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 100
    :catch_7
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getTimeState()Landroid/app/time/TimeState;
    .registers 3

    .line 305
    :try_start_0
    iget-object v0, p0, Landroid/app/time/TimeManager;->mITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;

    invoke-interface {v0}, Landroid/app/timedetector/ITimeDetectorService;->getTimeState()Landroid/app/time/TimeState;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 306
    :catch_7
    move-exception v0

    .line 307
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getTimeZoneCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    .registers 3

    .line 83
    :try_start_0
    iget-object v0, p0, Landroid/app/time/TimeManager;->mITimeZoneDetectorService:Landroid/app/timezonedetector/ITimeZoneDetectorService;

    invoke-interface {v0}, Landroid/app/timezonedetector/ITimeZoneDetectorService;->getCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 84
    :catch_7
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getTimeZoneState()Landroid/app/time/TimeZoneState;
    .registers 3

    .line 372
    :try_start_0
    iget-object v0, p0, Landroid/app/time/TimeManager;->mITimeZoneDetectorService:Landroid/app/timezonedetector/ITimeZoneDetectorService;

    invoke-interface {v0}, Landroid/app/timezonedetector/ITimeZoneDetectorService;->getTimeZoneState()Landroid/app/time/TimeZoneState;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 373
    :catch_7
    move-exception v0

    .line 374
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeTimeZoneDetectorListener(Landroid/app/time/TimeManager$TimeZoneDetectorListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/app/time/TimeManager$TimeZoneDetectorListener;

    .line 256
    iget-object v0, p0, Landroid/app/time/TimeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_3
    iget-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorListeners:Landroid/util/ArrayMap;

    if-eqz v1, :cond_36

    iget-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_36

    .line 260
    :cond_10
    iget-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_38

    if-eqz v1, :cond_34

    .line 266
    const/4 v1, 0x0

    :try_start_1e
    iget-object v2, p0, Landroid/app/time/TimeManager;->mITimeZoneDetectorService:Landroid/app/timezonedetector/ITimeZoneDetectorService;

    iget-object v3, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorReceiver:Landroid/app/time/ITimeZoneDetectorListener;

    invoke-interface {v2, v3}, Landroid/app/timezonedetector/ITimeZoneDetectorService;->removeListener(Landroid/app/time/ITimeZoneDetectorListener;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_2a
    .catchall {:try_start_1e .. :try_end_25} :catchall_28

    .line 270
    :try_start_25
    iput-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorReceiver:Landroid/app/time/ITimeZoneDetectorListener;
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_38

    .line 271
    goto :goto_34

    .line 270
    :catchall_28
    move-exception v2

    goto :goto_30

    .line 267
    :catch_2a
    move-exception v2

    .line 268
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2b
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/time/TimeManager;
    .end local p1    # "listener":Landroid/app/time/TimeManager$TimeZoneDetectorListener;
    throw v3
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_28

    .line 270
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/time/TimeManager;
    .restart local p1    # "listener":Landroid/app/time/TimeManager$TimeZoneDetectorListener;
    :goto_30
    :try_start_30
    iput-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorReceiver:Landroid/app/time/ITimeZoneDetectorListener;

    .line 271
    nop

    .end local p0    # "this":Landroid/app/time/TimeManager;
    .end local p1    # "listener":Landroid/app/time/TimeManager$TimeZoneDetectorListener;
    throw v2

    .line 273
    .restart local p0    # "this":Landroid/app/time/TimeManager;
    .restart local p1    # "listener":Landroid/app/time/TimeManager$TimeZoneDetectorListener;
    :cond_34
    :goto_34
    monitor-exit v0

    .line 274
    return-void

    .line 258
    :cond_36
    :goto_36
    monitor-exit v0

    return-void

    .line 273
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public whitelist setManualTime(Landroid/app/time/UnixEpochTime;)Z
    .registers 5
    .param p1, "unixEpochTime"    # Landroid/app/time/UnixEpochTime;

    .line 349
    :try_start_0
    new-instance v0, Landroid/app/timedetector/ManualTimeSuggestion;

    invoke-direct {v0, p1}, Landroid/app/timedetector/ManualTimeSuggestion;-><init>(Landroid/app/time/UnixEpochTime;)V

    .line 350
    .local v0, "manualTimeSuggestion":Landroid/app/timedetector/ManualTimeSuggestion;
    const-string v1, "TimeManager.setTime()"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/timedetector/ManualTimeSuggestion;->addDebugInfo([Ljava/lang/String;)V

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/timedetector/ManualTimeSuggestion;->addDebugInfo([Ljava/lang/String;)V

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/timedetector/ManualTimeSuggestion;->addDebugInfo([Ljava/lang/String;)V

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/timedetector/ManualTimeSuggestion;->addDebugInfo([Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Landroid/app/time/TimeManager;->mITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;

    invoke-interface {v1, v0}, Landroid/app/timedetector/ITimeDetectorService;->setManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z

    move-result v1
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6e} :catch_6f

    return v1

    .line 355
    .end local v0    # "manualTimeSuggestion":Landroid/app/timedetector/ManualTimeSuggestion;
    :catch_6f
    move-exception v0

    .line 356
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setManualTimeZone(Ljava/lang/String;)Z
    .registers 5
    .param p1, "timeZoneId"    # Ljava/lang/String;

    .line 416
    :try_start_0
    new-instance v0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    invoke-direct {v0, p1}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;-><init>(Ljava/lang/String;)V

    .line 418
    .local v0, "manualTimeZoneSuggestion":Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    const-string v1, "TimeManager.setManualTimeZone()"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->addDebugInfo([Ljava/lang/String;)V

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->addDebugInfo([Ljava/lang/String;)V

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->addDebugInfo([Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Landroid/app/time/TimeManager;->mITimeZoneDetectorService:Landroid/app/timezonedetector/ITimeZoneDetectorService;

    invoke-interface {v1, v0}, Landroid/app/timezonedetector/ITimeZoneDetectorService;->setManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z

    move-result v1
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_50} :catch_51

    return v1

    .line 422
    .end local v0    # "manualTimeZoneSuggestion":Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    :catch_51
    move-exception v0

    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V
    .registers 4
    .param p1, "timeSuggestion"    # Landroid/app/time/ExternalTimeSuggestion;

    .line 288
    :try_start_0
    iget-object v0, p0, Landroid/app/time/TimeManager;->mITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;

    invoke-interface {v0, p1}, Landroid/app/timedetector/ITimeDetectorService;->suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 291
    nop

    .line 292
    return-void

    .line 289
    :catch_7
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateTimeConfiguration(Landroid/app/time/TimeConfiguration;)Z
    .registers 4
    .param p1, "configuration"    # Landroid/app/time/TimeConfiguration;

    .line 135
    :try_start_0
    iget-object v0, p0, Landroid/app/time/TimeManager;->mITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;

    invoke-interface {v0, p1}, Landroid/app/timedetector/ITimeDetectorService;->updateConfiguration(Landroid/app/time/TimeConfiguration;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 136
    :catch_7
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateTimeZoneConfiguration(Landroid/app/time/TimeZoneConfiguration;)Z
    .registers 4
    .param p1, "configuration"    # Landroid/app/time/TimeZoneConfiguration;

    .line 174
    :try_start_0
    iget-object v0, p0, Landroid/app/time/TimeManager;->mITimeZoneDetectorService:Landroid/app/timezonedetector/ITimeZoneDetectorService;

    invoke-interface {v0, p1}, Landroid/app/timezonedetector/ITimeZoneDetectorService;->updateConfiguration(Landroid/app/time/TimeZoneConfiguration;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 175
    :catch_7
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
