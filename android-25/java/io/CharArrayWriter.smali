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
    .line 58
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0}, Ljava/io/CharArrayWriter;-><init>(I)V

    #@5
    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "initialSize"    # I

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    #@3
    .line 68
    if-gez p1, :cond_0

    #@5
    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Negative initial size: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 72
    :cond_0
    new-array v0, p1, [C

    #@21
    iput-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@23
    .line 67
    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/CharArrayWriter;
    .locals 0
    .param p1, "c"    # C

    #@0
    .prologue
    .line 226
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->write(I)V

    #@3
    .line 227
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 166
    if-nez p1, :cond_0

    #@2
    const-string/jumbo v0, "null"

    #@5
    .line 167
    .local v0, "s":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    const/4 v2, 0x0

    #@a
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/CharArrayWriter;->write(Ljava/lang/String;II)V

    #@d
    .line 168
    return-object p0

    #@e
    .line 166
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 204
    if-nez p1, :cond_0

    #@2
    const-string/jumbo p1, "null"

    #@5
    .end local p1    # "csq":Ljava/lang/CharSequence;
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 205
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@10
    move-result v1

    #@11
    const/4 v2, 0x0

    #@12
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/CharArrayWriter;->write(Ljava/lang/String;II)V

    #@15
    .line 206
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
    .line 225
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
    .line 165
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
    .line 203
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 225
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(C)Ljava/io/CharArrayWriter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 165
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
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
    .line 203
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
    .line 278
    return-void
.end method

.method public flush()V
    .locals 0

    #@0
    .prologue
    .line 271
    return-void
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 235
    const/4 v0, 0x0

    #@1
    iput v0, p0, Ljava/io/CharArrayWriter;->count:I

    #@3
    .line 234
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 255
    iget v0, p0, Ljava/io/CharArrayWriter;->count:I

    #@2
    return v0
.end method

.method public toCharArray()[C
    .locals 3

    #@0
    .prologue
    .line 244
    iget-object v1, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 245
    :try_start_0
    iget-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@5
    iget v2, p0, Ljava/io/CharArrayWriter;->count:I

    #@7
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([CI)[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result-object v0

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    .line 244
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 263
    iget-object v1, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 264
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
    .line 263
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public write(I)V
    .locals 5
    .param p1, "c"    # I

    #@0
    .prologue
    .line 79
    iget-object v2, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 80
    :try_start_0
    iget v1, p0, Ljava/io/CharArrayWriter;->count:I

    #@5
    add-int/lit8 v0, v1, 0x1

    #@7
    .line 81
    .local v0, "newcount":I
    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@9
    array-length v1, v1

    #@a
    if-le v0, v1, :cond_0

    #@c
    .line 82
    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@e
    iget-object v3, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@10
    array-length v3, v3

    #@11
    shl-int/lit8 v3, v3, 0x1

    #@13
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    #@16
    move-result v3

    #@17
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([CI)[C

    #@1a
    move-result-object v1

    #@1b
    iput-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@1d
    .line 84
    :cond_0
    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@1f
    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    #@21
    int-to-char v4, p1

    #@22
    aput-char v4, v1, v3

    #@24
    .line 85
    iput v0, p0, Ljava/io/CharArrayWriter;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v2

    #@27
    .line 78
    return-void

    #@28
    .line 79
    .end local v0    # "newcount":I
    :catchall_0
    move-exception v1

    #@29
    monitor-exit v2

    #@2a
    throw v1
.end method

.method public write(Ljava/lang/String;II)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 119
    iget-object v2, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 120
    :try_start_0
    iget v1, p0, Ljava/io/CharArrayWriter;->count:I

    #@5
    add-int v0, v1, p3

    #@7
    .line 121
    .local v0, "newcount":I
    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@9
    array-length v1, v1

    #@a
    if-le v0, v1, :cond_0

    #@c
    .line 122
    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@e
    iget-object v3, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@10
    array-length v3, v3

    #@11
    shl-int/lit8 v3, v3, 0x1

    #@13
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    #@16
    move-result v3

    #@17
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([CI)[C

    #@1a
    move-result-object v1

    #@1b
    iput-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@1d
    .line 124
    :cond_0
    add-int v1, p2, p3

    #@1f
    iget-object v3, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@21
    iget v4, p0, Ljava/io/CharArrayWriter;->count:I

    #@23
    invoke-virtual {p1, p2, v1, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    #@26
    .line 125
    iput v0, p0, Ljava/io/CharArrayWriter;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v2

    #@29
    .line 118
    return-void

    #@2a
    .line 119
    .end local v0    # "newcount":I
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit v2

    #@2c
    throw v1
.end method

.method public write([CII)V
    .locals 4
    .param p1, "c"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 96
    if-ltz p2, :cond_0

    #@2
    array-length v1, p1

    #@3
    if-le p2, v1, :cond_1

    #@5
    .line 98
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@7
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@a
    throw v1

    #@b
    .line 96
    :cond_1
    if-ltz p3, :cond_0

    #@d
    .line 97
    add-int v1, p2, p3

    #@f
    array-length v2, p1

    #@10
    if-gt v1, v2, :cond_0

    #@12
    add-int v1, p2, p3

    #@14
    if-ltz v1, :cond_0

    #@16
    .line 99
    if-nez p3, :cond_2

    #@18
    .line 100
    return-void

    #@19
    .line 102
    :cond_2
    iget-object v2, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    #@1b
    monitor-enter v2

    #@1c
    .line 103
    :try_start_0
    iget v1, p0, Ljava/io/CharArrayWriter;->count:I

    #@1e
    add-int v0, v1, p3

    #@20
    .line 104
    .local v0, "newcount":I
    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@22
    array-length v1, v1

    #@23
    if-le v0, v1, :cond_3

    #@25
    .line 105
    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@27
    iget-object v3, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@29
    array-length v3, v3

    #@2a
    shl-int/lit8 v3, v3, 0x1

    #@2c
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    #@2f
    move-result v3

    #@30
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([CI)[C

    #@33
    move-result-object v1

    #@34
    iput-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@36
    .line 107
    :cond_3
    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    #@38
    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    #@3a
    invoke-static {p1, p2, v1, v3, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@3d
    .line 108
    iput v0, p0, Ljava/io/CharArrayWriter;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    monitor-exit v2

    #@40
    .line 95
    return-void

    #@41
    .line 102
    .end local v0    # "newcount":I
    :catchall_0
    move-exception v1

    #@42
    monitor-exit v2

    #@43
    throw v1
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
    .line 136
    iget-object v1, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 137
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
    .line 135
    return-void

    #@d
    .line 136
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method
