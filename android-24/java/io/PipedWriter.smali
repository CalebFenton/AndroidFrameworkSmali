.class public Ljava/io/PipedWriter;
.super Ljava/io/Writer;
.source "PipedWriter.java"


# instance fields
.field private closed:Z

.field private sink:Ljava/io/PipedReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    #@3
    .line 48
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/io/PipedWriter;->closed:Z

    #@6
    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedReader;)V
    .locals 1
    .param p1, "snk"    # Ljava/io/PipedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    #@3
    .line 48
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/io/PipedWriter;->closed:Z

    #@6
    .line 59
    invoke-virtual {p0, p1}, Ljava/io/PipedWriter;->connect(Ljava/io/PipedReader;)V

    #@9
    .line 58
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
    .line 179
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/io/PipedWriter;->closed:Z

    #@3
    .line 180
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 181
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    #@9
    invoke-virtual {v0}, Ljava/io/PipedReader;->receivedLast()V

    #@c
    .line 178
    :cond_0
    return-void
.end method

.method public declared-synchronized connect(Ljava/io/PipedReader;)V
    .locals 2
    .param p1, "snk"    # Ljava/io/PipedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 92
    if-nez p1, :cond_0

    #@3
    .line 93
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
    .line 94
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    #@e
    if-nez v0, :cond_1

    #@10
    iget-boolean v0, p1, Ljava/io/PipedReader;->connected:Z

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 95
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@16
    const-string/jumbo v1, "Already connected"

    #@19
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 96
    :cond_2
    iget-boolean v0, p1, Ljava/io/PipedReader;->closedByReader:Z

    #@1f
    if-nez v0, :cond_3

    #@21
    iget-boolean v0, p0, Ljava/io/PipedWriter;->closed:Z

    #@23
    if-eqz v0, :cond_4

    #@25
    .line 97
    :cond_3
    new-instance v0, Ljava/io/IOException;

    #@27
    const-string/jumbo v1, "Pipe closed"

    #@2a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 100
    :cond_4
    iput-object p1, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    #@30
    .line 101
    const/4 v0, -0x1

    #@31
    iput v0, p1, Ljava/io/PipedReader;->in:I

    #@33
    .line 102
    const/4 v0, 0x0

    #@34
    iput v0, p1, Ljava/io/PipedReader;->out:I

    #@36
    .line 103
    const/4 v0, 0x1

    #@37
    iput-boolean v0, p1, Ljava/io/PipedReader;->connected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    monitor-exit p0

    #@3a
    .line 91
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
    .line 161
    :try_start_0
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    #@3
    if-eqz v0, :cond_2

    #@5
    .line 162
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    #@7
    iget-boolean v0, v0, Ljava/io/PipedReader;->closedByReader:Z

    #@9
    if-nez v0, :cond_0

    #@b
    iget-boolean v0, p0, Ljava/io/PipedWriter;->closed:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 163
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@11
    const-string/jumbo v1, "Pipe closed"

    #@14
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :catchall_0
    move-exception v0

    #@19
    monitor-exit p0

    #@1a
    throw v0

    #@1b
    .line 165
    :cond_1
    :try_start_1
    iget-object v1, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    #@1d
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 166
    :try_start_2
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    #@20
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@23
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@24
    :cond_2
    monitor-exit p0

    #@25
    .line 160
    return-void

    #@26
    .line 165
    :catchall_1
    move-exception v0

    #@27
    :try_start_4
    monitor-exit v1

    #@28
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public write(I)V
    .locals 2
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 122
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Pipe not connected"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 124
    :cond_0
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    #@f
    invoke-virtual {v0, p1}, Ljava/io/PipedReader;->receive(I)V

    #@12
    .line 120
    return-void
.end method

.method public write([CII)V
    .locals 3
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 146
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Pipe not connected"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 147
    :cond_0
    or-int v0, p2, p3

    #@f
    add-int v1, p2, p3

    #@11
    or-int/2addr v0, v1

    #@12
    array-length v1, p1

    #@13
    add-int v2, p2, p3

    #@15
    sub-int/2addr v1, v2

    #@16
    or-int/2addr v0, v1

    #@17
    if-gez v0, :cond_1

    #@19
    .line 148
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@1b
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@1e
    throw v0

    #@1f
    .line 150
    :cond_1
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    #@21
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PipedReader;->receive([CII)V

    #@24
    .line 144
    return-void
.end method
