.class public Lcom/android/internal/telephony/util/PerUidCounter;
.super Ljava/lang/Object;
.source "PerUidCounter.java"


# instance fields
.field private final blacklist mMaxCountPerUid:I

.field final blacklist mUidToCount:Landroid/util/SparseIntArray;


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/util/PerUidCounter;->mUidToCount:Landroid/util/SparseIntArray;

    if-lez p1, :cond_f

    .line 47
    iput p1, p0, Lcom/android/internal/telephony/util/PerUidCounter;->mMaxCountPerUid:I

    return-void

    .line 45
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Maximum counter value must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized blacklist decrementCountOrThrow(I)V
    .registers 6

    monitor-enter p0

    .line 80
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/util/PerUidCounter;->mUidToCount:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1d

    if-nez v0, :cond_16

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/util/PerUidCounter;->mUidToCount:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_1b

    :catchall_14
    move-exception p1

    goto :goto_3c

    .line 86
    :cond_16
    iget-object v1, p0, Lcom/android/internal/telephony/util/PerUidCounter;->mUidToCount:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_14

    .line 88
    :goto_1b
    monitor-exit p0

    return-void

    .line 82
    :cond_1d
    :try_start_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BUG: too small count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for UID "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :goto_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_1d .. :try_end_3d} :catchall_14

    throw p1
.end method

.method public declared-synchronized blacklist get(I)I
    .registers 4

    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/util/PerUidCounter;->mUidToCount:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return p1

    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method public declared-synchronized blacklist incrementCountOrThrow(I)V
    .registers 6

    monitor-enter p0

    .line 61
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/util/PerUidCounter;->mUidToCount:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 62
    iget v2, p0, Lcom/android/internal/telephony/util/PerUidCounter;->mMaxCountPerUid:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1d

    .line 67
    iget-object v2, p0, Lcom/android/internal/telephony/util/PerUidCounter;->mUidToCount:Landroid/util/SparseIntArray;

    long-to-int v0, v0

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 68
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    goto :goto_39

    .line 63
    :cond_1d
    :try_start_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exceeded its allowed limit"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :goto_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_1d .. :try_end_3a} :catchall_1b

    throw p1
.end method
