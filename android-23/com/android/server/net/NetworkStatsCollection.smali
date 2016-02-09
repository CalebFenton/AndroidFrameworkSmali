.class public Lcom/android/server/net/NetworkStatsCollection;
.super Ljava/lang/Object;
.source "NetworkStatsCollection.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Reader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsCollection$Key;
    }
.end annotation


# static fields
.field private static final FILE_MAGIC:I = 0x414e4554

.field private static final VERSION_NETWORK_INIT:I = 0x1

.field private static final VERSION_UID_INIT:I = 0x1

.field private static final VERSION_UID_WITH_IDENT:I = 0x2

.field private static final VERSION_UID_WITH_SET:I = 0x4

.field private static final VERSION_UID_WITH_TAG:I = 0x3

.field private static final VERSION_UNIFIED_INIT:I = 0x10


# instance fields
.field private final mBucketDuration:J

.field private mDirty:Z

.field private mEndMillis:J

.field private mStartMillis:J

.field private mStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/net/NetworkStatsCollection$Key;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalBytes:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "bucketDuration"    # J

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@a
    .line 91
    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    #@c
    .line 92
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    #@f
    .line 90
    return-void
.end method

.method private dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "groupTemplate"    # Landroid/net/NetworkTemplate;
    .param p7, "groupPrefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 537
    new-instance v9, Landroid/util/ArrayMap;

    #@2
    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    #@5
    .line 540
    .local v9, "grouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;>;"
    const/4 v10, 0x0

    #@6
    .local v10, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@b
    move-result v4

    #@c
    if-ge v10, v4, :cond_3

    #@e
    .line 541
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@10
    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@13
    move-result-object v11

    #@14
    check-cast v11, Lcom/android/server/net/NetworkStatsCollection$Key;

    #@16
    .line 542
    .local v11, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@18
    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Landroid/net/NetworkStatsHistory;

    #@1e
    .line 544
    .local v3, "value":Landroid/net/NetworkStatsHistory;
    iget-object v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    #@20
    move-object/from16 v0, p6

    #@22
    invoke-static {v0, v4}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    #@25
    move-result v4

    #@26
    if-nez v4, :cond_1

    #@28
    .line 540
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 545
    :cond_1
    iget v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    #@2d
    const/16 v5, 0x3e8

    #@2f
    if-ge v4, v5, :cond_0

    #@31
    .line 547
    new-instance v8, Lcom/android/server/net/NetworkStatsCollection$Key;

    #@33
    iget v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    #@35
    iget v5, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    #@37
    iget v6, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    #@39
    const/4 v7, 0x0

    #@3a
    invoke-direct {v8, v7, v4, v5, v6}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    #@3d
    .line 548
    .local v8, "groupKey":Lcom/android/server/net/NetworkStatsCollection$Key;
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    move-result-object v2

    #@41
    check-cast v2, Landroid/net/NetworkStatsHistory;

    #@43
    .line 549
    .local v2, "groupHistory":Landroid/net/NetworkStatsHistory;
    if-nez v2, :cond_2

    #@45
    .line 550
    new-instance v2, Landroid/net/NetworkStatsHistory;

    #@47
    .end local v2    # "groupHistory":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    #@4a
    move-result-wide v4

    #@4b
    invoke-direct {v2, v4, v5}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    #@4e
    .line 551
    .restart local v2    # "groupHistory":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v9, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    :cond_2
    move-wide v4, p2

    #@52
    move-wide/from16 v6, p4

    #@54
    .line 553
    invoke-virtual/range {v2 .. v7}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    #@57
    goto :goto_1

    #@58
    .line 556
    .end local v2    # "groupHistory":Landroid/net/NetworkStatsHistory;
    .end local v3    # "value":Landroid/net/NetworkStatsHistory;
    .end local v8    # "groupKey":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v11    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_3
    const/4 v10, 0x0

    #@59
    :goto_2
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    #@5c
    move-result v4

    #@5d
    if-ge v10, v4, :cond_5

    #@5f
    .line 557
    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@62
    move-result-object v11

    #@63
    check-cast v11, Lcom/android/server/net/NetworkStatsCollection$Key;

    #@65
    .line 558
    .restart local v11    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@68
    move-result-object v3

    #@69
    check-cast v3, Landroid/net/NetworkStatsHistory;

    #@6b
    .line 560
    .restart local v3    # "value":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->size()I

    #@6e
    move-result v4

    #@6f
    if-nez v4, :cond_4

    #@71
    .line 556
    :goto_3
    add-int/lit8 v10, v10, 0x1

    #@73
    goto :goto_2

    #@74
    .line 562
    :cond_4
    const-string/jumbo v4, "c,"

    #@77
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7a
    .line 563
    move-object/from16 v0, p7

    #@7c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7f
    const/16 v4, 0x2c

    #@81
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    #@84
    .line 564
    iget v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    #@86
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    #@89
    const/16 v4, 0x2c

    #@8b
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    #@8e
    .line 565
    iget v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    #@90
    invoke-static {v4}, Landroid/net/NetworkStats;->setToCheckinString(I)Ljava/lang/String;

    #@93
    move-result-object v4

    #@94
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@97
    const/16 v4, 0x2c

    #@99
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    #@9c
    .line 566
    iget v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    #@9e
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    #@a1
    .line 567
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@a4
    .line 569
    invoke-virtual {v3, p1}, Landroid/net/NetworkStatsHistory;->dumpCheckin(Ljava/io/PrintWriter;)V

    #@a7
    goto :goto_3

    #@a8
    .line 536
    .end local v3    # "value":Landroid/net/NetworkStatsHistory;
    .end local v11    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_5
    return-void
.end method

.method private estimateBuckets()I
    .locals 4

    #@0
    .prologue
    .line 502
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    #@2
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    #@4
    sub-long/2addr v0, v2

    #@5
    const-wide v2, 0xb43e9400L

    #@a
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@d
    move-result-wide v0

    #@e
    .line 503
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    #@10
    .line 502
    div-long/2addr v0, v2

    #@11
    long-to-int v0, v0

    #@12
    return v0
.end method

.method private findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;
    .locals 8
    .param p1, "ident"    # Lcom/android/server/net/NetworkIdentitySet;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I

    #@0
    .prologue
    .line 274
    new-instance v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    #@2
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    #@5
    .line 275
    .local v1, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/net/NetworkStatsHistory;

    #@d
    .line 278
    .local v0, "existing":Landroid/net/NetworkStatsHistory;
    const/4 v2, 0x0

    #@e
    .line 279
    .local v2, "updated":Landroid/net/NetworkStatsHistory;
    if-nez v0, :cond_1

    #@10
    .line 280
    new-instance v2, Landroid/net/NetworkStatsHistory;

    #@12
    .end local v2    # "updated":Landroid/net/NetworkStatsHistory;
    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    #@14
    const/16 v3, 0xa

    #@16
    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    #@19
    .line 285
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    #@1b
    .line 286
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@1d
    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 287
    return-object v2

    #@21
    .line 281
    .restart local v2    # "updated":Landroid/net/NetworkStatsHistory;
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    #@24
    move-result-wide v4

    #@25
    iget-wide v6, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    #@27
    cmp-long v3, v4, v6

    #@29
    if-eqz v3, :cond_0

    #@2b
    .line 282
    new-instance v2, Landroid/net/NetworkStatsHistory;

    #@2d
    .end local v2    # "updated":Landroid/net/NetworkStatsHistory;
    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    #@2f
    invoke-direct {v2, v0, v4, v5}, Landroid/net/NetworkStatsHistory;-><init>(Landroid/net/NetworkStatsHistory;J)V

    #@32
    .local v2, "updated":Landroid/net/NetworkStatsHistory;
    goto :goto_0

    #@33
    .line 289
    .end local v2    # "updated":Landroid/net/NetworkStatsHistory;
    :cond_2
    return-object v0
.end method

.method private static isAccessibleToUser(II)Z
    .locals 3
    .param p0, "uid"    # I
    .param p1, "callerUid"    # I

    #@0
    .prologue
    const/16 v2, 0x3e8

    #@2
    const/4 v0, 0x1

    #@3
    .line 574
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    #@6
    move-result v1

    #@7
    if-eq v1, v2, :cond_0

    #@9
    .line 575
    if-ne p0, v2, :cond_1

    #@b
    .line 574
    :cond_0
    :goto_0
    return v0

    #@c
    .line 575
    :cond_1
    const/4 v1, -0x4

    #@d
    if-eq p0, v1, :cond_0

    #@f
    const/4 v1, -0x5

    #@10
    if-eq p0, v1, :cond_0

    #@12
    .line 576
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    #@15
    move-result v1

    #@16
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@19
    move-result v2

    #@1a
    if-eq v1, v2, :cond_0

    #@1c
    const/4 v0, 0x0

    #@1d
    goto :goto_0
.end method

.method private noteRecordedHistory(JJJ)V
    .locals 3
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "totalBytes"    # J

    #@0
    .prologue
    .line 495
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    #@8
    .line 496
    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    #@a
    cmp-long v0, p3, v0

    #@c
    if-lez v0, :cond_1

    #@e
    iput-wide p3, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    #@10
    .line 497
    :cond_1
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    #@12
    add-long/2addr v0, p5

    #@13
    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    #@15
    .line 498
    const/4 v0, 0x1

    #@16
    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    #@18
    .line 494
    return-void
.end method

.method private recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    .locals 8
    .param p1, "key"    # Lcom/android/server/net/NetworkStatsCollection$Key;
    .param p2, "history"    # Landroid/net/NetworkStatsHistory;

    #@0
    .prologue
    .line 249
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->size()I

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    return-void

    #@7
    .line 250
    :cond_0
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getStart()J

    #@a
    move-result-wide v2

    #@b
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getEnd()J

    #@e
    move-result-wide v4

    #@f
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    #@12
    move-result-wide v6

    #@13
    move-object v1, p0

    #@14
    invoke-direct/range {v1 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->noteRecordedHistory(JJJ)V

    #@17
    .line 252
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@19
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/net/NetworkStatsHistory;

    #@1f
    .line 253
    .local v0, "target":Landroid/net/NetworkStatsHistory;
    if-nez v0, :cond_1

    #@21
    .line 254
    new-instance v0, Landroid/net/NetworkStatsHistory;

    #@23
    .end local v0    # "target":Landroid/net/NetworkStatsHistory;
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    #@26
    move-result-wide v2

    #@27
    invoke-direct {v0, v2, v3}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    #@2a
    .line 255
    .restart local v0    # "target":Landroid/net/NetworkStatsHistory;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@2c
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 257
    :cond_1
    invoke-virtual {v0, p2}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    #@32
    .line 248
    return-void
.end method

.method private static templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z
    .locals 3
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "identSet"    # Lcom/android/server/net/NetworkIdentitySet;

    #@0
    .prologue
    .line 584
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "ident$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/net/NetworkIdentity;

    #@10
    .line 585
    .local v0, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {p0, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 586
    const/4 v2, 0x1

    #@17
    return v2

    #@18
    .line 589
    .end local v0    # "ident":Landroid/net/NetworkIdentity;
    :cond_1
    const/4 v2, 0x0

    #@19
    return v2
.end method


# virtual methods
.method public clearDirty()V
    .locals 1

    #@0
    .prologue
    .line 132
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    #@3
    .line 131
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 507
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@3
    move-result-object v3

    #@4
    .line 508
    .local v3, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@d
    .line 509
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@10
    .line 511
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v2

    #@14
    .local v2, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_0

    #@1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    #@20
    .line 512
    .local v1, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    const-string/jumbo v4, "ident="

    #@23
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@26
    iget-object v4, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    #@28
    invoke-virtual {v4}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@2f
    .line 513
    const-string/jumbo v4, " uid="

    #@32
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@35
    iget v4, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    #@37
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@3a
    .line 514
    const-string/jumbo v4, " set="

    #@3d
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@40
    iget v4, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    #@42
    invoke-static {v4}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@49
    .line 515
    const-string/jumbo v4, " tag="

    #@4c
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@4f
    iget v4, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    #@51
    invoke-static {v4}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@58
    .line 517
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@5a
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5d
    move-result-object v0

    #@5e
    check-cast v0, Landroid/net/NetworkStatsHistory;

    #@60
    .line 518
    .local v0, "history":Landroid/net/NetworkStatsHistory;
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@63
    .line 519
    const/4 v4, 0x1

    #@64
    invoke-virtual {v0, p1, v4}, Landroid/net/NetworkStatsHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    #@67
    .line 520
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@6a
    goto :goto_0

    #@6b
    .line 506
    .end local v0    # "history":Landroid/net/NetworkStatsHistory;
    .end local v1    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_0
    return-void
.end method

.method public dumpCheckin(Ljava/io/PrintWriter;JJ)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "start"    # J
    .param p4, "end"    # J

    #@0
    .prologue
    .line 525
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    #@3
    move-result-object v6

    #@4
    const-string/jumbo v7, "cell"

    #@7
    move-object v0, p0

    #@8
    move-object v1, p1

    #@9
    move-wide v2, p2

    #@a
    move-wide v4, p4

    #@b
    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    #@e
    .line 526
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    #@11
    move-result-object v6

    #@12
    const-string/jumbo v7, "wifi"

    #@15
    move-object v0, p0

    #@16
    move-object v1, p1

    #@17
    move-wide v2, p2

    #@18
    move-wide v4, p4

    #@19
    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    #@1c
    .line 527
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    #@1f
    move-result-object v6

    #@20
    const-string/jumbo v7, "eth"

    #@23
    move-object v0, p0

    #@24
    move-object v1, p1

    #@25
    move-wide v2, p2

    #@26
    move-wide v4, p4

    #@27
    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    #@2a
    .line 528
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateBluetooth()Landroid/net/NetworkTemplate;

    #@2d
    move-result-object v6

    #@2e
    const-string/jumbo v7, "bt"

    #@31
    move-object v0, p0

    #@32
    move-object v1, p1

    #@33
    move-wide v2, p2

    #@34
    move-wide v4, p4

    #@35
    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    #@38
    .line 524
    return-void
.end method

.method public getEndMillis()J
    .locals 2

    #@0
    .prologue
    .line 120
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    #@2
    return-wide v0
.end method

.method public getFirstAtomicBucketMillis()J
    .locals 4

    #@0
    .prologue
    const-wide v2, 0x7fffffffffffffffL

    #@5
    .line 112
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    #@7
    cmp-long v0, v0, v2

    #@9
    if-nez v0, :cond_0

    #@b
    .line 113
    return-wide v2

    #@c
    .line 115
    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    #@e
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    #@10
    add-long/2addr v0, v2

    #@11
    return-wide v0
.end method

.method public getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I

    #@0
    .prologue
    .line 162
    const-wide/high16 v6, -0x8000000000000000L

    #@2
    const-wide v8, 0x7fffffffffffffffL

    #@7
    move-object v0, p0

    #@8
    move-object v1, p1

    #@9
    move v2, p2

    #@a
    move v3, p3

    #@b
    move v4, p4

    #@c
    move v5, p5

    #@d
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getHistory(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I
    .param p6, "start"    # J
    .param p8, "end"    # J

    #@0
    .prologue
    .line 171
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v6

    #@4
    .line 172
    .local v6, "callerUid":I
    invoke-static {p2, v6}, Lcom/android/server/net/NetworkStatsCollection;->isAccessibleToUser(II)Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 173
    new-instance v2, Ljava/lang/SecurityException;

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "Network stats history of uid "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    .line 174
    const-string/jumbo v4, " is forbidden for caller "

    #@1f
    .line 173
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 177
    :cond_0
    new-instance v0, Landroid/net/NetworkStatsHistory;

    #@31
    .line 178
    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    #@33
    cmp-long v2, p6, p8

    #@35
    if-nez v2, :cond_1

    #@37
    const/4 v2, 0x1

    #@38
    .line 177
    :goto_0
    invoke-direct {v0, v4, v5, v2, p5}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    #@3b
    .line 181
    .local v0, "combined":Landroid/net/NetworkStatsHistory;
    cmp-long v2, p6, p8

    #@3d
    if-nez v2, :cond_2

    #@3f
    return-object v0

    #@40
    .line 178
    .end local v0    # "combined":Landroid/net/NetworkStatsHistory;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsCollection;->estimateBuckets()I

    #@43
    move-result v2

    #@44
    goto :goto_0

    #@45
    .line 183
    .restart local v0    # "combined":Landroid/net/NetworkStatsHistory;
    :cond_2
    const/4 v7, 0x0

    #@46
    .local v7, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@48
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@4b
    move-result v2

    #@4c
    if-ge v7, v2, :cond_4

    #@4e
    .line 184
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@50
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@53
    move-result-object v8

    #@54
    check-cast v8, Lcom/android/server/net/NetworkStatsCollection$Key;

    #@56
    .line 185
    .local v8, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v2, v8, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    #@58
    if-ne v2, p2, :cond_3

    #@5a
    iget v2, v8, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    #@5c
    invoke-static {p3, v2}, Landroid/net/NetworkStats;->setMatches(II)Z

    #@5f
    move-result v2

    #@60
    if-eqz v2, :cond_3

    #@62
    iget v2, v8, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    #@64
    if-ne v2, p4, :cond_3

    #@66
    .line 186
    iget-object v2, v8, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    #@68
    invoke-static {p1, v2}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    #@6b
    move-result v2

    #@6c
    .line 185
    if-eqz v2, :cond_3

    #@6e
    .line 187
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@70
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@73
    move-result-object v1

    #@74
    check-cast v1, Landroid/net/NetworkStatsHistory;

    #@76
    .local v1, "value":Landroid/net/NetworkStatsHistory;
    move-wide/from16 v2, p6

    #@78
    move-wide/from16 v4, p8

    #@7a
    .line 188
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    #@7d
    .line 183
    .end local v1    # "value":Landroid/net/NetworkStatsHistory;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    #@7f
    goto :goto_1

    #@80
    .line 191
    .end local v8    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_4
    return-object v0
.end method

.method public getRelevantUids()[I
    .locals 6

    #@0
    .prologue
    .line 140
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 141
    .local v0, "callerUid":I
    new-instance v4, Landroid/util/IntArray;

    #@6
    invoke-direct {v4}, Landroid/util/IntArray;-><init>()V

    #@9
    .line 142
    .local v4, "uids":Landroid/util/IntArray;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@f
    move-result v5

    #@10
    if-ge v1, v5, :cond_1

    #@12
    .line 143
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Lcom/android/server/net/NetworkStatsCollection$Key;

    #@1a
    .line 144
    .local v3, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v5, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    #@1c
    invoke-static {v5, v0}, Lcom/android/server/net/NetworkStatsCollection;->isAccessibleToUser(II)Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_0

    #@22
    .line 145
    iget v5, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    #@24
    invoke-virtual {v4, v5}, Landroid/util/IntArray;->binarySearch(I)I

    #@27
    move-result v2

    #@28
    .line 147
    .local v2, "j":I
    if-gez v2, :cond_0

    #@2a
    .line 148
    not-int v2, v2

    #@2b
    .line 149
    iget v5, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    #@2d
    invoke-virtual {v4, v2, v5}, Landroid/util/IntArray;->add(II)V

    #@30
    .line 142
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_0

    #@33
    .line 153
    .end local v3    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_1
    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    #@36
    move-result-object v5

    #@37
    return-object v5
.end method

.method public getStartMillis()J
    .locals 2

    #@0
    .prologue
    .line 104
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    #@2
    return-wide v0
.end method

.method public getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 14
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    #@0
    .prologue
    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v6

    #@4
    .line 201
    .local v6, "now":J
    new-instance v12, Landroid/net/NetworkStats;

    #@6
    sub-long v2, p4, p2

    #@8
    const/16 v4, 0x18

    #@a
    invoke-direct {v12, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    #@d
    .line 203
    .local v12, "stats":Landroid/net/NetworkStats;
    cmp-long v2, p2, p4

    #@f
    if-nez v2, :cond_0

    #@11
    return-object v12

    #@12
    .line 205
    :cond_0
    new-instance v9, Landroid/net/NetworkStats$Entry;

    #@14
    invoke-direct {v9}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@17
    .line 206
    .local v9, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v8, 0x0

    #@18
    .line 208
    .local v8, "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1b
    move-result v0

    #@1c
    .line 209
    .local v0, "callerUid":I
    const/4 v10, 0x0

    #@1d
    .end local v8    # "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    .local v10, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@1f
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@22
    move-result v2

    #@23
    if-ge v10, v2, :cond_2

    #@25
    .line 210
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@27
    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@2a
    move-result-object v11

    #@2b
    check-cast v11, Lcom/android/server/net/NetworkStatsCollection$Key;

    #@2d
    .line 211
    .local v11, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v2, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    #@2f
    invoke-static {p1, v2}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_1

    #@35
    iget v2, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    #@37
    invoke-static {v2, v0}, Lcom/android/server/net/NetworkStatsCollection;->isAccessibleToUser(II)Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_1

    #@3d
    .line 212
    iget v2, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    #@3f
    const/16 v3, 0x3e8

    #@41
    if-ge v2, v3, :cond_1

    #@43
    .line 213
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@45
    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@48
    move-result-object v1

    #@49
    check-cast v1, Landroid/net/NetworkStatsHistory;

    #@4b
    .local v1, "value":Landroid/net/NetworkStatsHistory;
    move-wide/from16 v2, p2

    #@4d
    move-wide/from16 v4, p4

    #@4f
    .line 214
    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    #@52
    move-result-object v8

    #@53
    .line 216
    .local v8, "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    #@55
    iput-object v2, v9, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@57
    .line 217
    iget v2, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    #@59
    iput v2, v9, Landroid/net/NetworkStats$Entry;->uid:I

    #@5b
    .line 218
    iget v2, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    #@5d
    iput v2, v9, Landroid/net/NetworkStats$Entry;->set:I

    #@5f
    .line 219
    iget v2, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    #@61
    iput v2, v9, Landroid/net/NetworkStats$Entry;->tag:I

    #@63
    .line 220
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    #@65
    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@67
    .line 221
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    #@69
    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@6b
    .line 222
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    #@6d
    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@6f
    .line 223
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    #@71
    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@73
    .line 224
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    #@75
    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->operations:J

    #@77
    .line 226
    invoke-virtual {v9}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    #@7a
    move-result v2

    #@7b
    if-nez v2, :cond_1

    #@7d
    .line 227
    invoke-virtual {v12, v9}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@80
    .line 209
    .end local v1    # "value":Landroid/net/NetworkStatsHistory;
    .end local v8    # "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    #@82
    goto :goto_0

    #@83
    .line 232
    .end local v11    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_2
    return-object v12
.end method

.method public getTotalBytes()J
    .locals 2

    #@0
    .prologue
    .line 124
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    #@2
    return-wide v0
.end method

.method public isDirty()Z
    .locals 1

    #@0
    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    #@2
    return v0
.end method

.method public isEmpty()Z
    .locals 6

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 136
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    #@3
    const-wide v4, 0x7fffffffffffffffL

    #@8
    cmp-long v1, v2, v4

    #@a
    if-nez v1, :cond_0

    #@c
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    #@e
    const-wide/high16 v4, -0x8000000000000000L

    #@10
    cmp-long v1, v2, v4

    #@12
    if-nez v1, :cond_0

    #@14
    const/4 v0, 0x1

    #@15
    :cond_0
    return v0
.end method

.method public read(Ljava/io/DataInputStream;)V
    .locals 16
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 300
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    #@3
    move-result v7

    #@4
    .line 301
    .local v7, "magic":I
    const v13, 0x414e4554

    #@7
    if-eq v7, v13, :cond_0

    #@9
    .line 302
    new-instance v13, Ljava/net/ProtocolException;

    #@b
    new-instance v14, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v15, "unexpected magic: "

    #@13
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v14

    #@17
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v14

    #@1b
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v14

    #@1f
    invoke-direct {v13, v14}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@22
    throw v13

    #@23
    .line 305
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    #@26
    move-result v12

    #@27
    .line 306
    .local v12, "version":I
    packed-switch v12, :pswitch_data_0

    #@2a
    .line 327
    new-instance v13, Ljava/net/ProtocolException;

    #@2c
    new-instance v14, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v15, "unexpected version: "

    #@34
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v14

    #@38
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v14

    #@3c
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v14

    #@40
    invoke-direct {v13, v14}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@43
    throw v13

    #@44
    .line 309
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    #@47
    move-result v4

    #@48
    .line 310
    .local v4, "identSize":I
    const/4 v2, 0x0

    #@49
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    #@4b
    .line 311
    new-instance v3, Lcom/android/server/net/NetworkIdentitySet;

    #@4d
    move-object/from16 v0, p1

    #@4f
    invoke-direct {v3, v0}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    #@52
    .line 313
    .local v3, "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    #@55
    move-result v9

    #@56
    .line 314
    .local v9, "size":I
    const/4 v5, 0x0

    #@57
    .local v5, "j":I
    :goto_1
    if-ge v5, v9, :cond_1

    #@59
    .line 315
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    #@5c
    move-result v11

    #@5d
    .line 316
    .local v11, "uid":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    #@60
    move-result v8

    #@61
    .line 317
    .local v8, "set":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    #@64
    move-result v10

    #@65
    .line 319
    .local v10, "tag":I
    new-instance v6, Lcom/android/server/net/NetworkStatsCollection$Key;

    #@67
    invoke-direct {v6, v3, v11, v8, v10}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    #@6a
    .line 320
    .local v6, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    new-instance v1, Landroid/net/NetworkStatsHistory;

    #@6c
    move-object/from16 v0, p1

    #@6e
    invoke-direct {v1, v0}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    #@71
    .line 321
    .local v1, "history":Landroid/net/NetworkStatsHistory;
    move-object/from16 v0, p0

    #@73
    invoke-direct {v0, v6, v1}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    #@76
    .line 314
    add-int/lit8 v5, v5, 0x1

    #@78
    goto :goto_1

    #@79
    .line 310
    .end local v1    # "history":Landroid/net/NetworkStatsHistory;
    .end local v6    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v8    # "set":I
    .end local v10    # "tag":I
    .end local v11    # "uid":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@7b
    goto :goto_0

    #@7c
    .line 298
    .end local v3    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v5    # "j":I
    .end local v9    # "size":I
    :cond_2
    return-void

    #@7d
    .line 306
    nop

    #@7e
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 295
    new-instance v0, Ljava/io/DataInputStream;

    #@2
    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@5
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkStatsCollection;->read(Ljava/io/DataInputStream;)V

    #@8
    .line 294
    return-void
.end method

.method public readLegacyNetwork(Ljava/io/File;)V
    .locals 14
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 367
    new-instance v6, Landroid/util/AtomicFile;

    #@2
    invoke-direct {v6, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@5
    .line 369
    .local v6, "inputFile":Landroid/util/AtomicFile;
    const/4 v4, 0x0

    #@6
    .line 371
    .local v4, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v5, Ljava/io/DataInputStream;

    #@8
    new-instance v11, Ljava/io/BufferedInputStream;

    #@a
    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@d
    move-result-object v12

    #@e
    invoke-direct {v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@11
    invoke-direct {v5, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@14
    .line 374
    .end local v4    # "in":Ljava/io/DataInputStream;
    .local v5, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    #@17
    move-result v8

    #@18
    .line 375
    .local v8, "magic":I
    const v11, 0x414e4554

    #@1b
    if-eq v8, v11, :cond_0

    #@1d
    .line 376
    new-instance v11, Ljava/net/ProtocolException;

    #@1f
    new-instance v12, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v13, "unexpected magic: "

    #@27
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v12

    #@2b
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v12

    #@2f
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v12

    #@33
    invoke-direct {v11, v12}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@36
    throw v11
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    .line 397
    .end local v8    # "magic":I
    :catch_0
    move-exception v0

    #@38
    .local v0, "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    #@39
    .line 400
    .end local v5    # "in":Ljava/io/DataInputStream;
    :goto_0
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3c
    .line 366
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    #@3d
    .line 379
    .restart local v5    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "magic":I
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    #@40
    move-result v10

    #@41
    .line 380
    .local v10, "version":I
    packed-switch v10, :pswitch_data_0

    #@44
    .line 394
    new-instance v11, Ljava/net/ProtocolException;

    #@46
    new-instance v12, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v13, "unexpected version: "

    #@4e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v12

    #@52
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v12

    #@56
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v12

    #@5a
    invoke-direct {v11, v12}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v11
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5e
    .line 399
    .end local v8    # "magic":I
    .end local v10    # "version":I
    :catchall_0
    move-exception v11

    #@5f
    move-object v4, v5

    #@60
    .line 400
    .end local v5    # "in":Ljava/io/DataInputStream;
    :goto_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@63
    .line 399
    throw v11

    #@64
    .line 383
    .restart local v5    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "magic":I
    .restart local v10    # "version":I
    :pswitch_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    #@67
    move-result v9

    #@68
    .line 384
    .local v9, "size":I
    const/4 v2, 0x0

    #@69
    .local v2, "i":I
    :goto_3
    if-ge v2, v9, :cond_1

    #@6b
    .line 385
    new-instance v3, Lcom/android/server/net/NetworkIdentitySet;

    #@6d
    invoke-direct {v3, v5}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    #@70
    .line 386
    .local v3, "ident":Lcom/android/server/net/NetworkIdentitySet;
    new-instance v1, Landroid/net/NetworkStatsHistory;

    #@72
    invoke-direct {v1, v5}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    #@75
    .line 388
    .local v1, "history":Landroid/net/NetworkStatsHistory;
    new-instance v7, Lcom/android/server/net/NetworkStatsCollection$Key;

    #@77
    const/4 v11, -0x1

    #@78
    const/4 v12, -0x1

    #@79
    const/4 v13, 0x0

    #@7a
    invoke-direct {v7, v3, v11, v12, v13}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    #@7d
    .line 389
    .local v7, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    invoke-direct {p0, v7, v1}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@80
    .line 384
    add-int/lit8 v2, v2, 0x1

    #@82
    goto :goto_3

    #@83
    .line 400
    .end local v1    # "history":Landroid/net/NetworkStatsHistory;
    .end local v3    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v7    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_1
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@86
    move-object v4, v5

    #@87
    .end local v5    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    goto :goto_1

    #@88
    .line 399
    .end local v2    # "i":I
    .end local v8    # "magic":I
    .end local v9    # "size":I
    .end local v10    # "version":I
    .local v4, "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v11

    #@89
    goto :goto_2

    #@8a
    .line 397
    :catch_1
    move-exception v0

    #@8b
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    #@8c
    .line 380
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public readLegacyUid(Ljava/io/File;Z)V
    .locals 21
    .param p1, "file"    # Ljava/io/File;
    .param p2, "onlyTags"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 406
    new-instance v9, Landroid/util/AtomicFile;

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-direct {v9, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@7
    .line 408
    .local v9, "inputFile":Landroid/util/AtomicFile;
    const/4 v7, 0x0

    #@8
    .line 410
    .local v7, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v8, Ljava/io/DataInputStream;

    #@a
    new-instance v18, Ljava/io/BufferedInputStream;

    #@c
    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@f
    move-result-object v19

    #@10
    invoke-direct/range {v18 .. v19}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@13
    move-object/from16 v0, v18

    #@15
    invoke-direct {v8, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@18
    .line 413
    .end local v7    # "in":Ljava/io/DataInputStream;
    .local v8, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    #@1b
    move-result v12

    #@1c
    .line 414
    .local v12, "magic":I
    const v18, 0x414e4554

    #@1f
    move/from16 v0, v18

    #@21
    if-eq v12, v0, :cond_0

    #@23
    .line 415
    new-instance v18, Ljava/net/ProtocolException;

    #@25
    new-instance v19, Ljava/lang/StringBuilder;

    #@27
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v20, "unexpected magic: "

    #@2d
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v19

    #@31
    move-object/from16 v0, v19

    #@33
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v19

    #@37
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v19

    #@3b
    invoke-direct/range {v18 .. v19}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v18
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    .line 462
    .end local v12    # "magic":I
    :catch_0
    move-exception v2

    #@40
    .local v2, "e":Ljava/io/FileNotFoundException;
    move-object v7, v8

    #@41
    .line 465
    .end local v8    # "in":Ljava/io/DataInputStream;
    :goto_0
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@44
    .line 405
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    #@45
    .line 418
    .restart local v8    # "in":Ljava/io/DataInputStream;
    .restart local v12    # "magic":I
    :cond_0
    :try_start_2
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    #@48
    move-result v17

    #@49
    .line 419
    .local v17, "version":I
    packed-switch v17, :pswitch_data_0

    #@4c
    .line 459
    new-instance v18, Ljava/net/ProtocolException;

    #@4e
    new-instance v19, Ljava/lang/StringBuilder;

    #@50
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v20, "unexpected version: "

    #@56
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v19

    #@5a
    move-object/from16 v0, v19

    #@5c
    move/from16 v1, v17

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v19

    #@62
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v19

    #@66
    invoke-direct/range {v18 .. v19}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@69
    throw v18
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6a
    .line 464
    .end local v12    # "magic":I
    .end local v17    # "version":I
    :catchall_0
    move-exception v18

    #@6b
    move-object v7, v8

    #@6c
    .line 465
    .end local v8    # "in":Ljava/io/DataInputStream;
    :goto_2
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@6f
    .line 464
    throw v18

    #@70
    .line 437
    .restart local v8    # "in":Ljava/io/DataInputStream;
    .restart local v12    # "magic":I
    .restart local v17    # "version":I
    :pswitch_0
    :try_start_3
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    #@73
    move-result v6

    #@74
    .line 438
    .local v6, "identSize":I
    const/4 v4, 0x0

    #@75
    .local v4, "i":I
    :goto_3
    if-ge v4, v6, :cond_5

    #@77
    .line 439
    new-instance v5, Lcom/android/server/net/NetworkIdentitySet;

    #@79
    invoke-direct {v5, v8}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    #@7c
    .line 441
    .local v5, "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    #@7f
    move-result v14

    #@80
    .line 442
    .local v14, "size":I
    const/4 v10, 0x0

    #@81
    .local v10, "j":I
    :goto_4
    if-ge v10, v14, :cond_4

    #@83
    .line 443
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    #@86
    move-result v16

    #@87
    .line 444
    .local v16, "uid":I
    const/16 v18, 0x4

    #@89
    move/from16 v0, v17

    #@8b
    move/from16 v1, v18

    #@8d
    if-lt v0, v1, :cond_2

    #@8f
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    #@92
    move-result v13

    #@93
    .line 446
    .local v13, "set":I
    :goto_5
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    #@96
    move-result v15

    #@97
    .line 448
    .local v15, "tag":I
    new-instance v11, Lcom/android/server/net/NetworkStatsCollection$Key;

    #@99
    move/from16 v0, v16

    #@9b
    invoke-direct {v11, v5, v0, v13, v15}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    #@9e
    .line 449
    .local v11, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    new-instance v3, Landroid/net/NetworkStatsHistory;

    #@a0
    invoke-direct {v3, v8}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    #@a3
    .line 451
    .local v3, "history":Landroid/net/NetworkStatsHistory;
    if-nez v15, :cond_3

    #@a5
    const/16 v18, 0x1

    #@a7
    :goto_6
    move/from16 v0, v18

    #@a9
    move/from16 v1, p2

    #@ab
    if-eq v0, v1, :cond_1

    #@ad
    .line 452
    move-object/from16 v0, p0

    #@af
    invoke-direct {v0, v11, v3}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b2
    .line 442
    :cond_1
    add-int/lit8 v10, v10, 0x1

    #@b4
    goto :goto_4

    #@b5
    .line 445
    .end local v3    # "history":Landroid/net/NetworkStatsHistory;
    .end local v11    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v13    # "set":I
    .end local v15    # "tag":I
    :cond_2
    const/4 v13, 0x0

    #@b6
    .restart local v13    # "set":I
    goto :goto_5

    #@b7
    .line 451
    .restart local v3    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v11    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .restart local v15    # "tag":I
    :cond_3
    const/16 v18, 0x0

    #@b9
    goto :goto_6

    #@ba
    .line 438
    .end local v3    # "history":Landroid/net/NetworkStatsHistory;
    .end local v11    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v13    # "set":I
    .end local v15    # "tag":I
    .end local v16    # "uid":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@bc
    goto :goto_3

    #@bd
    .line 465
    .end local v4    # "i":I
    .end local v5    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v6    # "identSize":I
    .end local v10    # "j":I
    .end local v14    # "size":I
    :cond_5
    :pswitch_1
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@c0
    move-object v7, v8

    #@c1
    .end local v8    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    goto :goto_1

    #@c2
    .line 464
    .end local v12    # "magic":I
    .end local v17    # "version":I
    .local v7, "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v18

    #@c3
    goto :goto_2

    #@c4
    .line 462
    :catch_1
    move-exception v2

    #@c5
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_0

    #@c7
    .line 419
    nop

    #@c8
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public recordCollection(Lcom/android/server/net/NetworkStatsCollection;)V
    .locals 4
    .param p1, "another"    # Lcom/android/server/net/NetworkStatsCollection;

    #@0
    .prologue
    .line 265
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v3, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v3

    #@7
    if-ge v0, v3, :cond_0

    #@9
    .line 266
    iget-object v3, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    #@11
    .line 267
    .local v1, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v3, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroid/net/NetworkStatsHistory;

    #@19
    .line 268
    .local v2, "value":Landroid/net/NetworkStatsHistory;
    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    #@1c
    .line 265
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 264
    .end local v1    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v2    # "value":Landroid/net/NetworkStatsHistory;
    :cond_0
    return-void
.end method

.method public recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V
    .locals 13
    .param p1, "ident"    # Lcom/android/server/net/NetworkIdentitySet;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "start"    # J
    .param p7, "end"    # J
    .param p9, "entry"    # Landroid/net/NetworkStats$Entry;

    #@0
    .prologue
    .line 240
    invoke-direct/range {p0 .. p4}, Lcom/android/server/net/NetworkStatsCollection;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    #@3
    move-result-object v3

    #@4
    .local v3, "history":Landroid/net/NetworkStatsHistory;
    move-wide/from16 v4, p5

    #@6
    move-wide/from16 v6, p7

    #@8
    move-object/from16 v8, p9

    #@a
    .line 241
    invoke-virtual/range {v3 .. v8}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    #@d
    .line 242
    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getStart()J

    #@10
    move-result-wide v6

    #@11
    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getEnd()J

    #@14
    move-result-wide v8

    #@15
    move-object/from16 v0, p9

    #@17
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@19
    move-object/from16 v0, p9

    #@1b
    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@1d
    add-long/2addr v10, v4

    #@1e
    move-object v5, p0

    #@1f
    invoke-direct/range {v5 .. v11}, Lcom/android/server/net/NetworkStatsCollection;->noteRecordedHistory(JJJ)V

    #@22
    .line 239
    return-void
.end method

.method public removeUids([I)V
    .locals 8
    .param p1, "uids"    # [I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 475
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@4
    move-result-object v2

    #@5
    .line 476
    .local v2, "knownKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@a
    move-result-object v5

    #@b
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@e
    .line 479
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_2

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lcom/android/server/net/NetworkStatsCollection$Key;

    #@1e
    .line 480
    .local v0, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v5, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    #@20
    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_0

    #@26
    .line 482
    iget v5, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    #@28
    if-nez v5, :cond_1

    #@2a
    .line 483
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@2c
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v4

    #@30
    check-cast v4, Landroid/net/NetworkStatsHistory;

    #@32
    .line 485
    .local v4, "uidHistory":Landroid/net/NetworkStatsHistory;
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    #@34
    const/4 v6, -0x4

    #@35
    .line 484
    invoke-direct {p0, v5, v6, v7, v7}, Lcom/android/server/net/NetworkStatsCollection;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    #@38
    move-result-object v3

    #@39
    .line 486
    .local v3, "removedHistory":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v3, v4}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    #@3c
    .line 488
    .end local v3    # "removedHistory":Landroid/net/NetworkStatsHistory;
    .end local v4    # "uidHistory":Landroid/net/NetworkStatsHistory;
    :cond_1
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@3e
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    .line 489
    const/4 v5, 0x1

    #@42
    iput-boolean v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    #@44
    goto :goto_0

    #@45
    .line 474
    .end local v0    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    #@5
    .line 97
    const-wide v0, 0x7fffffffffffffffL

    #@a
    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    #@c
    .line 98
    const-wide/high16 v0, -0x8000000000000000L

    #@e
    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    #@10
    .line 99
    const-wide/16 v0, 0x0

    #@12
    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    #@14
    .line 100
    const/4 v0, 0x0

    #@15
    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    #@17
    .line 95
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 334
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@3
    move-result-object v6

    #@4
    .line 335
    .local v6, "keysByIdent":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;>;"
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@9
    move-result-object v7

    #@a
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v4

    #@e
    .local v4, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v7

    #@12
    if-eqz v7, :cond_1

    #@14
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Lcom/android/server/net/NetworkStatsCollection$Key;

    #@1a
    .line 336
    .local v3, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v7, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    #@1c
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v5

    #@20
    check-cast v5, Ljava/util/ArrayList;

    #@22
    .line 337
    .local v5, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    if-nez v5, :cond_0

    #@24
    .line 338
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@27
    move-result-object v5

    #@28
    .line 339
    iget-object v7, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    #@2a
    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 341
    :cond_0
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@30
    goto :goto_0

    #@31
    .line 344
    .end local v3    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v5    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    :cond_1
    const v7, 0x414e4554

    #@34
    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@37
    .line 345
    const/16 v7, 0x10

    #@39
    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@3c
    .line 347
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    #@3f
    move-result v7

    #@40
    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@43
    .line 348
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@46
    move-result-object v7

    #@47
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4a
    move-result-object v2

    #@4b
    .local v2, "ident$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@4e
    move-result v7

    #@4f
    if-eqz v7, :cond_3

    #@51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@54
    move-result-object v1

    #@55
    check-cast v1, Lcom/android/server/net/NetworkIdentitySet;

    #@57
    .line 349
    .local v1, "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    move-result-object v5

    #@5b
    check-cast v5, Ljava/util/ArrayList;

    #@5d
    .line 350
    .restart local v5    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkIdentitySet;->writeToStream(Ljava/io/DataOutputStream;)V

    #@60
    .line 352
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@63
    move-result v7

    #@64
    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@67
    .line 353
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6a
    move-result-object v4

    #@6b
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@6e
    move-result v7

    #@6f
    if-eqz v7, :cond_2

    #@71
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@74
    move-result-object v3

    #@75
    check-cast v3, Lcom/android/server/net/NetworkStatsCollection$Key;

    #@77
    .line 354
    .restart local v3    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    #@79
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7c
    move-result-object v0

    #@7d
    check-cast v0, Landroid/net/NetworkStatsHistory;

    #@7f
    .line 355
    .local v0, "history":Landroid/net/NetworkStatsHistory;
    iget v7, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    #@81
    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@84
    .line 356
    iget v7, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    #@86
    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@89
    .line 357
    iget v7, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    #@8b
    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@8e
    .line 358
    invoke-virtual {v0, p1}, Landroid/net/NetworkStatsHistory;->writeToStream(Ljava/io/DataOutputStream;)V

    #@91
    goto :goto_1

    #@92
    .line 362
    .end local v0    # "history":Landroid/net/NetworkStatsHistory;
    .end local v1    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v3    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v5    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    :cond_3
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    #@95
    .line 332
    return-void
.end method
