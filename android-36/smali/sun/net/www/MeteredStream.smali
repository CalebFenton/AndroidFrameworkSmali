.class public Lsun/net/www/MeteredStream;
.super Ljava/io/FilterInputStream;
.source "MeteredStream.java"


# instance fields
.field protected blacklist closed:Z

.field protected blacklist count:J

.field protected blacklist expected:J

.field protected blacklist markLimit:I

.field protected blacklist markedCount:J

.field protected blacklist pi:Lsun/net/ProgressSource;


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;Lsun/net/ProgressSource;J)V
    .registers 8
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "pi"    # Lsun/net/ProgressSource;
    .param p3, "expected"    # J

    .line 49
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    .line 43
    iput-wide v0, p0, Lsun/net/www/MeteredStream;->markedCount:J

    .line 44
    const/4 v2, -0x1

    iput v2, p0, Lsun/net/www/MeteredStream;->markLimit:I

    .line 51
    iput-object p2, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    .line 52
    iput-wide p3, p0, Lsun/net/www/MeteredStream;->expected:J

    .line 54
    if-eqz p2, :cond_18

    .line 55
    invoke-virtual {p2, v0, v1, p3, p4}, Lsun/net/ProgressSource;->updateProgress(JJ)V

    .line 57
    :cond_18
    return-void
.end method

.method private blacklist isMarked()Z
    .registers 7

    .line 102
    iget v0, p0, Lsun/net/www/MeteredStream;->markLimit:I

    const/4 v1, 0x0

    if-gez v0, :cond_6

    .line 103
    return v1

    .line 107
    :cond_6
    iget-wide v2, p0, Lsun/net/www/MeteredStream;->count:J

    iget-wide v4, p0, Lsun/net/www/MeteredStream;->markedCount:J

    sub-long/2addr v2, v4

    iget v0, p0, Lsun/net/www/MeteredStream;->markLimit:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_13

    .line 108
    return v1

    .line 112
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method private final blacklist justRead(J)V
    .registers 8
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_10

    .line 66
    invoke-direct {p0}, Lsun/net/www/MeteredStream;->isMarked()Z

    move-result v0

    if-nez v0, :cond_f

    .line 67
    invoke-virtual {p0}, Lsun/net/www/MeteredStream;->close()V

    .line 69
    :cond_f
    return-void

    .line 72
    :cond_10
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    .line 77
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    iget-wide v2, p0, Lsun/net/www/MeteredStream;->markedCount:J

    sub-long/2addr v0, v2

    iget v2, p0, Lsun/net/www/MeteredStream;->markLimit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lsun/net/www/MeteredStream;->markLimit:I

    .line 81
    :cond_24
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    if-eqz v0, :cond_31

    .line 82
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    iget-wide v1, p0, Lsun/net/www/MeteredStream;->count:J

    iget-wide v3, p0, Lsun/net/www/MeteredStream;->expected:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/net/ProgressSource;->updateProgress(JJ)V

    .line 84
    :cond_31
    invoke-direct {p0}, Lsun/net/www/MeteredStream;->isMarked()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 85
    return-void

    .line 90
    :cond_38
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->expected:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4b

    .line 91
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    iget-wide v2, p0, Lsun/net/www/MeteredStream;->expected:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4b

    .line 92
    invoke-virtual {p0}, Lsun/net/www/MeteredStream;->close()V

    .line 95
    :cond_4b
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 175
    :try_start_1
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    :goto_d
    monitor-exit p0

    return v0

    .line 175
    .end local p0    # "this":Lsun/net/www/MeteredStream;
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public declared-synchronized whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 164
    :try_start_1
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-eqz v0, :cond_7

    .line 165
    monitor-exit p0

    return-void

    .line 167
    :cond_7
    :try_start_7
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    if-eqz v0, :cond_10

    .line 168
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    invoke-virtual {v0}, Lsun/net/ProgressSource;->finishTracking()V

    .line 170
    .end local p0    # "this":Lsun/net/www/MeteredStream;
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z

    .line 171
    iget-object v0, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1a

    .line 172
    monitor-exit p0

    return-void

    .line 163
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 213
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/MeteredStream;->close()V

    .line 214
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    if-eqz v0, :cond_c

    .line 215
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    invoke-virtual {v0}, Lsun/net/ProgressSource;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 219
    :cond_c
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 220
    nop

    .line 221
    return-void

    .line 219
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 220
    throw v0
.end method

.method public declared-synchronized whitelist test-api mark(I)V
    .registers 4
    .param p1, "readLimit"    # I

    monitor-enter p0

    .line 179
    :try_start_1
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-eqz v0, :cond_7

    .line 180
    monitor-exit p0

    return-void

    .line 182
    :cond_7
    :try_start_7
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    .line 187
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    iput-wide v0, p0, Lsun/net/www/MeteredStream;->markedCount:J

    .line 188
    iput p1, p0, Lsun/net/www/MeteredStream;->markLimit:I
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_12

    .line 189
    monitor-exit p0

    return-void

    .line 178
    .end local p0    # "this":Lsun/net/www/MeteredStream;
    .end local p1    # "readLimit":I
    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 205
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z

    if-eqz v0, :cond_6

    .line 206
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_6
    invoke-super {p0}, Ljava/io/FilterInputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 116
    :try_start_1
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    .line 117
    monitor-exit p0

    return v1

    .line 119
    :cond_8
    :try_start_8
    iget-object v0, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 120
    .local v0, "c":I
    if-eq v0, v1, :cond_16

    .line 121
    const-wide/16 v1, 0x1

    invoke-direct {p0, v1, v2}, Lsun/net/www/MeteredStream;->justRead(J)V

    goto :goto_1a

    .line 123
    .end local p0    # "this":Lsun/net/www/MeteredStream;
    :cond_16
    int-to-long v1, v0

    invoke-direct {p0, v1, v2}, Lsun/net/www/MeteredStream;->justRead(J)V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1c

    .line 125
    :goto_1a
    monitor-exit p0

    return v0

    .line 115
    .end local v0    # "c":I
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public declared-synchronized whitelist test-api read([BII)I
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 130
    :try_start_1
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-eqz v0, :cond_8

    .line 131
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 133
    :cond_8
    :try_start_8
    iget-object v0, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 134
    .local v0, "n":I
    int-to-long v1, v0

    invoke-direct {p0, v1, v2}, Lsun/net/www/MeteredStream;->justRead(J)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_14

    .line 135
    monitor-exit p0

    return v0

    .line 129
    .end local v0    # "n":I
    .end local p0    # "this":Lsun/net/www/MeteredStream;
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public declared-synchronized whitelist test-api reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 192
    :try_start_1
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    if-eqz v0, :cond_7

    .line 193
    monitor-exit p0

    return-void

    .line 196
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lsun/net/www/MeteredStream;->isMarked()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 200
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->markedCount:J

    iput-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    .line 201
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1e

    .line 202
    monitor-exit p0

    return-void

    .line 197
    .end local p0    # "this":Lsun/net/www/MeteredStream;
    :cond_16
    :try_start_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Resetting to an invalid mark"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public declared-synchronized whitelist test-api skip(J)J
    .registers 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 141
    :try_start_1
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_24

    if-eqz v0, :cond_9

    .line 142
    monitor-exit p0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 153
    :cond_9
    :try_start_9
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->expected:J

    iget-wide v2, p0, Lsun/net/www/MeteredStream;->count:J

    sub-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_18

    iget-wide v0, p0, Lsun/net/www/MeteredStream;->expected:J

    iget-wide v2, p0, Lsun/net/www/MeteredStream;->count:J

    sub-long/2addr v0, v2

    goto :goto_19

    .end local p0    # "this":Lsun/net/www/MeteredStream;
    :cond_18
    move-wide v0, p1

    .line 154
    .local v0, "min":J
    :goto_19
    iget-object v2, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 156
    .end local p1    # "n":J
    .local v2, "n":J
    invoke-direct {p0, v2, v3}, Lsun/net/www/MeteredStream;->justRead(J)V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_24

    .line 157
    monitor-exit p0

    return-wide v2

    .line 140
    .end local v0    # "min":J
    .end local v2    # "n":J
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method
