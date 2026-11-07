.class public Lcom/android/internal/util/TokenBucket;
.super Ljava/lang/Object;
.source "TokenBucket.java"


# instance fields
.field private greylist-max-o mAvailable:I

.field private final greylist-max-o mCapacity:I

.field private final greylist-max-o mFillDelta:I

.field private greylist-max-o mLastFill:J


# direct methods
.method public constructor greylist-max-o <init>(II)V
    .registers 3
    .param p1, "deltaMs"    # I
    .param p2, "capacity"    # I

    .line 69
    invoke-direct {p0, p1, p2, p2}, Lcom/android/internal/util/TokenBucket;-><init>(III)V

    .line 70
    return-void
.end method

.method public constructor greylist-max-o <init>(III)V
    .registers 6
    .param p1, "deltaMs"    # I
    .param p2, "capacity"    # I
    .param p3, "tokens"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "deltaMs must be strictly positive"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/TokenBucket;->mFillDelta:I

    .line 57
    const-string v0, "capacity must be strictly positive"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    .line 58
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 59
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->scaledTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    .line 60
    return-void
.end method

.method private greylist-max-o fill()V
    .registers 6

    .line 121
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->scaledTime()J

    move-result-wide v0

    .line 122
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 123
    .local v2, "diff":I
    iget v3, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    iget v4, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 124
    iput-wide v0, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    .line 125
    return-void
.end method

.method private greylist-max-o scaledTime()J
    .registers 5

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/android/internal/util/TokenBucket;->mFillDelta:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public greylist-max-o available()I
    .registers 2

    .line 86
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->fill()V

    .line 87
    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    return v0
.end method

.method public greylist-max-o capacity()I
    .registers 2

    .line 81
    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    return v0
.end method

.method public greylist-max-o get(I)I
    .registers 4
    .param p1, "n"    # I

    .line 107
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->fill()V

    .line 108
    const/4 v0, 0x0

    if-gtz p1, :cond_7

    .line 109
    return v0

    .line 111
    :cond_7
    iget v1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    if-le p1, v1, :cond_10

    .line 112
    iget v1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 113
    .local v1, "got":I
    iput v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 114
    return v1

    .line 116
    .end local v1    # "got":I
    :cond_10
    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 117
    return p1
.end method

.method public greylist-max-o get()Z
    .registers 3

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/util/TokenBucket;->get(I)I

    move-result v1

    if-ne v1, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o has()Z
    .registers 2

    .line 92
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->fill()V

    .line 93
    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist-max-o reset(I)V
    .registers 4
    .param p1, "tokens"    # I

    .line 74
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 75
    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 76
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->scaledTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    .line 77
    return-void
.end method
