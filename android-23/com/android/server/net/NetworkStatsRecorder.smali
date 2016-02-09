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
    .line 89
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    const-wide/32 v0, 0x200000

    #@6
    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    #@8
    .line 91
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
    .line 92
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
    .line 93
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
    .line 94
    iput-object p4, p0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    #@2b
    .line 96
    iput-wide p5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    #@2d
    .line 97
    iput-boolean p7, p0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    #@2f
    .line 99
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    #@31
    invoke-direct {v0, p5, p6}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    #@34
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@36
    .line 100
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    #@38
    invoke-direct {v0, p5, p6}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    #@3b
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    #@3d
    .line 102
    new-instance v0, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    #@3f
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@41
    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    #@44
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    #@46
    .line 90
    return-void
.end method

.method private loadLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;
    .locals 9
    .param p1, "start"    # J
    .param p3, "end"    # J

    #@0
    .prologue
    .line 147
    new-instance v1, Lcom/android/server/net/NetworkStatsCollection;

    #@2
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    #@4
    invoke-direct {v1, v2, v3}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    #@7
    .line 149
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
    .line 150
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@10
    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkStatsCollection;->recordCollection(Lcom/android/server/net/NetworkStatsCollection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 158
    :goto_0
    return-object v1

    #@14
    .line 154
    :catch_0
    move-exception v7

    #@15
    .line 155
    .local v7, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v0, "NetworkStatsRecorder"

    #@18
    const-string/jumbo v2, "problem completely reading network stats"

    #@1b
    invoke-static {v0, v2, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    .line 156
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    #@21
    goto :goto_0

    #@22
    .line 151
    .end local v7    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v6

    #@23
    .line 152
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "NetworkStatsRecorder"

    #@26
    const-string/jumbo v2, "problem completely reading network stats"

    #@29
    invoke-static {v0, v2, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    .line 153
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    #@2f
    goto :goto_0
.end method

.method private recoverFromWtf()V
    .locals 6

    #@0
    .prologue
    .line 420
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 422
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@7
    invoke-virtual {v2, v1}, Lcom/android/internal/util/FileRotator;->dumpAll(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 427
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@d
    .line 429
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
    .line 432
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@1c
    invoke-virtual {v2}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    #@1f
    .line 418
    return-void

    #@20
    .line 423
    :catch_0
    move-exception v0

    #@21
    .line 425
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    .line 427
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@27
    goto :goto_0

    #@28
    .line 426
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@29
    .line 427
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@2c
    .line 426
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
    .line 411
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
    .line 409
    return-void
.end method

.method public dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "fullHistory"    # Z

    #@0
    .prologue
    .line 399
    const-string/jumbo v0, "Pending bytes: "

    #@3
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@6
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@8
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getTotalBytes()J

    #@b
    move-result-wide v0

    #@c
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    #@f
    .line 400
    if-eqz p2, :cond_0

    #@11
    .line 401
    const-string/jumbo v0, "Complete history:"

    #@14
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 402
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@1e
    .line 398
    :goto_0
    return-void

    #@1f
    .line 404
    :cond_0
    const-string/jumbo v0, "History since boot:"

    #@22
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@25
    .line 405
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    #@27
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@2a
    goto :goto_0
.end method

.method public forcePersistLocked(J)V
    .locals 5
    .param p1, "currentTimeMillis"    # J

    #@0
    .prologue
    .line 245
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@2
    invoke-virtual {v2}, Lcom/android/server/net/NetworkStatsCollection;->isDirty()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 248
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@a
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    #@c
    invoke-virtual {v2, v3, p1, p2}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    #@f
    .line 249
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@11
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    #@14
    .line 250
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@16
    invoke-virtual {v2}, Lcom/android/server/net/NetworkStatsCollection;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 244
    :cond_0
    :goto_0
    return-void

    #@1a
    .line 254
    :catch_0
    move-exception v1

    #@1b
    .line 255
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v2, "NetworkStatsRecorder"

    #@1e
    const-string/jumbo v3, "problem persisting pending stats"

    #@21
    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    .line 256
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    #@27
    goto :goto_0

    #@28
    .line 251
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    #@29
    .line 252
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "NetworkStatsRecorder"

    #@2c
    const-string/jumbo v3, "problem persisting pending stats"

    #@2f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@32
    .line 253
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    #@35
    goto :goto_0
.end method

.method public getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;
    .locals 6

    #@0
    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v1, :cond_1

    #@4
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    #@6
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/net/NetworkStatsCollection;

    #@c
    .line 130
    :goto_0
    if-nez v0, :cond_0

    #@e
    .line 131
    const-wide/high16 v2, -0x8000000000000000L

    #@10
    const-wide v4, 0x7fffffffffffffffL

    #@15
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->loadLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;

    #@18
    move-result-object v0

    #@19
    .line 132
    .local v0, "res":Lcom/android/server/net/NetworkStatsCollection;
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@1b
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@1e
    iput-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    #@20
    .line 134
    .end local v0    # "res":Lcom/android/server/net/NetworkStatsCollection;
    :cond_0
    return-object v0

    #@21
    .line 129
    :cond_1
    const/4 v0, 0x0

    #@22
    .local v0, "res":Lcom/android/server/net/NetworkStatsCollection;
    goto :goto_0
.end method

.method public getOrLoadPartialLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;
    .locals 3
    .param p1, "start"    # J
    .param p3, "end"    # J

    #@0
    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v1, :cond_1

    #@4
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    #@6
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/net/NetworkStatsCollection;

    #@c
    .line 139
    :goto_0
    if-nez v0, :cond_0

    #@e
    .line 140
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsRecorder;->loadLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;

    #@11
    move-result-object v0

    #@12
    .line 142
    :cond_0
    return-object v0

    #@13
    .line 138
    :cond_1
    const/4 v0, 0x0

    #@14
    .local v0, "res":Lcom/android/server/net/NetworkStatsCollection;
    goto :goto_0
.end method

.method public getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    #@2
    const-wide/high16 v2, -0x8000000000000000L

    #@4
    const-wide v4, 0x7fffffffffffffffL

    #@9
    move-object v1, p1

    #@a
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    #@d
    move-result-object v0

    #@e
    const/4 v1, 0x0

    #@f
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@12
    move-result-object v0

    #@13
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
    .line 364
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    #@5
    .line 366
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    #@7
    iget-wide v6, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    #@9
    invoke-direct {v0, v6, v7}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    #@c
    .line 367
    .local v0, "collection":Lcom/android/server/net/NetworkStatsCollection;
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->readLegacyNetwork(Ljava/io/File;)V

    #@f
    .line 369
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getStartMillis()J

    #@12
    move-result-wide v4

    #@13
    .line 370
    .local v4, "startMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getEndMillis()J

    #@16
    move-result-wide v2

    #@17
    .line 372
    .local v2, "endMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isEmpty()Z

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_0

    #@1d
    .line 375
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@1f
    new-instance v6, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    #@21
    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    #@24
    invoke-virtual {v1, v6, v4, v5}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    #@27
    .line 376
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@29
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    #@2c
    .line 362
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
    .line 382
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    #@5
    .line 384
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    #@7
    iget-wide v6, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    #@9
    invoke-direct {v0, v6, v7}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    #@c
    .line 385
    .local v0, "collection":Lcom/android/server/net/NetworkStatsCollection;
    iget-boolean v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    #@e
    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/NetworkStatsCollection;->readLegacyUid(Ljava/io/File;Z)V

    #@11
    .line 387
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getStartMillis()J

    #@14
    move-result-wide v4

    #@15
    .line 388
    .local v4, "startMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getEndMillis()J

    #@18
    move-result-wide v2

    #@19
    .line 390
    .local v2, "endMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isEmpty()Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_0

    #@1f
    .line 393
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@21
    new-instance v6, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    #@23
    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    #@26
    invoke-virtual {v1, v6, v4, v5}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    #@29
    .line 394
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@2b
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    #@2e
    .line 380
    :cond_0
    return-void
.end method

.method public maybePersistLocked(J)V
    .locals 5
    .param p1, "currentTimeMillis"    # J

    #@0
    .prologue
    .line 233
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@2
    invoke-virtual {v2}, Lcom/android/server/net/NetworkStatsCollection;->getTotalBytes()J

    #@5
    move-result-wide v0

    #@6
    .line 234
    .local v0, "pendingBytes":J
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    #@8
    cmp-long v2, v0, v2

    #@a
    if-ltz v2, :cond_0

    #@c
    .line 235
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    #@f
    .line 232
    :goto_0
    return-void

    #@10
    .line 237
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@12
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    #@15
    goto :goto_0
.end method

.method public recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V
    .locals 18
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
    .line 169
    .local p2, "ifaceIdent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    #@3
    move-result-object v16

    #@4
    .line 172
    .local v16, "unknownIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    #@6
    return-void

    #@7
    .line 175
    :cond_0
    move-object/from16 v0, p0

    #@9
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    #@b
    if-nez v3, :cond_1

    #@d
    .line 176
    move-object/from16 v0, p1

    #@f
    move-object/from16 v1, p0

    #@11
    iput-object v0, v1, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    #@13
    .line 177
    return-void

    #@14
    .line 180
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
    .line 183
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
    .line 182
    move-object/from16 v0, p1

    #@32
    invoke-static {v0, v3, v5, v6}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    #@35
    move-result-object v13

    #@36
    .line 184
    .local v13, "delta":Landroid/net/NetworkStats;
    move-wide/from16 v10, p4

    #@38
    .line 185
    .local v10, "end":J
    invoke-virtual {v13}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    #@3b
    move-result-wide v6

    #@3c
    sub-long v8, v10, v6

    #@3e
    .line 187
    .local v8, "start":J
    if-eqz p3, :cond_3

    #@40
    .line 188
    const/4 v3, 0x0

    #@41
    move-object/from16 v0, p3

    #@43
    array-length v5, v0

    #@44
    :goto_1
    if-ge v3, v5, :cond_3

    #@46
    aget-object v15, p3, v3

    #@48
    .line 189
    .local v15, "info":Lcom/android/internal/net/VpnInfo;
    iget v6, v15, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    #@4a
    iget-object v7, v15, Lcom/android/internal/net/VpnInfo;->vpnIface:Ljava/lang/String;

    #@4c
    iget-object v0, v15, Lcom/android/internal/net/VpnInfo;->primaryUnderlyingIface:Ljava/lang/String;

    #@4e
    move-object/from16 v17, v0

    #@50
    move-object/from16 v0, v17

    #@52
    invoke-virtual {v13, v6, v7, v0}, Landroid/net/NetworkStats;->migrateTun(ILjava/lang/String;Ljava/lang/String;)Z

    #@55
    .line 188
    add-int/lit8 v3, v3, 0x1

    #@57
    goto :goto_1

    #@58
    .line 180
    .end local v8    # "start":J
    .end local v10    # "end":J
    .end local v13    # "delta":Landroid/net/NetworkStats;
    .end local v15    # "info":Lcom/android/internal/net/VpnInfo;
    :cond_2
    const/4 v2, 0x0

    #@59
    .local v2, "complete":Lcom/android/server/net/NetworkStatsCollection;
    goto :goto_0

    #@5a
    .line 193
    .end local v2    # "complete":Lcom/android/server/net/NetworkStatsCollection;
    .restart local v8    # "start":J
    .restart local v10    # "end":J
    .restart local v13    # "delta":Landroid/net/NetworkStats;
    :cond_3
    const/4 v12, 0x0

    #@5b
    .line 194
    .local v12, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v14, 0x0

    #@5c
    .end local v12    # "entry":Landroid/net/NetworkStats$Entry;
    .local v14, "i":I
    :goto_2
    invoke-virtual {v13}, Landroid/net/NetworkStats;->size()I

    #@5f
    move-result v3

    #@60
    if-ge v14, v3, :cond_8

    #@62
    .line 195
    invoke-virtual {v13, v14, v12}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@65
    move-result-object v12

    #@66
    .line 196
    .local v12, "entry":Landroid/net/NetworkStats$Entry;
    iget-object v3, v12, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@68
    move-object/from16 v0, p2

    #@6a
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6d
    move-result-object v4

    #@6e
    check-cast v4, Lcom/android/server/net/NetworkIdentitySet;

    #@70
    .line 197
    .local v4, "ident":Lcom/android/server/net/NetworkIdentitySet;
    if-nez v4, :cond_5

    #@72
    .line 198
    iget-object v3, v12, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@74
    move-object/from16 v0, v16

    #@76
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@79
    .line 194
    :cond_4
    :goto_3
    add-int/lit8 v14, v14, 0x1

    #@7b
    goto :goto_2

    #@7c
    .line 203
    :cond_5
    invoke-virtual {v12}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    #@7f
    move-result v3

    #@80
    if-nez v3, :cond_4

    #@82
    .line 206
    iget v3, v12, Landroid/net/NetworkStats$Entry;->tag:I

    #@84
    if-nez v3, :cond_7

    #@86
    const/4 v3, 0x1

    #@87
    :goto_4
    move-object/from16 v0, p0

    #@89
    iget-boolean v5, v0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    #@8b
    if-eq v3, v5, :cond_4

    #@8d
    .line 207
    move-object/from16 v0, p0

    #@8f
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@91
    iget v5, v12, Landroid/net/NetworkStats$Entry;->uid:I

    #@93
    iget v6, v12, Landroid/net/NetworkStats$Entry;->set:I

    #@95
    iget v7, v12, Landroid/net/NetworkStats$Entry;->tag:I

    #@97
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    #@9a
    .line 210
    move-object/from16 v0, p0

    #@9c
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    #@9e
    if-eqz v3, :cond_6

    #@a0
    .line 211
    move-object/from16 v0, p0

    #@a2
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    #@a4
    iget v5, v12, Landroid/net/NetworkStats$Entry;->uid:I

    #@a6
    iget v6, v12, Landroid/net/NetworkStats$Entry;->set:I

    #@a8
    iget v7, v12, Landroid/net/NetworkStats$Entry;->tag:I

    #@aa
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    #@ad
    .line 215
    :cond_6
    if-eqz v2, :cond_4

    #@af
    .line 216
    iget v5, v12, Landroid/net/NetworkStats$Entry;->uid:I

    #@b1
    iget v6, v12, Landroid/net/NetworkStats$Entry;->set:I

    #@b3
    iget v7, v12, Landroid/net/NetworkStats$Entry;->tag:I

    #@b5
    move-object v3, v2

    #@b6
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    #@b9
    goto :goto_3

    #@ba
    .line 206
    :cond_7
    const/4 v3, 0x0

    #@bb
    goto :goto_4

    #@bc
    .line 221
    .end local v4    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v12    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_8
    move-object/from16 v0, p1

    #@be
    move-object/from16 v1, p0

    #@c0
    iput-object v0, v1, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    #@c2
    .line 168
    return-void
.end method

.method public removeUidsLocked([I)V
    .locals 8
    .param p1, "uids"    # [I

    #@0
    .prologue
    .line 268
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    #@2
    new-instance v4, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;

    #@4
    iget-wide v6, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    #@6
    invoke-direct {v4, v6, v7, p1}, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;-><init>(J[I)V

    #@9
    invoke-virtual {v3, v4}, Lcom/android/internal/util/FileRotator;->rewriteAll(Lcom/android/internal/util/FileRotator$Rewriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 278
    :goto_0
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@e
    invoke-virtual {v3, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    #@11
    .line 279
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    #@13
    invoke-virtual {v3, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    #@16
    .line 282
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 283
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    #@1c
    invoke-virtual {v3, p1}, Landroid/net/NetworkStats;->withoutUids([I)Landroid/net/NetworkStats;

    #@1f
    move-result-object v3

    #@20
    iput-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    #@22
    .line 286
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    #@24
    if-eqz v3, :cond_2

    #@26
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    #@28
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Lcom/android/server/net/NetworkStatsCollection;

    #@2e
    .line 287
    :goto_1
    if-eqz v0, :cond_1

    #@30
    .line 288
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    #@33
    .line 265
    :cond_1
    return-void

    #@34
    .line 272
    :catch_0
    move-exception v2

    #@35
    .line 273
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v3, "NetworkStatsRecorder"

    #@38
    new-instance v4, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v5, "problem removing UIDs "

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@53
    .line 274
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    #@56
    goto :goto_0

    #@57
    .line 269
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    #@58
    .line 270
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "NetworkStatsRecorder"

    #@5b
    new-instance v4, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v5, "problem removing UIDs "

    #@63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v4

    #@73
    invoke-static {v3, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@76
    .line 271
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    #@79
    goto :goto_0

    #@7a
    .line 286
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    const/4 v0, 0x0

    #@7b
    .local v0, "complete":Lcom/android/server/net/NetworkStatsCollection;
    goto :goto_1
.end method

.method public resetLocked()V
    .locals 1

    #@0
    .prologue
    .line 112
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    #@3
    .line 113
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    #@5
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    #@8
    .line 114
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    #@a
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    #@d
    .line 115
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    #@f
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    #@12
    .line 111
    return-void
.end method

.method public setPersistThreshold(J)V
    .locals 7
    .param p1, "thresholdBytes"    # J

    #@0
    .prologue
    .line 108
    const-wide/16 v2, 0x400

    #@2
    const-wide/32 v4, 0x6400000

    #@5
    move-wide v0, p1

    #@6
    .line 107
    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    #@c
    .line 105
    return-void
.end method
