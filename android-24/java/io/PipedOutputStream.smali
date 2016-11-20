.class public Ljava/io/PipedOutputStream;
.super Ljava/io/OutputStream;
.source "PipedOutputStream.java"


# instance fields
.field private sink:Ljava/io/PipedInputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedInputStream;)V
    .locals 0
    .param p1, "snk"    # Ljava/io/PipedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    .line 64
    invoke-virtual {p0, p1}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V

    #@6
    .line 63
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 176
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    #@6
    invoke-virtual {v0}, Ljava/io/PipedInputStream;->receivedLast()V

    #@9
    .line 174
    :cond_0
    return-void
.end method

.method public declared-synchronized connect(Ljava/io/PipedInputStream;)V
    .locals 2
    .param p1, "snk"    # Ljava/io/PipedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 97
    if-nez p1, :cond_0

    #@3
    .line 98
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0

    #@c
    .line 99
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    #@e
    if-nez v0, :cond_1

    #@10
    iget-boolean v0, p1, Ljava/io/PipedInputStream;->connected:Z

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 100
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@16
    const-string/jumbo v1, "Already connected"

    #@19
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 102
    :cond_2
    iput-object p1, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    #@1f
    .line 103
    const/4 v0, -0x1

    #@20
    iput v0, p1, Ljava/io/PipedInputStream;->in:I

    #@22
    .line 104
    const/4 v0, 0x0

    #@23
    iput v0, p1, Ljava/io/PipedInputStream;->out:I

    #@25
    .line 105
    const/4 v0, 0x1

    #@26
    iput-boolean v0, p1, Ljava/io/PipedInputStream;->connected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    monitor-exit p0

    #@29
    .line 96
    return-void
.end method

.method public declared-synchronized flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 160
    :try_start_0
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 161
    iget-object v1, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    #@7
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    .line 162
    :try_start_1
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    #@a
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@e
    :cond_0
    monitor-exit p0

    #@f
    .line 159
    return-void

    #@10
    .line 161
    :catchall_0
    move-exception v0

    #@11
    :try_start_3
    monitor-exit v1

    #@12
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@13
    :catchall_1
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 120
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Pipe not connected"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 122
    :cond_0
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    #@f
    invoke-virtual {v0, p1}, Ljava/io/PipedInputStream;->receive(I)V

    #@12
    .line 118
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 140
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Pipe not connected"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 141
    :cond_0
    if-nez p1, :cond_1

    #@f
    .line 142
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@14
    throw v0

    #@15
    .line 143
    :cond_1
    if-ltz p2, :cond_2

    #@17
    array-length v0, p1

    #@18
    if-le p2, v0, :cond_3

    #@1a
    .line 145
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@1c
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@1f
    throw v0

    #@20
    .line 143
    :cond_3
    if-ltz p3, :cond_2

    #@22
    .line 144
    add-int v0, p2, p3

    #@24
    array-length v1, p1

    #@25
    if-gt v0, v1, :cond_2

    #@27
    add-int v0, p2, p3

    #@29
    if-ltz v0, :cond_2

    #@2b
    .line 146
    if-nez p3, :cond_4

    #@2d
    .line 147
    return-void

    #@2e
    .line 149
    :cond_4
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    #@30
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PipedInputStream;->receive([BII)V

    #@33
    .line 138
    return-void
.end method
