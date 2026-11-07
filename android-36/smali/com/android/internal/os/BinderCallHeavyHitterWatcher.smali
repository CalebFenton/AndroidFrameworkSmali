.class public final Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
.super Ljava/lang/Object;
.source "BinderCallHeavyHitterWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;,
        Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;
    }
.end annotation


# static fields
.field private static final blacklist EPSILON:F = 1.0E-5f

.field private static final blacklist TAG:Ljava/lang/String; = "BinderCallHeavyHitterWatcher"

.field private static blacklist sInstance:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private blacklist mBatchStartTimeStamp:J

.field private blacklist mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

.field private blacklist mCachedCandidateContainersIndex:I

.field private final blacklist mCachedCandidateFrequencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCachedCandidateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCachedCandidateSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurrentInputSize:I

.field private blacklist mEnabled:Z

.field private final blacklist mHeavyHitterCandiates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHeavyHitterSketch:Lcom/android/internal/util/HeavyHitterSketch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/HeavyHitterSketch<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInputSize:I

.field private blacklist mListener:Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mThreshold:F

.field private blacklist mTotalInputSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 219
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->sLock:Ljava/lang/Object;

    .line 225
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->sInstance:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterCandiates:Landroid/util/SparseArray;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateFrequencies:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateSet:Landroid/util/ArraySet;

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private blacklist acquireHeavyHitterContainerLocked()Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;
    .registers 4

    .line 323
    iget-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    iget v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainersIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainersIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static blacklist getInstance()Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    .registers 2

    .line 231
    sget-object v0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_3
    sget-object v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->sInstance:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    if-nez v1, :cond_e

    .line 233
    new-instance v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    invoke-direct {v1}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;-><init>()V

    sput-object v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->sInstance:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    .line 235
    :cond_e
    sget-object v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->sInstance:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    monitor-exit v0

    return-object v1

    .line 236
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private blacklist initCachedCandidateContainersLocked(I)V
    .registers 5
    .param p1, "capacity"    # I

    .line 310
    if-lez p1, :cond_19

    .line 311
    new-array v0, p1, [Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    .line 312
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 313
    iget-object v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    new-instance v2, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    invoke-direct {v2}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;-><init>()V

    aput-object v2, v1, v0

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .end local v0    # "i":I
    :cond_18
    goto :goto_1c

    .line 316
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    .line 318
    :goto_1c
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainersIndex:I

    .line 319
    return-void
.end method

.method private blacklist releaseHeavyHitterContainerLocked(Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;)V
    .registers 4
    .param p1, "container"    # Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    .line 328
    iget-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    iget v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainersIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainersIndex:I

    aput-object p1, v0, v1

    .line 329
    return-void
.end method

.method private blacklist resetInternalLocked(Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;Lcom/android/internal/util/HeavyHitterSketch;IIFI)V
    .registers 9
    .param p1, "listener"    # Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;
    .param p3, "inputSize"    # I
    .param p4, "batchSize"    # I
    .param p5, "threshold"    # F
    .param p6, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;",
            "Lcom/android/internal/util/HeavyHitterSketch<",
            "Ljava/lang/Integer;",
            ">;IIFI)V"
        }
    .end annotation

    .line 294
    .local p2, "sketch":Lcom/android/internal/util/HeavyHitterSketch;, "Lcom/android/internal/util/HeavyHitterSketch<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mListener:Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;

    .line 295
    iput-object p2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterSketch:Lcom/android/internal/util/HeavyHitterSketch;

    .line 296
    iget-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterCandiates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 297
    iget-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 298
    iget-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateFrequencies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 299
    iget-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 300
    iput p3, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mInputSize:I

    .line 301
    iput p4, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mTotalInputSize:I

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    .line 303
    iput p5, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mThreshold:F

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mBatchStartTimeStamp:J

    .line 305
    invoke-direct {p0, p6}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->initCachedCandidateContainersLocked(I)V

    .line 306
    return-void
.end method


# virtual methods
.method public blacklist onTransaction(ILjava/lang/Class;I)V
    .registers 21
    .param p1, "callerUid"    # I
    .param p2, "clazz"    # Ljava/lang/Class;
    .param p3, "code"    # I

    .line 340
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 341
    :try_start_5
    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mEnabled:Z

    if-nez v0, :cond_b

    .line 342
    monitor-exit v2

    return-void

    .line 345
    :cond_b
    iget-object v0, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterSketch:Lcom/android/internal/util/HeavyHitterSketch;

    .line 346
    .local v0, "sketch":Lcom/android/internal/util/HeavyHitterSketch;, "Lcom/android/internal/util/HeavyHitterSketch<Ljava/lang/Integer;>;"
    if-nez v0, :cond_11

    .line 347
    monitor-exit v2

    return-void

    .line 355
    :cond_11
    invoke-static/range {p1 .. p3}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->hashCode(ILjava/lang/Class;I)I

    move-result v3

    .line 357
    .local v3, "hashCode":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/internal/util/HeavyHitterSketch;->add(Ljava/lang/Object;)V

    .line 358
    iget v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    .line 359
    iget v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    iget v5, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mInputSize:I

    if-ne v4, v5, :cond_3f

    .line 361
    iget-object v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    invoke-interface {v0, v4}, Lcom/android/internal/util/HeavyHitterSketch;->getCandidates(Ljava/util/List;)Ljava/util/List;

    .line 362
    iget-object v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateSet:Landroid/util/ArraySet;

    iget-object v5, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 363
    iget-object v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v7, p2

    move/from16 v8, p3

    goto/16 :goto_119

    .line 364
    :cond_3f
    iget v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    iget v5, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mInputSize:I
    :try_end_43
    .catchall {:try_start_5 .. :try_end_43} :catchall_11b

    if-le v4, v5, :cond_8e

    :try_start_45
    iget v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    iget v5, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mTotalInputSize:I

    if-ge v4, v5, :cond_8e

    .line 366
    iget-object v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateSet:Landroid/util/ArraySet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 368
    iget-object v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterCandiates:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    .line 369
    .local v4, "index":I
    if-gez v4, :cond_79

    .line 371
    nop

    .line 372
    invoke-direct {v1}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->acquireHeavyHitterContainerLocked()Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    move-result-object v5
    :try_end_64
    .catchall {:try_start_45 .. :try_end_64} :catchall_89

    .line 373
    .local v5, "container":Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;
    move/from16 v6, p1

    :try_start_66
    iput v6, v5, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mUid:I
    :try_end_68
    .catchall {:try_start_66 .. :try_end_68} :catchall_11b

    .line 374
    move-object/from16 v7, p2

    :try_start_6a
    iput-object v7, v5, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mClass:Ljava/lang/Class;
    :try_end_6c
    .catchall {:try_start_6a .. :try_end_6c} :catchall_76

    .line 375
    move/from16 v8, p3

    :try_start_6e
    iput v8, v5, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mCode:I

    .line 376
    iget-object v9, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterCandiates:Landroid/util/SparseArray;

    invoke-virtual {v9, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7f

    .line 413
    .end local v0    # "sketch":Lcom/android/internal/util/HeavyHitterSketch;, "Lcom/android/internal/util/HeavyHitterSketch<Ljava/lang/Integer;>;"
    .end local v3    # "hashCode":I
    .end local v4    # "index":I
    .end local v5    # "container":Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;
    :catchall_76
    move-exception v0

    goto/16 :goto_11e

    .line 369
    .restart local v0    # "sketch":Lcom/android/internal/util/HeavyHitterSketch;, "Lcom/android/internal/util/HeavyHitterSketch<Ljava/lang/Integer;>;"
    .restart local v3    # "hashCode":I
    .restart local v4    # "index":I
    :cond_79
    move/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    .line 378
    .end local v4    # "index":I
    :goto_7f
    goto/16 :goto_119

    .line 366
    :cond_81
    move/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    goto/16 :goto_119

    .line 413
    .end local v0    # "sketch":Lcom/android/internal/util/HeavyHitterSketch;, "Lcom/android/internal/util/HeavyHitterSketch<Ljava/lang/Integer;>;"
    .end local v3    # "hashCode":I
    :catchall_89
    move-exception v0

    move/from16 v6, p1

    goto/16 :goto_11c

    .line 364
    .restart local v0    # "sketch":Lcom/android/internal/util/HeavyHitterSketch;, "Lcom/android/internal/util/HeavyHitterSketch<Ljava/lang/Integer;>;"
    .restart local v3    # "hashCode":I
    :cond_8e
    move/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    .line 379
    iget v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    iget v5, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mTotalInputSize:I

    if-ne v4, v5, :cond_119

    .line 381
    iget-object v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mListener:Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;

    const/4 v5, 0x0

    if-eqz v4, :cond_f5

    .line 382
    iget-object v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateFrequencies:Ljava/util/ArrayList;

    invoke-interface {v0, v5, v4, v9}, Lcom/android/internal/util/HeavyHitterSketch;->getTopHeavyHitters(ILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 384
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v4, :cond_f5

    .line 385
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    .line 386
    .local v9, "size":I
    if-lez v9, :cond_f5

    .line 387
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v10

    .line 388
    .local v12, "hitters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_b6
    if-ge v10, v9, :cond_e5

    .line 389
    iget-object v11, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterCandiates:Landroid/util/SparseArray;

    .line 390
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 389
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    .line 391
    .local v11, "container":Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;
    if-eqz v11, :cond_e2

    .line 392
    new-instance v13, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    invoke-direct {v13, v11}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;-><init>(Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;)V

    .line 394
    .local v13, "cont":Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;
    iget-object v14, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateFrequencies:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    iput v14, v13, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mFrequency:F

    .line 395
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    .end local v11    # "container":Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;
    .end local v13    # "cont":Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;
    :cond_e2
    add-int/lit8 v10, v10, 0x1

    goto :goto_b6

    .line 398
    .end local v10    # "i":I
    :cond_e5
    iget-object v11, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mListener:Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;

    iget v13, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mTotalInputSize:I

    iget v14, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mThreshold:F

    .line 399
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    iget-wide v5, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mBatchStartTimeStamp:J

    sub-long/2addr v15, v5

    .line 398
    invoke-interface/range {v11 .. v16}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;->onHeavyHit(Ljava/util/List;IFJ)V

    .line 404
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "size":I
    .end local v12    # "hitters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;>;"
    :cond_f5
    iget-object v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterSketch:Lcom/android/internal/util/HeavyHitterSketch;

    invoke-interface {v4}, Lcom/android/internal/util/HeavyHitterSketch;->reset()V

    .line 405
    iget-object v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterCandiates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 406
    iget-object v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 407
    iget-object v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateFrequencies:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 408
    iget-object v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateSet:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 409
    const/4 v10, 0x0

    iput v10, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainersIndex:I

    .line 410
    iput v10, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    .line 411
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mBatchStartTimeStamp:J

    .line 413
    .end local v0    # "sketch":Lcom/android/internal/util/HeavyHitterSketch;, "Lcom/android/internal/util/HeavyHitterSketch<Ljava/lang/Integer;>;"
    .end local v3    # "hashCode":I
    :cond_119
    :goto_119
    monitor-exit v2

    .line 414
    return-void

    .line 413
    :catchall_11b
    move-exception v0

    :goto_11c
    move-object/from16 v7, p2

    :goto_11e
    move/from16 v8, p3

    :goto_120
    monitor-exit v2
    :try_end_121
    .catchall {:try_start_6e .. :try_end_121} :catchall_122

    throw v0

    :catchall_122
    move-exception v0

    goto :goto_120
.end method

.method public blacklist setConfig(ZIFLcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;)V
    .registers 15
    .param p1, "enable"    # Z
    .param p2, "batchSize"    # I
    .param p3, "threshold"    # F
    .param p4, "listener"    # Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;

    .line 250
    iget-object v8, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 251
    if-nez p1, :cond_18

    .line 252
    :try_start_5
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mEnabled:Z

    if-eqz v0, :cond_16

    .line 253
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->resetInternalLocked(Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;Lcom/android/internal/util/HeavyHitterSketch;IIFI)V

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mEnabled:Z

    .line 256
    :cond_16
    monitor-exit v8

    return-void

    .line 258
    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mEnabled:Z

    .line 260
    const v0, 0x3727c5ac    # 1.0E-5f

    cmpg-float v2, p3, v0

    if-ltz v2, :cond_8f

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p3, v2

    if-lez v3, :cond_2a

    goto/16 :goto_8f

    .line 264
    :cond_2a
    iget v3, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mTotalInputSize:I

    if-ne p2, v3, :cond_3e

    iget v3, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mThreshold:F

    sub-float v3, p3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v0, v3, v0

    if-gez v0, :cond_3e

    .line 266
    iput-object p4, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mListener:Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;

    .line 267
    monitor-exit v8

    return-void

    .line 270
    :cond_3e
    div-float v0, v2, p3

    float-to-int v7, v0

    .line 271
    .local v7, "capacity":I
    invoke-static {}, Lcom/android/internal/util/HeavyHitterSketch;->newDefault()Lcom/android/internal/util/HeavyHitterSketch;

    move-result-object v0

    move-object v4, v0

    .line 272
    .local v4, "sketch":Lcom/android/internal/util/HeavyHitterSketch;, "Lcom/android/internal/util/HeavyHitterSketch<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Lcom/android/internal/util/HeavyHitterSketch;->getRequiredValidationInputRatio()F

    move-result v0

    move v9, v0

    .line 273
    .local v9, "validationRatio":F
    move v0, p2

    .line 274
    .local v0, "inputSize":I
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5
    :try_end_50
    .catchall {:try_start_5 .. :try_end_50} :catchall_91

    if-nez v5, :cond_58

    .line 275
    int-to-float v5, p2

    sub-float/2addr v2, v9

    mul-float/2addr v5, v2

    float-to-int v0, v5

    move v2, v0

    goto :goto_59

    .line 274
    :cond_58
    move v2, v0

    .line 278
    .end local v0    # "inputSize":I
    .local v2, "inputSize":I
    :goto_59
    :try_start_59
    invoke-interface {v4, p2, v7}, Lcom/android/internal/util/HeavyHitterSketch;->setConfig(II)V
    :try_end_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_59 .. :try_end_5c} :catch_68
    .catchall {:try_start_59 .. :try_end_5c} :catchall_91

    .line 284
    nop

    .line 286
    move-object v1, p0

    move v5, p2

    move v6, p3

    move-object v3, v4

    move v4, v2

    move-object v2, p4

    .end local v2    # "inputSize":I
    .local v3, "sketch":Lcom/android/internal/util/HeavyHitterSketch;, "Lcom/android/internal/util/HeavyHitterSketch<Ljava/lang/Integer;>;"
    .local v4, "inputSize":I
    :try_start_63
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->resetInternalLocked(Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;Lcom/android/internal/util/HeavyHitterSketch;IIFI)V

    .line 287
    .end local v3    # "sketch":Lcom/android/internal/util/HeavyHitterSketch;, "Lcom/android/internal/util/HeavyHitterSketch<Ljava/lang/Integer;>;"
    .end local v4    # "inputSize":I
    .end local v7    # "capacity":I
    .end local v9    # "validationRatio":F
    monitor-exit v8

    .line 288
    return-void

    .line 279
    .restart local v2    # "inputSize":I
    .local v4, "sketch":Lcom/android/internal/util/HeavyHitterSketch;, "Lcom/android/internal/util/HeavyHitterSketch<Ljava/lang/Integer;>;"
    .restart local v7    # "capacity":I
    .restart local v9    # "validationRatio":F
    :catch_68
    move-exception v0

    move-object v3, v4

    move v4, v2

    .line 281
    .end local v2    # "inputSize":I
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "sketch":Lcom/android/internal/util/HeavyHitterSketch;, "Lcom/android/internal/util/HeavyHitterSketch<Ljava/lang/Integer;>;"
    .local v4, "inputSize":I
    const-string v1, "BinderCallHeavyHitterWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid parameter to heavy hitter watcher: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    monitor-exit v8

    return-void

    .line 261
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "sketch":Lcom/android/internal/util/HeavyHitterSketch;, "Lcom/android/internal/util/HeavyHitterSketch<Ljava/lang/Integer;>;"
    .end local v4    # "inputSize":I
    .end local v7    # "capacity":I
    .end local v9    # "validationRatio":F
    :cond_8f
    :goto_8f
    monitor-exit v8

    return-void

    .line 287
    :catchall_91
    move-exception v0

    monitor-exit v8
    :try_end_93
    .catchall {:try_start_63 .. :try_end_93} :catchall_91

    throw v0
.end method
