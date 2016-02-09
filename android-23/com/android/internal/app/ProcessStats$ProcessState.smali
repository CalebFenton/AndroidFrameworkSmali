.class public final Lcom/android/internal/app/ProcessStats$ProcessState;
.super Lcom/android/internal/app/ProcessStats$DurationsTable;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessState"
.end annotation


# instance fields
.field mActive:Z

.field mAvgCachedKillPss:J

.field public mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

.field mCurState:I

.field mDead:Z

.field mLastPssState:I

.field mLastPssTime:J

.field mMaxCachedKillPss:J

.field mMinCachedKillPss:J

.field mMultiPackage:Z

.field mNumActiveServices:I

.field mNumCachedKill:I

.field mNumExcessiveCpu:I

.field mNumExcessiveWake:I

.field mNumStartedServices:I

.field public final mPackage:Ljava/lang/String;

.field mPssTable:[I

.field mPssTableSize:I

.field mStartTime:J

.field mTmpFoundSubProc:Lcom/android/internal/app/ProcessStats$ProcessState;

.field mTmpNumInUse:I

.field public mTmpTotalTime:J

.field public final mUid:I

.field public final mVersion:I


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;IILjava/lang/String;J)V
    .locals 2
    .param p1, "commonProcess"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # I
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "now"    # J

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 2918
    iget-object v0, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@3
    invoke-direct {p0, v0, p5}, Lcom/android/internal/app/ProcessStats$DurationsTable;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;)V

    #@6
    .line 2872
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    #@8
    .line 2875
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    #@a
    .line 2919
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@c
    .line 2920
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    #@e
    .line 2921
    iput p3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    #@10
    .line 2922
    iput p4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    #@12
    .line 2923
    iget v0, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    #@14
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    #@16
    .line 2924
    iput-wide p6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    #@18
    .line 2917
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .param p1, "processStats"    # Lcom/android/internal/app/ProcessStats;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # I
    .param p5, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 2904
    invoke-direct {p0, p1, p5}, Lcom/android/internal/app/ProcessStats$DurationsTable;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;)V

    #@4
    .line 2872
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    #@6
    .line 2875
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    #@8
    .line 2905
    iput-object p0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@a
    .line 2906
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    #@c
    .line 2907
    iput p3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    #@e
    .line 2908
    iput p4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    #@10
    .line 2903
    return-void
.end method

.method private addCachedKill(IJJJ)V
    .locals 4
    .param p1, "num"    # I
    .param p2, "minPss"    # J
    .param p4, "avgPss"    # J
    .param p6, "maxPss"    # J

    #@0
    .prologue
    .line 3283
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    #@2
    if-gtz v0, :cond_0

    #@4
    .line 3284
    iput p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    #@6
    .line 3285
    iput-wide p2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    #@8
    .line 3286
    iput-wide p4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    #@a
    .line 3287
    iput-wide p6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    #@c
    .line 3282
    :goto_0
    return-void

    #@d
    .line 3289
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    #@f
    cmp-long v0, p2, v0

    #@11
    if-gez v0, :cond_1

    #@13
    .line 3290
    iput-wide p2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    #@15
    .line 3292
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    #@17
    cmp-long v0, p6, v0

    #@19
    if-lez v0, :cond_2

    #@1b
    .line 3293
    iput-wide p6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    #@1d
    .line 3295
    :cond_2
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    #@1f
    long-to-double v0, v0

    #@20
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    #@22
    int-to-double v2, v2

    #@23
    mul-double/2addr v0, v2

    #@24
    long-to-double v2, p4

    #@25
    add-double/2addr v0, v2

    #@26
    .line 3296
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    #@28
    add-int/2addr v2, p1

    #@29
    int-to-double v2, v2

    #@2a
    .line 3295
    div-double/2addr v0, v2

    #@2b
    double-to-long v0, v0

    #@2c
    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    #@2e
    .line 3297
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    #@30
    add-int/2addr v0, p1

    #@31
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    #@33
    goto :goto_0
.end method

.method private ensureNotDead()V
    .locals 3

    #@0
    .prologue
    .line 2996
    iget-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2997
    return-void

    #@5
    .line 2999
    :cond_0
    const-string/jumbo v0, "ProcessStats"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "ProcessState dead: name="

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 3000
    const-string/jumbo v2, " pkg="

    #@1d
    .line 2999
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 3000
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    #@23
    .line 2999
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 3000
    const-string/jumbo v2, " uid="

    #@2a
    .line 2999
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 3000
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    #@30
    .line 2999
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 3000
    const-string/jumbo v2, " common.name="

    #@37
    .line 2999
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 3000
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@3d
    iget-object v2, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@3f
    .line 2999
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 2995
    return-void
.end method

.method private pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;
    .locals 9
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessStateHolder;",
            ">;I)",
            "Lcom/android/internal/app/ProcessStats$ProcessState;"
        }
    .end annotation

    #@0
    .prologue
    .line 3340
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessStateHolder;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    #@6
    .line 3341
    .local v0, "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@8
    .line 3342
    .local v2, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-boolean v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    #@a
    if-eqz v4, :cond_0

    #@c
    iget-object v4, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@e
    if-eq v4, v2, :cond_0

    #@10
    .line 3347
    const-string/jumbo v4, "ProcessStats"

    #@13
    new-instance v5, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v6, "Pulling dead proc: name="

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    iget-object v6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    const-string/jumbo v6, " pkg="

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    iget-object v6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    #@2e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    .line 3348
    const-string/jumbo v6, " uid="

    #@35
    .line 3347
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    .line 3348
    iget v6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    #@3b
    .line 3347
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    .line 3348
    const-string/jumbo v6, " common.name="

    #@42
    .line 3347
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    .line 3348
    iget-object v6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@48
    iget-object v6, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@4a
    .line 3347
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 3349
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@57
    iget-object v5, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    #@59
    iget v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    #@5b
    iget v7, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    #@5d
    .line 3350
    iget-object v8, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@5f
    .line 3349
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/app/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    #@62
    move-result-object v2

    #@63
    .line 3352
    :cond_0
    iget-boolean v4, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    #@65
    if-eqz v4, :cond_4

    #@67
    .line 3356
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@69
    iget-object v5, v4, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@6b
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@6e
    move-result-object v4

    #@6f
    check-cast v4, Ljava/lang/String;

    #@71
    .line 3357
    iget v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    #@73
    .line 3356
    invoke-virtual {v5, v4, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@76
    move-result-object v3

    #@77
    check-cast v3, Landroid/util/SparseArray;

    #@79
    .line 3358
    .local v3, "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    if-nez v3, :cond_1

    #@7b
    .line 3359
    new-instance v5, Ljava/lang/IllegalStateException;

    #@7d
    new-instance v4, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v6, "No existing package "

    #@85
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v6

    #@89
    .line 3360
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@8c
    move-result-object v4

    #@8d
    check-cast v4, Ljava/lang/String;

    #@8f
    .line 3359
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v4

    #@93
    .line 3360
    const-string/jumbo v6, "/"

    #@96
    .line 3359
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v4

    #@9a
    .line 3360
    iget v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    #@9c
    .line 3359
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v4

    #@a0
    .line 3361
    const-string/jumbo v6, " for multi-proc "

    #@a3
    .line 3359
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v4

    #@a7
    .line 3361
    iget-object v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@a9
    .line 3359
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v4

    #@ad
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v4

    #@b1
    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b4
    throw v5

    #@b5
    .line 3363
    :cond_1
    iget v4, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    #@b7
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@ba
    move-result-object v1

    #@bb
    check-cast v1, Lcom/android/internal/app/ProcessStats$PackageState;

    #@bd
    .line 3364
    .local v1, "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    if-nez v1, :cond_2

    #@bf
    .line 3365
    new-instance v5, Ljava/lang/IllegalStateException;

    #@c1
    new-instance v4, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    const-string/jumbo v6, "No existing package "

    #@c9
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v6

    #@cd
    .line 3366
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@d0
    move-result-object v4

    #@d1
    check-cast v4, Ljava/lang/String;

    #@d3
    .line 3365
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v4

    #@d7
    .line 3366
    const-string/jumbo v6, "/"

    #@da
    .line 3365
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v4

    #@de
    .line 3366
    iget v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    #@e0
    .line 3365
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v4

    #@e4
    .line 3367
    const-string/jumbo v6, " for multi-proc "

    #@e7
    .line 3365
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v4

    #@eb
    .line 3367
    iget-object v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@ed
    .line 3365
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v4

    #@f1
    .line 3367
    const-string/jumbo v6, " version "

    #@f4
    .line 3365
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v4

    #@f8
    .line 3367
    iget v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    #@fa
    .line 3365
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v4

    #@fe
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v4

    #@102
    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@105
    throw v5

    #@106
    .line 3369
    :cond_2
    iget-object v4, v1, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@108
    iget-object v5, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@10a
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10d
    move-result-object v2

    #@10e
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@110
    .line 3370
    .restart local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v2, :cond_3

    #@112
    .line 3371
    new-instance v4, Ljava/lang/IllegalStateException;

    #@114
    new-instance v5, Ljava/lang/StringBuilder;

    #@116
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@119
    const-string/jumbo v6, "Didn\'t create per-package process "

    #@11c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v5

    #@120
    .line 3372
    iget-object v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@122
    .line 3371
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v5

    #@126
    .line 3372
    const-string/jumbo v6, " in pkg "

    #@129
    .line 3371
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v5

    #@12d
    .line 3372
    iget-object v6, v1, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    #@12f
    .line 3371
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v5

    #@133
    .line 3372
    const-string/jumbo v6, "/"

    #@136
    .line 3371
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v5

    #@13a
    .line 3372
    iget v6, v1, Lcom/android/internal/app/ProcessStats$PackageState;->mUid:I

    #@13c
    .line 3371
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v5

    #@140
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@143
    move-result-object v5

    #@144
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@147
    throw v4

    #@148
    .line 3374
    :cond_3
    iput-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@14a
    .line 3376
    .end local v1    # "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v3    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_4
    return-object v2
.end method


# virtual methods
.method add(Lcom/android/internal/app/ProcessStats$ProcessState;)V
    .locals 19
    .param p1, "other"    # Lcom/android/internal/app/ProcessStats$ProcessState;

    #@0
    .prologue
    .line 2958
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ProcessStats$ProcessState;->addDurations(Lcom/android/internal/app/ProcessStats$DurationsTable;)V

    #@3
    .line 2959
    const/16 v18, 0x0

    #@5
    .local v18, "i":I
    :goto_0
    move-object/from16 v0, p1

    #@7
    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    #@9
    move/from16 v0, v18

    #@b
    if-ge v0, v3, :cond_0

    #@d
    .line 2960
    move-object/from16 v0, p1

    #@f
    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@11
    aget v2, v3, v18

    #@13
    .line 2961
    .local v2, "ent":I
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    #@15
    shr-int v3, v2, v3

    #@17
    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    #@19
    and-int v4, v3, v5

    #@1b
    .line 2962
    .local v4, "state":I
    move-object/from16 v0, p1

    #@1d
    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@1f
    const/4 v5, 0x0

    #@20
    invoke-virtual {v3, v2, v5}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@23
    move-result-wide v6

    #@24
    long-to-int v5, v6

    #@25
    .line 2963
    move-object/from16 v0, p1

    #@27
    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@29
    const/4 v6, 0x1

    #@2a
    invoke-virtual {v3, v2, v6}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@2d
    move-result-wide v6

    #@2e
    .line 2964
    move-object/from16 v0, p1

    #@30
    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@32
    const/4 v8, 0x2

    #@33
    invoke-virtual {v3, v2, v8}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@36
    move-result-wide v8

    #@37
    .line 2965
    move-object/from16 v0, p1

    #@39
    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@3b
    const/4 v10, 0x3

    #@3c
    invoke-virtual {v3, v2, v10}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@3f
    move-result-wide v10

    #@40
    .line 2966
    move-object/from16 v0, p1

    #@42
    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@44
    const/4 v12, 0x4

    #@45
    invoke-virtual {v3, v2, v12}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@48
    move-result-wide v12

    #@49
    .line 2967
    move-object/from16 v0, p1

    #@4b
    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@4d
    const/4 v14, 0x5

    #@4e
    invoke-virtual {v3, v2, v14}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@51
    move-result-wide v14

    #@52
    .line 2968
    move-object/from16 v0, p1

    #@54
    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@56
    const/16 v16, 0x6

    #@58
    move/from16 v0, v16

    #@5a
    invoke-virtual {v3, v2, v0}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@5d
    move-result-wide v16

    #@5e
    move-object/from16 v3, p0

    #@60
    .line 2962
    invoke-virtual/range {v3 .. v17}, Lcom/android/internal/app/ProcessStats$ProcessState;->addPss(IIJJJJJJ)V

    #@63
    .line 2959
    add-int/lit8 v18, v18, 0x1

    #@65
    goto :goto_0

    #@66
    .line 2970
    .end local v2    # "ent":I
    .end local v4    # "state":I
    :cond_0
    move-object/from16 v0, p0

    #@68
    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    #@6a
    move-object/from16 v0, p1

    #@6c
    iget v5, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    #@6e
    add-int/2addr v3, v5

    #@6f
    move-object/from16 v0, p0

    #@71
    iput v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    #@73
    .line 2971
    move-object/from16 v0, p0

    #@75
    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    #@77
    move-object/from16 v0, p1

    #@79
    iget v5, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    #@7b
    add-int/2addr v3, v5

    #@7c
    move-object/from16 v0, p0

    #@7e
    iput v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    #@80
    .line 2972
    move-object/from16 v0, p1

    #@82
    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    #@84
    if-lez v3, :cond_1

    #@86
    .line 2973
    move-object/from16 v0, p1

    #@88
    iget v7, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    #@8a
    move-object/from16 v0, p1

    #@8c
    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    #@8e
    .line 2974
    move-object/from16 v0, p1

    #@90
    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    #@92
    move-object/from16 v0, p1

    #@94
    iget-wide v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    #@96
    move-object/from16 v6, p0

    #@98
    .line 2973
    invoke-direct/range {v6 .. v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->addCachedKill(IJJJ)V

    #@9b
    .line 2957
    :cond_1
    return-void
.end method

.method addPss(IIJJJJJJ)V
    .locals 15
    .param p1, "state"    # I
    .param p2, "inCount"    # I
    .param p3, "minPss"    # J
    .param p5, "avgPss"    # J
    .param p7, "maxPss"    # J
    .param p9, "minUss"    # J
    .param p11, "avgUss"    # J
    .param p13, "maxUss"    # J

    #@0
    .prologue
    .line 3213
    iget-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@2
    iget v8, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    #@4
    move/from16 v0, p1

    #@6
    invoke-static {v7, v8, v0}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    #@9
    move-result v4

    #@a
    .line 3215
    .local v4, "idx":I
    if-ltz v4, :cond_1

    #@c
    .line 3216
    iget-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@e
    aget v6, v7, v4

    #@10
    .line 3224
    .local v6, "off":I
    :goto_0
    iget-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@12
    iget-object v7, v7, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    #@14
    sget v8, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    #@16
    shr-int v8, v6, v8

    #@18
    sget v9, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    #@1a
    and-int/2addr v8, v9

    #@1b
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v5

    #@1f
    check-cast v5, [J

    #@21
    .line 3225
    .local v5, "longs":[J
    sget v7, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    #@23
    shr-int v7, v6, v7

    #@25
    sget v8, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    #@27
    and-int v4, v7, v8

    #@29
    .line 3226
    add-int/lit8 v7, v4, 0x0

    #@2b
    aget-wide v2, v5, v7

    #@2d
    .line 3227
    .local v2, "count":J
    const-wide/16 v8, 0x0

    #@2f
    cmp-long v7, v2, v8

    #@31
    if-nez v7, :cond_2

    #@33
    .line 3228
    add-int/lit8 v7, v4, 0x0

    #@35
    move/from16 v0, p2

    #@37
    int-to-long v8, v0

    #@38
    aput-wide v8, v5, v7

    #@3a
    .line 3229
    add-int/lit8 v7, v4, 0x1

    #@3c
    aput-wide p3, v5, v7

    #@3e
    .line 3230
    add-int/lit8 v7, v4, 0x2

    #@40
    aput-wide p5, v5, v7

    #@42
    .line 3231
    add-int/lit8 v7, v4, 0x3

    #@44
    aput-wide p7, v5, v7

    #@46
    .line 3232
    add-int/lit8 v7, v4, 0x4

    #@48
    aput-wide p9, v5, v7

    #@4a
    .line 3233
    add-int/lit8 v7, v4, 0x5

    #@4c
    aput-wide p11, v5, v7

    #@4e
    .line 3234
    add-int/lit8 v7, v4, 0x6

    #@50
    aput-wide p13, v5, v7

    #@52
    .line 3212
    :cond_0
    :goto_1
    return-void

    #@53
    .line 3218
    .end local v2    # "count":J
    .end local v5    # "longs":[J
    .end local v6    # "off":I
    :cond_1
    iget-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@55
    iget-object v8, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@57
    iput-object v8, v7, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    #@59
    .line 3219
    iget-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@5b
    iget v8, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    #@5d
    iput v8, v7, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    #@5f
    .line 3220
    iget-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@61
    not-int v8, v4

    #@62
    const/4 v9, 0x7

    #@63
    move/from16 v0, p1

    #@65
    invoke-virtual {v7, v8, v0, v9}, Lcom/android/internal/app/ProcessStats;->addLongData(III)I

    #@68
    move-result v6

    #@69
    .line 3221
    .restart local v6    # "off":I
    iget-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@6b
    iget-object v7, v7, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    #@6d
    iput-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@6f
    .line 3222
    iget-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@71
    iget v7, v7, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    #@73
    iput v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    #@75
    goto :goto_0

    #@76
    .line 3236
    .restart local v2    # "count":J
    .restart local v5    # "longs":[J
    :cond_2
    add-int/lit8 v7, v4, 0x0

    #@78
    move/from16 v0, p2

    #@7a
    int-to-long v8, v0

    #@7b
    add-long/2addr v8, v2

    #@7c
    aput-wide v8, v5, v7

    #@7e
    .line 3237
    add-int/lit8 v7, v4, 0x1

    #@80
    aget-wide v8, v5, v7

    #@82
    cmp-long v7, v8, p3

    #@84
    if-lez v7, :cond_3

    #@86
    .line 3238
    add-int/lit8 v7, v4, 0x1

    #@88
    aput-wide p3, v5, v7

    #@8a
    .line 3240
    :cond_3
    add-int/lit8 v7, v4, 0x2

    #@8c
    .line 3241
    add-int/lit8 v8, v4, 0x2

    #@8e
    aget-wide v8, v5, v8

    #@90
    long-to-double v8, v8

    #@91
    long-to-double v10, v2

    #@92
    mul-double/2addr v8, v10

    #@93
    move-wide/from16 v0, p5

    #@95
    long-to-double v10, v0

    #@96
    move/from16 v0, p2

    #@98
    int-to-double v12, v0

    #@99
    mul-double/2addr v10, v12

    #@9a
    add-double/2addr v8, v10

    #@9b
    .line 3242
    move/from16 v0, p2

    #@9d
    int-to-long v10, v0

    #@9e
    add-long/2addr v10, v2

    #@9f
    long-to-double v10, v10

    #@a0
    .line 3240
    div-double/2addr v8, v10

    #@a1
    double-to-long v8, v8

    #@a2
    aput-wide v8, v5, v7

    #@a4
    .line 3243
    add-int/lit8 v7, v4, 0x3

    #@a6
    aget-wide v8, v5, v7

    #@a8
    cmp-long v7, v8, p7

    #@aa
    if-gez v7, :cond_4

    #@ac
    .line 3244
    add-int/lit8 v7, v4, 0x3

    #@ae
    aput-wide p7, v5, v7

    #@b0
    .line 3246
    :cond_4
    add-int/lit8 v7, v4, 0x4

    #@b2
    aget-wide v8, v5, v7

    #@b4
    cmp-long v7, v8, p9

    #@b6
    if-lez v7, :cond_5

    #@b8
    .line 3247
    add-int/lit8 v7, v4, 0x4

    #@ba
    aput-wide p9, v5, v7

    #@bc
    .line 3249
    :cond_5
    add-int/lit8 v7, v4, 0x5

    #@be
    .line 3250
    add-int/lit8 v8, v4, 0x5

    #@c0
    aget-wide v8, v5, v8

    #@c2
    long-to-double v8, v8

    #@c3
    long-to-double v10, v2

    #@c4
    mul-double/2addr v8, v10

    #@c5
    move-wide/from16 v0, p11

    #@c7
    long-to-double v10, v0

    #@c8
    move/from16 v0, p2

    #@ca
    int-to-double v12, v0

    #@cb
    mul-double/2addr v10, v12

    #@cc
    add-double/2addr v8, v10

    #@cd
    .line 3251
    move/from16 v0, p2

    #@cf
    int-to-long v10, v0

    #@d0
    add-long/2addr v10, v2

    #@d1
    long-to-double v10, v10

    #@d2
    .line 3249
    div-double/2addr v8, v10

    #@d3
    double-to-long v8, v8

    #@d4
    aput-wide v8, v5, v7

    #@d6
    .line 3252
    add-int/lit8 v7, v4, 0x6

    #@d8
    aget-wide v8, v5, v7

    #@da
    cmp-long v7, v8, p13

    #@dc
    if-gez v7, :cond_0

    #@de
    .line 3253
    add-int/lit8 v7, v4, 0x6

    #@e0
    aput-wide p13, v5, v7

    #@e2
    goto/16 :goto_1
.end method

.method public addPss(JJZLandroid/util/ArrayMap;)V
    .locals 19
    .param p1, "pss"    # J
    .param p3, "uss"    # J
    .param p5, "always"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3184
    .local p6, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessStateHolder;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    #@3
    .line 3185
    if-nez p5, :cond_0

    #@5
    .line 3186
    move-object/from16 v0, p0

    #@7
    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    #@9
    move-object/from16 v0, p0

    #@b
    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    #@d
    if-ne v3, v4, :cond_0

    #@f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@12
    move-result-wide v4

    #@13
    .line 3187
    move-object/from16 v0, p0

    #@15
    iget-wide v6, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssTime:J

    #@17
    const-wide/16 v8, 0x7530

    #@19
    add-long/2addr v6, v8

    #@1a
    .line 3186
    cmp-long v3, v4, v6

    #@1c
    if-gez v3, :cond_0

    #@1e
    .line 3188
    return-void

    #@1f
    .line 3191
    :cond_0
    move-object/from16 v0, p0

    #@21
    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    #@23
    move-object/from16 v0, p0

    #@25
    iput v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    #@27
    .line 3192
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2a
    move-result-wide v4

    #@2b
    move-object/from16 v0, p0

    #@2d
    iput-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssTime:J

    #@2f
    .line 3193
    move-object/from16 v0, p0

    #@31
    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    #@33
    const/4 v4, -0x1

    #@34
    if-eq v3, v4, :cond_2

    #@36
    .line 3195
    move-object/from16 v0, p0

    #@38
    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    #@3e
    const/4 v5, 0x1

    #@3f
    move-wide/from16 v6, p1

    #@41
    move-wide/from16 v8, p1

    #@43
    move-wide/from16 v10, p1

    #@45
    move-wide/from16 v12, p3

    #@47
    move-wide/from16 v14, p3

    #@49
    move-wide/from16 v16, p3

    #@4b
    invoke-virtual/range {v3 .. v17}, Lcom/android/internal/app/ProcessStats$ProcessState;->addPss(IIJJJJJJ)V

    #@4e
    .line 3198
    move-object/from16 v0, p0

    #@50
    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@52
    iget-boolean v3, v3, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    #@54
    if-nez v3, :cond_1

    #@56
    .line 3199
    return-void

    #@57
    .line 3202
    :cond_1
    if-eqz p6, :cond_2

    #@59
    .line 3203
    invoke-virtual/range {p6 .. p6}, Landroid/util/ArrayMap;->size()I

    #@5c
    move-result v3

    #@5d
    add-int/lit8 v2, v3, -0x1

    #@5f
    .local v2, "ip":I
    :goto_0
    if-ltz v2, :cond_2

    #@61
    .line 3204
    move-object/from16 v0, p0

    #@63
    move-object/from16 v1, p6

    #@65
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    #@68
    move-result-object v3

    #@69
    move-object/from16 v0, p0

    #@6b
    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    #@6d
    const/4 v5, 0x1

    #@6e
    move-wide/from16 v6, p1

    #@70
    move-wide/from16 v8, p1

    #@72
    move-wide/from16 v10, p1

    #@74
    move-wide/from16 v12, p3

    #@76
    move-wide/from16 v14, p3

    #@78
    move-wide/from16 v16, p3

    #@7a
    invoke-virtual/range {v3 .. v17}, Lcom/android/internal/app/ProcessStats$ProcessState;->addPss(IIJJJJJJ)V

    #@7d
    .line 3203
    add-int/lit8 v2, v2, -0x1

    #@7f
    goto :goto_0

    #@80
    .line 3183
    .end local v2    # "ip":I
    :cond_2
    return-void
.end method

.method clone(Ljava/lang/String;J)Lcom/android/internal/app/ProcessStats$ProcessState;
    .locals 14
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "now"    # J

    #@0
    .prologue
    .line 2928
    new-instance v0, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@2
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    #@4
    iget v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    #@6
    iget-object v5, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@8
    move-object v1, p0

    #@9
    move-object v2, p1

    #@a
    move-wide/from16 v6, p2

    #@c
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    #@f
    .line 2929
    .local v0, "pnew":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->copyDurationsTo(Lcom/android/internal/app/ProcessStats$DurationsTable;)V

    #@12
    .line 2930
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@14
    if-eqz v1, :cond_2

    #@16
    .line 2931
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@18
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@1a
    array-length v2, v2

    #@1b
    new-array v2, v2, [I

    #@1d
    iput-object v2, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    #@1f
    .line 2932
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@21
    const/4 v2, 0x0

    #@22
    iput v2, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    #@24
    .line 2933
    const/4 v8, 0x0

    #@25
    .local v8, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    #@27
    if-ge v8, v1, :cond_1

    #@29
    .line 2934
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@2b
    aget v11, v1, v8

    #@2d
    .line 2935
    .local v11, "origEnt":I
    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    #@2f
    shr-int v1, v11, v1

    #@31
    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    #@33
    and-int v12, v1, v2

    #@35
    .line 2936
    .local v12, "type":I
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@37
    const/4 v2, 0x7

    #@38
    invoke-virtual {v1, v8, v12, v2}, Lcom/android/internal/app/ProcessStats;->addLongData(III)I

    #@3b
    move-result v10

    #@3c
    .line 2937
    .local v10, "newOff":I
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@3e
    iget-object v1, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    #@40
    or-int v2, v10, v12

    #@42
    aput v2, v1, v8

    #@44
    .line 2938
    const/4 v9, 0x0

    #@45
    .local v9, "j":I
    :goto_1
    const/4 v1, 0x7

    #@46
    if-ge v9, v1, :cond_0

    #@48
    .line 2939
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@4a
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@4c
    invoke-virtual {v2, v11, v9}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@4f
    move-result-wide v2

    #@50
    invoke-virtual {v1, v10, v9, v2, v3}, Lcom/android/internal/app/ProcessStats;->setLong(IIJ)V

    #@53
    .line 2938
    add-int/lit8 v9, v9, 0x1

    #@55
    goto :goto_1

    #@56
    .line 2933
    :cond_0
    add-int/lit8 v8, v8, 0x1

    #@58
    goto :goto_0

    #@59
    .line 2942
    .end local v9    # "j":I
    .end local v10    # "newOff":I
    .end local v11    # "origEnt":I
    .end local v12    # "type":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@5b
    iget-object v1, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    #@5d
    iput-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@5f
    .line 2943
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@61
    iget v1, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    #@63
    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    #@65
    .line 2945
    .end local v8    # "i":I
    :cond_2
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    #@67
    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    #@69
    .line 2946
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    #@6b
    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    #@6d
    .line 2947
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    #@6f
    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    #@71
    .line 2948
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    #@73
    iput-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    #@75
    .line 2949
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    #@77
    iput-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    #@79
    .line 2950
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    #@7b
    iput-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    #@7d
    .line 2951
    iget-boolean v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    #@7f
    iput-boolean v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    #@81
    .line 2952
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    #@83
    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    #@85
    .line 2953
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    #@87
    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    #@89
    .line 2954
    return-object v0
.end method

.method commitStateTime(J)V
    .locals 5
    .param p1, "now"    # J

    #@0
    .prologue
    .line 3106
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    #@2
    const/4 v3, -0x1

    #@3
    if-eq v2, v3, :cond_0

    #@5
    .line 3107
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    #@7
    sub-long v0, p1, v2

    #@9
    .line 3108
    .local v0, "dur":J
    const-wide/16 v2, 0x0

    #@b
    cmp-long v2, v0, v2

    #@d
    if-lez v2, :cond_0

    #@f
    .line 3109
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    #@11
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->addDuration(IJ)V

    #@14
    .line 3112
    .end local v0    # "dur":J
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    #@16
    .line 3105
    return-void
.end method

.method decActiveServices(Ljava/lang/String;)V
    .locals 4
    .param p1, "serviceName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3135
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@3
    if-eq v0, p0, :cond_0

    #@5
    .line 3136
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@7
    invoke-virtual {v0, p1}, Lcom/android/internal/app/ProcessStats$ProcessState;->decActiveServices(Ljava/lang/String;)V

    #@a
    .line 3138
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    #@c
    add-int/lit8 v0, v0, -0x1

    #@e
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    #@10
    .line 3139
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    #@12
    if-gez v0, :cond_1

    #@14
    .line 3140
    const-string/jumbo v0, "ProcessStats"

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "Proc active services underrun: pkg="

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 3141
    const-string/jumbo v2, " uid="

    #@2c
    .line 3140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 3141
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    #@32
    .line 3140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    .line 3141
    const-string/jumbo v2, " proc="

    #@39
    .line 3140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 3141
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@3f
    .line 3140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    .line 3141
    const-string/jumbo v2, " service="

    #@46
    .line 3140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 3142
    iput v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    #@57
    .line 3128
    :cond_1
    return-void
.end method

.method decStartedServices(IJLjava/lang/String;)V
    .locals 4
    .param p1, "memFactor"    # I
    .param p2, "now"    # J
    .param p4, "serviceName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3169
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@3
    if-eq v0, p0, :cond_0

    #@5
    .line 3170
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@7
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ProcessState;->decStartedServices(IJLjava/lang/String;)V

    #@a
    .line 3172
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    #@c
    add-int/lit8 v0, v0, -0x1

    #@e
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    #@10
    .line 3173
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    #@12
    if-nez v0, :cond_2

    #@14
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    #@16
    rem-int/lit8 v0, v0, 0xe

    #@18
    const/4 v1, 0x7

    #@19
    if-ne v0, v1, :cond_2

    #@1b
    .line 3174
    const/4 v0, -0x1

    #@1c
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IJ)V

    #@1f
    .line 3162
    :cond_1
    :goto_0
    return-void

    #@20
    .line 3175
    :cond_2
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    #@22
    if-gez v0, :cond_1

    #@24
    .line 3176
    const-string/jumbo v0, "ProcessStats"

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v2, "Proc started services underrun: pkg="

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 3177
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    #@35
    .line 3176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    .line 3177
    const-string/jumbo v2, " uid="

    #@3c
    .line 3176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    .line 3177
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    #@42
    .line 3176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    .line 3177
    const-string/jumbo v2, " name="

    #@49
    .line 3176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    .line 3177
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@4f
    .line 3176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 3178
    iput v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    #@5c
    goto :goto_0
.end method

.method getDuration(IJ)J
    .locals 4
    .param p1, "state"    # I
    .param p2, "now"    # J

    #@0
    .prologue
    .line 3380
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessStats$DurationsTable;->getDuration(IJ)J

    #@3
    move-result-wide v0

    #@4
    .line 3381
    .local v0, "time":J
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    #@6
    if-ne v2, p1, :cond_0

    #@8
    .line 3382
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    #@a
    sub-long v2, p2, v2

    #@c
    add-long/2addr v0, v2

    #@d
    .line 3384
    :cond_0
    return-wide v0
.end method

.method getPssAverage(I)J
    .locals 4
    .param p1, "state"    # I

    #@0
    .prologue
    .line 3398
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@2
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    #@4
    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    #@7
    move-result v0

    #@8
    .line 3399
    .local v0, "idx":I
    if-ltz v0, :cond_0

    #@a
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@c
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@e
    aget v2, v2, v0

    #@10
    const/4 v3, 0x2

    #@11
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@14
    move-result-wide v2

    #@15
    :goto_0
    return-wide v2

    #@16
    :cond_0
    const-wide/16 v2, 0x0

    #@18
    goto :goto_0
.end method

.method getPssMaximum(I)J
    .locals 4
    .param p1, "state"    # I

    #@0
    .prologue
    .line 3403
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@2
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    #@4
    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    #@7
    move-result v0

    #@8
    .line 3404
    .local v0, "idx":I
    if-ltz v0, :cond_0

    #@a
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@c
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@e
    aget v2, v2, v0

    #@10
    const/4 v3, 0x3

    #@11
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@14
    move-result-wide v2

    #@15
    :goto_0
    return-wide v2

    #@16
    :cond_0
    const-wide/16 v2, 0x0

    #@18
    goto :goto_0
.end method

.method getPssMinimum(I)J
    .locals 4
    .param p1, "state"    # I

    #@0
    .prologue
    .line 3393
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@2
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    #@4
    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    #@7
    move-result v0

    #@8
    .line 3394
    .local v0, "idx":I
    if-ltz v0, :cond_0

    #@a
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@c
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@e
    aget v2, v2, v0

    #@10
    const/4 v3, 0x1

    #@11
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@14
    move-result-wide v2

    #@15
    :goto_0
    return-wide v2

    #@16
    :cond_0
    const-wide/16 v2, 0x0

    #@18
    goto :goto_0
.end method

.method getPssSampleCount(I)J
    .locals 4
    .param p1, "state"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3388
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@3
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    #@5
    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    #@8
    move-result v0

    #@9
    .line 3389
    .local v0, "idx":I
    if-ltz v0, :cond_0

    #@b
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@d
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@f
    aget v2, v2, v0

    #@11
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@14
    move-result-wide v2

    #@15
    :goto_0
    return-wide v2

    #@16
    :cond_0
    const-wide/16 v2, 0x0

    #@18
    goto :goto_0
.end method

.method getPssUssAverage(I)J
    .locals 4
    .param p1, "state"    # I

    #@0
    .prologue
    .line 3413
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@2
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    #@4
    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    #@7
    move-result v0

    #@8
    .line 3414
    .local v0, "idx":I
    if-ltz v0, :cond_0

    #@a
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@c
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@e
    aget v2, v2, v0

    #@10
    const/4 v3, 0x5

    #@11
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@14
    move-result-wide v2

    #@15
    :goto_0
    return-wide v2

    #@16
    :cond_0
    const-wide/16 v2, 0x0

    #@18
    goto :goto_0
.end method

.method getPssUssMaximum(I)J
    .locals 4
    .param p1, "state"    # I

    #@0
    .prologue
    .line 3418
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@2
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    #@4
    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    #@7
    move-result v0

    #@8
    .line 3419
    .local v0, "idx":I
    if-ltz v0, :cond_0

    #@a
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@c
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@e
    aget v2, v2, v0

    #@10
    const/4 v3, 0x6

    #@11
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@14
    move-result-wide v2

    #@15
    :goto_0
    return-wide v2

    #@16
    :cond_0
    const-wide/16 v2, 0x0

    #@18
    goto :goto_0
.end method

.method getPssUssMinimum(I)J
    .locals 4
    .param p1, "state"    # I

    #@0
    .prologue
    .line 3408
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@2
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    #@4
    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    #@7
    move-result v0

    #@8
    .line 3409
    .local v0, "idx":I
    if-ltz v0, :cond_0

    #@a
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@c
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@e
    aget v2, v2, v0

    #@10
    const/4 v3, 0x4

    #@11
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    #@14
    move-result-wide v2

    #@15
    :goto_0
    return-wide v2

    #@16
    :cond_0
    const-wide/16 v2, 0x0

    #@18
    goto :goto_0
.end method

.method incActiveServices(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3122
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@2
    if-eq v0, p0, :cond_0

    #@4
    .line 3123
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/app/ProcessStats$ProcessState;->incActiveServices(Ljava/lang/String;)V

    #@9
    .line 3125
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    #@b
    add-int/lit8 v0, v0, 0x1

    #@d
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    #@f
    .line 3115
    return-void
.end method

.method incStartedServices(IJLjava/lang/String;)V
    .locals 2
    .param p1, "memFactor"    # I
    .param p2, "now"    # J
    .param p4, "serviceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3153
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@2
    if-eq v0, p0, :cond_0

    #@4
    .line 3154
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@6
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ProcessState;->incStartedServices(IJLjava/lang/String;)V

    #@9
    .line 3156
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    #@b
    add-int/lit8 v0, v0, 0x1

    #@d
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    #@f
    .line 3157
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    #@11
    const/4 v1, 0x1

    #@12
    if-ne v0, v1, :cond_1

    #@14
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    #@16
    const/4 v1, -0x1

    #@17
    if-ne v0, v1, :cond_1

    #@19
    .line 3158
    mul-int/lit8 v0, p1, 0xe

    #@1b
    add-int/lit8 v0, v0, 0x7

    #@1d
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IJ)V

    #@20
    .line 3146
    :cond_1
    return-void
.end method

.method public isInUse()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3060
    iget-boolean v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    #@4
    if-nez v2, :cond_0

    #@6
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    #@8
    if-lez v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    #@d
    if-gtz v2, :cond_0

    #@f
    .line 3061
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    #@11
    const/4 v3, -0x1

    #@12
    if-ne v2, v3, :cond_0

    #@14
    move v0, v1

    #@15
    goto :goto_0
.end method

.method public makeActive()V
    .locals 1

    #@0
    .prologue
    .line 3051
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    #@3
    .line 3052
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    #@6
    .line 3050
    return-void
.end method

.method makeDead()V
    .locals 1

    #@0
    .prologue
    .line 2992
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    #@3
    .line 2991
    return-void
.end method

.method public makeInactive()V
    .locals 1

    #@0
    .prologue
    .line 3056
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    #@3
    .line 3055
    return-void
.end method

.method pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3314
    iget-boolean v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    #@2
    if-eqz v3, :cond_3

    #@4
    .line 3318
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@6
    iget-object v3, v3, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    #@8
    iget v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    #@a
    invoke-virtual {v3, p1, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Landroid/util/SparseArray;

    #@10
    .line 3319
    .local v2, "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    if-nez v2, :cond_0

    #@12
    .line 3320
    new-instance v3, Ljava/lang/IllegalStateException;

    #@14
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "Didn\'t find package "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    .line 3321
    const-string/jumbo v5, " / "

    #@27
    .line 3320
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    .line 3321
    iget v5, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    #@2d
    .line 3320
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@38
    throw v3

    #@39
    .line 3323
    :cond_0
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    #@3b
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Lcom/android/internal/app/ProcessStats$PackageState;

    #@41
    .line 3324
    .local v0, "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    if-nez v0, :cond_1

    #@43
    .line 3325
    new-instance v3, Ljava/lang/IllegalStateException;

    #@45
    new-instance v4, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v5, "Didn\'t find package "

    #@4d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    .line 3326
    const-string/jumbo v5, " / "

    #@58
    .line 3325
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    .line 3326
    iget v5, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    #@5e
    .line 3325
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    .line 3326
    const-string/jumbo v5, " vers "

    #@65
    .line 3325
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    .line 3326
    iget v5, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    #@6b
    .line 3325
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v4

    #@73
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@76
    throw v3

    #@77
    .line 3328
    :cond_1
    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    #@79
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@7b
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    move-result-object v1

    #@7f
    check-cast v1, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@81
    .line 3329
    .local v1, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v1, :cond_2

    #@83
    .line 3330
    new-instance v3, Ljava/lang/IllegalStateException;

    #@85
    new-instance v4, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v5, "Didn\'t create per-package process "

    #@8d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v4

    #@91
    .line 3331
    iget-object v5, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@93
    .line 3330
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v4

    #@97
    .line 3331
    const-string/jumbo v5, " in pkg "

    #@9a
    .line 3330
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v4

    #@9e
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v4

    #@a2
    .line 3331
    const-string/jumbo v5, " / "

    #@a5
    .line 3330
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v4

    #@a9
    .line 3331
    iget v5, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    #@ab
    .line 3330
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v4

    #@af
    .line 3331
    const-string/jumbo v5, " vers "

    #@b2
    .line 3330
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v4

    #@b6
    .line 3331
    iget v5, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    #@b8
    .line 3330
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v4

    #@bc
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v4

    #@c0
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c3
    throw v3

    #@c4
    .line 3333
    :cond_2
    return-object v1

    #@c5
    .line 3335
    .end local v0    # "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v1    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v2    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_3
    return-object p0
.end method

.method readFromParcel(Landroid/os/Parcel;Z)Z
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "fully"    # Z

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 3023
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_1

    #@9
    const/4 v0, 0x1

    #@a
    .line 3024
    .local v0, "multiPackage":Z
    :goto_0
    if-eqz p2, :cond_0

    #@c
    .line 3025
    iput-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    #@e
    .line 3028
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$ProcessState;->readDurationsFromParcel(Landroid/os/Parcel;)Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_2

    #@14
    .line 3029
    return v1

    #@15
    .line 3023
    .end local v0    # "multiPackage":Z
    :cond_1
    const/4 v0, 0x0

    #@16
    .restart local v0    # "multiPackage":Z
    goto :goto_0

    #@17
    .line 3032
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    #@19
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@1b
    const-string/jumbo v4, "pss"

    #@1e
    invoke-static {v2, p1, v3, v4}, Lcom/android/internal/app/ProcessStats;->-wrap0(Lcom/android/internal/app/ProcessStats;Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I

    #@21
    move-result-object v2

    #@22
    iput-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@24
    .line 3033
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@26
    sget-object v3, Lcom/android/internal/app/ProcessStats;->BAD_TABLE:[I

    #@28
    if-ne v2, v3, :cond_3

    #@2a
    .line 3034
    return v1

    #@2b
    .line 3036
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@2d
    if-eqz v2, :cond_4

    #@2f
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@31
    array-length v1, v1

    #@32
    :cond_4
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    #@34
    .line 3037
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v1

    #@38
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    #@3a
    .line 3038
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v1

    #@3e
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    #@40
    .line 3039
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@43
    move-result v1

    #@44
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    #@46
    .line 3040
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    #@48
    if-lez v1, :cond_5

    #@4a
    .line 3041
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@4d
    move-result-wide v2

    #@4e
    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    #@50
    .line 3042
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@53
    move-result-wide v2

    #@54
    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    #@56
    .line 3043
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@59
    move-result-wide v2

    #@5a
    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    #@5c
    .line 3047
    :goto_1
    const/4 v1, 0x1

    #@5d
    return v1

    #@5e
    .line 3045
    :cond_5
    iput-wide v6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    #@60
    iput-wide v6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    #@62
    iput-wide v6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    #@64
    goto :goto_1
.end method

.method public reportCachedKill(Landroid/util/ArrayMap;J)V
    .locals 10
    .param p2, "pss"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessStateHolder;",
            ">;J)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessStateHolder;>;"
    const/4 v1, 0x1

    #@1
    .line 3302
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    #@4
    .line 3303
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@6
    move-wide v2, p2

    #@7
    move-wide v4, p2

    #@8
    move-wide v6, p2

    #@9
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->addCachedKill(IJJJ)V

    #@c
    .line 3304
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@e
    iget-boolean v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    #@10
    if-nez v0, :cond_0

    #@12
    .line 3305
    return-void

    #@13
    .line 3308
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    #@16
    move-result v0

    #@17
    add-int/lit8 v8, v0, -0x1

    #@19
    .local v8, "ip":I
    :goto_0
    if-ltz v8, :cond_1

    #@1b
    .line 3309
    invoke-direct {p0, p1, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    #@1e
    move-result-object v0

    #@1f
    move-wide v2, p2

    #@20
    move-wide v4, p2

    #@21
    move-wide v6, p2

    #@22
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->addCachedKill(IJJJ)V

    #@25
    .line 3308
    add-int/lit8 v8, v8, -0x1

    #@27
    goto :goto_0

    #@28
    .line 3301
    :cond_1
    return-void
.end method

.method public reportExcessiveCpu(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3271
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessStateHolder;>;"
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    #@3
    .line 3272
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@5
    iget v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    iput v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    #@b
    .line 3273
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@d
    iget-boolean v1, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    #@f
    if-nez v1, :cond_0

    #@11
    .line 3274
    return-void

    #@12
    .line 3277
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    #@15
    move-result v1

    #@16
    add-int/lit8 v0, v1, -0x1

    #@18
    .local v0, "ip":I
    :goto_0
    if-ltz v0, :cond_1

    #@1a
    .line 3278
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    #@1d
    move-result-object v1

    #@1e
    iget v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    #@20
    add-int/lit8 v2, v2, 0x1

    #@22
    iput v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    #@24
    .line 3277
    add-int/lit8 v0, v0, -0x1

    #@26
    goto :goto_0

    #@27
    .line 3270
    :cond_1
    return-void
.end method

.method public reportExcessiveWake(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3259
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessStateHolder;>;"
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    #@3
    .line 3260
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@5
    iget v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    iput v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    #@b
    .line 3261
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@d
    iget-boolean v1, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    #@f
    if-nez v1, :cond_0

    #@11
    .line 3262
    return-void

    #@12
    .line 3265
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    #@15
    move-result v1

    #@16
    add-int/lit8 v0, v1, -0x1

    #@18
    .local v0, "ip":I
    :goto_0
    if-ltz v0, :cond_1

    #@1a
    .line 3266
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    #@1d
    move-result-object v1

    #@1e
    iget v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    #@20
    add-int/lit8 v2, v2, 0x1

    #@22
    iput v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    #@24
    .line 3265
    add-int/lit8 v0, v0, -0x1

    #@26
    goto :goto_0

    #@27
    .line 3258
    :cond_1
    return-void
.end method

.method resetSafely(J)V
    .locals 5
    .param p1, "now"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 2979
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->resetDurationsSafely()V

    #@6
    .line 2980
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    #@8
    .line 2981
    const/4 v0, -0x1

    #@9
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    #@b
    .line 2982
    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssTime:J

    #@d
    .line 2983
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@10
    .line 2984
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    #@12
    .line 2985
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    #@14
    .line 2986
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    #@16
    .line 2987
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    #@18
    .line 2988
    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    #@1a
    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    #@1c
    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    #@1e
    .line 2978
    return-void
.end method

.method public setState(IIJLandroid/util/ArrayMap;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "memFactor"    # I
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3074
    .local p5, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessStateHolder;>;"
    if-gez p1, :cond_1

    #@2
    .line 3075
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    #@4
    if-lez v1, :cond_0

    #@6
    .line 3076
    mul-int/lit8 v1, p2, 0xe

    #@8
    add-int/lit8 p1, v1, 0x7

    #@a
    .line 3082
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@c
    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IJ)V

    #@f
    .line 3085
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@11
    iget-boolean v1, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    #@13
    if-nez v1, :cond_2

    #@15
    .line 3086
    return-void

    #@16
    .line 3076
    :cond_0
    const/4 p1, -0x1

    #@17
    goto :goto_0

    #@18
    .line 3078
    :cond_1
    sget-object v1, Lcom/android/internal/app/ProcessStats;->PROCESS_STATE_TO_STATE:[I

    #@1a
    aget v1, v1, p1

    #@1c
    mul-int/lit8 v2, p2, 0xe

    #@1e
    add-int p1, v1, v2

    #@20
    goto :goto_0

    #@21
    .line 3089
    :cond_2
    if-eqz p5, :cond_3

    #@23
    .line 3090
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    #@26
    move-result v1

    #@27
    add-int/lit8 v0, v1, -0x1

    #@29
    .local v0, "ip":I
    :goto_1
    if-ltz v0, :cond_3

    #@2b
    .line 3091
    invoke-direct {p0, p5, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IJ)V

    #@32
    .line 3090
    add-int/lit8 v0, v0, -0x1

    #@34
    goto :goto_1

    #@35
    .line 3073
    .end local v0    # "ip":I
    :cond_3
    return-void
.end method

.method setState(IJ)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "now"    # J

    #@0
    .prologue
    .line 3097
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    #@3
    .line 3098
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    #@5
    if-eq v0, p1, :cond_0

    #@7
    .line 3100
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/ProcessStats$ProcessState;->commitStateTime(J)V

    #@a
    .line 3101
    iput p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    #@c
    .line 3096
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 3423
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 3424
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ProcessState{"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@11
    move-result v2

    #@12
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 3425
    const-string/jumbo v2, " "

    #@1d
    .line 3424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 3425
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    #@23
    .line 3424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 3425
    const-string/jumbo v2, "/"

    #@2a
    .line 3424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 3425
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    #@30
    .line 3424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 3426
    const-string/jumbo v2, " pkg="

    #@37
    .line 3424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 3426
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    #@3d
    .line 3424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 3427
    iget-boolean v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    #@42
    if-eqz v1, :cond_0

    #@44
    const-string/jumbo v1, " (multi)"

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 3428
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@4c
    if-eq v1, p0, :cond_1

    #@4e
    const-string/jumbo v1, " (sub)"

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 3429
    :cond_1
    const-string/jumbo v1, "}"

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    .line 3430
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    return-object v1
.end method

.method writeToParcel(Landroid/os/Parcel;J)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3004
    iget-boolean v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    const/4 v1, 0x1

    #@6
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 3005
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$ProcessState;->writeDurationsToParcel(Landroid/os/Parcel;)V

    #@c
    .line 3006
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    #@e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 3007
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    #@14
    if-ge v0, v1, :cond_1

    #@16
    .line 3010
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    #@18
    aget v1, v1, v0

    #@1a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 3007
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 3012
    :cond_1
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    #@22
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 3013
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    #@27
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 3014
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    #@2c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 3015
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    #@31
    if-lez v1, :cond_2

    #@33
    .line 3016
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    #@35
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@38
    .line 3017
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    #@3a
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@3d
    .line 3018
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    #@3f
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@42
    .line 3003
    :cond_2
    return-void
.end method
