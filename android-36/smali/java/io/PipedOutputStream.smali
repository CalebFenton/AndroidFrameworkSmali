.class public Ljava/io/PipedOutputStream;
.super Ljava/io/OutputStream;
.source "PipedOutputStream.java"


# instance fields
.field private greylist-max-o sink:Ljava/io/PipedInputStream;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 76
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/PipedInputStream;)V
    .registers 2
    .param p1, "snk"    # Ljava/io/PipedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    if-eqz v0, :cond_9

    .line 176
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    invoke-virtual {v0}, Ljava/io/PipedInputStream;->receivedLast()V

    .line 178
    :cond_9
    return-void
.end method

.method public declared-synchronized whitelist test-api connect(Ljava/io/PipedInputStream;)V
    .registers 4
    .param p1, "snk"    # Ljava/io/PipedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 97
    if-eqz p1, :cond_22

    .line 99
    :try_start_3
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    if-nez v0, :cond_18

    iget-boolean v0, p1, Ljava/io/PipedInputStream;->connected:Z

    if-nez v0, :cond_18

    .line 102
    iput-object p1, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    .line 103
    const/4 v0, -0x1

    iput v0, p1, Ljava/io/PipedInputStream;->in:I

    .line 104
    const/4 v0, 0x0

    iput v0, p1, Ljava/io/PipedInputStream;->out:I

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p1, Ljava/io/PipedInputStream;->connected:Z
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_20

    .line 106
    monitor-exit p0

    return-void

    .line 100
    .end local p0    # "this":Ljava/io/PipedOutputStream;
    :cond_18
    :try_start_18
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    .end local p1    # "snk":Ljava/io/PipedInputStream;
    :catchall_20
    move-exception p1

    goto :goto_28

    .line 98
    .restart local p1    # "snk":Ljava/io/PipedInputStream;
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 96
    .end local p1    # "snk":Ljava/io/PipedInputStream;
    :goto_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_20

    throw p1
.end method

.method public declared-synchronized whitelist test-api flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 160
    :try_start_1
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    if-eqz v0, :cond_14

    .line 161
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_16

    .line 162
    :try_start_8
    iget-object v1, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 163
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    goto :goto_14

    :catchall_f
    move-exception v1

    :goto_10
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_12

    :try_start_11
    throw v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_16

    .end local p0    # "this":Ljava/io/PipedOutputStream;
    :catchall_12
    move-exception v1

    goto :goto_10

    .line 165
    :cond_14
    :goto_14
    monitor-exit p0

    return-void

    .line 159
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public whitelist test-api write(I)V
    .registers 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    if-eqz v0, :cond_a

    .line 122
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    invoke-virtual {v0, p1}, Ljava/io/PipedInputStream;->receive(I)V

    .line 123
    return-void

    .line 120
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api write([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    if-eqz v0, :cond_2b

    .line 141
    if-eqz p1, :cond_25

    .line 143
    if-ltz p2, :cond_1f

    array-length v0, p1

    if-gt p2, v0, :cond_1f

    if-ltz p3, :cond_1f

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1f

    add-int v0, p2, p3

    if-ltz v0, :cond_1f

    .line 146
    if-nez p3, :cond_19

    .line 147
    return-void

    .line 149
    :cond_19
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PipedInputStream;->receive([BII)V

    .line 150
    return-void

    .line 145
    :cond_1f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 142
    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 140
    :cond_2b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
