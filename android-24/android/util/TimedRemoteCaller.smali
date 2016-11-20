.class public abstract Landroid/util/TimedRemoteCaller;
.super Ljava/lang/Object;
.source "TimedRemoteCaller.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CALL_TIMEOUT_MILLIS:J = 0x1388L

.field private static final UNDEFINED_SEQUENCE:I = -0x1


# instance fields
.field private mAwaitedSequence:I

.field private final mCallTimeoutMillis:J

.field private final mLock:Ljava/lang/Object;

.field private mReceivedSequence:I

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mSequenceCounter:I


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "callTimeoutMillis"    # J

    #@0
    .prologue
    .local p0, "this":Landroid/util/TimedRemoteCaller;, "Landroid/util/TimedRemoteCaller<TT;>;"
    const/4 v1, -0x1

    #@1
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 71
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    #@b
    .line 77
    iput v1, p0, Landroid/util/TimedRemoteCaller;->mReceivedSequence:I

    #@d
    .line 79
    iput v1, p0, Landroid/util/TimedRemoteCaller;->mAwaitedSequence:I

    #@f
    .line 84
    iput-wide p1, p0, Landroid/util/TimedRemoteCaller;->mCallTimeoutMillis:J

    #@11
    .line 83
    return-void
.end method

.method private waitForResultTimedLocked(I)Z
    .locals 10
    .param p1, "sequence"    # I

    #@0
    .prologue
    .line 117
    .local p0, "this":Landroid/util/TimedRemoteCaller;, "Landroid/util/TimedRemoteCaller<TT;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v4

    #@4
    .line 120
    .local v4, "startMillis":J
    :goto_0
    :try_start_0
    iget v3, p0, Landroid/util/TimedRemoteCaller;->mReceivedSequence:I

    #@6
    if-ne v3, p1, :cond_0

    #@8
    .line 121
    const/4 v3, 0x1

    #@9
    return v3

    #@a
    .line 123
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@d
    move-result-wide v8

    #@e
    sub-long v0, v8, v4

    #@10
    .line 124
    .local v0, "elapsedMillis":J
    iget-wide v8, p0, Landroid/util/TimedRemoteCaller;->mCallTimeoutMillis:J

    #@12
    sub-long v6, v8, v0

    #@14
    .line 125
    .local v6, "waitMillis":J
    const-wide/16 v8, 0x0

    #@16
    cmp-long v3, v6, v8

    #@18
    if-gtz v3, :cond_1

    #@1a
    .line 126
    const/4 v3, 0x0

    #@1b
    return v3

    #@1c
    .line 128
    :cond_1
    iget-object v3, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    #@1e
    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    goto :goto_0

    #@22
    .line 129
    .end local v0    # "elapsedMillis":J
    .end local v6    # "waitMillis":J
    :catch_0
    move-exception v2

    #@23
    .local v2, "ie":Ljava/lang/InterruptedException;
    goto :goto_0
.end method


# virtual methods
.method public final getResultTimed(I)Ljava/lang/Object;
    .locals 6
    .param p1, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    .local p0, "this":Landroid/util/TimedRemoteCaller;, "Landroid/util/TimedRemoteCaller<TT;>;"
    iget-object v3, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 96
    :try_start_0
    invoke-direct {p0, p1}, Landroid/util/TimedRemoteCaller;->waitForResultTimedLocked(I)Z

    #@6
    move-result v1

    #@7
    .line 97
    .local v1, "success":Z
    if-nez v1, :cond_0

    #@9
    .line 98
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    #@b
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "No reponse for sequence: "

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-direct {v2, v4}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 95
    .end local v1    # "success":Z
    :catchall_0
    move-exception v2

    #@24
    monitor-exit v3

    #@25
    throw v2

    #@26
    .line 100
    .restart local v1    # "success":Z
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/util/TimedRemoteCaller;->mResult:Ljava/lang/Object;

    #@28
    .line 101
    .local v0, "result":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    #@29
    iput-object v2, p0, Landroid/util/TimedRemoteCaller;->mResult:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    monitor-exit v3

    #@2c
    .line 102
    return-object v0
.end method

.method public final onBeforeRemoteCall()I
    .locals 3

    #@0
    .prologue
    .line 88
    .local p0, "this":Landroid/util/TimedRemoteCaller;, "Landroid/util/TimedRemoteCaller<TT;>;"
    iget-object v1, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 89
    :try_start_0
    iget v0, p0, Landroid/util/TimedRemoteCaller;->mSequenceCounter:I

    #@5
    add-int/lit8 v2, v0, 0x1

    #@7
    iput v2, p0, Landroid/util/TimedRemoteCaller;->mSequenceCounter:I

    #@9
    iput v0, p0, Landroid/util/TimedRemoteCaller;->mAwaitedSequence:I

    #@b
    .line 90
    iget v0, p0, Landroid/util/TimedRemoteCaller;->mAwaitedSequence:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 88
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public final onRemoteMethodResult(Ljava/lang/Object;I)V
    .locals 2
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 107
    .local p0, "this":Landroid/util/TimedRemoteCaller;, "Landroid/util/TimedRemoteCaller<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 108
    :try_start_0
    iget v0, p0, Landroid/util/TimedRemoteCaller;->mAwaitedSequence:I

    #@5
    if-ne p2, v0, :cond_0

    #@7
    .line 109
    iput p2, p0, Landroid/util/TimedRemoteCaller;->mReceivedSequence:I

    #@9
    .line 110
    iput-object p1, p0, Landroid/util/TimedRemoteCaller;->mResult:Ljava/lang/Object;

    #@b
    .line 111
    iget-object v0, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    #@d
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 106
    return-void

    #@12
    .line 107
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method
