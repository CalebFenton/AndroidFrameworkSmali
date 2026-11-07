.class public abstract Landroid/service/timezone/TimeZoneProviderService;
.super Landroid/app/Service;
.source "TimeZoneProviderService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;
    }
.end annotation


# static fields
.field public static final whitelist PRIMARY_LOCATION_TIME_ZONE_PROVIDER_SERVICE_INTERFACE:Ljava/lang/String; = "android.service.timezone.PrimaryLocationTimeZoneProviderService"

.field public static final whitelist SECONDARY_LOCATION_TIME_ZONE_PROVIDER_SERVICE_INTERFACE:Ljava/lang/String; = "android.service.timezone.SecondaryLocationTimeZoneProviderService"

.field private static final blacklist TAG:Ljava/lang/String; = "TimeZoneProviderService"

.field public static final blacklist TEST_COMMAND_RESULT_ERROR_KEY:Ljava/lang/String; = "ERROR"

.field public static final blacklist TEST_COMMAND_RESULT_SUCCESS_KEY:Ljava/lang/String; = "SUCCESS"


# instance fields
.field private blacklist mEventFilteringAgeThresholdMillis:J

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mLastEventSent:Landroid/service/timezone/TimeZoneProviderEvent;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mManager:Landroid/service/timezone/ITimeZoneProviderManager;

.field private final blacklist mWrapper:Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;


# direct methods
.method public static synthetic blacklist $r8$lambda$ToTFWqmMO9kYmSbSnpNidWd87EE(Landroid/service/timezone/TimeZoneProviderService;Landroid/service/timezone/TimeZoneProviderStatus;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/timezone/TimeZoneProviderService;->lambda$reportUncertainInternal$1(Landroid/service/timezone/TimeZoneProviderStatus;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$htmGexzB3sFC_HN8J26QtsQwSGY(Landroid/service/timezone/TimeZoneProviderService;Landroid/service/timezone/TimeZoneProviderSuggestion;Landroid/service/timezone/TimeZoneProviderStatus;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/timezone/TimeZoneProviderService;->lambda$reportSuggestionInternal$0(Landroid/service/timezone/TimeZoneProviderSuggestion;Landroid/service/timezone/TimeZoneProviderStatus;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zumqxXuCvMwnsEQq9yHnBUQyLpk(Landroid/service/timezone/TimeZoneProviderService;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/timezone/TimeZoneProviderService;->lambda$reportPermanentFailure$2(Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/timezone/TimeZoneProviderService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/timezone/TimeZoneProviderService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monStartUpdatesInternal(Landroid/service/timezone/TimeZoneProviderService;Landroid/service/timezone/ITimeZoneProviderManager;JJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/service/timezone/TimeZoneProviderService;->onStartUpdatesInternal(Landroid/service/timezone/ITimeZoneProviderManager;JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monStopUpdatesInternal(Landroid/service/timezone/TimeZoneProviderService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/timezone/TimeZoneProviderService;->onStopUpdatesInternal()V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 136
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 169
    new-instance v0, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;-><init>(Landroid/service/timezone/TimeZoneProviderService;Landroid/service/timezone/TimeZoneProviderService-IA;)V

    iput-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mWrapper:Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLock:Ljava/lang/Object;

    .line 175
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic blacklist lambda$reportPermanentFailure$2(Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 301
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_3
    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderService;->mManager:Landroid/service/timezone/ITimeZoneProviderManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_27

    .line 303
    .local v1, "manager":Landroid/service/timezone/ITimeZoneProviderManager;
    if-eqz v1, :cond_25

    .line 305
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "causeString":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 307
    invoke-static {v3, v4, v2}, Landroid/service/timezone/TimeZoneProviderEvent;->createPermanentFailureEvent(JLjava/lang/String;)Landroid/service/timezone/TimeZoneProviderEvent;

    move-result-object v3

    .line 309
    .local v3, "thisEvent":Landroid/service/timezone/TimeZoneProviderEvent;
    invoke-direct {p0, v3}, Landroid/service/timezone/TimeZoneProviderService;->shouldSendEvent(Landroid/service/timezone/TimeZoneProviderEvent;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 310
    invoke-interface {v1, v3}, Landroid/service/timezone/ITimeZoneProviderManager;->onTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V

    .line 311
    iput-object v3, p0, Landroid/service/timezone/TimeZoneProviderService;->mLastEventSent:Landroid/service/timezone/TimeZoneProviderEvent;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_1e} :catch_1f
    .catchall {:try_start_7 .. :try_end_1e} :catchall_27

    .line 315
    .end local v2    # "causeString":Ljava/lang/String;
    .end local v3    # "thisEvent":Landroid/service/timezone/TimeZoneProviderEvent;
    :cond_1e
    goto :goto_25

    .line 313
    :catch_1f
    move-exception v2

    .line 314
    .local v2, "e":Ljava/lang/Exception;
    :try_start_20
    const-string v3, "TimeZoneProviderService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    .end local v1    # "manager":Landroid/service/timezone/ITimeZoneProviderManager;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_25
    :goto_25
    monitor-exit v0

    .line 318
    return-void

    .line 317
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private synthetic blacklist lambda$reportSuggestionInternal$0(Landroid/service/timezone/TimeZoneProviderSuggestion;Landroid/service/timezone/TimeZoneProviderStatus;)V
    .registers 7
    .param p1, "suggestion"    # Landroid/service/timezone/TimeZoneProviderSuggestion;
    .param p2, "providerStatus"    # Landroid/service/timezone/TimeZoneProviderStatus;

    .line 228
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_3
    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderService;->mManager:Landroid/service/timezone/ITimeZoneProviderManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_23

    .line 230
    .local v1, "manager":Landroid/service/timezone/ITimeZoneProviderManager;
    if-eqz v1, :cond_21

    .line 234
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 233
    invoke-static {v2, v3, p1, p2}, Landroid/service/timezone/TimeZoneProviderEvent;->createSuggestionEvent(JLandroid/service/timezone/TimeZoneProviderSuggestion;Landroid/service/timezone/TimeZoneProviderStatus;)Landroid/service/timezone/TimeZoneProviderEvent;

    move-result-object v2

    .line 235
    .local v2, "thisEvent":Landroid/service/timezone/TimeZoneProviderEvent;
    invoke-direct {p0, v2}, Landroid/service/timezone/TimeZoneProviderService;->shouldSendEvent(Landroid/service/timezone/TimeZoneProviderEvent;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 236
    invoke-interface {v1, v2}, Landroid/service/timezone/ITimeZoneProviderManager;->onTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V

    .line 237
    iput-object v2, p0, Landroid/service/timezone/TimeZoneProviderService;->mLastEventSent:Landroid/service/timezone/TimeZoneProviderEvent;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_1a} :catch_1b
    .catchall {:try_start_7 .. :try_end_1a} :catchall_23

    .line 241
    .end local v2    # "thisEvent":Landroid/service/timezone/TimeZoneProviderEvent;
    :cond_1a
    goto :goto_21

    .line 239
    :catch_1b
    move-exception v2

    .line 240
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1c
    const-string v3, "TimeZoneProviderService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    .end local v1    # "manager":Landroid/service/timezone/ITimeZoneProviderManager;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_21
    :goto_21
    monitor-exit v0

    .line 244
    return-void

    .line 243
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_23

    throw v1
.end method

.method private synthetic blacklist lambda$reportUncertainInternal$1(Landroid/service/timezone/TimeZoneProviderStatus;)V
    .registers 6
    .param p1, "providerStatus"    # Landroid/service/timezone/TimeZoneProviderStatus;

    .line 274
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_3
    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderService;->mManager:Landroid/service/timezone/ITimeZoneProviderManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_23

    .line 276
    .local v1, "manager":Landroid/service/timezone/ITimeZoneProviderManager;
    if-eqz v1, :cond_21

    .line 280
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 279
    invoke-static {v2, v3, p1}, Landroid/service/timezone/TimeZoneProviderEvent;->createUncertainEvent(JLandroid/service/timezone/TimeZoneProviderStatus;)Landroid/service/timezone/TimeZoneProviderEvent;

    move-result-object v2

    .line 281
    .local v2, "thisEvent":Landroid/service/timezone/TimeZoneProviderEvent;
    invoke-direct {p0, v2}, Landroid/service/timezone/TimeZoneProviderService;->shouldSendEvent(Landroid/service/timezone/TimeZoneProviderEvent;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 282
    invoke-interface {v1, v2}, Landroid/service/timezone/ITimeZoneProviderManager;->onTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V

    .line 283
    iput-object v2, p0, Landroid/service/timezone/TimeZoneProviderService;->mLastEventSent:Landroid/service/timezone/TimeZoneProviderEvent;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_1a} :catch_1b
    .catchall {:try_start_7 .. :try_end_1a} :catchall_23

    .line 287
    .end local v2    # "thisEvent":Landroid/service/timezone/TimeZoneProviderEvent;
    :cond_1a
    goto :goto_21

    .line 285
    :catch_1b
    move-exception v2

    .line 286
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1c
    const-string v3, "TimeZoneProviderService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    .end local v1    # "manager":Landroid/service/timezone/ITimeZoneProviderManager;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_21
    :goto_21
    monitor-exit v0

    .line 290
    return-void

    .line 289
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_23

    throw v1
.end method

.method private blacklist onStartUpdatesInternal(Landroid/service/timezone/ITimeZoneProviderManager;JJ)V
    .registers 8
    .param p1, "manager"    # Landroid/service/timezone/ITimeZoneProviderManager;
    .param p2, "initializationTimeoutMillis"    # J
    .param p4, "eventFilteringAgeThresholdMillis"    # J

    .line 345
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_3
    iput-object p1, p0, Landroid/service/timezone/TimeZoneProviderService;->mManager:Landroid/service/timezone/ITimeZoneProviderManager;

    .line 347
    iput-wide p4, p0, Landroid/service/timezone/TimeZoneProviderService;->mEventFilteringAgeThresholdMillis:J

    .line 348
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/timezone/TimeZoneProviderService;->mLastEventSent:Landroid/service/timezone/TimeZoneProviderEvent;

    .line 349
    invoke-virtual {p0, p2, p3}, Landroid/service/timezone/TimeZoneProviderService;->onStartUpdates(J)V

    .line 350
    monitor-exit v0

    .line 351
    return-void

    .line 350
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private blacklist onStopUpdatesInternal()V
    .registers 3

    .line 383
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_3
    invoke-virtual {p0}, Landroid/service/timezone/TimeZoneProviderService;->onStopUpdates()V

    .line 385
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/timezone/TimeZoneProviderService;->mManager:Landroid/service/timezone/ITimeZoneProviderManager;

    .line 386
    monitor-exit v0

    .line 387
    return-void

    .line 386
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private blacklist reportSuggestionInternal(Landroid/service/timezone/TimeZoneProviderSuggestion;Landroid/service/timezone/TimeZoneProviderStatus;)V
    .registers 5
    .param p1, "suggestion"    # Landroid/service/timezone/TimeZoneProviderSuggestion;
    .param p2, "providerStatus"    # Landroid/service/timezone/TimeZoneProviderStatus;

    .line 225
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda0;-><init>(Landroid/service/timezone/TimeZoneProviderService;Landroid/service/timezone/TimeZoneProviderSuggestion;Landroid/service/timezone/TimeZoneProviderStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    return-void
.end method

.method private blacklist reportUncertainInternal(Landroid/service/timezone/TimeZoneProviderStatus;)V
    .registers 4
    .param p1, "providerStatus"    # Landroid/service/timezone/TimeZoneProviderStatus;

    .line 273
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda1;-><init>(Landroid/service/timezone/TimeZoneProviderService;Landroid/service/timezone/TimeZoneProviderStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    return-void
.end method

.method private blacklist shouldSendEvent(Landroid/service/timezone/TimeZoneProviderEvent;)Z
    .registers 8
    .param p1, "newEvent"    # Landroid/service/timezone/TimeZoneProviderEvent;

    .line 324
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLastEventSent:Landroid/service/timezone/TimeZoneProviderEvent;

    invoke-virtual {p1, v0}, Landroid/service/timezone/TimeZoneProviderEvent;->isEquivalentTo(Landroid/service/timezone/TimeZoneProviderEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 325
    return v1

    .line 337
    :cond_a
    nop

    .line 338
    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getCreationElapsedMillis()J

    move-result-wide v2

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLastEventSent:Landroid/service/timezone/TimeZoneProviderEvent;

    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderEvent;->getCreationElapsedMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 339
    .local v2, "timeSinceLastEventMillis":J
    iget-wide v4, p0, Landroid/service/timezone/TimeZoneProviderService;->mEventFilteringAgeThresholdMillis:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    return v1
.end method


# virtual methods
.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 398
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLastEventSent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/timezone/TimeZoneProviderService;->mLastEventSent:Landroid/service/timezone/TimeZoneProviderEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 400
    monitor-exit v0

    .line 401
    return-void

    .line 400
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 198
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mWrapper:Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;

    return-object v0
.end method

.method public abstract whitelist onStartUpdates(J)V
.end method

.method public abstract whitelist onStopUpdates()V
.end method

.method public final whitelist reportPermanentFailure(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 298
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda2;-><init>(Landroid/service/timezone/TimeZoneProviderService;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 319
    return-void
.end method

.method public final whitelist reportSuggestion(Landroid/service/timezone/TimeZoneProviderSuggestion;)V
    .registers 3
    .param p1, "suggestion"    # Landroid/service/timezone/TimeZoneProviderSuggestion;

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "providerStatus":Landroid/service/timezone/TimeZoneProviderStatus;
    invoke-direct {p0, p1, v0}, Landroid/service/timezone/TimeZoneProviderService;->reportSuggestionInternal(Landroid/service/timezone/TimeZoneProviderSuggestion;Landroid/service/timezone/TimeZoneProviderStatus;)V

    .line 208
    return-void
.end method

.method public final whitelist reportSuggestion(Landroid/service/timezone/TimeZoneProviderSuggestion;Landroid/service/timezone/TimeZoneProviderStatus;)V
    .registers 3
    .param p1, "suggestion"    # Landroid/service/timezone/TimeZoneProviderSuggestion;
    .param p2, "providerStatus"    # Landroid/service/timezone/TimeZoneProviderStatus;

    .line 219
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-direct {p0, p1, p2}, Landroid/service/timezone/TimeZoneProviderService;->reportSuggestionInternal(Landroid/service/timezone/TimeZoneProviderSuggestion;Landroid/service/timezone/TimeZoneProviderStatus;)V

    .line 221
    return-void
.end method

.method public final whitelist reportUncertain()V
    .registers 2

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "providerStatus":Landroid/service/timezone/TimeZoneProviderStatus;
    invoke-direct {p0, v0}, Landroid/service/timezone/TimeZoneProviderService;->reportUncertainInternal(Landroid/service/timezone/TimeZoneProviderStatus;)V

    .line 256
    return-void
.end method

.method public final whitelist reportUncertain(Landroid/service/timezone/TimeZoneProviderStatus;)V
    .registers 2
    .param p1, "providerStatus"    # Landroid/service/timezone/TimeZoneProviderStatus;

    .line 268
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-direct {p0, p1}, Landroid/service/timezone/TimeZoneProviderService;->reportUncertainInternal(Landroid/service/timezone/TimeZoneProviderStatus;)V

    .line 270
    return-void
.end method
