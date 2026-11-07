.class public Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;
.super Ljava/lang/Object;
.source "MemoryPressureMonitor.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist DEFAULT_THROTTLING_INTERVAL_MS:I = 0xea60

.field public static final blacklist INSTANCE:Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;


# instance fields
.field private blacklist mCurrentPressureSupplierForTesting:Landroid/net/connectivity/org/chromium/base/supplier/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/supplier/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsInsideThrottlingInterval:Z

.field private blacklist mLastReportedPressure:I

.field private blacklist mPollingEnabled:Z

.field private blacklist mPostToBackgroundIsEnabled:Z

.field private blacklist mReportingCallbackForTesting:Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureCallback;

.field private blacklist mThrottledPressure:Ljava/lang/Integer;

.field private final blacklist mThrottlingIntervalMs:I

.field private final blacklist mThrottlingIntervalTask:Ljava/lang/Runnable;


# direct methods
.method public static synthetic blacklist $r8$lambda$N_tNkADtB5MMc-J0l70R3EZcWjo(Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->lambda$queryCurrentPressure$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RqNfHE5zODiHecDSK6sksSrNoTQ(Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->lambda$setReportingCallbackForTesting$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$SgoW0qxXQ1GB2MEsZPjW_b9FYZ8(Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->lambda$setCurrentPressureSupplierForTesting$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZSmuRdu09WPAti8NlPzVesA7qn8(Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->lambda$queryCurrentPressure$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rSjLskFfk8lOBxydMEV5z_9dv-4(Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->onThrottlingIntervalFinished()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 77
    nop

    .line 103
    new-instance v0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;

    const v1, 0xea60

    invoke-direct {v0, v1}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;-><init>(I)V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->INSTANCE:Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;

    return-void
.end method

.method protected constructor blacklist <init>(I)V
    .registers 3
    .param p1, "throttlingIntervalMs"    # I

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mLastReportedPressure:I

    .line 100
    new-instance v0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$$ExternalSyntheticLambda2;-><init>(Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mThrottlingIntervalTask:Ljava/lang/Runnable;

    .line 108
    iput p1, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mThrottlingIntervalMs:I

    .line 109
    return-void
.end method

.method private static blacklist getCurrentMemoryPressure()Ljava/lang/Integer;
    .registers 2

    .line 278
    :try_start_0
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 280
    .local v0, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 281
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->memoryPressureFromTrimLevel(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object v1

    .line 282
    .end local v0    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_f
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private synthetic blacklist lambda$queryCurrentPressure$0(Ljava/lang/Integer;)V
    .registers 3
    .param p1, "pressure"    # Ljava/lang/Integer;

    .line 245
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->notifyPressure(I)V

    return-void
.end method

.method private synthetic blacklist lambda$queryCurrentPressure$1()V
    .registers 4

    .line 242
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->getCurrentMemoryPressure()Ljava/lang/Integer;

    move-result-object v0

    .line 243
    .local v0, "pressure":Ljava/lang/Integer;
    if-eqz v0, :cond_f

    .line 244
    new-instance v1, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$$ExternalSyntheticLambda3;-><init>(Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;Ljava/lang/Integer;)V

    const/4 v2, 0x7

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    .line 247
    :cond_f
    return-void
.end method

.method private synthetic blacklist lambda$setCurrentPressureSupplierForTesting$2()V
    .registers 2

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mCurrentPressureSupplierForTesting:Landroid/net/connectivity/org/chromium/base/supplier/Supplier;

    return-void
.end method

.method private synthetic blacklist lambda$setReportingCallbackForTesting$3()V
    .registers 2

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mReportingCallbackForTesting:Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureCallback;

    return-void
.end method

.method public static blacklist memoryPressureFromTrimLevel(I)Ljava/lang/Integer;
    .registers 3
    .param p0, "level"    # I

    .line 294
    const/16 v0, 0x50

    const/4 v1, 0x2

    if-ge p0, v0, :cond_1d

    const/16 v0, 0xf

    if-ne p0, v0, :cond_a

    goto :goto_1d

    .line 297
    :cond_a
    const/16 v0, 0x28

    if-lt p0, v0, :cond_1b

    .line 300
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->isTrimMemoryBackgroundCritical()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 301
    goto :goto_16

    .line 302
    :cond_15
    const/4 v1, 0x1

    .line 300
    :goto_16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 304
    :cond_1b
    const/4 v0, 0x0

    return-object v0

    .line 296
    :cond_1d
    :goto_1d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private blacklist onThrottlingIntervalFinished()V
    .registers 3

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mIsInsideThrottlingInterval:Z

    .line 217
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mThrottledPressure:Ljava/lang/Integer;

    if-eqz v0, :cond_1e

    iget v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mLastReportedPressure:I

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mThrottledPressure:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_1e

    .line 218
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mThrottledPressure:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 219
    .local v0, "throttledPressure":I
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mThrottledPressure:Ljava/lang/Integer;

    .line 220
    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->reportPressure(I)V

    .line 221
    return-void

    .line 226
    .end local v0    # "throttledPressure":I
    :cond_1e
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mPollingEnabled:Z

    if-eqz v0, :cond_2a

    iget v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mLastReportedPressure:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2a

    .line 227
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->queryCurrentPressure()V

    .line 229
    :cond_2a
    return-void
.end method

.method private blacklist queryCurrentPressure()V
    .registers 3

    .line 232
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mCurrentPressureSupplierForTesting:Landroid/net/connectivity/org/chromium/base/supplier/Supplier;

    if-eqz v0, :cond_16

    .line 233
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mCurrentPressureSupplierForTesting:Landroid/net/connectivity/org/chromium/base/supplier/Supplier;

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/supplier/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 234
    .local v0, "pressure":Ljava/lang/Integer;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->reportPressure(I)V

    .line 235
    :cond_15
    return-void

    .line 238
    .end local v0    # "pressure":Ljava/lang/Integer;
    :cond_16
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mPostToBackgroundIsEnabled:Z

    if-eqz v0, :cond_24

    .line 239
    new-instance v0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$$ExternalSyntheticLambda4;-><init>(Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;)V

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    goto :goto_31

    .line 249
    :cond_24
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->getCurrentMemoryPressure()Ljava/lang/Integer;

    move-result-object v0

    .line 250
    .restart local v0    # "pressure":Ljava/lang/Integer;
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->notifyPressure(I)V

    .line 252
    .end local v0    # "pressure":Ljava/lang/Integer;
    :cond_31
    :goto_31
    return-void
.end method

.method private blacklist reportPressure(I)V
    .registers 3
    .param p1, "pressure"    # I

    .line 202
    nop

    .line 204
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->startThrottlingInterval()V

    .line 206
    iput p1, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mLastReportedPressure:I

    .line 207
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mReportingCallbackForTesting:Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureCallback;

    if-eqz v0, :cond_10

    .line 208
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mReportingCallbackForTesting:Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureCallback;

    invoke-interface {v0, p1}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureCallback;->onPressure(I)V

    goto :goto_13

    .line 210
    :cond_10
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->notifyMemoryPressure(I)V

    .line 212
    :goto_13
    return-void
.end method

.method private blacklist startThrottlingInterval()V
    .registers 4

    .line 255
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mThrottlingIntervalTask:Ljava/lang/Runnable;

    iget v1, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mThrottlingIntervalMs:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mIsInsideThrottlingInterval:Z

    .line 257
    return-void
.end method


# virtual methods
.method public blacklist disablePolling()V
    .registers 2

    .line 168
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 169
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mPollingEnabled:Z

    if-nez v0, :cond_8

    return-void

    .line 171
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mPollingEnabled:Z

    .line 172
    return-void
.end method

.method public blacklist enablePolling(Z)V
    .registers 3
    .param p1, "postToBackground"    # Z

    .line 156
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 157
    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mPostToBackgroundIsEnabled:Z

    .line 158
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mPollingEnabled:Z

    if-eqz v0, :cond_a

    return-void

    .line 160
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mPollingEnabled:Z

    .line 161
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mIsInsideThrottlingInterval:Z

    if-nez v0, :cond_14

    .line 162
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->queryCurrentPressure()V

    .line 164
    :cond_14
    return-void
.end method

.method public blacklist getLastReportedPressure()I
    .registers 2

    .line 197
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 198
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mLastReportedPressure:I

    return v0
.end method

.method public blacklist notifyPressure(I)V
    .registers 3
    .param p1, "pressure"    # I

    .line 180
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 182
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mIsInsideThrottlingInterval:Z

    if-eqz v0, :cond_e

    .line 185
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mThrottledPressure:Ljava/lang/Integer;

    .line 186
    return-void

    .line 189
    :cond_e
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->reportPressure(I)V

    .line 190
    return-void
.end method

.method public blacklist registerComponentCallbacks()V
    .registers 3

    .line 113
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 115
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$1;

    invoke-direct {v1, p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$1;-><init>(Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;)V

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 149
    return-void
.end method

.method public blacklist setCurrentPressureSupplierForTesting(Landroid/net/connectivity/org/chromium/base/supplier/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/supplier/Supplier<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 260
    .local p1, "supplier":Landroid/net/connectivity/org/chromium/base/supplier/Supplier;, "Landroid/net/connectivity/org/chromium/base/supplier/Supplier<Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mCurrentPressureSupplierForTesting:Landroid/net/connectivity/org/chromium/base/supplier/Supplier;

    .line 261
    new-instance v0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;)V

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    .line 262
    return-void
.end method

.method public blacklist setReportingCallbackForTesting(Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureCallback;

    .line 265
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;->mReportingCallbackForTesting:Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureCallback;

    .line 266
    new-instance v0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor$$ExternalSyntheticLambda1;-><init>(Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureMonitor;)V

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    .line 267
    return-void
.end method
