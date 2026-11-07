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
.field private greylist buffList:Ljava/util/LinkedList;

.field private greylist currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

.field private greylist isClosed:Z

.field private greylist myTimerTask:Ljava/util/TimerTask;

.field private greylist pipe:Ljava/io/InputStream;

.field private greylist readTimeout:I

.field private greylist timer:Ljava/util/Timer;


# direct methods
.method public constructor greylist <init>(Ljava/io/InputStream;ILjava/util/Timer;)V
    .registers 5
    .param p1, "pipe"    # Ljava/io/InputStream;
    .param p2, "readTimeout"    # I
    .param p3, "timer"    # Ljava/util/Timer;

    .line 122
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 125
    iput-object p3, p0, Lgov/nist/javax/sip/parser/Pipeline;->timer:Ljava/util/Timer;

    .line 126
    iput-object p1, p0, Lgov/nist/javax/sip/parser/Pipeline;->pipe:Ljava/io/InputStream;

    .line 127
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    .line 128
    iput p2, p0, Lgov/nist/javax/sip/parser/Pipeline;->readTimeout:I

    .line 129
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->isClosed:Z

    .line 154
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    monitor-enter v0

    .line 155
    :try_start_6
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 156
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_12

    .line 159
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->pipe:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 160
    return-void

    .line 156
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist test-api read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    monitor-enter v0

    .line 165
    :try_start_3
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    iget v1, v1, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    iget-object v3, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    iget v3, v3, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->length:I

    if-ge v1, v3, :cond_26

    .line 167
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->getNextByte()I

    move-result v1

    .line 168
    .local v1, "retval":I
    iget-object v3, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    iget v3, v3, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    iget-object v4, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    iget v4, v4, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->length:I

    if-ne v3, v4, :cond_24

    .line 169
    iput-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    .line 170
    :cond_24
    monitor-exit v0

    return v1

    .line 173
    .end local v1    # "retval":I
    :cond_26
    iget-boolean v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->isClosed:Z

    const/4 v3, -0x1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 174
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_7f

    return v3

    .line 177
    :cond_35
    :try_start_35
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 178
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 179
    iget-boolean v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->isClosed:Z
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_44} :catch_74
    .catch Ljava/util/NoSuchElementException; {:try_start_35 .. :try_end_44} :catch_66
    .catchall {:try_start_35 .. :try_end_44} :catchall_7f

    if-eqz v1, :cond_35

    .line 180
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_7f

    return v3

    .line 182
    :cond_48
    :try_start_48
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    iput-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    .line 183
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->getNextByte()I

    move-result v1

    .line 184
    .restart local v1    # "retval":I
    iget-object v3, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    iget v3, v3, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    iget-object v4, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    iget v4, v4, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->length:I

    if-ne v3, v4, :cond_64

    .line 185
    iput-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;
    :try_end_64
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_64} :catch_74
    .catch Ljava/util/NoSuchElementException; {:try_start_48 .. :try_end_64} :catch_66
    .catchall {:try_start_48 .. :try_end_64} :catchall_7f

    .line 186
    :cond_64
    :try_start_64
    monitor-exit v0

    return v1

    .line 189
    .end local v1    # "retval":I
    :catch_66
    move-exception v1

    .line 190
    .local v1, "ex":Ljava/util/NoSuchElementException;
    invoke-virtual {v1}, Ljava/util/NoSuchElementException;->printStackTrace()V

    .line 191
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/util/NoSuchElementException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lgov/nist/javax/sip/parser/Pipeline;
    throw v2

    .line 187
    .end local v1    # "ex":Ljava/util/NoSuchElementException;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/Pipeline;
    :catch_74
    move-exception v1

    .line 188
    .local v1, "ex":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lgov/nist/javax/sip/parser/Pipeline;
    throw v2

    .line 193
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/Pipeline;
    :catchall_7f
    move-exception v1

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_64 .. :try_end_81} :catchall_7f

    throw v1
.end method

.method public greylist startTimer()V
    .registers 5

    .line 107
    iget v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->readTimeout:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 108
    return-void

    .line 111
    :cond_6
    new-instance v0, Lgov/nist/javax/sip/parser/Pipeline$MyTimer;

    invoke-direct {v0, p0, p0}, Lgov/nist/javax/sip/parser/Pipeline$MyTimer;-><init>(Lgov/nist/javax/sip/parser/Pipeline;Lgov/nist/javax/sip/parser/Pipeline;)V

    iput-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->myTimerTask:Ljava/util/TimerTask;

    .line 112
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->myTimerTask:Ljava/util/TimerTask;

    iget v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->readTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 113
    return-void
.end method

.method public greylist stopTimer()V
    .registers 3

    .line 116
    iget v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->readTimeout:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 117
    return-void

    .line 118
    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->myTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_f

    .line 119
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->myTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 120
    :cond_f
    return-void
.end method

.method public greylist write([B)V
    .registers 5
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-boolean v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->isClosed:Z

    if-nez v0, :cond_1c

    .line 145
    new-instance v0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    array-length v1, p1

    invoke-direct {v0, p0, p1, v1}, Lgov/nist/javax/sip/parser/Pipeline$Buffer;-><init>(Lgov/nist/javax/sip/parser/Pipeline;[BI)V

    .line 146
    .local v0, "buff":Lgov/nist/javax/sip/parser/Pipeline$Buffer;
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    monitor-enter v1

    .line 147
    :try_start_d
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 149
    monitor-exit v1

    .line 150
    return-void

    .line 149
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_19

    throw v2

    .line 144
    .end local v0    # "buff":Lgov/nist/javax/sip/parser/Pipeline$Buffer;
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Closed!!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist write([BII)V
    .registers 7
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-boolean v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->isClosed:Z

    if-nez v0, :cond_1d

    .line 134
    new-instance v0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    invoke-direct {v0, p0, p1, p3}, Lgov/nist/javax/sip/parser/Pipeline$Buffer;-><init>(Lgov/nist/javax/sip/parser/Pipeline;[BI)V

    .line 135
    .local v0, "buff":Lgov/nist/javax/sip/parser/Pipeline$Buffer;
    iput p2, v0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    .line 136
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    monitor-enter v1

    .line 137
    :try_start_e
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 139
    monitor-exit v1

    .line 140
    return-void

    .line 139
    :catchall_1a
    move-exception v2

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v2

    .line 133
    .end local v0    # "buff":Lgov/nist/javax/sip/parser/Pipeline$Buffer;
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Closed!!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
