.class public Ljava/io/BufferedWriter;
.super Ljava/io/Writer;
.source "BufferedWriter.java"


# static fields
.field private static greylist-max-o defaultCharBufferSize:I


# instance fields
.field private greylist-max-o cb:[C

.field private greylist-max-o nChars:I

.field private greylist-max-o nextChar:I

.field private greylist-max-o out:Ljava/io/Writer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    const/16 v0, 0x2000

    sput v0, Ljava/io/BufferedWriter;->defaultCharBufferSize:I

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/Writer;)V
    .registers 3
    .param p1, "out"    # Ljava/io/Writer;

    .line 82
    sget v0, Ljava/io/BufferedWriter;->defaultCharBufferSize:I

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 83
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/Writer;I)V
    .registers 5
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "sz"    # I

    .line 95
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 96
    if-lez p2, :cond_11

    .line 98
    iput-object p1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    .line 99
    new-array v0, p2, [C

    iput-object v0, p0, Ljava/io/BufferedWriter;->cb:[C

    .line 100
    iput p2, p0, Ljava/io/BufferedWriter;->nChars:I

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/BufferedWriter;->nextChar:I

    .line 102
    return-void

    .line 97
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    if-eqz v0, :cond_5

    .line 108
    return-void

    .line 107
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o min(II)I
    .registers 3
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 144
    if-ge p1, p2, :cond_3

    return p1

    .line 145
    :cond_3
    return p2
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_3
    iget-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    if-nez v1, :cond_9

    .line 265
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_2e

    return-void

    .line 267
    :cond_9
    const/4 v1, 0x0

    :try_start_a
    iget-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_27

    .line 268
    .local v2, "w":Ljava/io/Writer;
    :try_start_c
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_1b

    .line 269
    if-eqz v2, :cond_14

    :try_start_11
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_27

    .line 270
    .end local v2    # "w":Ljava/io/Writer;
    :cond_14
    :try_start_14
    iput-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    .line 271
    iput-object v1, p0, Ljava/io/BufferedWriter;->cb:[C

    .line 272
    nop

    .line 273
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_2e

    .line 274
    return-void

    .line 267
    .restart local v2    # "w":Ljava/io/Writer;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_26

    :try_start_1e
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v4

    :try_start_23
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Ljava/io/BufferedWriter;
    :cond_26
    :goto_26
    throw v3
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_27

    .line 270
    .end local v2    # "w":Ljava/io/Writer;
    .restart local p0    # "this":Ljava/io/BufferedWriter;
    :catchall_27
    move-exception v2

    :try_start_28
    iput-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    .line 271
    iput-object v1, p0, Ljava/io/BufferedWriter;->cb:[C

    .line 272
    nop

    .end local p0    # "this":Ljava/io/BufferedWriter;
    throw v2

    .line 273
    .restart local p0    # "this":Ljava/io/BufferedWriter;
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public whitelist test-api flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 257
    iget-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 258
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method greylist-max-o flushBuffer()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedWriter;->ensureOpen()V

    .line 118
    iget v1, p0, Ljava/io/BufferedWriter;->nextChar:I

    if-nez v1, :cond_c

    .line 119
    monitor-exit v0

    return-void

    .line 120
    :cond_c
    iget-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Ljava/io/BufferedWriter;->cb:[C

    iget v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/Writer;->write([CII)V

    .line 121
    iput v4, p0, Ljava/io/BufferedWriter;->nextChar:I

    .line 122
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public whitelist test-api newLine()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public whitelist test-api write(I)V
    .registers 6
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedWriter;->ensureOpen()V

    .line 133
    iget v1, p0, Ljava/io/BufferedWriter;->nextChar:I

    iget v2, p0, Ljava/io/BufferedWriter;->nChars:I

    if-lt v1, v2, :cond_f

    .line 134
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 135
    :cond_f
    iget-object v1, p0, Ljava/io/BufferedWriter;->cb:[C

    iget v2, p0, Ljava/io/BufferedWriter;->nextChar:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 136
    monitor-exit v0

    .line 137
    return-void

    .line 136
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public whitelist test-api write(Ljava/lang/String;II)V
    .registers 11
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedWriter;->ensureOpen()V

    .line 226
    move v1, p2

    .local v1, "b":I
    add-int v2, p2, p3

    .line 227
    .local v2, "t":I
    :goto_9
    if-ge v1, v2, :cond_2f

    .line 228
    iget v3, p0, Ljava/io/BufferedWriter;->nChars:I

    iget v4, p0, Ljava/io/BufferedWriter;->nextChar:I

    sub-int/2addr v3, v4

    sub-int v4, v2, v1

    invoke-direct {p0, v3, v4}, Ljava/io/BufferedWriter;->min(II)I

    move-result v3

    .line 229
    .local v3, "d":I
    add-int v4, v1, v3

    iget-object v5, p0, Ljava/io/BufferedWriter;->cb:[C

    iget v6, p0, Ljava/io/BufferedWriter;->nextChar:I

    invoke-virtual {p1, v1, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 230
    add-int/2addr v1, v3

    .line 231
    iget v4, p0, Ljava/io/BufferedWriter;->nextChar:I

    add-int/2addr v4, v3

    iput v4, p0, Ljava/io/BufferedWriter;->nextChar:I

    .line 232
    iget v4, p0, Ljava/io/BufferedWriter;->nextChar:I

    iget v5, p0, Ljava/io/BufferedWriter;->nChars:I

    if-lt v4, v5, :cond_2e

    .line 233
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 234
    .end local v3    # "d":I
    :cond_2e
    goto :goto_9

    .line 235
    .end local v1    # "b":I
    .end local v2    # "t":I
    :cond_2f
    monitor-exit v0

    .line 236
    return-void

    .line 235
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public whitelist test-api write([CII)V
    .registers 10
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedWriter;->ensureOpen()V

    .line 172
    if-ltz p2, :cond_51

    array-length v1, p1

    if-gt p2, v1, :cond_51

    if-ltz p3, :cond_51

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_51

    add-int v1, p2, p3

    if-ltz v1, :cond_51

    .line 175
    if-nez p3, :cond_1a

    .line 176
    monitor-exit v0

    return-void

    .line 179
    :cond_1a
    iget v1, p0, Ljava/io/BufferedWriter;->nChars:I

    if-lt p3, v1, :cond_28

    .line 183
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 184
    iget-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 185
    monitor-exit v0

    return-void

    .line 188
    :cond_28
    move v1, p2

    .local v1, "b":I
    add-int v2, p2, p3

    .line 189
    .local v2, "t":I
    :goto_2b
    if-ge v1, v2, :cond_4f

    .line 190
    iget v3, p0, Ljava/io/BufferedWriter;->nChars:I

    iget v4, p0, Ljava/io/BufferedWriter;->nextChar:I

    sub-int/2addr v3, v4

    sub-int v4, v2, v1

    invoke-direct {p0, v3, v4}, Ljava/io/BufferedWriter;->min(II)I

    move-result v3

    .line 191
    .local v3, "d":I
    iget-object v4, p0, Ljava/io/BufferedWriter;->cb:[C

    iget v5, p0, Ljava/io/BufferedWriter;->nextChar:I

    invoke-static {p1, v1, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    add-int/2addr v1, v3

    .line 193
    iget v4, p0, Ljava/io/BufferedWriter;->nextChar:I

    add-int/2addr v4, v3

    iput v4, p0, Ljava/io/BufferedWriter;->nextChar:I

    .line 194
    iget v4, p0, Ljava/io/BufferedWriter;->nextChar:I

    iget v5, p0, Ljava/io/BufferedWriter;->nChars:I

    if-lt v4, v5, :cond_4e

    .line 195
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 196
    .end local v3    # "d":I
    :cond_4e
    goto :goto_2b

    .line 197
    .end local v1    # "b":I
    .end local v2    # "t":I
    :cond_4f
    monitor-exit v0

    .line 198
    return-void

    .line 174
    :cond_51
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local p0    # "this":Ljava/io/BufferedWriter;
    .end local p1    # "cbuf":[C
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v1

    .line 197
    .restart local p0    # "this":Ljava/io/BufferedWriter;
    .restart local p1    # "cbuf":[C
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw v1
.end method
