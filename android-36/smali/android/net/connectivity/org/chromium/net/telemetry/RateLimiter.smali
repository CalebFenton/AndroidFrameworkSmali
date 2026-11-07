.class public final Landroid/net/connectivity/org/chromium/net/telemetry/RateLimiter;
.super Ljava/lang/Object;
.source "RateLimiter.java"


# static fields
.field private static final blacklist ONE_SECOND_MILLIS:J = 0x3e8L


# instance fields
.field private blacklist mLastPermitMillis:J

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mSamplesLoggedDuringSecond:I

.field private final blacklist mSamplesPerSeconds:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "samplesPerSeconds"    # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/telemetry/RateLimiter;->mLock:Ljava/lang/Object;

    .line 21
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/net/telemetry/RateLimiter;->mLastPermitMillis:J

    .line 24
    if-lez p1, :cond_13

    .line 28
    iput p1, p0, Landroid/net/connectivity/org/chromium/net/telemetry/RateLimiter;->mSamplesPerSeconds:I

    .line 29
    return-void

    .line 25
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expect sample rate to be > 0 sample(s) per second"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist tryAcquire()Z
    .registers 8

    .line 33
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/telemetry/RateLimiter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 36
    .local v1, "currentMillis":J
    iget-wide v3, p0, Landroid/net/connectivity/org/chromium/net/telemetry/RateLimiter;->mLastPermitMillis:J

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    const/4 v4, 0x1

    if-gtz v3, :cond_17

    .line 38
    iput v4, p0, Landroid/net/connectivity/org/chromium/net/telemetry/RateLimiter;->mSamplesLoggedDuringSecond:I

    .line 39
    iput-wide v1, p0, Landroid/net/connectivity/org/chromium/net/telemetry/RateLimiter;->mLastPermitMillis:J

    .line 40
    monitor-exit v0

    return v4

    .line 41
    :cond_17
    iget v3, p0, Landroid/net/connectivity/org/chromium/net/telemetry/RateLimiter;->mSamplesLoggedDuringSecond:I

    iget v5, p0, Landroid/net/connectivity/org/chromium/net/telemetry/RateLimiter;->mSamplesPerSeconds:I

    if-ge v3, v5, :cond_24

    .line 42
    iget v3, p0, Landroid/net/connectivity/org/chromium/net/telemetry/RateLimiter;->mSamplesLoggedDuringSecond:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/net/connectivity/org/chromium/net/telemetry/RateLimiter;->mSamplesLoggedDuringSecond:I

    .line 43
    monitor-exit v0

    return v4

    .line 45
    :cond_24
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 46
    .end local v1    # "currentMillis":J
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method
