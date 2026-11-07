.class public Lcom/android/internal/telephony/ExponentialBackoff;
.super Ljava/lang/Object;
.source "ExponentialBackoff.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;
    }
.end annotation


# instance fields
.field private blacklist mCurrentDelayMs:J

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHandlerAdapter:Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

.field private blacklist mMaximumDelayMs:J

.field private blacklist mMultiplier:I

.field private blacklist mRetryCounter:I

.field private final blacklist mRunnable:Ljava/lang/Runnable;

.field private blacklist mStartDelayMs:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/telephony/ExponentialBackoff;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor blacklist <init>(JJILandroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 9
    .param p1, "initialDelayMs"    # J
    .param p3, "maximumDelayMs"    # J
    .param p5, "multiplier"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "runnable"    # Ljava/lang/Runnable;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/android/internal/telephony/ExponentialBackoff$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ExponentialBackoff$1;-><init>(Lcom/android/internal/telephony/ExponentialBackoff;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandlerAdapter:Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    .line 74
    iput-wide p1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mStartDelayMs:J

    .line 75
    iput-wide p3, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mMaximumDelayMs:J

    .line 76
    iput p5, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mMultiplier:I

    .line 77
    iput-object p6, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandler:Landroid/os/Handler;

    .line 78
    iput-object p7, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    .line 79
    return-void
.end method

.method public constructor blacklist <init>(JJILandroid/os/Looper;Ljava/lang/Runnable;)V
    .registers 16
    .param p1, "initialDelayMs"    # J
    .param p3, "maximumDelayMs"    # J
    .param p5, "multiplier"    # I
    .param p6, "looper"    # Landroid/os/Looper;
    .param p7, "runnable"    # Ljava/lang/Runnable;

    .line 64
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v7, p7

    .end local p1    # "initialDelayMs":J
    .end local p3    # "maximumDelayMs":J
    .end local p5    # "multiplier":I
    .end local p7    # "runnable":Ljava/lang/Runnable;
    .local v1, "initialDelayMs":J
    .local v3, "maximumDelayMs":J
    .local v5, "multiplier":I
    .local v7, "runnable":Ljava/lang/Runnable;
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ExponentialBackoff;-><init>(JJILandroid/os/Handler;Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method


# virtual methods
.method public blacklist getCurrentDelay()J
    .registers 3

    .line 107
    iget-wide v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    return-wide v0
.end method

.method public blacklist notifyFailed()V
    .registers 9

    .line 97
    iget v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    .line 98
    iget-wide v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mMaximumDelayMs:J

    iget-wide v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mStartDelayMs:J

    long-to-double v2, v2

    iget v4, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mMultiplier:I

    int-to-double v4, v4

    iget v6, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    int-to-double v6, v6

    .line 99
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 98
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 100
    .local v0, "temp":J
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    add-double/2addr v4, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v2

    long-to-double v2, v0

    mul-double/2addr v4, v2

    double-to-long v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    .line 101
    iget-object v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandlerAdapter:Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

    iget-object v3, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 102
    iget-object v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandlerAdapter:Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

    iget-object v3, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    return-void
.end method

.method public blacklist setHandlerAdapter(Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;)V
    .registers 2
    .param p1, "a"    # Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

    .line 112
    iput-object p1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandlerAdapter:Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

    .line 113
    return-void
.end method

.method public blacklist start()V
    .registers 5

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    .line 84
    iget-wide v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mStartDelayMs:J

    iput-wide v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandlerAdapter:Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

    iget-object v1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandlerAdapter:Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

    iget-object v1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    return-void
.end method

.method public blacklist stop()V
    .registers 3

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandlerAdapter:Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

    iget-object v1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method
