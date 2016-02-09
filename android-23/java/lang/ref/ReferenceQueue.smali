.class public Ljava/lang/ref/ReferenceQueue;
.super Ljava/lang/Object;
.source "ReferenceQueue.java"


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
.field private static final NANOS_PER_MILLI:I = 0xf4240

.field public static unenqueued:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private head:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private tail:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 149
    const/4 v0, 0x0

    #@1
    sput-object v0, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    #@3
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static add(Ljava/lang/ref/Reference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 152
    .local p0, "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    const-class v2, Ljava/lang/ref/ReferenceQueue;

    #@2
    monitor-enter v2

    #@3
    .line 153
    :try_start_0
    sget-object v1, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 154
    sput-object p0, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    #@9
    .line 169
    :goto_0
    const-class v1, Ljava/lang/ref/ReferenceQueue;

    #@b
    invoke-virtual {v1}, Ljava/lang/Class;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v2

    #@f
    .line 151
    return-void

    #@10
    .line 157
    :cond_0
    :try_start_1
    sget-object v0, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    #@12
    .line 158
    .local v0, "last":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :goto_1
    iget-object v1, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    #@14
    sget-object v3, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    #@16
    if-eq v1, v3, :cond_1

    #@18
    .line 159
    iget-object v0, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    #@1a
    goto :goto_1

    #@1b
    .line 162
    :cond_1
    iput-object p0, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    #@1d
    .line 163
    move-object v0, p0

    #@1e
    .line 164
    :goto_2
    iget-object v1, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    #@20
    if-eq v1, p0, :cond_2

    #@22
    .line 165
    iget-object v0, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    #@24
    goto :goto_2

    #@25
    .line 167
    :cond_2
    sget-object v1, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    #@27
    iput-object v1, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    goto :goto_0

    #@2a
    .line 152
    .end local v0    # "last":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit v2

    #@2c
    throw v1
.end method


# virtual methods
.method declared-synchronized enqueue(Ljava/lang/ref/Reference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<+TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    .local p1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    monitor-enter p0

    #@1
    .line 135
    :try_start_0
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 136
    iput-object p1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    #@7
    .line 143
    :goto_0
    iput-object p1, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    #@9
    .line 144
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    #@b
    iput-object p1, v0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    #@d
    .line 145
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 134
    return-void

    #@12
    .line 138
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    #@14
    iput-object p1, v0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    goto :goto_0

    #@17
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method public declared-synchronized poll()Ljava/lang/ref/Reference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    const/4 v2, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 48
    :try_start_0
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-nez v1, :cond_0

    #@6
    monitor-exit p0

    #@7
    .line 49
    return-object v2

    #@8
    .line 52
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    #@a
    .line 54
    .local v0, "ret":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    #@c
    iget-object v2, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    #@e
    if-ne v1, v2, :cond_1

    #@10
    .line 55
    const/4 v1, 0x0

    #@11
    iput-object v1, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    #@13
    .line 56
    const/4 v1, 0x0

    #@14
    iput-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    #@16
    .line 61
    :goto_0
    const/4 v1, 0x0

    #@17
    iput-object v1, v0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    monitor-exit p0

    #@1a
    .line 62
    return-object v0

    #@1b
    .line 58
    :cond_1
    :try_start_2
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    #@1d
    iget-object v1, v1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    #@1f
    iput-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@21
    goto :goto_0

    #@22
    .end local v0    # "ret":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    :catchall_0
    move-exception v1

    #@23
    monitor-exit p0

    #@24
    throw v1
.end method

.method public remove()Ljava/lang/ref/Reference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    const-wide/16 v0, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Ljava/lang/ref/ReferenceQueue;->remove(J)Ljava/lang/ref/Reference;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public declared-synchronized remove(J)Ljava/lang/ref/Reference;
    .locals 13
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    monitor-enter p0

    #@1
    .line 90
    const-wide/16 v10, 0x0

    #@3
    cmp-long v9, p1, v10

    #@5
    if-gez v9, :cond_0

    #@7
    .line 91
    :try_start_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v10, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v11, "timeout < 0: "

    #@11
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v10

    #@15
    invoke-virtual {v10, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@18
    move-result-object v10

    #@19
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v10

    #@1d
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    :catchall_0
    move-exception v9

    #@22
    monitor-exit p0

    #@23
    throw v9

    #@24
    .line 94
    :cond_0
    :try_start_1
    iget-object v9, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    #@26
    if-eqz v9, :cond_1

    #@28
    .line 95
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    move-result-object v9

    #@2c
    monitor-exit p0

    #@2d
    return-object v9

    #@2e
    .line 99
    :cond_1
    const-wide/16 v10, 0x0

    #@30
    cmp-long v9, p1, v10

    #@32
    if-eqz v9, :cond_2

    #@34
    const-wide v10, 0x8637bd05af6L

    #@39
    cmp-long v9, p1, v10

    #@3b
    if-lez v9, :cond_3

    #@3d
    .line 101
    :cond_2
    const-wide/16 v10, 0x0

    #@3f
    :try_start_2
    invoke-virtual {p0, v10, v11}, Ljava/lang/ref/ReferenceQueue;->wait(J)V

    #@42
    .line 102
    iget-object v9, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    #@44
    if-eqz v9, :cond_2

    #@46
    .line 103
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@49
    move-result-object v9

    #@4a
    monitor-exit p0

    #@4b
    return-object v9

    #@4c
    .line 107
    :cond_3
    const-wide/32 v10, 0xf4240

    #@4f
    mul-long v4, p1, v10

    #@51
    .line 108
    .local v4, "nanosToWait":J
    const/4 v8, 0x0

    #@52
    .line 111
    .local v8, "timeoutNanos":I
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@55
    move-result-wide v6

    #@56
    .line 113
    .local v6, "startTime":J
    :goto_0
    invoke-virtual {p0, p1, p2, v8}, Ljava/lang/ref/ReferenceQueue;->wait(JI)V

    #@59
    .line 114
    iget-object v9, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    #@5b
    if-eqz v9, :cond_5

    #@5d
    .line 125
    :cond_4
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@60
    move-result-object v9

    #@61
    monitor-exit p0

    #@62
    return-object v9

    #@63
    .line 117
    :cond_5
    :try_start_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@66
    move-result-wide v10

    #@67
    sub-long v0, v10, v6

    #@69
    .line 118
    .local v0, "nanosElapsed":J
    sub-long v2, v4, v0

    #@6b
    .line 119
    .local v2, "nanosRemaining":J
    const-wide/16 v10, 0x0

    #@6d
    cmp-long v9, v2, v10

    #@6f
    if-lez v9, :cond_4

    #@71
    .line 122
    const-wide/32 v10, 0xf4240

    #@74
    div-long p1, v2, v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@76
    .line 123
    const-wide/32 v10, 0xf4240

    #@79
    mul-long/2addr v10, p1

    #@7a
    sub-long v10, v2, v10

    #@7c
    long-to-int v8, v10

    #@7d
    goto :goto_0
.end method
