.class public Lsun/net/www/MeteredStream;
.super Ljava/io/FilterInputStream;
.source "MeteredStream.java"


# instance fields
.field protected closed:Z

.field protected count:J

.field protected expected:J

.field protected markLimit:I

.field protected markedCount:J

.field protected pi:Lsun/net/ProgressSource;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lsun/net/ProgressSource;J)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "pi"    # Lsun/net/ProgressSource;
    .param p3, "expected"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 50
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@5
    .line 41
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z

    #@8
    .line 43
    iput-wide v2, p0, Lsun/net/www/MeteredStream;->count:J

    #@a
    .line 44
    iput-wide v2, p0, Lsun/net/www/MeteredStream;->markedCount:J

    #@c
    .line 45
    const/4 v0, -0x1

    #@d
    iput v0, p0, Lsun/net/www/MeteredStream;->markLimit:I

    #@f
    .line 52
    iput-object p2, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    #@11
    .line 53
    iput-wide p3, p0, Lsun/net/www/MeteredStream;->expected:J

    #@13
    .line 55
    if-eqz p2, :cond_0

    #@15
    .line 56
    invoke-virtual {p2, v2, v3, p3, p4}, Lsun/net/ProgressSource;->updateProgress(JJ)V

    #@18
    .line 48
    :cond_0
    return-void
.end method

.method private isMarked()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 103
    iget v0, p0, Lsun/net/www/MeteredStream;->markLimit:I

    #@3
    if-gez v0, :cond_0

    #@5
    .line 104
    return v4

    #@6
    .line 108
    :cond_0
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    #@8
    iget-wide v2, p0, Lsun/net/www/MeteredStream;->markedCount:J

    #@a
    sub-long/2addr v0, v2

    #@b
    iget v2, p0, Lsun/net/www/MeteredStream;->markLimit:I

    #@d
    int-to-long v2, v2

    #@e
    cmp-long v0, v0, v2

    #@10
    if-lez v0, :cond_1

    #@12
    .line 109
    return v4

    #@13
    .line 113
    :cond_1
    const/4 v0, 0x1

    #@14
    return v0
.end method

.method private final justRead(J)V
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    const-wide/16 v0, -0x1

    #@2
    cmp-long v0, p1, v0

    #@4
    if-nez v0, :cond_1

    #@6
    .line 67
    invoke-direct {p0}, Lsun/net/www/MeteredStream;->isMarked()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 68
    invoke-virtual {p0}, Lsun/net/www/MeteredStream;->close()V

    #@f
    .line 70
    :cond_0
    return-void

    #@10
    .line 73
    :cond_1
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    #@12
    add-long/2addr v0, p1

    #@13
    iput-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    #@15
    .line 78
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    #@17
    iget-wide v2, p0, Lsun/net/www/MeteredStream;->markedCount:J

    #@19
    sub-long/2addr v0, v2

    #@1a
    iget v2, p0, Lsun/net/www/MeteredStream;->markLimit:I

    #@1c
    int-to-long v2, v2

    #@1d
    cmp-long v0, v0, v2

    #@1f
    if-lez v0, :cond_2

    #@21
    .line 79
    const/4 v0, -0x1

    #@22
    iput v0, p0, Lsun/net/www/MeteredStream;->markLimit:I

    #@24
    .line 82
    :cond_2
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    #@26
    if-eqz v0, :cond_3

    #@28
    .line 83
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    #@2a
    iget-wide v2, p0, Lsun/net/www/MeteredStream;->count:J

    #@2c
    iget-wide v4, p0, Lsun/net/www/MeteredStream;->expected:J

    #@2e
    invoke-virtual {v0, v2, v3, v4, v5}, Lsun/net/ProgressSource;->updateProgress(JJ)V

    #@31
    .line 85
    :cond_3
    invoke-direct {p0}, Lsun/net/www/MeteredStream;->isMarked()Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_4

    #@37
    .line 86
    return-void

    #@38
    .line 91
    :cond_4
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->expected:J

    #@3a
    const-wide/16 v2, 0x0

    #@3c
    cmp-long v0, v0, v2

    #@3e
    if-lez v0, :cond_5

    #@40
    .line 92
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    #@42
    iget-wide v2, p0, Lsun/net/www/MeteredStream;->expected:J

    #@44
    cmp-long v0, v0, v2

    #@46
    if-ltz v0, :cond_5

    #@48
    .line 93
    invoke-virtual {p0}, Lsun/net/www/MeteredStream;->close()V

    #@4b
    .line 60
    :cond_5
    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 170
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    :goto_0
    monitor-exit p0

    #@7
    return v0

    #@8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    #@a
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    move-result v0

    #@e
    goto :goto_0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 159
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 160
    return-void

    #@5
    .line 162
    :cond_0
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 163
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    #@b
    invoke-virtual {v0}, Lsun/net/ProgressSource;->finishTracking()V

    #@e
    .line 165
    :cond_1
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z

    #@11
    .line 166
    iget-object v0, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    #@13
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@16
    .line 158
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 208
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/MeteredStream;->close()V

    #@3
    .line 209
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 210
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    #@9
    invoke-virtual {v0}, Lsun/net/ProgressSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 214
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->finalize()V

    #@f
    .line 206
    return-void

    #@10
    .line 212
    :catchall_0
    move-exception v0

    #@11
    .line 214
    invoke-super {p0}, Ljava/io/FilterInputStream;->finalize()V

    #@14
    .line 212
    throw v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "readLimit"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 174
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 175
    return-void

    #@7
    .line 177
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    #@a
    .line 182
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    #@c
    iput-wide v0, p0, Lsun/net/www/MeteredStream;->markedCount:J

    #@e
    .line 183
    iput p1, p0, Lsun/net/www/MeteredStream;->markLimit:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 173
    return-void

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 200
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 201
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 203
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->markSupported()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public declared-synchronized read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    monitor-enter p0

    #@2
    .line 117
    :try_start_0
    iget-boolean v1, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-eqz v1, :cond_0

    #@6
    monitor-exit p0

    #@7
    .line 118
    return v2

    #@8
    .line 120
    :cond_0
    :try_start_1
    iget-object v1, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    #@a
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@d
    move-result v0

    #@e
    .line 121
    .local v0, "c":I
    if-eq v0, v2, :cond_1

    #@10
    .line 122
    const-wide/16 v2, 0x1

    #@12
    invoke-direct {p0, v2, v3}, Lsun/net/www/MeteredStream;->justRead(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    :goto_0
    monitor-exit p0

    #@16
    .line 126
    return v0

    #@17
    .line 124
    :cond_1
    int-to-long v2, v0

    #@18
    :try_start_2
    invoke-direct {p0, v2, v3}, Lsun/net/www/MeteredStream;->justRead(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b
    goto :goto_0

    #@1c
    .end local v0    # "c":I
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit p0

    #@1e
    throw v1
.end method

.method public declared-synchronized read([BII)I
    .locals 4
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
    monitor-enter p0

    #@1
    .line 131
    :try_start_0
    iget-boolean v1, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 132
    const/4 v1, -0x1

    #@6
    monitor-exit p0

    #@7
    return v1

    #@8
    .line 134
    :cond_0
    :try_start_1
    iget-object v1, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    #@a
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@d
    move-result v0

    #@e
    .line 135
    .local v0, "n":I
    int-to-long v2, v0

    #@f
    invoke-direct {p0, v2, v3}, Lsun/net/www/MeteredStream;->justRead(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    monitor-exit p0

    #@13
    .line 136
    return v0

    #@14
    .end local v0    # "n":I
    :catchall_0
    move-exception v1

    #@15
    monitor-exit p0

    #@16
    throw v1
.end method

.method public declared-synchronized reset()V
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
    .line 187
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 188
    return-void

    #@7
    .line 191
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lsun/net/www/MeteredStream;->isMarked()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_1

    #@d
    .line 192
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string/jumbo v1, "Resetting to an invalid mark"

    #@12
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0

    #@19
    .line 195
    :cond_1
    :try_start_2
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->markedCount:J

    #@1b
    iput-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    #@1d
    .line 196
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    monitor-exit p0

    #@21
    .line 186
    return-void
.end method

.method public declared-synchronized skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 142
    :try_start_0
    iget-boolean v2, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 143
    const-wide/16 v2, 0x0

    #@7
    monitor-exit p0

    #@8
    return-wide v2

    #@9
    .line 146
    :cond_0
    :try_start_1
    iget-object v2, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    #@b
    instance-of v2, v2, Lsun/net/www/http/ChunkedInputStream;

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 147
    iget-object v2, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    #@11
    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    #@14
    move-result-wide p1

    #@15
    .line 154
    :goto_0
    invoke-direct {p0, p1, p2}, Lsun/net/www/MeteredStream;->justRead(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit p0

    #@19
    .line 155
    return-wide p1

    #@1a
    .line 151
    :cond_1
    :try_start_2
    iget-wide v2, p0, Lsun/net/www/MeteredStream;->expected:J

    #@1c
    iget-wide v4, p0, Lsun/net/www/MeteredStream;->count:J

    #@1e
    sub-long/2addr v2, v4

    #@1f
    cmp-long v2, p1, v2

    #@21
    if-lez v2, :cond_2

    #@23
    iget-wide v2, p0, Lsun/net/www/MeteredStream;->expected:J

    #@25
    iget-wide v4, p0, Lsun/net/www/MeteredStream;->count:J

    #@27
    sub-long v0, v2, v4

    #@29
    .line 152
    .local v0, "min":J
    :goto_1
    iget-object v2, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    #@2b
    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    move-result-wide p1

    #@2f
    goto :goto_0

    #@30
    .line 151
    .end local v0    # "min":J
    :cond_2
    move-wide v0, p1

    #@31
    .restart local v0    # "min":J
    goto :goto_1

    #@32
    .end local v0    # "min":J
    :catchall_0
    move-exception v2

    #@33
    monitor-exit p0

    #@34
    throw v2
.end method
