.class public Lcom/android/internal/telephony/RadioBugDetector;
.super Ljava/lang/Object;
.source "RadioBugDetector.java"


# static fields
.field protected static final blacklist RADIO_BUG_REPETITIVE_SYSTEM_ERROR:I = 0x2


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mContinuousWakelockTimoutCount:I

.field private blacklist mRadioBugStatus:I

.field private blacklist mSlotId:I

.field private blacklist mSysErrRecord:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSystemErrorThreshold:I

.field private blacklist mWakelockTimeoutThreshold:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mContinuousWakelockTimoutCount:I

    .line 56
    iput v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mRadioBugStatus:I

    .line 58
    iput v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mWakelockTimeoutThreshold:I

    .line 59
    iput v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mSystemErrorThreshold:I

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mSysErrRecord:Ljava/util/HashMap;

    .line 65
    iput-object p1, p0, Lcom/android/internal/telephony/RadioBugDetector;->mContext:Landroid/content/Context;

    .line 66
    iput p2, p0, Lcom/android/internal/telephony/RadioBugDetector;->mSlotId:I

    .line 67
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioBugDetector;->init()V

    return-void
.end method

.method private declared-synchronized blacklist broadcastBug(Z)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_d

    .line 121
    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioBugDetector;->isFrequentSystemError()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    if-nez v0, :cond_15

    .line 122
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    goto :goto_5b

    .line 125
    :cond_d
    :try_start_d
    iget v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mContinuousWakelockTimoutCount:I

    iget v1, p0, Lcom/android/internal/telephony/RadioBugDetector;->mWakelockTimeoutThreshold:I
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_b

    if-ge v0, v1, :cond_15

    .line 126
    monitor-exit p0

    return-void

    .line 132
    :cond_15
    :try_start_15
    iget v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mRadioBugStatus:I

    if-nez v0, :cond_59

    if-eqz p1, :cond_1d

    const/4 p1, 0x2

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x1

    .line 134
    :goto_1e
    iput p1, p0, Lcom/android/internal/telephony/RadioBugDetector;->mRadioBugStatus:I

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Repeated radio error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mRadioBugStatus:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " on slot "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mSlotId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 136
    const-string v0, "RadioBugDetector"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mSlotId:I

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_4c

    const/4 v0, -0x1

    goto :goto_50

    .line 139
    :cond_4c
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v0

    .line 141
    :goto_50
    const-string v1, "d264ead0-3f05-11ea-b77f-2e728ce88125"

    .line 142
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .line 141
    invoke-static {v1, p1, v0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V
    :try_end_59
    .catchall {:try_start_15 .. :try_end_59} :catchall_b

    .line 145
    :cond_59
    monitor-exit p0

    return-void

    :goto_5b
    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_b

    throw p1
.end method

.method private blacklist init()V
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "radio_bug_wakelock_timeout_count_threshold"

    const/16 v2, 0xa

    .line 71
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mWakelockTimeoutThreshold:I

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "radio_bug_system_error_count_threshold"

    const/16 v2, 0x64

    .line 75
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mSystemErrorThreshold:I

    return-void
.end method

.method private blacklist isFrequentSystemError()Z
    .registers 5

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mSysErrRecord:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    .line 152
    iget v3, p0, Lcom/android/internal/telephony/RadioBugDetector;->mSystemErrorThreshold:I

    if-lt v2, v3, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_23
    return v1
.end method


# virtual methods
.method public declared-synchronized blacklist detectRadioBug(II)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 95
    :try_start_2
    iput v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mContinuousWakelockTimoutCount:I

    const/16 v1, 0x27

    if-ne p2, v1, :cond_31

    .line 97
    iget-object p2, p0, Lcom/android/internal/telephony/RadioBugDetector;->mSysErrRecord:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 99
    iget-object v1, p0, Lcom/android/internal/telephony/RadioBugDetector;->mSysErrRecord:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RadioBugDetector;->broadcastBug(Z)V

    goto :goto_42

    :catchall_2f
    move-exception p1

    goto :goto_44

    .line 103
    :cond_31
    iget-object p2, p0, Lcom/android/internal/telephony/RadioBugDetector;->mSysErrRecord:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioBugDetector;->isFrequentSystemError()Z

    move-result p1

    if-nez p1, :cond_42

    .line 105
    iput v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mRadioBugStatus:I
    :try_end_42
    .catchall {:try_start_2 .. :try_end_42} :catchall_2f

    .line 108
    :cond_42
    :goto_42
    monitor-exit p0

    return-void

    :goto_44
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_2f

    throw p1
.end method

.method public blacklist getRadioBugStatus()I
    .registers 1

    .line 162
    iget p0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mRadioBugStatus:I

    return p0
.end method

.method public blacklist getSystemErrorThreshold()I
    .registers 1

    .line 172
    iget p0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mSystemErrorThreshold:I

    return p0
.end method

.method public blacklist getWakelockTimeoutThreshold()I
    .registers 1

    .line 167
    iget p0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mWakelockTimeoutThreshold:I

    return p0
.end method

.method public blacklist getWakelockTimoutCount()I
    .registers 1

    .line 177
    iget p0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mContinuousWakelockTimoutCount:I

    return p0
.end method

.method public blacklist processWakelockTimeout()V
    .registers 2

    .line 115
    iget v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mContinuousWakelockTimoutCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mContinuousWakelockTimoutCount:I

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RadioBugDetector;->broadcastBug(Z)V

    return-void
.end method
