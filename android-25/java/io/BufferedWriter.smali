.class public Ljava/io/BufferedWriter;
.super Ljava/io/Writer;
.source "BufferedWriter.java"


# static fields
.field private static defaultCharBufferSize:I


# instance fields
.field private cb:[C

.field private lineSeparator:Ljava/lang/String;

.field private nChars:I

.field private nextChar:I

.field private out:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 73
    const/16 v0, 0x2000

    #@2
    sput v0, Ljava/io/BufferedWriter;->defaultCharBufferSize:I

    #@4
    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 88
    sget v0, Ljava/io/BufferedWriter;->defaultCharBufferSize:I

    #@2
    invoke-direct {p0, p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    #@5
    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "sz"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 101
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    #@4
    .line 102
    if-gtz p2, :cond_0

    #@6
    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Buffer size <= 0"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 104
    :cond_0
    iput-object p1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    #@11
    .line 105
    new-array v0, p2, [C

    #@13
    iput-object v0, p0, Ljava/io/BufferedWriter;->cb:[C

    #@15
    .line 106
    iput p2, p0, Ljava/io/BufferedWriter;->nChars:I

    #@17
    .line 107
    iput v1, p0, Ljava/io/BufferedWriter;->nextChar:I

    #@19
    .line 110
    new-instance v0, Lsun/security/action/GetPropertyAction;

    #@1b
    const-string/jumbo v1, "line.separator"

    #@1e
    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@21
    .line 109
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Ljava/lang/String;

    #@27
    iput-object v0, p0, Ljava/io/BufferedWriter;->lineSeparator:Ljava/lang/String;

    #@29
    .line 100
    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 116
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Stream closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 114
    :cond_0
    return-void
.end method

.method private min(II)I
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    #@0
    .prologue
    .line 153
    if-ge p1, p2, :cond_0

    #@2
    return p1

    #@3
    .line 154
    :cond_0
    return p2
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
    .line 259
    iget-object v1, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 260
    :try_start_0
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@5
    if-nez v0, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 261
    return-void

    #@9
    .line 264
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    .line 266
    :try_start_2
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    #@e
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    #@11
    .line 267
    const/4 v0, 0x0

    #@12
    iput-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    #@14
    .line 268
    const/4 v0, 0x0

    #@15
    iput-object v0, p0, Ljava/io/BufferedWriter;->cb:[C
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@17
    monitor-exit v1

    #@18
    .line 258
    return-void

    #@19
    .line 265
    :catchall_0
    move-exception v0

    #@1a
    .line 266
    :try_start_3
    iget-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    #@1c
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    #@1f
    .line 267
    const/4 v2, 0x0

    #@20
    iput-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    #@22
    .line 268
    const/4 v2, 0x0

    #@23
    iput-object v2, p0, Ljava/io/BufferedWriter;->cb:[C

    #@25
    .line 265
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@26
    .line 259
    :catchall_1
    move-exception v0

    #@27
    monitor-exit v1

    #@28
    throw v0
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
    .line 252
    iget-object v1, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 253
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V

    #@6
    .line 254
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    #@8
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 251
    return-void

    #@d
    .line 252
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method flushBuffer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    iget-object v1, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 126
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->ensureOpen()V

    #@6
    .line 127
    iget v0, p0, Ljava/io/BufferedWriter;->nextChar:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-nez v0, :cond_0

    #@a
    monitor-exit v1

    #@b
    .line 128
    return-void

    #@c
    .line 129
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    #@e
    iget-object v2, p0, Ljava/io/BufferedWriter;->cb:[C

    #@10
    iget v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    #@12
    const/4 v4, 0x0

    #@13
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/Writer;->write([CII)V

    #@16
    .line 130
    const/4 v0, 0x0

    #@17
    iput v0, p0, Ljava/io/BufferedWriter;->nextChar:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    monitor-exit v1

    #@1a
    .line 124
    return-void

    #@1b
    .line 125
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method public newLine()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 243
    iget-object v0, p0, Ljava/io/BufferedWriter;->lineSeparator:Ljava/lang/String;

    #@2
    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@5
    .line 242
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    iget-object v1, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 141
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->ensureOpen()V

    #@6
    .line 142
    iget v0, p0, Ljava/io/BufferedWriter;->nextChar:I

    #@8
    iget v2, p0, Ljava/io/BufferedWriter;->nChars:I

    #@a
    if-lt v0, v2, :cond_0

    #@c
    .line 143
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V

    #@f
    .line 144
    :cond_0
    iget-object v0, p0, Ljava/io/BufferedWriter;->cb:[C

    #@11
    iget v2, p0, Ljava/io/BufferedWriter;->nextChar:I

    #@13
    add-int/lit8 v3, v2, 0x1

    #@15
    iput v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    #@17
    int-to-char v3, p1

    #@18
    aput-char v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v1

    #@1b
    .line 139
    return-void

    #@1c
    .line 140
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 220
    iget-object v4, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 221
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->ensureOpen()V

    #@6
    .line 223
    move v0, p2

    #@7
    .local v0, "b":I
    add-int v2, p2, p3

    #@9
    .line 224
    .local v2, "t":I
    :cond_0
    :goto_0
    if-ge v0, v2, :cond_1

    #@b
    .line 225
    iget v3, p0, Ljava/io/BufferedWriter;->nChars:I

    #@d
    iget v5, p0, Ljava/io/BufferedWriter;->nextChar:I

    #@f
    sub-int/2addr v3, v5

    #@10
    sub-int v5, v2, v0

    #@12
    invoke-direct {p0, v3, v5}, Ljava/io/BufferedWriter;->min(II)I

    #@15
    move-result v1

    #@16
    .line 226
    .local v1, "d":I
    add-int v3, v0, v1

    #@18
    iget-object v5, p0, Ljava/io/BufferedWriter;->cb:[C

    #@1a
    iget v6, p0, Ljava/io/BufferedWriter;->nextChar:I

    #@1c
    invoke-virtual {p1, v0, v3, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    #@1f
    .line 227
    add-int/2addr v0, v1

    #@20
    .line 228
    iget v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    #@22
    add-int/2addr v3, v1

    #@23
    iput v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    #@25
    .line 229
    iget v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    #@27
    iget v5, p0, Ljava/io/BufferedWriter;->nChars:I

    #@29
    if-lt v3, v5, :cond_0

    #@2b
    .line 230
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 220
    .end local v0    # "b":I
    .end local v1    # "d":I
    .end local v2    # "t":I
    :catchall_0
    move-exception v3

    #@30
    monitor-exit v4

    #@31
    throw v3

    #@32
    .restart local v0    # "b":I
    .restart local v2    # "t":I
    :cond_1
    monitor-exit v4

    #@33
    .line 219
    return-void
.end method

.method public write([CII)V
    .locals 6
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
    .line 174
    iget-object v4, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 175
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->ensureOpen()V

    #@6
    .line 176
    if-ltz p2, :cond_0

    #@8
    array-length v3, p1

    #@9
    if-le p2, v3, :cond_1

    #@b
    .line 178
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@d
    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@10
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 174
    :catchall_0
    move-exception v3

    #@12
    monitor-exit v4

    #@13
    throw v3

    #@14
    .line 176
    :cond_1
    if-ltz p3, :cond_0

    #@16
    .line 177
    add-int v3, p2, p3

    #@18
    :try_start_1
    array-length v5, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    if-gt v3, v5, :cond_0

    #@1b
    add-int v3, p2, p3

    #@1d
    if-ltz v3, :cond_0

    #@1f
    .line 179
    if-nez p3, :cond_2

    #@21
    monitor-exit v4

    #@22
    .line 180
    return-void

    #@23
    .line 183
    :cond_2
    :try_start_2
    iget v3, p0, Ljava/io/BufferedWriter;->nChars:I

    #@25
    if-lt p3, v3, :cond_3

    #@27
    .line 187
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V

    #@2a
    .line 188
    iget-object v3, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    #@2c
    invoke-virtual {v3, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2f
    monitor-exit v4

    #@30
    .line 189
    return-void

    #@31
    .line 192
    :cond_3
    move v0, p2

    #@32
    .local v0, "b":I
    add-int v2, p2, p3

    #@34
    .line 193
    .local v2, "t":I
    :cond_4
    :goto_0
    if-ge v0, v2, :cond_5

    #@36
    .line 194
    :try_start_3
    iget v3, p0, Ljava/io/BufferedWriter;->nChars:I

    #@38
    iget v5, p0, Ljava/io/BufferedWriter;->nextChar:I

    #@3a
    sub-int/2addr v3, v5

    #@3b
    sub-int v5, v2, v0

    #@3d
    invoke-direct {p0, v3, v5}, Ljava/io/BufferedWriter;->min(II)I

    #@40
    move-result v1

    #@41
    .line 195
    .local v1, "d":I
    iget-object v3, p0, Ljava/io/BufferedWriter;->cb:[C

    #@43
    iget v5, p0, Ljava/io/BufferedWriter;->nextChar:I

    #@45
    invoke-static {p1, v0, v3, v5, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@48
    .line 196
    add-int/2addr v0, v1

    #@49
    .line 197
    iget v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    #@4b
    add-int/2addr v3, v1

    #@4c
    iput v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    #@4e
    .line 198
    iget v3, p0, Ljava/io/BufferedWriter;->nextChar:I

    #@50
    iget v5, p0, Ljava/io/BufferedWriter;->nChars:I

    #@52
    if-lt v3, v5, :cond_4

    #@54
    .line 199
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flushBuffer()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@57
    goto :goto_0

    #@58
    .end local v1    # "d":I
    :cond_5
    monitor-exit v4

    #@59
    .line 173
    return-void
.end method
