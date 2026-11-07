.class public Ljava/io/LineNumberReader;
.super Ljava/io/BufferedReader;
.source "LineNumberReader.java"


# static fields
.field private static final greylist-max-o maxSkipBufferSize:I = 0x2000


# instance fields
.field private greylist-max-o lineNumber:I

.field private greylist-max-o markedLineNumber:I

.field private greylist-max-o markedSkipLF:Z

.field private greylist-max-o skipBuffer:[C

.field private greylist-max-o skipLF:Z


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/Reader;)V
    .registers 3
    .param p1, "in"    # Ljava/io/Reader;

    .line 72
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/LineNumberReader;->skipBuffer:[C

    .line 73
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/Reader;I)V
    .registers 4
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "sz"    # I

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/LineNumberReader;->skipBuffer:[C

    .line 87
    return-void
.end method


# virtual methods
.method public whitelist test-api getLineNumber()I
    .registers 2

    .line 109
    iget v0, p0, Ljava/io/LineNumberReader;->lineNumber:I

    return v0
.end method

.method public whitelist test-api mark(I)V
    .registers 4
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_3
    iget-boolean v1, p0, Ljava/io/LineNumberReader;->skipLF:Z

    if-eqz v1, :cond_9

    .line 268
    add-int/lit8 p1, p1, 0x1

    .line 269
    :cond_9
    invoke-super {p0, p1}, Ljava/io/BufferedReader;->mark(I)V

    .line 270
    iget v1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    iput v1, p0, Ljava/io/LineNumberReader;->markedLineNumber:I

    .line 271
    iget-boolean v1, p0, Ljava/io/LineNumberReader;->skipLF:Z

    iput-boolean v1, p0, Ljava/io/LineNumberReader;->markedSkipLF:Z

    .line 272
    monitor-exit v0

    .line 273
    return-void

    .line 272
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist test-api read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_3
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    .line 127
    .local v1, "c":I
    iget-boolean v2, p0, Ljava/io/LineNumberReader;->skipLF:Z

    const/16 v3, 0xa

    if-eqz v2, :cond_17

    .line 128
    if-ne v1, v3, :cond_14

    .line 129
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    move v1, v2

    .line 130
    :cond_14
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/io/LineNumberReader;->skipLF:Z

    .line 132
    :cond_17
    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_2a

    .line 139
    monitor-exit v0

    goto :goto_26

    .line 134
    :sswitch_1d
    iput-boolean v2, p0, Ljava/io/LineNumberReader;->skipLF:Z

    .line 136
    :sswitch_1f
    iget v4, p0, Ljava/io/LineNumberReader;->lineNumber:I

    add-int/2addr v4, v2

    iput v4, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 137
    monitor-exit v0

    return v3

    .line 139
    :goto_26
    return v1

    .line 140
    .end local v1    # "c":I
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1

    :sswitch_data_2a
    .sparse-switch
        0xa -> :sswitch_1f
        0xd -> :sswitch_1d
    .end sparse-switch
.end method

.method public whitelist test-api read([CII)I
    .registers 10
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedReader;->read([CII)I

    move-result v1

    .line 170
    .local v1, "n":I
    move v2, p2

    .local v2, "i":I
    :goto_8
    add-int v3, p2, v1

    if-ge v2, v3, :cond_29

    .line 171
    aget-char v3, p1, v2

    .line 172
    .local v3, "c":I
    iget-boolean v4, p0, Ljava/io/LineNumberReader;->skipLF:Z

    if-eqz v4, :cond_1a

    .line 173
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/io/LineNumberReader;->skipLF:Z

    .line 174
    const/16 v4, 0xa

    if-ne v3, v4, :cond_1a

    .line 175
    goto :goto_26

    .line 177
    :cond_1a
    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_2e

    goto :goto_26

    .line 179
    :sswitch_1f
    iput-boolean v4, p0, Ljava/io/LineNumberReader;->skipLF:Z

    .line 181
    :sswitch_21
    iget v5, p0, Ljava/io/LineNumberReader;->lineNumber:I

    add-int/2addr v5, v4

    iput v5, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 170
    .end local v3    # "c":I
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 186
    .end local v2    # "i":I
    :cond_29
    monitor-exit v0

    return v1

    .line 187
    .end local v1    # "n":I
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1

    :sswitch_data_2e
    .sparse-switch
        0xa -> :sswitch_21
        0xd -> :sswitch_1f
    .end sparse-switch
.end method

.method public whitelist test-api readLine()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_3
    iget-boolean v1, p0, Ljava/io/LineNumberReader;->skipLF:Z

    invoke-super {p0, v1}, Ljava/io/BufferedReader;->readLine(Z)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "l":Ljava/lang/String;
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/io/LineNumberReader;->skipLF:Z

    .line 205
    if-eqz v1, :cond_14

    .line 206
    iget v2, p0, Ljava/io/LineNumberReader;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 207
    :cond_14
    monitor-exit v0

    return-object v1

    .line 208
    .end local v1    # "l":Ljava/lang/String;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist test-api reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_3
    invoke-super {p0}, Ljava/io/BufferedReader;->reset()V

    .line 285
    iget v1, p0, Ljava/io/LineNumberReader;->markedLineNumber:I

    iput v1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 286
    iget-boolean v1, p0, Ljava/io/LineNumberReader;->markedSkipLF:Z

    iput-boolean v1, p0, Ljava/io/LineNumberReader;->skipLF:Z

    .line 287
    monitor-exit v0

    .line 288
    return-void

    .line 287
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist test-api setLineNumber(I)V
    .registers 2
    .param p1, "lineNumber"    # I

    .line 98
    iput p1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 99
    return-void
.end method

.method public whitelist test-api skip(J)J
    .registers 12
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3d

    .line 234
    const-wide/16 v2, 0x2000

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 235
    .local v2, "nn":I
    iget-object v3, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 236
    :try_start_10
    iget-object v4, p0, Ljava/io/LineNumberReader;->skipBuffer:[C

    if-eqz v4, :cond_19

    iget-object v4, p0, Ljava/io/LineNumberReader;->skipBuffer:[C

    array-length v4, v4

    if-ge v4, v2, :cond_1d

    .line 237
    :cond_19
    new-array v4, v2, [C

    iput-object v4, p0, Ljava/io/LineNumberReader;->skipBuffer:[C

    .line 238
    :cond_1d
    move-wide v4, p1

    .line 239
    .local v4, "r":J
    :goto_1e
    cmp-long v6, v4, v0

    if-lez v6, :cond_36

    .line 240
    iget-object v6, p0, Ljava/io/LineNumberReader;->skipBuffer:[C

    int-to-long v7, v2

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v8, v7}, Ljava/io/LineNumberReader;->read([CII)I

    move-result v6

    .line 241
    .local v6, "nc":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_33

    .line 242
    goto :goto_36

    .line 243
    :cond_33
    int-to-long v7, v6

    sub-long/2addr v4, v7

    .line 244
    .end local v6    # "nc":I
    goto :goto_1e

    .line 245
    :cond_36
    :goto_36
    sub-long v0, p1, v4

    monitor-exit v3

    return-wide v0

    .line 246
    .end local v4    # "r":J
    :catchall_3a
    move-exception v0

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_10 .. :try_end_3c} :catchall_3a

    throw v0

    .line 233
    .end local v2    # "nn":I
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "skip() value is negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
