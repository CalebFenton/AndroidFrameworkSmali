.class final Lcom/android/server/job/JobPackageTracker$DataSet;
.super Ljava/lang/Object;
.source "JobPackageTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobPackageTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DataSet"
.end annotation


# instance fields
.field final mEntries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/JobPackageTracker$PackageEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field mMaxFgActive:I

.field mMaxTotalActive:I

.field final mStartClockTime:J

.field final mStartElapsedTime:J

.field final mStartUptimeTime:J

.field mSummedTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 103
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    #@a
    .line 118
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@d
    move-result-wide v0

    #@e
    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    #@10
    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@13
    move-result-wide v0

    #@14
    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    #@16
    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@19
    move-result-wide v0

    #@1a
    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    #@1c
    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V
    .locals 2
    .param p1, "otherTimes"    # Lcom/android/server/job/JobPackageTracker$DataSet;

    #@0
    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 103
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    #@a
    .line 112
    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    #@c
    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    #@e
    .line 113
    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    #@10
    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    #@12
    .line 114
    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    #@14
    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    #@16
    .line 111
    return-void
.end method

.method private getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 124
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/util/ArrayMap;

    #@8
    .line 125
    .local v1, "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    if-nez v1, :cond_0

    #@a
    .line 126
    new-instance v1, Landroid/util/ArrayMap;

    #@c
    .end local v1    # "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@f
    .line 127
    .restart local v1    # "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 129
    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    #@1a
    .line 130
    .local v0, "entry":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    if-nez v0, :cond_1

    #@1c
    .line 131
    new-instance v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    #@1e
    .end local v0    # "entry":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker$PackageEntry;-><init>()V

    #@21
    .line 132
    .restart local v0    # "entry":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 134
    :cond_1
    return-object v0
.end method


# virtual methods
.method addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V
    .locals 12
    .param p1, "out"    # Lcom/android/server/job/JobPackageTracker$DataSet;
    .param p2, "now"    # J

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    .line 236
    iget-wide v6, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    #@3
    invoke-virtual {p0, p2, p3}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    #@6
    move-result-wide v8

    #@7
    add-long/2addr v6, v8

    #@8
    iput-wide v6, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    #@a
    .line 237
    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@f
    move-result v5

    #@10
    add-int/lit8 v0, v5, -0x1

    #@12
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    #@14
    .line 238
    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    #@16
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@19
    move-result-object v4

    #@1a
    check-cast v4, Landroid/util/ArrayMap;

    #@1c
    .line 239
    .local v4, "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@1f
    move-result v5

    #@20
    add-int/lit8 v1, v5, -0x1

    #@22
    .local v1, "j":I
    :goto_1
    if-ltz v1, :cond_3

    #@24
    .line 240
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    check-cast v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    #@2a
    .line 241
    .local v3, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    #@2c
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@2f
    move-result v6

    #@30
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@33
    move-result-object v5

    #@34
    check-cast v5, Ljava/lang/String;

    #@36
    invoke-direct {p1, v6, v5}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    #@39
    move-result-object v2

    #@3a
    .line 242
    .local v2, "outPe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget-wide v6, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    #@3c
    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    #@3e
    add-long/2addr v6, v8

    #@3f
    iput-wide v6, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    #@41
    .line 243
    iget v5, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    #@43
    iget v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    #@45
    add-int/2addr v5, v6

    #@46
    iput v5, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    #@48
    .line 244
    iget-wide v6, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    #@4a
    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    #@4c
    add-long/2addr v6, v8

    #@4d
    iput-wide v6, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    #@4f
    .line 245
    iget v5, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    #@51
    iget v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    #@53
    add-int/2addr v5, v6

    #@54
    iput v5, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    #@56
    .line 246
    iget-wide v6, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    #@58
    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    #@5a
    add-long/2addr v6, v8

    #@5b
    iput-wide v6, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    #@5d
    .line 247
    iget v5, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    #@5f
    iget v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    #@61
    add-int/2addr v5, v6

    #@62
    iput v5, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    #@64
    .line 248
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    #@66
    if-lez v5, :cond_0

    #@68
    .line 249
    iget-wide v6, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    #@6a
    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    #@6c
    sub-long v8, p2, v8

    #@6e
    add-long/2addr v6, v8

    #@6f
    iput-wide v6, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    #@71
    .line 250
    iput-boolean v10, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActive:Z

    #@73
    .line 252
    :cond_0
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    #@75
    if-lez v5, :cond_1

    #@77
    .line 253
    iget-wide v6, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    #@79
    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    #@7b
    sub-long v8, p2, v8

    #@7d
    add-long/2addr v6, v8

    #@7e
    iput-wide v6, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    #@80
    .line 254
    iput-boolean v10, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActiveTop:Z

    #@82
    .line 256
    :cond_1
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    #@84
    if-lez v5, :cond_2

    #@86
    .line 257
    iget-wide v6, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    #@88
    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    #@8a
    sub-long v8, p2, v8

    #@8c
    add-long/2addr v6, v8

    #@8d
    iput-wide v6, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    #@8f
    .line 258
    iput-boolean v10, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadPending:Z

    #@91
    .line 239
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@93
    goto :goto_1

    #@94
    .line 237
    .end local v2    # "outPe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .end local v3    # "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@96
    goto/16 :goto_0

    #@98
    .line 262
    .end local v1    # "j":I
    .end local v4    # "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    :cond_4
    iget v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    #@9a
    iget v6, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    #@9c
    if-le v5, v6, :cond_5

    #@9e
    .line 263
    iget v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    #@a0
    iput v5, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    #@a2
    .line 265
    :cond_5
    iget v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    #@a4
    iget v6, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    #@a6
    if-le v5, v6, :cond_6

    #@a8
    .line 266
    iget v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    #@aa
    iput v5, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    #@ac
    .line 235
    :cond_6
    return-void
.end method

.method decActive(ILjava/lang/String;J)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "now"    # J

    #@0
    .prologue
    .line 179
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    #@3
    move-result-object v0

    #@4
    .line 180
    .local v0, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    #@6
    const/4 v2, 0x1

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 181
    iget-wide v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    #@b
    iget-wide v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    #@d
    sub-long v4, p3, v4

    #@f
    add-long/2addr v2, v4

    #@10
    iput-wide v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    #@12
    .line 183
    :cond_0
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    #@14
    add-int/lit8 v1, v1, -0x1

    #@16
    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    #@18
    .line 178
    return-void
.end method

.method decActiveTop(ILjava/lang/String;J)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "now"    # J

    #@0
    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    #@3
    move-result-object v0

    #@4
    .line 197
    .local v0, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    #@6
    const/4 v2, 0x1

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 198
    iget-wide v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    #@b
    iget-wide v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    #@d
    sub-long v4, p3, v4

    #@f
    add-long/2addr v2, v4

    #@10
    iput-wide v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    #@12
    .line 200
    :cond_0
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    #@14
    add-int/lit8 v1, v1, -0x1

    #@16
    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    #@18
    .line 195
    return-void
.end method

.method decPending(ILjava/lang/String;J)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "now"    # J

    #@0
    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    #@3
    move-result-object v0

    #@4
    .line 163
    .local v0, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    #@6
    const/4 v2, 0x1

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 164
    iget-wide v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    #@b
    iget-wide v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    #@d
    sub-long v4, p3, v4

    #@f
    add-long/2addr v2, v4

    #@10
    iput-wide v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    #@12
    .line 166
    :cond_0
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    #@14
    add-int/lit8 v1, v1, -0x1

    #@16
    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    #@18
    .line 161
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 20
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "now"    # J
    .param p6, "nowEllapsed"    # J
    .param p8, "filterUid"    # I

    #@0
    .prologue
    .line 290
    move-object/from16 v0, p0

    #@2
    move-wide/from16 v1, p4

    #@4
    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    #@7
    move-result-wide v6

    #@8
    .line 291
    .local v6, "period":J
    move-object/from16 v0, p1

    #@a
    move-object/from16 v1, p3

    #@c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    const-string/jumbo v4, " at "

    #@15
    move-object/from16 v0, p1

    #@17
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a
    .line 292
    const-string/jumbo v4, "yyyy-MM-dd-HH-mm-ss"

    #@1d
    move-object/from16 v0, p0

    #@1f
    iget-wide v8, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    #@21
    invoke-static {v4, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    #@24
    move-result-object v4

    #@25
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    move-object/from16 v0, p1

    #@2b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e
    .line 293
    const-string/jumbo v4, " ("

    #@31
    move-object/from16 v0, p1

    #@33
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36
    .line 294
    move-object/from16 v0, p0

    #@38
    iget-wide v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    #@3a
    move-wide/from16 v0, p6

    #@3c
    move-object/from16 v2, p1

    #@3e
    invoke-static {v4, v5, v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@41
    .line 295
    const-string/jumbo v4, ") over "

    #@44
    move-object/from16 v0, p1

    #@46
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49
    .line 296
    move-object/from16 v0, p1

    #@4b
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@4e
    .line 297
    const-string/jumbo v4, ":"

    #@51
    move-object/from16 v0, p1

    #@53
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@56
    .line 298
    move-object/from16 v0, p0

    #@58
    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    #@5a
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@5d
    move-result v12

    #@5e
    .line 299
    .local v12, "NE":I
    const/4 v14, 0x0

    #@5f
    .local v14, "i":I
    :goto_0
    if-ge v14, v12, :cond_8

    #@61
    .line 300
    move-object/from16 v0, p0

    #@63
    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    #@65
    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->keyAt(I)I

    #@68
    move-result v17

    #@69
    .line 301
    .local v17, "uid":I
    const/4 v4, -0x1

    #@6a
    move/from16 v0, p8

    #@6c
    if-eq v0, v4, :cond_1

    #@6e
    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getAppId(I)I

    #@71
    move-result v4

    #@72
    move/from16 v0, p8

    #@74
    if-eq v0, v4, :cond_1

    #@76
    .line 299
    :cond_0
    add-int/lit8 v14, v14, 0x1

    #@78
    goto :goto_0

    #@79
    .line 304
    :cond_1
    move-object/from16 v0, p0

    #@7b
    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    #@7d
    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@80
    move-result-object v18

    #@81
    check-cast v18, Landroid/util/ArrayMap;

    #@83
    .line 305
    .local v18, "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->size()I

    #@86
    move-result v13

    #@87
    .line 306
    .local v13, "NP":I
    const/4 v15, 0x0

    #@88
    .local v15, "j":I
    :goto_1
    if-ge v15, v13, :cond_0

    #@8a
    .line 307
    move-object/from16 v0, v18

    #@8c
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@8f
    move-result-object v16

    #@90
    check-cast v16, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    #@92
    .line 308
    .local v16, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    move-object/from16 v0, p1

    #@94
    move-object/from16 v1, p3

    #@96
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@99
    const-string/jumbo v4, "  "

    #@9c
    move-object/from16 v0, p1

    #@9e
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a1
    .line 309
    move-object/from16 v0, p1

    #@a3
    move/from16 v1, v17

    #@a5
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@a8
    .line 310
    const-string/jumbo v4, " / "

    #@ab
    move-object/from16 v0, p1

    #@ad
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b0
    move-object/from16 v0, v18

    #@b2
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@b5
    move-result-object v4

    #@b6
    check-cast v4, Ljava/lang/String;

    #@b8
    move-object/from16 v0, p1

    #@ba
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bd
    .line 311
    const-string/jumbo v4, ":"

    #@c0
    move-object/from16 v0, p1

    #@c2
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c5
    .line 312
    move-object/from16 v0, v16

    #@c7
    move-wide/from16 v1, p4

    #@c9
    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    #@cc
    move-result-wide v8

    #@cd
    move-object/from16 v0, v16

    #@cf
    iget v10, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    #@d1
    const-string/jumbo v11, "pending"

    #@d4
    move-object/from16 v4, p0

    #@d6
    move-object/from16 v5, p1

    #@d8
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(Ljava/io/PrintWriter;JJILjava/lang/String;)V

    #@db
    .line 313
    move-object/from16 v0, v16

    #@dd
    move-wide/from16 v1, p4

    #@df
    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    #@e2
    move-result-wide v8

    #@e3
    move-object/from16 v0, v16

    #@e5
    iget v10, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    #@e7
    const-string/jumbo v11, "active"

    #@ea
    move-object/from16 v4, p0

    #@ec
    move-object/from16 v5, p1

    #@ee
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(Ljava/io/PrintWriter;JJILjava/lang/String;)V

    #@f1
    .line 314
    move-object/from16 v0, v16

    #@f3
    move-wide/from16 v1, p4

    #@f5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTopTime(J)J

    #@f8
    move-result-wide v8

    #@f9
    move-object/from16 v0, v16

    #@fb
    iget v10, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    #@fd
    .line 315
    const-string/jumbo v11, "active-top"

    #@100
    move-object/from16 v4, p0

    #@102
    move-object/from16 v5, p1

    #@104
    .line 314
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(Ljava/io/PrintWriter;JJILjava/lang/String;)V

    #@107
    .line 316
    move-object/from16 v0, v16

    #@109
    iget v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    #@10b
    if-gtz v4, :cond_2

    #@10d
    move-object/from16 v0, v16

    #@10f
    iget-boolean v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadPending:Z

    #@111
    if-eqz v4, :cond_3

    #@113
    .line 317
    :cond_2
    const-string/jumbo v4, " (pending)"

    #@116
    move-object/from16 v0, p1

    #@118
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11b
    .line 319
    :cond_3
    move-object/from16 v0, v16

    #@11d
    iget v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    #@11f
    if-gtz v4, :cond_4

    #@121
    move-object/from16 v0, v16

    #@123
    iget-boolean v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActive:Z

    #@125
    if-eqz v4, :cond_5

    #@127
    .line 320
    :cond_4
    const-string/jumbo v4, " (active)"

    #@12a
    move-object/from16 v0, p1

    #@12c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12f
    .line 322
    :cond_5
    move-object/from16 v0, v16

    #@131
    iget v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    #@133
    if-gtz v4, :cond_6

    #@135
    move-object/from16 v0, v16

    #@137
    iget-boolean v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActiveTop:Z

    #@139
    if-eqz v4, :cond_7

    #@13b
    .line 323
    :cond_6
    const-string/jumbo v4, " (active-top)"

    #@13e
    move-object/from16 v0, p1

    #@140
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@143
    .line 325
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@146
    .line 306
    add-int/lit8 v15, v15, 0x1

    #@148
    goto/16 :goto_1

    #@14a
    .line 328
    .end local v13    # "NP":I
    .end local v15    # "j":I
    .end local v16    # "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .end local v17    # "uid":I
    .end local v18    # "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    :cond_8
    move-object/from16 v0, p1

    #@14c
    move-object/from16 v1, p3

    #@14e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@151
    const-string/jumbo v4, "  Max concurrency: "

    #@154
    move-object/from16 v0, p1

    #@156
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@159
    .line 329
    move-object/from16 v0, p0

    #@15b
    iget v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    #@15d
    move-object/from16 v0, p1

    #@15f
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@162
    const-string/jumbo v4, " total, "

    #@165
    move-object/from16 v0, p1

    #@167
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16a
    .line 330
    move-object/from16 v0, p0

    #@16c
    iget v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    #@16e
    move-object/from16 v0, p1

    #@170
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@173
    const-string/jumbo v4, " foreground"

    #@176
    move-object/from16 v0, p1

    #@178
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17b
    .line 289
    return-void
.end method

.method finish(Lcom/android/server/job/JobPackageTracker$DataSet;J)V
    .locals 12
    .param p1, "next"    # Lcom/android/server/job/JobPackageTracker$DataSet;
    .param p2, "now"    # J

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 204
    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v5

    #@7
    add-int/lit8 v0, v5, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    #@b
    .line 205
    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Landroid/util/ArrayMap;

    #@13
    .line 206
    .local v4, "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@16
    move-result v5

    #@17
    add-int/lit8 v1, v5, -0x1

    #@19
    .local v1, "j":I
    :goto_1
    if-ltz v1, :cond_5

    #@1b
    .line 207
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    #@21
    .line 208
    .local v3, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    #@23
    if-gtz v5, :cond_0

    #@25
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    #@27
    if-lez v5, :cond_4

    #@29
    .line 210
    :cond_0
    :goto_2
    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    #@2b
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@2e
    move-result v6

    #@2f
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@32
    move-result-object v5

    #@33
    check-cast v5, Ljava/lang/String;

    #@35
    invoke-direct {p1, v6, v5}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    #@38
    move-result-object v2

    #@39
    .line 211
    .local v2, "nextPe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iput-wide p2, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    #@3b
    .line 212
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    #@3d
    iput v5, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    #@3f
    .line 213
    iput-wide p2, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    #@41
    .line 214
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    #@43
    iput v5, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    #@45
    .line 215
    iput-wide p2, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    #@47
    .line 216
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    #@49
    iput v5, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    #@4b
    .line 218
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    #@4d
    if-lez v5, :cond_1

    #@4f
    .line 219
    iget-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    #@51
    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    #@53
    sub-long v8, p2, v8

    #@55
    add-long/2addr v6, v8

    #@56
    iput-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    #@58
    .line 220
    iput v10, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    #@5a
    .line 222
    :cond_1
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    #@5c
    if-lez v5, :cond_2

    #@5e
    .line 223
    iget-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    #@60
    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    #@62
    sub-long v8, p2, v8

    #@64
    add-long/2addr v6, v8

    #@65
    iput-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    #@67
    .line 224
    iput v10, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    #@69
    .line 226
    :cond_2
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    #@6b
    if-lez v5, :cond_3

    #@6d
    .line 227
    iget-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    #@6f
    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    #@71
    sub-long v8, p2, v8

    #@73
    add-long/2addr v6, v8

    #@74
    iput-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    #@76
    .line 228
    iput v10, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    #@78
    .line 206
    .end local v2    # "nextPe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    #@7a
    goto :goto_1

    #@7b
    .line 208
    :cond_4
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    #@7d
    if-lez v5, :cond_3

    #@7f
    goto :goto_2

    #@80
    .line 204
    .end local v3    # "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    :cond_5
    add-int/lit8 v0, v0, -0x1

    #@82
    goto :goto_0

    #@83
    .line 203
    .end local v1    # "j":I
    .end local v4    # "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    :cond_6
    return-void
.end method

.method public getEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 138
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/util/ArrayMap;

    #@9
    .line 139
    .local v0, "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    if-nez v0, :cond_0

    #@b
    .line 140
    return-object v2

    #@c
    .line 142
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    #@12
    return-object v1
.end method

.method getTotalTime(J)J
    .locals 5
    .param p1, "now"    # J

    #@0
    .prologue
    .line 146
    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-lez v0, :cond_0

    #@8
    .line 147
    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    #@a
    return-wide v0

    #@b
    .line 149
    :cond_0
    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    #@d
    sub-long v0, p1, v0

    #@f
    return-wide v0
.end method

.method incActive(ILjava/lang/String;J)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "now"    # J

    #@0
    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    #@3
    move-result-object v0

    #@4
    .line 171
    .local v0, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    #@6
    if-nez v1, :cond_0

    #@8
    .line 172
    iput-wide p3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    #@a
    .line 173
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    #@c
    add-int/lit8 v1, v1, 0x1

    #@e
    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    #@10
    .line 175
    :cond_0
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    #@12
    add-int/lit8 v1, v1, 0x1

    #@14
    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    #@16
    .line 169
    return-void
.end method

.method incActiveTop(ILjava/lang/String;J)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "now"    # J

    #@0
    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    #@3
    move-result-object v0

    #@4
    .line 188
    .local v0, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    #@6
    if-nez v1, :cond_0

    #@8
    .line 189
    iput-wide p3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    #@a
    .line 190
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    #@c
    add-int/lit8 v1, v1, 0x1

    #@e
    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    #@10
    .line 192
    :cond_0
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    #@12
    add-int/lit8 v1, v1, 0x1

    #@14
    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    #@16
    .line 186
    return-void
.end method

.method incPending(ILjava/lang/String;J)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "now"    # J

    #@0
    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    #@3
    move-result-object v0

    #@4
    .line 154
    .local v0, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    #@6
    if-nez v1, :cond_0

    #@8
    .line 155
    iput-wide p3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    #@a
    .line 156
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    #@c
    add-int/lit8 v1, v1, 0x1

    #@e
    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    #@10
    .line 158
    :cond_0
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    #@12
    add-int/lit8 v1, v1, 0x1

    #@14
    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    #@16
    .line 152
    return-void
.end method

.method printDuration(Ljava/io/PrintWriter;JJILjava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "period"    # J
    .param p4, "duration"    # J
    .param p6, "count"    # I
    .param p7, "suffix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 271
    long-to-float v2, p4

    #@1
    long-to-float v3, p2

    #@2
    div-float v0, v2, v3

    #@4
    .line 272
    .local v0, "fraction":F
    const/high16 v2, 0x42c80000    # 100.0f

    #@6
    mul-float/2addr v2, v0

    #@7
    const/high16 v3, 0x3f000000    # 0.5f

    #@9
    add-float/2addr v2, v3

    #@a
    float-to-int v1, v2

    #@b
    .line 273
    .local v1, "percent":I
    if-lez v1, :cond_1

    #@d
    .line 274
    const-string/jumbo v2, " "

    #@10
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13
    .line 275
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    #@16
    .line 276
    const-string/jumbo v2, "% "

    #@19
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c
    .line 277
    invoke-virtual {p1, p6}, Ljava/io/PrintWriter;->print(I)V

    #@1f
    .line 278
    const-string/jumbo v2, "x "

    #@22
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25
    .line 279
    invoke-virtual {p1, p7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28
    .line 270
    :cond_0
    :goto_0
    return-void

    #@29
    .line 280
    :cond_1
    if-lez p6, :cond_0

    #@2b
    .line 281
    const-string/jumbo v2, " "

    #@2e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    .line 282
    invoke-virtual {p1, p6}, Ljava/io/PrintWriter;->print(I)V

    #@34
    .line 283
    const-string/jumbo v2, "x "

    #@37
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a
    .line 284
    invoke-virtual {p1, p7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d
    goto :goto_0
.end method
