.class public Lgov/nist/javax/sip/parser/Pipeline;
.super Ljava/io/InputStream;
.source "Pipeline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/parser/Pipeline$MyTimer;,
        Lgov/nist/javax/sip/parser/Pipeline$Buffer;
    }
.end annotation


# instance fields
.field private buffList:Ljava/util/LinkedList;

.field private currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

.field private isClosed:Z

.field private myTimerTask:Ljava/util/TimerTask;

.field private pipe:Ljava/io/InputStream;

.field private readTimeout:I

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/util/Timer;)V
    .locals 1
    .param p1, "pipe"    # Ljava/io/InputStream;
    .param p2, "readTimeout"    # I
    .param p3, "timer"    # Ljava/util/Timer;

    #@0
    .prologue
    .line 122
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 125
    iput-object p3, p0, Lgov/nist/javax/sip/parser/Pipeline;->timer:Ljava/util/Timer;

    #@5
    .line 126
    iput-object p1, p0, Lgov/nist/javax/sip/parser/Pipeline;->pipe:Ljava/io/InputStream;

    #@7
    .line 127
    new-instance v0, Ljava/util/LinkedList;

    #@9
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@c
    iput-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    #@e
    .line 128
    iput p2, p0, Lgov/nist/javax/sip/parser/Pipeline;->readTimeout:I

    #@10
    .line 122
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->isClosed:Z

    #@3
    .line 154
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    #@5
    monitor-enter v1

    #@6
    .line 155
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    #@8
    invoke-virtual {v0}, Ljava/util/LinkedList;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 159
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->pipe:Ljava/io/InputStream;

    #@e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@11
    .line 152
    return-void

    #@12
    .line 154
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 164
    iget-object v4, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    #@3
    monitor-enter v4

    #@4
    .line 165
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 166
    iget-object v3, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    #@a
    iget v3, v3, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    #@c
    iget-object v5, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    #@e
    iget v5, v5, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->length:I

    #@10
    if-ge v3, v5, :cond_1

    #@12
    .line 167
    iget-object v3, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    #@14
    invoke-virtual {v3}, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->getNextByte()I

    #@17
    move-result v2

    #@18
    .line 168
    .local v2, "retval":I
    iget-object v3, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    #@1a
    iget v3, v3, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    #@1c
    iget-object v5, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    #@1e
    iget v5, v5, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->length:I

    #@20
    if-ne v3, v5, :cond_0

    #@22
    .line 169
    const/4 v3, 0x0

    #@23
    iput-object v3, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    :cond_0
    monitor-exit v4

    #@26
    .line 170
    return v2

    #@27
    .line 173
    .end local v2    # "retval":I
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lgov/nist/javax/sip/parser/Pipeline;->isClosed:Z

    #@29
    if-eqz v3, :cond_2

    #@2b
    iget-object v3, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    #@2d
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_2

    #@33
    monitor-exit v4

    #@34
    .line 174
    return v6

    #@35
    .line 177
    :cond_2
    :try_start_2
    iget-object v3, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    #@37
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    #@3a
    move-result v3

    #@3b
    if-eqz v3, :cond_3

    #@3d
    .line 178
    iget-object v3, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    #@3f
    invoke-virtual {v3}, Ljava/util/LinkedList;->wait()V

    #@42
    .line 179
    iget-boolean v3, p0, Lgov/nist/javax/sip/parser/Pipeline;->isClosed:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@44
    if-eqz v3, :cond_2

    #@46
    monitor-exit v4

    #@47
    .line 180
    return v6

    #@48
    .line 182
    :cond_3
    :try_start_3
    iget-object v3, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    #@4a
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    #@4d
    move-result-object v3

    #@4e
    check-cast v3, Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    #@50
    iput-object v3, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    #@52
    .line 183
    iget-object v3, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    #@54
    invoke-virtual {v3}, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->getNextByte()I

    #@57
    move-result v2

    #@58
    .line 184
    .restart local v2    # "retval":I
    iget-object v3, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    #@5a
    iget v3, v3, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    #@5c
    iget-object v5, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    #@5e
    iget v5, v5, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->length:I

    #@60
    if-ne v3, v5, :cond_4

    #@62
    .line 185
    const/4 v3, 0x0

    #@63
    iput-object v3, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@65
    :cond_4
    monitor-exit v4

    #@66
    .line 186
    return v2

    #@67
    .line 189
    .end local v2    # "retval":I
    :catch_0
    move-exception v1

    #@68
    .line 190
    .local v1, "ex":Ljava/util/NoSuchElementException;
    :try_start_4
    invoke-virtual {v1}, Ljava/util/NoSuchElementException;->printStackTrace()V

    #@6b
    .line 191
    new-instance v3, Ljava/io/IOException;

    #@6d
    invoke-virtual {v1}, Ljava/util/NoSuchElementException;->getMessage()Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@74
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@75
    .line 164
    .end local v1    # "ex":Ljava/util/NoSuchElementException;
    :catchall_0
    move-exception v3

    #@76
    monitor-exit v4

    #@77
    throw v3

    #@78
    .line 187
    :catch_1
    move-exception v0

    #@79
    .line 188
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_5
    new-instance v3, Ljava/io/IOException;

    #@7b
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    #@7e
    move-result-object v5

    #@7f
    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@82
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public startTimer()V
    .locals 4

    #@0
    .prologue
    .line 107
    iget v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->readTimeout:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 108
    return-void

    #@6
    .line 111
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/parser/Pipeline$MyTimer;

    #@8
    invoke-direct {v0, p0, p0}, Lgov/nist/javax/sip/parser/Pipeline$MyTimer;-><init>(Lgov/nist/javax/sip/parser/Pipeline;Lgov/nist/javax/sip/parser/Pipeline;)V

    #@b
    iput-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->myTimerTask:Ljava/util/TimerTask;

    #@d
    .line 112
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->timer:Ljava/util/Timer;

    #@f
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->myTimerTask:Ljava/util/TimerTask;

    #@11
    iget v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->readTimeout:I

    #@13
    int-to-long v2, v2

    #@14
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    #@17
    .line 106
    return-void
.end method

.method public stopTimer()V
    .locals 2

    #@0
    .prologue
    .line 116
    iget v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->readTimeout:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 117
    return-void

    #@6
    .line 118
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->myTimerTask:Ljava/util/TimerTask;

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 119
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->myTimerTask:Ljava/util/TimerTask;

    #@c
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    #@f
    .line 115
    :cond_1
    return-void
.end method

.method public write([B)V
    .locals 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    iget-boolean v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->isClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 144
    new-instance v1, Ljava/io/IOException;

    #@6
    const-string/jumbo v2, "Closed!!"

    #@9
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 145
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    #@f
    array-length v1, p1

    #@10
    invoke-direct {v0, p0, p1, v1}, Lgov/nist/javax/sip/parser/Pipeline$Buffer;-><init>(Lgov/nist/javax/sip/parser/Pipeline;[BI)V

    #@13
    .line 146
    .local v0, "buff":Lgov/nist/javax/sip/parser/Pipeline$Buffer;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    #@15
    monitor-enter v2

    #@16
    .line 147
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    #@18
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@1b
    .line 148
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    #@1d
    invoke-virtual {v1}, Ljava/util/LinkedList;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit v2

    #@21
    .line 142
    return-void

    #@22
    .line 146
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1
.end method

.method public write([BII)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 132
    iget-boolean v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->isClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 133
    new-instance v1, Ljava/io/IOException;

    #@6
    const-string/jumbo v2, "Closed!!"

    #@9
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 134
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    #@f
    invoke-direct {v0, p0, p1, p3}, Lgov/nist/javax/sip/parser/Pipeline$Buffer;-><init>(Lgov/nist/javax/sip/parser/Pipeline;[BI)V

    #@12
    .line 135
    .local v0, "buff":Lgov/nist/javax/sip/parser/Pipeline$Buffer;
    iput p2, v0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    #@14
    .line 136
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    #@16
    monitor-enter v2

    #@17
    .line 137
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    #@19
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@1c
    .line 138
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    #@1e
    invoke-virtual {v1}, Ljava/util/LinkedList;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 131
    return-void

    #@23
    .line 136
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method
