.class public final Landroid/os/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "SystemClock"

.field private static final blacklist sAnchorNanoTime$ravenwood:J

.field private static volatile blacklist sIAlarmManager:Landroid/app/IAlarmManager;

.field private static volatile blacklist sITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 119
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Landroid/os/SystemClock;->sAnchorNanoTime$ravenwood:J

    return-void
.end method

.method private constructor greylist <init>()V
    .registers 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method public static whitelist currentGnssTimeClock()Ljava/time/Clock;
    .registers 2

    .line 415
    new-instance v0, Landroid/os/SystemClock$4;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Landroid/os/SystemClock$4;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static whitelist currentNetworkTimeClock()Ljava/time/Clock;
    .registers 2

    .line 400
    new-instance v0, Landroid/os/SystemClock$3;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Landroid/os/SystemClock$3;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static greylist-max-o currentNetworkTimeMillis()J
    .registers 8

    .line 348
    invoke-static {}, Lcom/android/internal/os/Flags;->applicationSharedMemoryEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 349
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->networkTimeUsesSharedMemory()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 351
    invoke-static {}, Lcom/android/internal/os/ApplicationSharedMemory;->getInstance()Lcom/android/internal/os/ApplicationSharedMemory;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Lcom/android/internal/os/ApplicationSharedMemory;->getLatestNetworkTimeUnixEpochMillisAtZeroElapsedRealtimeMillis()J

    move-result-wide v0

    .line 353
    .local v0, "latestNetworkTimeUnixEpochMillisAtZeroElapsedRealtimeMillis":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2

    .line 355
    .end local v0    # "latestNetworkTimeUnixEpochMillisAtZeroElapsedRealtimeMillis":J
    :cond_1a
    invoke-static {}, Landroid/os/SystemClock;->getITimeDetectorService()Landroid/app/timedetector/ITimeDetectorService;

    move-result-object v0

    .line 356
    .local v0, "timeDetectorService":Landroid/app/timedetector/ITimeDetectorService;
    if-eqz v0, :cond_51

    .line 362
    :try_start_20
    invoke-interface {v0}, Landroid/app/timedetector/ITimeDetectorService;->latestNetworkTime()Landroid/app/time/UnixEpochTime;

    move-result-object v1
    :try_end_24
    .catch Landroid/os/ParcelableException; {:try_start_20 .. :try_end_24} :catch_45
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_24} :catch_3f

    .line 368
    .local v1, "time":Landroid/app/time/UnixEpochTime;
    nop

    .line 369
    if-eqz v1, :cond_37

    .line 374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 375
    .local v2, "currentMillis":J
    invoke-virtual {v1}, Landroid/app/time/UnixEpochTime;->getElapsedRealtimeMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 376
    .local v4, "deltaMs":J
    invoke-virtual {v1}, Landroid/app/time/UnixEpochTime;->getUnixEpochTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v4

    return-wide v6

    .line 371
    .end local v2    # "currentMillis":J
    .end local v4    # "deltaMs":J
    :cond_37
    new-instance v2, Ljava/time/DateTimeException;

    const-string v3, "Network based time is not available."

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 366
    .end local v1    # "time":Landroid/app/time/UnixEpochTime;
    :catch_3f
    move-exception v1

    .line 367
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 363
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_45
    move-exception v1

    .line 364
    .local v1, "e":Landroid/os/ParcelableException;
    const-class v2, Ljava/time/DateTimeException;

    invoke-virtual {v1, v2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 365
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 357
    .end local v1    # "e":Landroid/os/ParcelableException;
    :cond_51
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static native greylist-max-r currentThreadTimeMicro()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist currentThreadTimeMillis()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native greylist currentTimeMicro()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static blacklist currentTimeMicro$ravenwood()J
    .registers 4

    .line 324
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static native whitelist elapsedRealtime()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static blacklist elapsedRealtime$ravenwood()J
    .registers 4

    .line 257
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static greylist elapsedRealtimeClock()Ljava/time/Clock;
    .registers 2

    .line 267
    new-instance v0, Landroid/os/SystemClock$2;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Landroid/os/SystemClock$2;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static native whitelist elapsedRealtimeNanos()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static blacklist elapsedRealtimeNanos$ravenwood()J
    .registers 4

    .line 287
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v0

    const-wide v2, 0x34630b8a000L

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static blacklist getIAlarmManager()Landroid/app/IAlarmManager;
    .registers 1

    .line 187
    sget-object v0, Landroid/os/SystemClock;->sIAlarmManager:Landroid/app/IAlarmManager;

    if-nez v0, :cond_11

    .line 188
    nop

    .line 189
    const-string v0, "alarm"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v0

    sput-object v0, Landroid/os/SystemClock;->sIAlarmManager:Landroid/app/IAlarmManager;

    .line 191
    :cond_11
    sget-object v0, Landroid/os/SystemClock;->sIAlarmManager:Landroid/app/IAlarmManager;

    return-object v0
.end method

.method private static blacklist getITimeDetectorService()Landroid/app/timedetector/ITimeDetectorService;
    .registers 1

    .line 195
    sget-object v0, Landroid/os/SystemClock;->sITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;

    if-nez v0, :cond_12

    .line 196
    nop

    .line 197
    const-string/jumbo v0, "time_detector"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/timedetector/ITimeDetectorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/timedetector/ITimeDetectorService;

    move-result-object v0

    sput-object v0, Landroid/os/SystemClock;->sITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;

    .line 199
    :cond_12
    sget-object v0, Landroid/os/SystemClock;->sITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;

    return-object v0
.end method

.method public static whitelist setCurrentTimeMillis(J)Z
    .registers 7
    .param p0, "millis"    # J

    .line 169
    const-string v0, "Unable to set RTC"

    invoke-static {}, Landroid/os/SystemClock;->getIAlarmManager()Landroid/app/IAlarmManager;

    move-result-object v1

    .line 170
    .local v1, "mgr":Landroid/app/IAlarmManager;
    const/4 v2, 0x0

    const-string v3, "SystemClock"

    if-nez v1, :cond_11

    .line 171
    const-string v0, "Unable to set RTC: mgr == null"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return v2

    .line 176
    :cond_11
    :try_start_11
    invoke-interface {v1, p0, p1}, Landroid/app/IAlarmManager;->setTime(J)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_1b
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_15} :catch_16

    return v0

    .line 179
    :catch_16
    move-exception v4

    .line 180
    .local v4, "e":Ljava/lang/SecurityException;
    invoke-static {v3, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 177
    .end local v4    # "e":Ljava/lang/SecurityException;
    :catch_1b
    move-exception v4

    .line 178
    .local v4, "e":Landroid/os/RemoteException;
    invoke-static {v3, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .end local v4    # "e":Landroid/os/RemoteException;
    nop

    .line 183
    :goto_20
    return v2
.end method

.method public static whitelist sleep(J)V
    .registers 11
    .param p0, "ms"    # J

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 142
    .local v0, "start":J
    move-wide v2, p0

    .line 143
    .local v2, "duration":J
    const/4 v4, 0x0

    .line 146
    .local v4, "interrupted":Z
    :cond_6
    :try_start_6
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_a

    .line 150
    goto :goto_c

    .line 148
    :catch_a
    move-exception v5

    .line 149
    .local v5, "e":Ljava/lang/InterruptedException;
    const/4 v4, 0x1

    .line 151
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_c
    add-long v5, v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v2, v5, v7

    .line 152
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_6

    .line 154
    if-eqz v4, :cond_23

    .line 158
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 160
    :cond_23
    return-void
.end method

.method public static greylist uptimeClock()Ljava/time/Clock;
    .registers 2

    .line 238
    new-instance v0, Landroid/os/SystemClock$1;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Landroid/os/SystemClock$1;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static native whitelist uptimeMillis()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static blacklist uptimeMillis$ravenwood()J
    .registers 4

    .line 213
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static native whitelist uptimeNanos()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static blacklist uptimeNanos$ravenwood()J
    .registers 4

    .line 228
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Landroid/os/SystemClock;->sAnchorNanoTime$ravenwood:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
