.class public Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
.super Ljava/lang/Object;
.source "LocationRequestStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationRequestStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageStatistics"
.end annotation


# instance fields
.field private mFastestIntervalMs:J

.field private final mInitialElapsedTimeMs:J

.field private mLastActivitationElapsedTimeMs:J

.field private mNumActiveRequests:I

.field private mSlowestIntervalMs:J

.field private mTotalDurationMs:J


# direct methods
.method static synthetic -wrap0(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;J)V
    .locals 1
    .param p1, "intervalMs"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->startRequesting(J)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->stopRequesting()V

    #@3
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@8
    move-result-wide v0

    #@9
    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mInitialElapsedTimeMs:J

    #@b
    .line 108
    const/4 v0, 0x0

    #@c
    iput v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    #@e
    .line 109
    iput-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mTotalDurationMs:J

    #@10
    .line 110
    const-wide v0, 0x7fffffffffffffffL

    #@15
    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    #@17
    .line 111
    iput-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    #@19
    .line 106
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;-><init>()V

    #@3
    return-void
.end method

.method private startRequesting(J)V
    .locals 3
    .param p1, "intervalMs"    # J

    #@0
    .prologue
    .line 115
    iget v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastActivitationElapsedTimeMs:J

    #@a
    .line 119
    :cond_0
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    #@c
    cmp-long v0, p1, v0

    #@e
    if-gez v0, :cond_1

    #@10
    .line 120
    iput-wide p1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    #@12
    .line 123
    :cond_1
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    #@14
    cmp-long v0, p1, v0

    #@16
    if-lez v0, :cond_2

    #@18
    .line 124
    iput-wide p1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    #@1a
    .line 127
    :cond_2
    iget v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    #@1c
    add-int/lit8 v0, v0, 0x1

    #@1e
    iput v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    #@20
    .line 114
    return-void
.end method

.method private stopRequesting()V
    .locals 6

    #@0
    .prologue
    .line 131
    iget v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    #@2
    if-gtz v2, :cond_0

    #@4
    .line 133
    const-string/jumbo v2, "LocationStats"

    #@7
    const-string/jumbo v3, "Reference counting corrupted in usage statistics."

    #@a
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 134
    return-void

    #@e
    .line 137
    :cond_0
    iget v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    #@10
    add-int/lit8 v2, v2, -0x1

    #@12
    iput v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    #@14
    .line 138
    iget v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    #@16
    if-nez v2, :cond_1

    #@18
    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1b
    move-result-wide v2

    #@1c
    iget-wide v4, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastActivitationElapsedTimeMs:J

    #@1e
    sub-long v0, v2, v4

    #@20
    .line 141
    .local v0, "lastDurationMs":J
    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mTotalDurationMs:J

    #@22
    add-long/2addr v2, v0

    #@23
    iput-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mTotalDurationMs:J

    #@25
    .line 130
    .end local v0    # "lastDurationMs":J
    :cond_1
    return-void
.end method


# virtual methods
.method public getDurationMs()J
    .locals 6

    #@0
    .prologue
    .line 149
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mTotalDurationMs:J

    #@2
    .line 150
    .local v0, "currentDurationMs":J
    iget v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    #@4
    if-lez v2, :cond_0

    #@6
    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@9
    move-result-wide v2

    #@a
    iget-wide v4, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastActivitationElapsedTimeMs:J

    #@c
    sub-long/2addr v2, v4

    #@d
    .line 151
    add-long/2addr v0, v2

    #@e
    .line 154
    :cond_0
    return-wide v0
.end method

.method public getFastestIntervalMs()J
    .locals 2

    #@0
    .prologue
    .line 168
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    #@2
    return-wide v0
.end method

.method public getSlowestIntervalMs()J
    .locals 2

    #@0
    .prologue
    .line 175
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    #@2
    return-wide v0
.end method

.method public getTimeSinceFirstRequestMs()J
    .locals 4

    #@0
    .prologue
    .line 161
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mInitialElapsedTimeMs:J

    #@6
    sub-long/2addr v0, v2

    #@7
    return-wide v0
.end method

.method public isActive()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 182
    iget v1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    #@3
    if-lez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    const-wide/16 v8, 0x3c

    #@2
    const-wide/16 v6, 0x3e8

    #@4
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 188
    .local v0, "s":Ljava/lang/StringBuilder;
    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    #@b
    iget-wide v4, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    #@d
    cmp-long v1, v2, v4

    #@f
    if-nez v1, :cond_1

    #@11
    .line 189
    const-string/jumbo v1, "Interval "

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    #@1a
    div-long/2addr v2, v6

    #@1b
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, " seconds"

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 194
    :goto_0
    const-string/jumbo v1, ": Duration requested "

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 195
    invoke-virtual {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->getDurationMs()J

    #@2f
    move-result-wide v2

    #@30
    div-long/2addr v2, v6

    #@31
    div-long/2addr v2, v8

    #@32
    .line 194
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    .line 196
    const-string/jumbo v2, " out of the last "

    #@39
    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 197
    invoke-virtual {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->getTimeSinceFirstRequestMs()J

    #@40
    move-result-wide v2

    #@41
    div-long/2addr v2, v6

    #@42
    div-long/2addr v2, v8

    #@43
    .line 194
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    .line 198
    const-string/jumbo v2, " minutes"

    #@4a
    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 199
    invoke-virtual {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->isActive()Z

    #@50
    move-result v1

    #@51
    if-eqz v1, :cond_0

    #@53
    .line 200
    const-string/jumbo v1, ": Currently active"

    #@56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    .line 202
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    return-object v1

    #@5e
    .line 191
    :cond_1
    const-string/jumbo v1, "Min interval "

    #@61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    #@67
    div-long/2addr v2, v6

    #@68
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    const-string/jumbo v2, " seconds"

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    .line 192
    const-string/jumbo v1, ": Max interval "

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    #@7b
    div-long/2addr v2, v6

    #@7c
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    const-string/jumbo v2, " seconds"

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    goto :goto_0
.end method
