.class public Lcom/android/server/net/NetworkStatsRecorder;
.super Ljava/lang/Object;
.source "NetworkStatsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;,
        Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;
    }
.end annotation


# static fields
.field private static final DUMP_BEFORE_DELETE:Z = true

.field private static final LOGD:Z = false

.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkStatsRecorder"

.field private static final TAG_NETSTATS_DUMP:Ljava/lang/String; = "netstats_dump"


# instance fields
.field private final mBucketDuration:J

.field private mComplete:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/net/NetworkStatsCollection;",
            ">;"
        }
    .end annotation
.end field

.field private final mCookie:Ljava/lang/String;

.field private final mDropBox:Landroid/os/DropBoxManager;

.field private mLastSnapshot:Landroid/net/NetworkStats;

.field private final mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnlyTags:Z

.field private final mPending:Lcom/android/server/net/NetworkStatsCollection;

.field private final mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

.field private mPersistThresholdBytes:J

.field private final mRotator:Lcom/android/internal/util/FileRotator;

.field private final mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;


# direct methods
.method public constructor <init>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 81
    const-wide/32 v0, 0x200000

    #@7
    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    #@9
    .line 95
    iput-object v4, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@b
    .line 96
    iput-object v4, p0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    #@d
    .line 97
    iput-object v4, p0, Lcom/android/server/net/NetworkStatsRecorder;->mDropBox:Landroid/os/DropBoxManager;

    #@f
    .line 98
    iput-object v4, p0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    #@11
    .line 102
    const-wide v0, 0x7528ad000L

    #@16
    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    #@18
    .line 103
    const/4 v0, 0x0

    #@19
    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    #@1b
    .line 105
    iput-object v4, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@1d
    .line 106
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    #@1f
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    #@21
    invoke-direct {v0, v2, v3}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    #@24
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    #@26
    .line 108
    iput-object v4, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    #@28
    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V
    .locals 3
    .param p1, "rotator"    # Lcom/android/internal/util/FileRotator;
    .param p3, "dropBox"    # Landroid/os/DropBoxManager;
    .param p4, "cookie"    # Ljava/lang/String;
    .param p5, "bucketDuration"    # J
    .param p7, "onlyTags"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FileRotator;",
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/DropBoxManager;",
            "Ljava/lang/String;",
            "JZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 114
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    const-wide/32 v0, 0x200000

    #@6
    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    #@8
    .line 116
    const-string/jumbo v0, "missing FileRotator"

    #@b
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/util/FileRotator;

    #@11
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@13
    .line 117
    const-string/jumbo v0, "missing NonMonotonicObserver"

    #@16
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/net/NetworkStats$NonMonotonicObserver;

    #@1c
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    #@1e
    .line 118
    const-string/jumbo v0, "missing DropBoxManager"

    #@21
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/os/DropBoxManager;

    #@27
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mDropBox:Landroid/os/DropBoxManager;

    #@29
    .line 119
    iput-object p4, p0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    #@2b
    .line 121
    iput-wide p5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    #@2d
    .line 122
    iput-boolean p7, p0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    #@2f
    .line 124
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    #@31
    invoke-direct {v0, p5, p6}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    #@34
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@36
    .line 125
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    #@38
    invoke-direct {v0, p5, p6}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    #@3b
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    #@3d
    .line 127
    new-instance v0, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    #@3f
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@41
    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    #@44
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    #@46
    .line 115
    return-void
.end method

.method private loadLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;
    .locals 9
    .param p1, "start"    # J
    .param p3, "end"    # J

    #@0
    .prologue
    .line 185
    new-instance v1, Lcom/android/server/net/NetworkStatsCollection;

    #@2
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    #@4
    invoke-direct {v1, v2, v3}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    #@7
    .line 187
    .local v1, "res":Lcom/android/server/net/NetworkStatsCollection;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@9
    move-wide v2, p1

    #@a
    move-wide v4, p3

    #@b
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/FileRotator;->readMatching(Lcom/android/internal/util/FileRotator$Reader;JJ)V

    #@e
    .line 188
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@10
    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkStatsCollection;->recordCollection(Lcom/android/server/net/NetworkStatsCollection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 196
    :goto_0
    return-object v1

    #@14
    .line 192
    :catch_0
    move-exception v7

    #@15
    .line 193
    .local v7, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v0, "NetworkStatsRecorder"

    #@18
    const-string/jumbo v2, "problem completely reading network stats"

    #@1b
    invoke-static {v0, v2, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    .line 194
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    #@21
    goto :goto_0

    #@22
    .line 189
    .end local v7    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v6

    #@23
    .line 190
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "NetworkStatsRecorder"

    #@26
    const-string/jumbo v2, "problem completely reading network stats"

    #@29
    invoke-static {v0, v2, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    .line 191
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    #@2f
    goto :goto_0
.end method

.method private recoverFromWtf()V
    .locals 6

    #@0
    .prologue
    .line 479
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 481
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@7
    invoke-virtual {v2, v1}, Lcom/android/internal/util/FileRotator;->dumpAll(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 486
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@d
    .line 488
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mDropBox:Landroid/os/DropBoxManager;

    #@f
    const-string/jumbo v3, "netstats_dump"

    #@12
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@15
    move-result-object v4

    #@16
    const/4 v5, 0x0

    #@17
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DropBoxManager;->addData(Ljava/lang/String;[BI)V

    #@1a
    .line 491
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@1c
    invoke-virtual {v2}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    #@1f
    .line 477
    return-void

    #@20
    .line 482
    :catch_0
    move-exception v0

    #@21
    .line 484
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    .line 486
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@27
    goto :goto_0

    #@28
    .line 485
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@29
    .line 486
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@2c
    .line 485
    throw v2
.end method


# virtual methods
.method public dumpCheckin(Ljava/io/PrintWriter;JJ)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "start"    # J
    .param p4, "end"    # J

    #@0
    .prologue
    .line 470
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadPartialLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;

    #@3
    move-result-object v0

    #@4
    move-object v1, p1

    #@5
    move-wide v2, p2

    #@6
    move-wide v4, p4

    #@7
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    #@a
    .line 468
    return-void
.end method

.method public dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "fullHistory"    # Z

    #@0
    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 457
    const-string/jumbo v0, "Pending bytes: "

    #@7
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@a
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@c
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getTotalBytes()J

    #@f
    move-result-wide v0

    #@10
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    #@13
    .line 459
    :cond_0
    if-eqz p2, :cond_1

    #@15
    .line 460
    const-string/jumbo v0, "Complete history:"

    #@18
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1b
    .line 461
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@22
    .line 455
    :goto_0
    return-void

    #@23
    .line 463
    :cond_1
    const-string/jumbo v0, "History since boot:"

    #@26
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@29
    .line 464
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    #@2b
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@2e
    goto :goto_0
.end method

.method public forcePersistLocked(J)V
    .locals 5
    .param p1, "currentTimeMillis"    # J

    #@0
    .prologue
    .line 291
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@2
    const-string/jumbo v3, "missing FileRotator"

    #@5
    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 292
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@a
    invoke-virtual {v2}, Lcom/android/server/net/NetworkStatsCollection;->isDirty()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 295
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@12
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    #@14
    invoke-virtual {v2, v3, p1, p2}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    #@17
    .line 296
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@19
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    #@1c
    .line 297
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@1e
    invoke-virtual {v2}, Lcom/android/server/net/NetworkStatsCollection;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 290
    :cond_0
    :goto_0
    return-void

    #@22
    .line 301
    :catch_0
    move-exception v1

    #@23
    .line 302
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v2, "NetworkStatsRecorder"

    #@26
    const-string/jumbo v3, "problem persisting pending stats"

    #@29
    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    .line 303
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    #@2f
    goto :goto_0

    #@30
    .line 298
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    #@31
    .line 299
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "NetworkStatsRecorder"

    #@34
    const-string/jumbo v3, "problem persisting pending stats"

    #@37
    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    .line 300
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    #@3d
    goto :goto_0
.end method

.method public getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;
    .locals 6

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 165
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@3
    const-string/jumbo v2, "missing FileRotator"

    #@6
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 166
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    #@b
    if-eqz v1, :cond_0

    #@d
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    #@f
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/net/NetworkStatsCollection;

    #@15
    move-object v0, v1

    #@16
    .line 167
    .local v0, "res":Lcom/android/server/net/NetworkStatsCollection;
    :cond_0
    if-nez v0, :cond_1

    #@18
    .line 168
    const-wide/high16 v2, -0x8000000000000000L

    #@1a
    const-wide v4, 0x7fffffffffffffffL

    #@1f
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->loadLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;

    #@22
    move-result-object v0

    #@23
    .line 169
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@25
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@28
    iput-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    #@2a
    .line 171
    :cond_1
    return-object v0
.end method

.method public getOrLoadPartialLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;
    .locals 3
    .param p1, "start"    # J
    .param p3, "end"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 175
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@3
    const-string/jumbo v2, "missing FileRotator"

    #@6
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 176
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    #@b
    if-eqz v1, :cond_0

    #@d
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    #@f
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/net/NetworkStatsCollection;

    #@15
    move-object v0, v1

    #@16
    .line 177
    .local v0, "res":Lcom/android/server/net/NetworkStatsCollection;
    :cond_0
    if-nez v0, :cond_1

    #@18
    .line 178
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsRecorder;->loadLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;

    #@1b
    move-result-object v0

    #@1c
    .line 180
    :cond_1
    return-object v0
.end method

.method public getSinceBoot()Lcom/android/server/net/NetworkStatsCollection;
    .locals 1

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    #@2
    return-object v0
.end method

.method public getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;
    .locals 7
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    #@2
    const-wide/high16 v2, -0x8000000000000000L

    #@4
    const-wide v4, 0x7fffffffffffffffL

    #@9
    .line 151
    const/4 v6, 0x3

    #@a
    move-object v1, p1

    #@b
    .line 150
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJI)Landroid/net/NetworkStats;

    #@e
    move-result-object v0

    #@f
    .line 151
    const/4 v1, 0x0

    #@10
    .line 150
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public importLegacyNetworkLocked(Ljava/io/File;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 416
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@2
    const-string/jumbo v6, "missing FileRotator"

    #@5
    invoke-static {v1, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 419
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@a
    invoke-virtual {v1}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    #@d
    .line 421
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    #@f
    iget-wide v6, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    #@11
    invoke-direct {v0, v6, v7}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    #@14
    .line 422
    .local v0, "collection":Lcom/android/server/net/NetworkStatsCollection;
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->readLegacyNetwork(Ljava/io/File;)V

    #@17
    .line 424
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getStartMillis()J

    #@1a
    move-result-wide v4

    #@1b
    .line 425
    .local v4, "startMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getEndMillis()J

    #@1e
    move-result-wide v2

    #@1f
    .line 427
    .local v2, "endMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isEmpty()Z

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_0

    #@25
    .line 430
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@27
    new-instance v6, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    #@29
    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    #@2c
    invoke-virtual {v1, v6, v4, v5}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    #@2f
    .line 431
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@31
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    #@34
    .line 415
    :cond_0
    return-void
.end method

.method public importLegacyUidLocked(Ljava/io/File;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 436
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@2
    const-string/jumbo v6, "missing FileRotator"

    #@5
    invoke-static {v1, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 439
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@a
    invoke-virtual {v1}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    #@d
    .line 441
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    #@f
    iget-wide v6, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    #@11
    invoke-direct {v0, v6, v7}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    #@14
    .line 442
    .local v0, "collection":Lcom/android/server/net/NetworkStatsCollection;
    iget-boolean v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    #@16
    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/NetworkStatsCollection;->readLegacyUid(Ljava/io/File;Z)V

    #@19
    .line 444
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getStartMillis()J

    #@1c
    move-result-wide v4

    #@1d
    .line 445
    .local v4, "startMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getEndMillis()J

    #@20
    move-result-wide v2

    #@21
    .line 447
    .local v2, "endMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isEmpty()Z

    #@24
    move-result v1

    #@25
    if-nez v1, :cond_0

    #@27
    .line 450
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@29
    new-instance v6, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    #@2b
    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    #@2e
    invoke-virtual {v1, v6, v4, v5}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    #@31
    .line 451
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@33
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    #@36
    .line 435
    :cond_0
    return-void
.end method

.method public maybePersistLocked(J)V
    .locals 5
    .param p1, "currentTimeMillis"    # J

    #@0
    .prologue
    .line 278
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@2
    const-string/jumbo v3, "missing FileRotator"

    #@5
    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 279
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@a
    invoke-virtual {v2}, Lcom/android/server/net/NetworkStatsCollection;->getTotalBytes()J

    #@d
    move-result-wide v0

    #@e
    .line 280
    .local v0, "pendingBytes":J
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    #@10
    cmp-long v2, v0, v2

    #@12
    if-ltz v2, :cond_0

    #@14
    .line 281
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    #@17
    .line 277
    :goto_0
    return-void

    #@18
    .line 283
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@1a
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    #@1d
    goto :goto_0
.end method

.method public recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V
    .locals 20
    .param p1, "snapshot"    # Landroid/net/NetworkStats;
    .param p3, "vpnArray"    # [Lcom/android/internal/net/VpnInfo;
    .param p4, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;[",
            "Lcom/android/internal/net/VpnInfo;",
            "J)V"
        }
    .end annotation

    #@0
    .prologue
    .line 212
    .local p2, "ifaceIdent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    #@3
    move-result-object v18

    #@4
    .line 215
    .local v18, "unknownIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    #@6
    return-void

    #@7
    .line 218
    :cond_0
    move-object/from16 v0, p0

    #@9
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    #@b
    if-nez v3, :cond_1

    #@d
    .line 219
    move-object/from16 v0, p1

    #@f
    move-object/from16 v1, p0

    #@11
    iput-object v0, v1, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    #@13
    .line 220
    return-void

    #@14
    .line 223
    :cond_1
    move-object/from16 v0, p0

    #@16
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    #@18
    if-eqz v3, :cond_2

    #@1a
    move-object/from16 v0, p0

    #@1c
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    #@1e
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Lcom/android/server/net/NetworkStatsCollection;

    #@24
    .line 226
    :goto_0
    move-object/from16 v0, p0

    #@26
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    #@28
    move-object/from16 v0, p0

    #@2a
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    #@2c
    move-object/from16 v0, p0

    #@2e
    iget-object v6, v0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    #@30
    .line 225
    move-object/from16 v0, p1

    #@32
    invoke-static {v0, v3, v5, v6}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    #@35
    move-result-object v13

    #@36
    .line 227
    .local v13, "delta":Landroid/net/NetworkStats;
    move-wide/from16 v14, p4

    #@38
    .line 228
    .local v14, "end":J
    invoke-virtual {v13}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    #@3b
    move-result-wide v6

    #@3c
    sub-long v8, p4, v6

    #@3e
    .line 230
    .local v8, "start":J
    if-eqz p3, :cond_3

    #@40
    .line 231
    const/4 v3, 0x0

    #@41
    move-object/from16 v0, p3

    #@43
    array-length v5, v0

    #@44
    :goto_1
    if-ge v3, v5, :cond_3

    #@46
    aget-object v17, p3, v3

    #@48
    .line 232
    .local v17, "info":Lcom/android/internal/net/VpnInfo;
    move-object/from16 v0, v17

    #@4a
    iget v6, v0, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    #@4c
    move-object/from16 v0, v17

    #@4e
    iget-object v7, v0, Lcom/android/internal/net/VpnInfo;->vpnIface:Ljava/lang/String;

    #@50
    move-object/from16 v0, v17

    #@52
    iget-object v10, v0, Lcom/android/internal/net/VpnInfo;->primaryUnderlyingIface:Ljava/lang/String;

    #@54
    invoke-virtual {v13, v6, v7, v10}, Landroid/net/NetworkStats;->migrateTun(ILjava/lang/String;Ljava/lang/String;)Z

    #@57
    .line 231
    add-int/lit8 v3, v3, 0x1

    #@59
    goto :goto_1

    #@5a
    .line 223
    .end local v8    # "start":J
    .end local v13    # "delta":Landroid/net/NetworkStats;
    .end local v14    # "end":J
    .end local v17    # "info":Lcom/android/internal/net/VpnInfo;
    :cond_2
    const/4 v2, 0x0

    #@5b
    .local v2, "complete":Lcom/android/server/net/NetworkStatsCollection;
    goto :goto_0

    #@5c
    .line 236
    .end local v2    # "complete":Lcom/android/server/net/NetworkStatsCollection;
    .restart local v8    # "start":J
    .restart local v13    # "delta":Landroid/net/NetworkStats;
    .restart local v14    # "end":J
    :cond_3
    const/4 v12, 0x0

    #@5d
    .line 237
    .local v12, "entry":Landroid/net/NetworkStats$Entry;
    const/16 v16, 0x0

    #@5f
    .end local v12    # "entry":Landroid/net/NetworkStats$Entry;
    .local v16, "i":I
    :goto_2
    invoke-virtual {v13}, Landroid/net/NetworkStats;->size()I

    #@62
    move-result v3

    #@63
    move/from16 v0, v16

    #@65
    if-ge v0, v3, :cond_9

    #@67
    .line 238
    move/from16 v0, v16

    #@69
    invoke-virtual {v13, v0, v12}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@6c
    move-result-object v12

    #@6d
    .line 239
    .local v12, "entry":Landroid/net/NetworkStats$Entry;
    iget-object v3, v12, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@6f
    move-object/from16 v0, p2

    #@71
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@74
    move-result-object v4

    #@75
    check-cast v4, Lcom/android/server/net/NetworkIdentitySet;

    #@77
    .line 240
    .local v4, "ident":Lcom/android/server/net/NetworkIdentitySet;
    if-nez v4, :cond_5

    #@79
    .line 241
    iget-object v3, v12, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@7b
    move-object/from16 v0, v18

    #@7d
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@80
    .line 237
    :cond_4
    :goto_3
    add-int/lit8 v16, v16, 0x1

    #@82
    goto :goto_2

    #@83
    .line 246
    :cond_5
    invoke-virtual {v12}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    #@86
    move-result v3

    #@87
    if-nez v3, :cond_4

    #@89
    .line 249
    iget v3, v12, Landroid/net/NetworkStats$Entry;->tag:I

    #@8b
    if-nez v3, :cond_8

    #@8d
    const/4 v3, 0x1

    #@8e
    :goto_4
    move-object/from16 v0, p0

    #@90
    iget-boolean v5, v0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    #@92
    if-eq v3, v5, :cond_4

    #@94
    .line 250
    move-object/from16 v0, p0

    #@96
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@98
    if-eqz v3, :cond_6

    #@9a
    .line 251
    move-object/from16 v0, p0

    #@9c
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@9e
    iget v5, v12, Landroid/net/NetworkStats$Entry;->uid:I

    #@a0
    iget v6, v12, Landroid/net/NetworkStats$Entry;->set:I

    #@a2
    iget v7, v12, Landroid/net/NetworkStats$Entry;->tag:I

    #@a4
    move-wide/from16 v10, p4

    #@a6
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    #@a9
    .line 255
    :cond_6
    move-object/from16 v0, p0

    #@ab
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    #@ad
    if-eqz v3, :cond_7

    #@af
    .line 256
    move-object/from16 v0, p0

    #@b1
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    #@b3
    iget v5, v12, Landroid/net/NetworkStats$Entry;->uid:I

    #@b5
    iget v6, v12, Landroid/net/NetworkStats$Entry;->set:I

    #@b7
    iget v7, v12, Landroid/net/NetworkStats$Entry;->tag:I

    #@b9
    move-wide/from16 v10, p4

    #@bb
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    #@be
    .line 260
    :cond_7
    if-eqz v2, :cond_4

    #@c0
    .line 261
    iget v5, v12, Landroid/net/NetworkStats$Entry;->uid:I

    #@c2
    iget v6, v12, Landroid/net/NetworkStats$Entry;->set:I

    #@c4
    iget v7, v12, Landroid/net/NetworkStats$Entry;->tag:I

    #@c6
    move-object v3, v2

    #@c7
    move-wide/from16 v10, p4

    #@c9
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    #@cc
    goto :goto_3

    #@cd
    .line 249
    :cond_8
    const/4 v3, 0x0

    #@ce
    goto :goto_4

    #@cf
    .line 266
    .end local v4    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v12    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_9
    move-object/from16 v0, p1

    #@d1
    move-object/from16 v1, p0

    #@d3
    iput-object v0, v1, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    #@d5
    .line 211
    return-void
.end method

.method public removeUidsLocked([I)V
    .locals 8
    .param p1, "uids"    # [I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 313
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 316
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@7
    new-instance v4, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;

    #@9
    iget-wide v6, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    #@b
    invoke-direct {v4, v6, v7, p1}, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;-><init>(J[I)V

    #@e
    invoke-virtual {v3, v4}, Lcom/android/internal/util/FileRotator;->rewriteAll(Lcom/android/internal/util/FileRotator$Rewriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 327
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 328
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@17
    invoke-virtual {v3, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    #@1a
    .line 330
    :cond_1
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    #@1c
    if-eqz v3, :cond_2

    #@1e
    .line 331
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    #@20
    invoke-virtual {v3, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    #@23
    .line 335
    :cond_2
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    #@25
    if-eqz v3, :cond_3

    #@27
    .line 336
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    #@29
    invoke-virtual {v3, p1}, Landroid/net/NetworkStats;->withoutUids([I)Landroid/net/NetworkStats;

    #@2c
    move-result-object v3

    #@2d
    iput-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    #@2f
    .line 339
    :cond_3
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    #@31
    if-eqz v3, :cond_4

    #@33
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    #@35
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@38
    move-result-object v3

    #@39
    check-cast v3, Lcom/android/server/net/NetworkStatsCollection;

    #@3b
    move-object v0, v3

    #@3c
    .line 340
    .local v0, "complete":Lcom/android/server/net/NetworkStatsCollection;
    :cond_4
    if-eqz v0, :cond_5

    #@3e
    .line 341
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    #@41
    .line 312
    :cond_5
    return-void

    #@42
    .line 320
    .end local v0    # "complete":Lcom/android/server/net/NetworkStatsCollection;
    :catch_0
    move-exception v2

    #@43
    .line 321
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v3, "NetworkStatsRecorder"

    #@46
    new-instance v4, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v5, "problem removing UIDs "

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@55
    move-result-object v5

    #@56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@61
    .line 322
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    #@64
    goto :goto_0

    #@65
    .line 317
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    #@66
    .line 318
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "NetworkStatsRecorder"

    #@69
    new-instance v4, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v5, "problem removing UIDs "

    #@71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v4

    #@81
    invoke-static {v3, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@84
    .line 319
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    #@87
    goto :goto_0
.end method

.method public resetLocked()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 137
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    #@3
    .line 138
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 139
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@9
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    #@c
    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 142
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    #@12
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    #@15
    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 145
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    #@1b
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    #@1e
    .line 136
    :cond_2
    return-void
.end method

.method public setPersistThreshold(J)V
    .locals 7
    .param p1, "thresholdBytes"    # J

    #@0
    .prologue
    .line 133
    const-wide/16 v2, 0x400

    #@2
    const-wide/32 v4, 0x6400000

    #@5
    move-wide v0, p1

    #@6
    .line 132
    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    #@c
    .line 130
    return-void
.end method
