.class public Ljava/util/concurrent/CountDownLatch;
.super Ljava/lang/Object;
.source "CountDownLatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/CountDownLatch$Sync;
    }
.end annotation


# instance fields
.field private final sync:Ljava/util/concurrent/CountDownLatch$Sync;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "count"    # I

    #@0
    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 171
    if-gez p1, :cond_0

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "count < 0"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 172
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch$Sync;

    #@10
    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch$Sync;-><init>(I)V

    #@13
    iput-object v0, p0, Ljava/util/concurrent/CountDownLatch;->sync:Ljava/util/concurrent/CountDownLatch$Sync;

    #@15
    .line 170
    return-void
.end method


# virtual methods
.method public await()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Ljava/util/concurrent/CountDownLatch;->sync:Ljava/util/concurrent/CountDownLatch$Sync;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CountDownLatch$Sync;->acquireSharedInterruptibly(I)V

    #@6
    .line 202
    return-void
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Ljava/util/concurrent/CountDownLatch;->sync:Ljava/util/concurrent/CountDownLatch$Sync;

    #@2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@5
    move-result-wide v2

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch$Sync;->tryAcquireSharedNanos(IJ)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public countDown()V
    .locals 2

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Ljava/util/concurrent/CountDownLatch;->sync:Ljava/util/concurrent/CountDownLatch$Sync;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CountDownLatch$Sync;->releaseShared(I)Z

    #@6
    .line 262
    return-void
.end method

.method public getCount()J
    .locals 2

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Ljava/util/concurrent/CountDownLatch;->sync:Ljava/util/concurrent/CountDownLatch$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch$Sync;->getCount()I

    #@5
    move-result v0

    #@6
    int-to-long v0, v0

    #@7
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "[Count = "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Ljava/util/concurrent/CountDownLatch;->sync:Ljava/util/concurrent/CountDownLatch$Sync;

    #@16
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch$Sync;->getCount()I

    #@19
    move-result v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, "]"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method
