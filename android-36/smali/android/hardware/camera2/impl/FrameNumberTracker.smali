.class public Landroid/hardware/camera2/impl/FrameNumberTracker;
.super Ljava/lang/Object;
.source "FrameNumberTracker.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FrameNumberTracker"


# instance fields
.field private blacklist mCompletedFrameNumber:[J

.field private final blacklist mFutureErrorMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPartialResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mPendingFrameNumbers:[Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 6

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x3

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    .line 45
    new-array v1, v0, [Ljava/util/LinkedList;

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    .line 50
    new-array v1, v0, [Ljava/util/LinkedList;

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    .line 54
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mFutureErrorMap:Ljava/util/TreeMap;

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    .line 59
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    if-ge v1, v0, :cond_3c

    .line 60
    iget-object v2, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    const-wide/16 v3, -0x1

    aput-wide v3, v2, v1

    .line 61
    iget-object v2, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    aput-object v3, v2, v1

    .line 62
    iget-object v2, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    aput-object v3, v2, v1

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 64
    .end local v1    # "i":I
    :cond_3c
    return-void
.end method

.method private blacklist update()V
    .registers 18

    .line 67
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mFutureErrorMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 68
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 70
    .local v2, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 71
    .local v3, "errorFrameNumber":J
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 72
    .local v5, "requestType":I
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 73
    .local v6, "removeError":Ljava/lang/Boolean;
    iget-object v7, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v7, v7, v5

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    cmp-long v7, v3, v7

    const/4 v8, 0x1

    if-nez v7, :cond_41

    .line 74
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 78
    :cond_41
    iget-object v7, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6a

    .line 79
    iget-object v7, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v7, v3, v9

    if-nez v7, :cond_dc

    .line 80
    iget-object v7, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 81
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_dc

    .line 84
    :cond_6a
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_6b
    const/4 v11, 0x3

    if-ge v7, v11, :cond_9c

    .line 85
    add-int v12, v5, v7

    rem-int/2addr v12, v11

    .line 86
    .local v12, "otherType":I
    iget-object v13, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v13, v13, v12

    invoke-virtual {v13}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_99

    iget-object v13, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v13, v13, v12

    .line 87
    invoke-virtual {v13}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v13, v3, v13

    if-nez v13, :cond_99

    .line 88
    iget-object v13, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v13, v13, v12

    invoke-virtual {v13}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 89
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 90
    goto :goto_9c

    .line 84
    .end local v12    # "otherType":I
    :cond_99
    add-int/lit8 v7, v7, 0x1

    goto :goto_6b

    .line 94
    .end local v7    # "i":I
    :cond_9c
    :goto_9c
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_dc

    .line 97
    add-int/lit8 v7, v5, 0x1

    rem-int/2addr v7, v11

    .line 98
    .local v7, "otherType1":I
    add-int/lit8 v12, v5, 0x2

    rem-int/2addr v12, v11

    .line 99
    .local v12, "otherType2":I
    iget-object v11, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v11, v11, v7

    invoke-virtual {v11}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_dc

    iget-object v11, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v11, v11, v12

    .line 100
    invoke-virtual {v11}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_dc

    .line 101
    iget-object v11, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v13, v11, v7

    iget-object v11, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    move-wide v15, v9

    move v10, v8

    aget-wide v8, v11, v12

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long/2addr v8, v15

    .line 103
    .local v8, "errorGapNumber":J
    iget-object v11, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v13, v11, v5

    add-long/2addr v13, v15

    cmp-long v11, v8, v13

    if-lez v11, :cond_dc

    cmp-long v11, v8, v3

    if-nez v11, :cond_dc

    .line 105
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 110
    .end local v7    # "otherType1":I
    .end local v8    # "errorGapNumber":J
    .end local v12    # "otherType2":I
    :cond_dc
    :goto_dc
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_f2

    .line 111
    iget-object v7, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aput-wide v3, v7, v5

    .line 112
    iget-object v7, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 115
    .end local v2    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v3    # "errorFrameNumber":J
    .end local v5    # "requestType":I
    .end local v6    # "removeError":Ljava/lang/Boolean;
    :cond_f2
    goto/16 :goto_c

    .line 116
    :cond_f4
    return-void
.end method

.method private blacklist updateCompletedFrameNumber(JI)V
    .registers 20
    .param p1, "frameNumber"    # J
    .param p3, "requestType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 211
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v3, v3, p3

    cmp-long v3, v1, v3

    const-string v4, " is a repeat"

    const-string v5, "frame number "

    if-lez v3, :cond_11e

    .line 216
    add-int/lit8 v3, p3, 0x1

    rem-int/lit8 v3, v3, 0x3

    .line 217
    .local v3, "otherType1":I
    add-int/lit8 v6, p3, 0x2

    rem-int/lit8 v6, v6, 0x3

    .line 218
    .local v6, "otherType2":I
    iget-object v7, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v7, v7, v3

    iget-object v9, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v9, v9, v6

    .line 219
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 220
    .local v7, "maxOtherFrameNumberSeen":J
    cmp-long v9, v1, v7

    if-gez v9, :cond_fd

    .line 225
    iget-object v9, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_91

    .line 228
    iget-object v9, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 229
    .local v9, "pendingFrameNumberSameType":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v1, v10

    if-nez v10, :cond_4d

    .line 233
    iget-object v4, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v4, v4, p3

    invoke-virtual {v4}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 242
    .end local v9    # "pendingFrameNumberSameType":Ljava/lang/Long;
    goto/16 :goto_119

    .line 234
    .restart local v9    # "pendingFrameNumberSameType":Ljava/lang/Long;
    :cond_4d
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v1, v10

    if-gez v10, :cond_70

    .line 235
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 238
    :cond_70
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " comes out of order. Expecting "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 244
    .end local v9    # "pendingFrameNumberSameType":Ljava/lang/Long;
    :cond_91
    iget-object v4, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v4, v4, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 245
    .local v4, "index1":I
    iget-object v9, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v9, v9, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 246
    .local v9, "index2":I
    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-eq v4, v11, :cond_b0

    move v13, v12

    goto :goto_b1

    :cond_b0
    move v13, v10

    .line 247
    .local v13, "inSkippedOther1":Z
    :goto_b1
    if-eq v9, v11, :cond_b4

    move v10, v12

    .line 248
    .local v10, "inSkippedOther2":Z
    :cond_b4
    xor-int v11, v13, v10

    if-eqz v11, :cond_e0

    .line 263
    if-eqz v13, :cond_c4

    .line 264
    iget-object v5, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v5, v5, v3

    .line 265
    .local v5, "srcList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    iget-object v11, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v11, v11, v6

    .line 266
    .local v11, "dstList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    move v12, v4

    .local v12, "index":I
    goto :goto_cd

    .line 268
    .end local v5    # "srcList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    .end local v11    # "dstList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    .end local v12    # "index":I
    :cond_c4
    iget-object v5, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v5, v5, v6

    .line 269
    .restart local v5    # "srcList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    iget-object v11, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v11, v11, v3

    .line 270
    .restart local v11    # "dstList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    move v12, v9

    .line 272
    .restart local v12    # "index":I
    :goto_cd
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_ce
    if-ge v14, v12, :cond_dc

    .line 273
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v11, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 272
    add-int/lit8 v14, v14, 0x1

    goto :goto_ce

    .line 277
    .end local v14    # "i":I
    :cond_dc
    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 278
    .end local v4    # "index1":I
    .end local v5    # "srcList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    .end local v9    # "index2":I
    .end local v10    # "inSkippedOther2":Z
    .end local v11    # "dstList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    .end local v12    # "index":I
    .end local v13    # "inSkippedOther1":Z
    goto :goto_119

    .line 249
    .restart local v4    # "index1":I
    .restart local v9    # "index2":I
    .restart local v10    # "inSkippedOther2":Z
    .restart local v13    # "inSkippedOther1":Z
    :cond_e0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " is a repeat or invalid"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 282
    .end local v4    # "index1":I
    .end local v9    # "index2":I
    .end local v10    # "inSkippedOther2":Z
    .end local v13    # "inSkippedOther1":Z
    :cond_fd
    iget-object v4, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v4, v4, p3

    .line 283
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide/16 v9, 0x1

    add-long/2addr v4, v9

    .line 284
    .local v4, "i":J
    :goto_108
    cmp-long v11, v4, v1

    if-gez v11, :cond_119

    .line 285
    iget-object v11, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v11, v11, p3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 284
    add-long/2addr v4, v9

    goto :goto_108

    .line 289
    .end local v4    # "i":J
    :cond_119
    :goto_119
    iget-object v4, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aput-wide v1, v4, p3

    .line 290
    return-void

    .line 212
    .end local v3    # "otherType1":I
    .end local v6    # "otherType2":I
    .end local v7    # "maxOtherFrameNumberSeen":J
    :cond_11e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public blacklist getCompletedFrameNumber()J
    .registers 3

    .line 188
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getCompletedReprocessFrameNumber()J
    .registers 3

    .line 192
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getCompletedZslStillFrameNumber()J
    .registers 3

    .line 196
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist popPartialResults(J)Ljava/util/List;
    .registers 5
    .param p1, "frameNumber"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public blacklist updateTracker(JLandroid/hardware/camera2/CaptureResult;ZI)V
    .registers 9
    .param p1, "frameNumber"    # J
    .param p3, "result"    # Landroid/hardware/camera2/CaptureResult;
    .param p4, "partial"    # Z
    .param p5, "requestType"    # I

    .line 150
    if-nez p4, :cond_7

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p5}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JZI)V

    .line 154
    return-void

    .line 157
    :cond_7
    if-nez p3, :cond_a

    .line 160
    return-void

    .line 164
    :cond_a
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 165
    .local v0, "partials":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    if-nez v0, :cond_27

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 167
    iget-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_27
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method public blacklist updateTracker(JZI)V
    .registers 8
    .param p1, "frameNumber"    # J
    .param p3, "isError"    # Z
    .param p4, "requestType"    # I

    .line 125
    if-eqz p3, :cond_10

    .line 126
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mFutureErrorMap:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 129
    :cond_10
    :try_start_10
    invoke-direct {p0, p1, p2, p4}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateCompletedFrameNumber(JI)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_13} :catch_14

    .line 132
    goto :goto_1e

    .line 130
    :catch_14
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "FrameNumberTracker"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1e
    invoke-direct {p0}, Landroid/hardware/camera2/impl/FrameNumberTracker;->update()V

    .line 135
    return-void
.end method
