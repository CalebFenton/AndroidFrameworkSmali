.class public Ljava/io/PipedOutputStream;
.super Ljava/io/OutputStream;
.source "PipedOutputStream.java"


# instance fields
.field private target:Ljava/io/PipedInputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedInputStream;)V
    .locals 0
    .param p1, "target"    # Ljava/io/PipedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    .line 53
    invoke-virtual {p0, p1}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V

    #@6
    .line 52
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
    const/4 v1, 0x0

    #@1
    .line 66
    iget-object v0, p0, Ljava/io/PipedOutputStream;->target:Ljava/io/PipedInputStream;

    #@3
    .line 67
    .local v0, "stream":Ljava/io/PipedInputStream;
    if-eqz v0, :cond_0

    #@5
    .line 68
    invoke-virtual {v0}, Ljava/io/PipedInputStream;->done()V

    #@8
    .line 69
    iput-object v1, p0, Ljava/io/PipedOutputStream;->target:Ljava/io/PipedInputStream;

    #@a
    .line 64
    :cond_0
    return-void
.end method

.method public connect(Ljava/io/PipedInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/PipedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    if-nez p1, :cond_0

    #@2
    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "stream == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 86
    :cond_0
    monitor-enter p1

    #@c
    .line 87
    :try_start_0
    iget-object v0, p0, Ljava/io/PipedOutputStream;->target:Ljava/io/PipedInputStream;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 88
    new-instance v0, Ljava/io/IOException;

    #@12
    const-string/jumbo v1, "Already connected"

    #@15
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 86
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit p1

    #@1b
    throw v0

    #@1c
    .line 90
    :cond_1
    :try_start_1
    iget-boolean v0, p1, Ljava/io/PipedInputStream;->isConnected:Z

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 91
    new-instance v0, Ljava/io/IOException;

    #@22
    const-string/jumbo v1, "Pipe already connected"

    #@25
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 93
    :cond_2
    invoke-virtual {p1}, Ljava/io/PipedInputStream;->establishConnection()V

    #@2c
    .line 94
    iput-object p1, p0, Ljava/io/PipedOutputStream;->target:Ljava/io/PipedInputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    monitor-exit p1

    #@2f
    .line 82
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Ljava/io/PipedOutputStream;->target:Ljava/io/PipedInputStream;

    #@2
    .line 108
    .local v0, "stream":Ljava/io/PipedInputStream;
    if-nez v0, :cond_0

    #@4
    .line 109
    return-void

    #@5
    .line 112
    :cond_0
    monitor-enter v0

    #@6
    .line 113
    :try_start_0
    invoke-virtual {v0}, Ljava/io/PipedInputStream;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v0

    #@a
    .line 106
    return-void

    #@b
    .line 112
    :catchall_0
    move-exception v1

    #@c
    monitor-exit v0

    #@d
    throw v1
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Ljava/io/PipedOutputStream;->target:Ljava/io/PipedInputStream;

    #@2
    .line 173
    .local v0, "stream":Ljava/io/PipedInputStream;
    if-nez v0, :cond_0

    #@4
    .line 174
    new-instance v1, Ljava/io/IOException;

    #@6
    const-string/jumbo v2, "Pipe not connected"

    #@9
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 176
    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/PipedInputStream;->receive(I)V

    #@10
    .line 171
    return-void
.end method

.method public write([BII)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 147
    invoke-super {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    #@3
    .line 146
    return-void
.end method
