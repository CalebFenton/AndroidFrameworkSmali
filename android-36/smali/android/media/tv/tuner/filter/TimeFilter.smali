.class public Landroid/media/tv/tuner/filter/TimeFilter;
.super Ljava/lang/Object;
.source "TimeFilter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private blacklist mEnable:Z

.field private blacklist mNativeContext:J


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/TimeFilter;->mEnable:Z

    .line 51
    return-void
.end method

.method private native blacklist nativeClearTimestamp()I
.end method

.method private native blacklist nativeClose()I
.end method

.method private native blacklist nativeGetSourceTime()Ljava/lang/Long;
.end method

.method private native blacklist nativeGetTimestamp()Ljava/lang/Long;
.end method

.method private native blacklist nativeSetTimestamp(J)I
.end method


# virtual methods
.method public whitelist clearTimestamp()I
    .registers 3

    .line 85
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/TimeFilter;->nativeClearTimestamp()I

    move-result v0

    .line 86
    .local v0, "res":I
    if-nez v0, :cond_9

    .line 87
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/TimeFilter;->mEnable:Z

    .line 89
    :cond_9
    return v0
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 134
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/TimeFilter;->nativeClose()I

    move-result v0

    .line 135
    .local v0, "res":I
    if-eqz v0, :cond_b

    .line 136
    const-string v1, "Failed to close time filter."

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    .line 138
    :cond_b
    return-void
.end method

.method public whitelist getSourceTime()J
    .registers 3

    .line 120
    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/TimeFilter;->mEnable:Z

    if-nez v0, :cond_7

    .line 121
    const-wide/16 v0, -0x1

    return-wide v0

    .line 123
    :cond_7
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/TimeFilter;->nativeGetSourceTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getTimeStamp()J
    .registers 3

    .line 103
    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/TimeFilter;->mEnable:Z

    if-nez v0, :cond_7

    .line 104
    const-wide/16 v0, -0x1

    return-wide v0

    .line 106
    :cond_7
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/TimeFilter;->nativeGetTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist setCurrentTimestamp(J)I
    .registers 5
    .param p1, "timestamp"    # J

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/filter/TimeFilter;->nativeSetTimestamp(J)I

    move-result v0

    .line 70
    .local v0, "res":I
    if-nez v0, :cond_9

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/TimeFilter;->mEnable:Z

    .line 73
    :cond_9
    return v0
.end method
