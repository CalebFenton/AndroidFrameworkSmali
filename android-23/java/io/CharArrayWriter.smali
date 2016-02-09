.class public Ljava/io/CharArrayWriter;
.super Ljava/io/Writer;
.source "CharArrayWriter.java"


# instance fields
.field protected buf:[C

.field protected count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    #@3
    .line 48
    const/16 v0, 0x20

    #@5
    new-array v0, v0, [C

    #@7
    iput-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@9
    .line 49
    iget-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@b
    iput-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    #@d
    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialSize"    # I

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    #@3
    .line 63
    if-gez p1, :cond_0

    #@5
    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "size < 0"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 66
    :cond_0
    new-array v0, p1, [C

    #@10
    iput-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@12
    .line 67
    iget-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@14
    iput-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    #@16
    .line 62
    return-void
.end method

.method private expand(I)V
    .locals 5
    .param p1, "i"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 80
    iget v2, p0, Ljava/io/CharArrayWriter;->count:I

    #@3
    add-int/2addr v2, p1

    #@4
    iget-object v3, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@6
    array-length v3, v3

    #@7
    if-gt v2, v3, :cond_0

    #@9
    .line 81
    return-void

    #@a
    .line 84
    :cond_0
    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@c
    array-length v2, v2

    #@d
    mul-int/lit8 v2, v2, 0x2

    #@f
    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    #@11
    add-int/2addr v3, p1

    #@12
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@15
    move-result v0

    #@16
    .line 85
    .local v0, "newLen":I
    new-array v1, v0, [C

    #@18
    .line 86
    .local v1, "newbuf":[C
    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@1a
    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    #@1c
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@1f
    .line 87
    iput-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@21
    .line 78
    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/CharArrayWriter;
    .locals 0
    .param p1, "c"    # C

    #@0
    .prologue
    .line 245
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->write(I)V

    #@3
    .line 246
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 261
    if-nez p1, :cond_0

    #@2
    .line 262
    const-string/jumbo p1, "null"

    #@5
    .line 264
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;

    #@d
    .line 265
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 293
    if-nez p1, :cond_0

    #@2
    .line 294
    const-string/jumbo p1, "null"

    #@5
    .line 296
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 297
    .local v0, "output":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@10
    move-result v1

    #@11
    const/4 v2, 0x0

    #@12
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/CharArrayWriter;->write(Ljava/lang/String;II)V

    #@15
    .line 298
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 244
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(C)Ljava/io/CharArrayWriter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 260
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 292
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public close()V
    .locals 0

    #@0
    .prologue
    .line 74
    return-void
.end method

.method public flush()V
    .locals 0

    #@0
    .prologue
    .line 94
    return-void
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 105
    const/4 v1, 0x0

    #@4
    :try_start_0
    iput v1, p0, Ljava/io/CharArrayWriter;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 103
    return-void

    #@8
    .line 104
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 118
    :try_start_0
    iget v1, p0, Ljava/io/CharArrayWriter;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 117
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public toCharArray()[C
    .locals 6

    #@0
    .prologue
    .line 130
    iget-object v2, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 131
    :try_start_0
    iget v1, p0, Ljava/io/CharArrayWriter;->count:I

    #@5
    new-array v0, v1, [C

    #@7
    .line 132
    .local v0, "result":[C
    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@9
    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    #@b
    const/4 v4, 0x0

    #@c
    const/4 v5, 0x0

    #@d
    invoke-static {v1, v4, v0, v5, v3}, Ljava/lang/System;->arraycopy([CI[CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v2

    #@11
    .line 133
    return-object v0

    #@12
    .line 130
    .end local v0    # "result":[C
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 146
    iget-object v1, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 147
    :try_start_0
    new-instance v0, Ljava/lang/String;

    #@5
    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@7
    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    #@9
    const/4 v4, 0x0

    #@a
    invoke-direct {v0, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    return-object v0

    #@f
    .line 146
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "oneChar"    # I

    #@0
    .prologue
    .line 185
    iget-object v1, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 186
    const/4 v0, 0x1

    #@4
    :try_start_0
    invoke-direct {p0, v0}, Ljava/io/CharArrayWriter;->expand(I)V

    #@7
    .line 187
    iget-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@9
    iget v2, p0, Ljava/io/CharArrayWriter;->count:I

    #@b
    add-int/lit8 v3, v2, 0x1

    #@d
    iput v3, p0, Ljava/io/CharArrayWriter;->count:I

    #@f
    int-to-char v3, p1

    #@10
    aput-char v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    .line 184
    return-void

    #@14
    .line 185
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 204
    if-nez p1, :cond_0

    #@2
    .line 205
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "str == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 207
    :cond_0
    or-int v0, p2, p3

    #@d
    if-ltz v0, :cond_1

    #@f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@12
    move-result v0

    #@13
    sub-int/2addr v0, p3

    #@14
    if-le p2, v0, :cond_2

    #@16
    .line 208
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    #@18
    invoke-direct {v0, p1, p2, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    #@1b
    throw v0

    #@1c
    .line 210
    :cond_2
    iget-object v1, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    #@1e
    monitor-enter v1

    #@1f
    .line 211
    :try_start_0
    invoke-direct {p0, p3}, Ljava/io/CharArrayWriter;->expand(I)V

    #@22
    .line 212
    add-int v0, p2, p3

    #@24
    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@26
    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    #@28
    invoke-virtual {p1, p2, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    #@2b
    .line 213
    iget v0, p0, Ljava/io/CharArrayWriter;->count:I

    #@2d
    add-int/2addr v0, p3

    #@2e
    iput v0, p0, Ljava/io/CharArrayWriter;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    monitor-exit v1

    #@31
    .line 203
    return-void

    #@32
    .line 210
    :catchall_0
    move-exception v0

    #@33
    monitor-exit v1

    #@34
    throw v0
.end method

.method public write([CII)V
    .locals 3
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 167
    array-length v0, p1

    #@1
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 168
    iget-object v1, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 169
    :try_start_0
    invoke-direct {p0, p3}, Ljava/io/CharArrayWriter;->expand(I)V

    #@a
    .line 170
    iget-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@c
    iget v2, p0, Ljava/io/CharArrayWriter;->count:I

    #@e
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@11
    .line 171
    iget v0, p0, Ljava/io/CharArrayWriter;->count:I

    #@13
    add-int/2addr v0, p3

    #@14
    iput v0, p0, Ljava/io/CharArrayWriter;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    .line 166
    return-void

    #@18
    .line 168
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public writeTo(Ljava/io/Writer;)V
    .locals 4
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 230
    iget-object v1, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 231
    :try_start_0
    iget-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@5
    iget v2, p0, Ljava/io/CharArrayWriter;->count:I

    #@7
    const/4 v3, 0x0

    #@8
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 229
    return-void

    #@d
    .line 230
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method
