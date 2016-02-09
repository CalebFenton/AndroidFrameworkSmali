.class public Ljava/io/PipedWriter;
.super Ljava/io/Writer;
.source "PipedWriter.java"


# instance fields
.field private destination:Ljava/io/PipedReader;

.field private isClosed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedReader;)V
    .locals 0
    .param p1, "destination"    # Ljava/io/PipedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    #@3
    .line 53
    invoke-virtual {p0, p1}, Ljava/io/PipedWriter;->connect(Ljava/io/PipedReader;)V

    #@6
    .line 51
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 66
    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    #@3
    .line 67
    .local v0, "reader":Ljava/io/PipedReader;
    if-eqz v0, :cond_0

    #@5
    .line 68
    invoke-virtual {v0}, Ljava/io/PipedReader;->done()V

    #@8
    .line 69
    const/4 v1, 0x1

    #@9
    iput-boolean v1, p0, Ljava/io/PipedWriter;->isClosed:Z

    #@b
    .line 70
    iput-object v2, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    #@d
    .line 65
    :cond_0
    return-void
.end method

.method public connect(Ljava/io/PipedReader;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/PipedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    if-nez p1, :cond_0

    #@2
    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "reader == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 88
    :cond_0
    monitor-enter p1

    #@c
    .line 89
    :try_start_0
    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 90
    new-instance v0, Ljava/io/IOException;

    #@12
    const-string/jumbo v1, "Pipe already connected"

    #@15
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 88
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit p1

    #@1b
    throw v0

    #@1c
    .line 92
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/PipedReader;->establishConnection()V

    #@1f
    .line 93
    iput-object p1, p0, Ljava/io/PipedWriter;->lock:Ljava/lang/Object;

    #@21
    .line 94
    iput-object p1, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    monitor-exit p1

    #@24
    .line 84
    return-void
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    #@2
    .line 108
    .local v0, "reader":Ljava/io/PipedReader;
    iget-boolean v1, p0, Ljava/io/PipedWriter;->isClosed:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 109
    new-instance v1, Ljava/io/IOException;

    #@8
    const-string/jumbo v2, "Pipe is closed"

    #@b
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 111
    :cond_0
    if-nez v0, :cond_1

    #@11
    .line 112
    return-void

    #@12
    .line 115
    :cond_1
    monitor-enter v0

    #@13
    .line 116
    :try_start_0
    iget-boolean v1, v0, Ljava/io/PipedReader;->isClosed:Z

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 117
    new-instance v1, Ljava/io/IOException;

    #@19
    const-string/jumbo v2, "Pipe is broken"

    #@1c
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 115
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v0

    #@22
    throw v1

    #@23
    .line 119
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/PipedReader;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    monitor-exit v0

    #@27
    .line 106
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    #@2
    .line 186
    .local v0, "reader":Ljava/io/PipedReader;
    if-nez v0, :cond_0

    #@4
    .line 187
    new-instance v1, Ljava/io/IOException;

    #@6
    const-string/jumbo v2, "Pipe not connected"

    #@9
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 189
    :cond_0
    int-to-char v1, p1

    #@e
    invoke-virtual {v0, v1}, Ljava/io/PipedReader;->receive(C)V

    #@11
    .line 184
    return-void
.end method

.method public write([CII)V
    .locals 3
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    #@2
    .line 157
    .local v0, "reader":Ljava/io/PipedReader;
    if-nez v0, :cond_0

    #@4
    .line 158
    new-instance v1, Ljava/io/IOException;

    #@6
    const-string/jumbo v2, "Pipe not connected"

    #@9
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 160
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PipedReader;->receive([CII)V

    #@10
    .line 155
    return-void
.end method
