.class public Lcom/android/internal/os/BatteryStatsHistoryIterator;
.super Ljava/lang/Object;
.source "BatteryStatsHistoryIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/os/BatteryStats$HistoryItem;",
        ">;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "BatteryStatsHistoryItr"


# instance fields
.field private blacklist mBaseMonotonicTime:J

.field private blacklist mBaseTimeUtc:J

.field private final blacklist mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field private blacklist mClosed:Z

.field private final blacklist mDescriptorRegistry:Lcom/android/internal/os/PowerStats$DescriptorRegistry;

.field private final blacklist mEndTimeMs:J

.field private blacklist mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

.field private final blacklist mHistoryTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/BatteryStats$HistoryTag;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mItemIndex:I

.field private final blacklist mMaxHistoryItems:I

.field private blacklist mNextItemReady:Z

.field private blacklist mParcelContainers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mParcelDataPosition:I

.field private final blacklist mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field private final blacklist mStartTimeMs:J

.field private blacklist mTimeInitialized:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsHistory;JJ)V
    .registers 8
    .param p1, "history"    # Lcom/android/internal/os/BatteryStatsHistory;
    .param p2, "startTimeMs"    # J
    .param p4, "endTimeMs"    # J

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryTags:Landroid/util/SparseArray;

    .line 43
    new-instance v0, Lcom/android/internal/os/PowerStats$DescriptorRegistry;

    invoke-direct {v0}, Lcom/android/internal/os/PowerStats$DescriptorRegistry;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mDescriptorRegistry:Lcom/android/internal/os/PowerStats$DescriptorRegistry;

    .line 45
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mItemIndex:I

    .line 59
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 60
    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mStartTimeMs:J

    .line 61
    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-eqz v0, :cond_2e

    move-wide v0, p4

    goto :goto_33

    :cond_2e
    const-wide v0, 0x7fffffffffffffffL

    :goto_33
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEndTimeMs:J

    .line 62
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 63
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHistory;->getEstimatedItemCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mMaxHistoryItems:I

    .line 64
    return-void
.end method

.method private blacklist advance()Z
    .registers 13

    .line 96
    const-string v0, "BatteryStatsHistoryItr"

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mParcelContainers:Ljava/util/Queue;

    if-nez v1, :cond_12

    .line 97
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mStartTimeMs:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEndTimeMs:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsHistory;->getParcelContainers(JJ)Ljava/util/Queue;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mParcelContainers:Ljava/util/Queue;

    .line 101
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mParcelContainers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;

    move-object v2, v1

    .local v2, "container":Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;
    const/4 v3, 0x0

    if-eqz v1, :cond_100

    .line 102
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->getParcel()Landroid/os/Parcel;

    move-result-object v1

    .line 103
    .local v1, "p":Landroid/os/Parcel;
    if-eqz v1, :cond_f4

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    if-lt v4, v5, :cond_30

    goto/16 :goto_f4

    .line 110
    :cond_30
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mTimeInitialized:Z

    const/4 v5, 0x1

    if-nez v4, :cond_43

    .line 111
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->getMonotonicStartTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBaseMonotonicTime:J

    .line 112
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBaseMonotonicTime:J

    iput-wide v6, v4, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 113
    iput-boolean v5, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mTimeInitialized:Z

    .line 117
    :cond_43
    :try_start_43
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {p0, v1, v4}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V

    .line 118
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 119
    .local v4, "dataPosition":I
    iget v6, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mParcelDataPosition:I

    if-gt v4, v6, :cond_75

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Corrupted battery history, parcel is not progressing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-static {v0, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return v3

    .line 124
    :cond_75
    iput v4, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mParcelDataPosition:I
    :try_end_77
    .catchall {:try_start_43 .. :try_end_77} :catchall_ed

    .line 128
    .end local v4    # "dataPosition":I
    nop

    .line 130
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v4, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x5

    if-eq v4, v6, :cond_86

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v4, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x7

    if-ne v4, v6, :cond_94

    .line 132
    :cond_86
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v6, v4, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v8, v4, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBaseMonotonicTime:J

    sub-long/2addr v8, v10

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBaseTimeUtc:J

    .line 135
    :cond_94
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v6, v4, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mStartTimeMs:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_a0

    .line 136
    goto/16 :goto_12

    .line 139
    :cond_a0
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEndTimeMs:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_bb

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEndTimeMs:J

    const-wide/16 v8, -0x1

    cmp-long v4, v6, v8

    if-eqz v4, :cond_bb

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v6, v4, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEndTimeMs:J

    cmp-long v4, v6, v8

    if-ltz v4, :cond_bb

    .line 141
    return v3

    .line 144
    :cond_bb
    iget v4, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mItemIndex:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mItemIndex:I

    iget v6, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mMaxHistoryItems:I

    if-le v4, v6, :cond_de

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of battery history items is too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mItemIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v3

    .line 149
    :cond_de
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBaseTimeUtc:J

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v6, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBaseMonotonicTime:J

    sub-long/2addr v6, v8

    add-long/2addr v3, v6

    iput-wide v3, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 150
    return v5

    .line 125
    :catchall_ed
    move-exception v4

    .line 126
    .local v4, "t":Ljava/lang/Throwable;
    const-string v5, "Corrupted battery history"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    return v3

    .line 104
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_f4
    :goto_f4
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->close()V

    .line 105
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mParcelContainers:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 106
    iput v3, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mParcelDataPosition:I

    .line 107
    goto/16 :goto_12

    .line 152
    .end local v1    # "p":Landroid/os/Parcel;
    :cond_100
    return v3
.end method

.method private static blacklist extractSignedBitField(III)I
    .registers 6
    .param p0, "bits"    # I
    .param p1, "mask"    # I
    .param p2, "shift"    # I

    .line 359
    ushr-int/2addr p1, p2

    .line 360
    ushr-int/2addr p0, p2

    .line 361
    and-int v0, p0, p1

    .line 362
    .local v0, "value":I
    ushr-int/lit8 v1, p1, 0x1

    xor-int/2addr v1, p1

    .line 364
    .local v1, "msbMask":I
    and-int v2, v0, v1

    if-eqz v2, :cond_d

    not-int v2, p1

    or-int/2addr v0, v2

    .line 365
    :cond_d
    return v0
.end method

.method private static blacklist readBatteryLevelInts(IILandroid/os/BatteryStats$HistoryItem;)V
    .registers 6
    .param p0, "batteryInt"    # I
    .param p1, "extendedBatteryInt"    # I
    .param p2, "out"    # Landroid/os/BatteryStats$HistoryItem;

    .line 371
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/high16 v1, -0x1000000

    const/16 v2, 0x18

    invoke-static {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->extractSignedBitField(III)I

    move-result v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 376
    and-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_2f

    .line 377
    iget-short v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    const v1, 0xff8000

    const/16 v2, 0xf

    invoke-static {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->extractSignedBitField(III)I

    move-result v1

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 381
    iget-short v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    const/16 v1, 0x7ffc

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->extractSignedBitField(III)I

    move-result v1

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    goto :goto_45

    .line 386
    :cond_2f
    const/high16 v0, -0x10000

    const/16 v1, 0x10

    invoke-static {p1, v0, v1}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->extractSignedBitField(III)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 390
    const v0, 0xffff

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->extractSignedBitField(III)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    .line 395
    :goto_45
    return-void
.end method

.method private blacklist readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V
    .registers 14
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .local v0, "firstToken":I
    const v1, 0x7ffff

    and-int/2addr v1, v0

    .line 158
    .local v1, "deltaTimeToken":I
    const/4 v2, 0x0

    iput-byte v2, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 159
    const/4 v3, 0x1

    iput v3, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 165
    const/4 v4, 0x2

    const v5, 0x7fffd

    if-ge v1, v5, :cond_1b

    .line 166
    iget-wide v5, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v7, v1

    add-long/2addr v5, v7

    iput-wide v5, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    goto :goto_44

    .line 167
    :cond_1b
    if-ne v1, v5, :cond_21

    .line 168
    invoke-virtual {p2, p1}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 170
    return-void

    .line 171
    :cond_21
    const v5, 0x7fffe

    if-ne v1, v5, :cond_36

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 173
    .local v5, "delta":I
    iget-wide v6, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 174
    iget v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v6, v3

    iput v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 176
    .end local v5    # "delta":I
    goto :goto_44

    .line 177
    :cond_36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 179
    .local v5, "delta":J
    iget-wide v7, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    add-long/2addr v7, v5

    iput-wide v7, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 180
    iget v7, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v7, v4

    iput v7, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 184
    .end local v5    # "delta":J
    :goto_44
    const/high16 v5, 0x80000

    and-int/2addr v5, v0

    if-eqz v5, :cond_69

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 186
    .local v5, "batteryLevelInt":I
    iget v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v6, v3

    iput v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 187
    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_58

    move v6, v3

    goto :goto_59

    :cond_58
    move v6, v2

    .line 189
    .local v6, "overflow":Z
    :goto_59
    const/4 v7, 0x0

    .line 190
    .local v7, "extendedBatteryLevelInt":I
    if-eqz v6, :cond_65

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 192
    iget v8, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v8, v3

    iput v8, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 194
    :cond_65
    invoke-static {v5, v7, p2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readBatteryLevelInts(IILandroid/os/BatteryStats$HistoryItem;)V

    .line 205
    .end local v6    # "overflow":Z
    .end local v7    # "extendedBatteryLevelInt":I
    goto :goto_6a

    .line 206
    .end local v5    # "batteryLevelInt":I
    :cond_69
    const/4 v5, 0x0

    .line 209
    .restart local v5    # "batteryLevelInt":I
    :goto_6a
    const/high16 v6, 0x100000

    and-int/2addr v6, v0

    const v7, 0xffffff

    const/high16 v8, -0x2000000

    if-eqz v6, :cond_a8

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 211
    .local v6, "stateInt":I
    and-int/2addr v8, v0

    and-int/2addr v7, v6

    or-int/2addr v7, v8

    iput v7, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 213
    shr-int/lit8 v7, v6, 0x1d

    and-int/lit8 v7, v7, 0x7

    int-to-byte v7, v7

    iput-byte v7, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 215
    shr-int/lit8 v7, v6, 0x1a

    and-int/lit8 v7, v7, 0x7

    int-to-byte v7, v7

    iput-byte v7, p2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 217
    shr-int/lit8 v7, v6, 0x18

    and-int/lit8 v7, v7, 0x3

    int-to-byte v7, v7

    iput-byte v7, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 219
    iget-byte v7, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    packed-switch v7, :pswitch_data_186

    goto :goto_a2

    .line 227
    :pswitch_98
    const/4 v4, 0x4

    iput-byte v4, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto :goto_a2

    .line 224
    :pswitch_9c
    iput-byte v4, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 225
    goto :goto_a2

    .line 221
    :pswitch_9f
    iput-byte v3, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 222
    nop

    .line 230
    :goto_a2
    iget v4, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v4, v3

    iput v4, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 239
    .end local v6    # "stateInt":I
    goto :goto_b0

    .line 240
    :cond_a8
    and-int v4, v0, v8

    iget v6, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/2addr v6, v7

    or-int/2addr v4, v6

    iput v4, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 244
    :goto_b0
    const/high16 v4, 0x200000

    and-int/2addr v4, v0

    if-eqz v4, :cond_bb

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 252
    :cond_bb
    const/high16 v4, 0x400000

    and-int/2addr v4, v0

    const v6, 0xffff

    const/4 v7, 0x0

    if-eqz v4, :cond_f1

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 254
    .local v4, "indexes":I
    and-int v8, v4, v6

    .line 255
    .local v8, "wakeLockIndex":I
    shr-int/lit8 v9, v4, 0x10

    and-int/2addr v9, v6

    .line 256
    .local v9, "wakeReasonIndex":I
    iget-object v10, p2, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {p0, p1, v8, v10}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z

    move-result v10

    if-eqz v10, :cond_da

    .line 257
    iget-object v10, p2, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v10, p2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_dc

    .line 259
    :cond_da
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 261
    :goto_dc
    iget-object v10, p2, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {p0, p1, v9, v10}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z

    move-result v10

    if-eqz v10, :cond_e9

    .line 262
    iget-object v10, p2, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v10, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_eb

    .line 264
    :cond_e9
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 266
    :goto_eb
    iget v10, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v10, v3

    iput v10, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 267
    .end local v4    # "indexes":I
    .end local v8    # "wakeLockIndex":I
    .end local v9    # "wakeReasonIndex":I
    goto :goto_f5

    .line 268
    :cond_f1
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 269
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 272
    :goto_f5
    const/high16 v4, 0x800000

    and-int/2addr v4, v0

    if-eqz v4, :cond_11e

    .line 273
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 275
    .local v2, "codeAndIndex":I
    and-int v4, v2, v6

    iput v4, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 276
    shr-int/lit8 v4, v2, 0x10

    and-int/2addr v4, v6

    .line 277
    .local v4, "index":I
    iget-object v6, p2, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {p0, p1, v4, v6}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z

    move-result v6

    if-eqz v6, :cond_116

    .line 278
    iget-object v6, p2, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v6, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_118

    .line 280
    :cond_116
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 282
    :goto_118
    iget v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v6, v3

    iput v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 288
    .end local v2    # "codeAndIndex":I
    .end local v4    # "index":I
    goto :goto_120

    .line 289
    :cond_11e
    iput v2, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 292
    :goto_120
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_12e

    .line 293
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iput-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 294
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-virtual {v2, p1}, Landroid/os/BatteryStats$HistoryStepDetails;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_130

    .line 296
    :cond_12e
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 299
    :goto_130
    const/high16 v2, 0x1000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_13b

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p2, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 302
    :cond_13b
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p2, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p2, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    .line 304
    iget v2, p2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_181

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 306
    .local v2, "extensionFlags":I
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_161

    .line 307
    invoke-static {p1}, Lcom/android/internal/os/PowerStats$Descriptor;->readSummaryFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v3

    .line 308
    .local v3, "descriptor":Lcom/android/internal/os/PowerStats$Descriptor;
    if-eqz v3, :cond_161

    .line 309
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mDescriptorRegistry:Lcom/android/internal/os/PowerStats$DescriptorRegistry;

    invoke-virtual {v4, v3}, Lcom/android/internal/os/PowerStats$DescriptorRegistry;->register(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 312
    .end local v3    # "descriptor":Lcom/android/internal/os/PowerStats$Descriptor;
    :cond_161
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_16e

    .line 313
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mDescriptorRegistry:Lcom/android/internal/os/PowerStats$DescriptorRegistry;

    invoke-static {p1, v3}, Lcom/android/internal/os/PowerStats;->readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/PowerStats$DescriptorRegistry;)Lcom/android/internal/os/PowerStats;

    move-result-object v3

    iput-object v3, p2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    goto :goto_170

    .line 315
    :cond_16e
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    .line 317
    :goto_170
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_17e

    .line 318
    iget-object v3, p2, Landroid/os/BatteryStats$HistoryItem;->localProcessStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iput-object v3, p2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 319
    iget-object v3, p2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    invoke-virtual {v3, p1}, Landroid/os/BatteryStats$ProcessStateChange;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_180

    .line 321
    :cond_17e
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 323
    .end local v2    # "extensionFlags":I
    :goto_180
    goto :goto_185

    .line 324
    :cond_181
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    .line 325
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 327
    :goto_185
    return-void

    :pswitch_data_186
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_9c
        :pswitch_98
    .end packed-switch
.end method

.method private blacklist readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z
    .registers 7
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "index"    # I
    .param p3, "outTag"    # Landroid/os/BatteryStats$HistoryTag;

    .line 330
    const v0, 0xffff

    const/4 v1, 0x0

    if-ne p2, v0, :cond_7

    .line 331
    return v1

    .line 334
    :cond_7
    const v0, 0x8000

    and-int/2addr v0, p2

    if-eqz v0, :cond_30

    .line 335
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    .line 336
    .local v0, "tag":Landroid/os/BatteryStats$HistoryTag;
    invoke-virtual {v0, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    .line 337
    const v1, -0x8001

    and-int/2addr v1, p2

    iput v1, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 338
    iget v1, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    const/16 v2, 0x7ffe

    if-ge v1, v2, :cond_29

    .line 339
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryTags:Landroid/util/SparseArray;

    iget v2, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2c

    .line 341
    :cond_29
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 344
    :goto_2c
    invoke-virtual {p3, v0}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 345
    .end local v0    # "tag":Landroid/os/BatteryStats$HistoryTag;
    goto :goto_45

    .line 346
    :cond_30
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$HistoryTag;

    .line 347
    .local v0, "historyTag":Landroid/os/BatteryStats$HistoryTag;
    if-eqz v0, :cond_3e

    .line 348
    invoke-virtual {p3, v0}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    goto :goto_43

    .line 350
    :cond_3e
    const/4 v2, 0x0

    iput-object v2, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 351
    iput v1, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 353
    :goto_43
    iput p2, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 355
    .end local v0    # "historyTag":Landroid/os/BatteryStats$HistoryTag;
    :goto_45
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 402
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mClosed:Z

    if-nez v0, :cond_c

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mClosed:Z

    .line 404
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistory;->iteratorFinished()V

    .line 406
    :cond_c
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 3

    .line 68
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mNextItemReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_13

    .line 69
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->advance()Z

    move-result v0

    if-nez v0, :cond_11

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    .line 73
    :cond_11
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mNextItemReady:Z

    .line 76
    :cond_13
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method public blacklist next()Landroid/os/BatteryStats$HistoryItem;
    .registers 2

    .line 85
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mNextItemReady:Z

    if-nez v0, :cond_10

    .line 86
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->advance()Z

    move-result v0

    if-nez v0, :cond_10

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    .line 91
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mNextItemReady:Z

    .line 92
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v0

    return-object v0
.end method
