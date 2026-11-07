.class public Ljava/io/CharArrayWriter;
.super Ljava/io/Writer;
.source "CharArrayWriter.java"


# instance fields
.field protected whitelist test-api buf:[C

.field protected whitelist test-api count:I


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 58
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Ljava/io/CharArrayWriter;-><init>(I)V

    .line 59
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 5
    .param p1, "initialSize"    # I

    .line 67
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 68
    if-ltz p1, :cond_a

    .line 72
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    .line 73
    return-void

    .line 69
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api append(C)Ljava/io/CharArrayWriter;
    .registers 2
    .param p1, "c"    # C

    .line 236
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->write(I)V

    .line 237
    return-object p0
.end method

.method public whitelist test-api append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;
    .registers 5
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 176
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/CharArrayWriter;->write(Ljava/lang/String;II)V

    .line 178
    return-object p0
.end method

.method public whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;
    .registers 5
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 215
    if-nez p1, :cond_4

    const-string p1, "null"

    .line 216
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api append(C)Ljava/io/Writer;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(C)Ljava/io/CharArrayWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(C)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(C)Ljava/io/CharArrayWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api close()V
    .registers 1

    .line 288
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 1

    .line 281
    return-void
.end method

.method public whitelist test-api reset()V
    .registers 2

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/CharArrayWriter;->count:I

    .line 246
    return-void
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 265
    iget v0, p0, Ljava/io/CharArrayWriter;->count:I

    return v0
.end method

.method public whitelist test-api toCharArray()[C
    .registers 4

    .line 254
    iget-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_3
    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v2, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 256
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 273
    iget-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_3
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0

    return-object v1

    .line 275
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public whitelist test-api write(I)V
    .registers 7
    .param p1, "c"    # I

    .line 79
    iget-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_3
    iget v1, p0, Ljava/io/CharArrayWriter;->count:I

    add-int/lit8 v1, v1, 0x1

    .line 81
    .local v1, "newcount":I
    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_1d

    .line 82
    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget-object v3, p0, Ljava/io/CharArrayWriter;->buf:[C

    array-length v3, v3

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v2

    iput-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    .line 84
    :cond_1d
    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    int-to-char v4, p1

    aput-char v4, v2, v3

    .line 85
    iput v1, p0, Ljava/io/CharArrayWriter;->count:I

    .line 86
    .end local v1    # "newcount":I
    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public whitelist test-api write(Ljava/lang/String;II)V
    .registers 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 129
    iget-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_3
    iget v1, p0, Ljava/io/CharArrayWriter;->count:I

    add-int/2addr v1, p3

    .line 131
    .local v1, "newcount":I
    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_1c

    .line 132
    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget-object v3, p0, Ljava/io/CharArrayWriter;->buf:[C

    array-length v3, v3

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v2

    iput-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    .line 134
    :cond_1c
    add-int v2, p2, p3

    iget-object v3, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v4, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-virtual {p1, p2, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 135
    iput v1, p0, Ljava/io/CharArrayWriter;->count:I

    .line 136
    .end local v1    # "newcount":I
    monitor-exit v0

    .line 137
    return-void

    .line 136
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public whitelist test-api write([CII)V
    .registers 8
    .param p1, "c"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 101
    if-ltz p2, :cond_3d

    array-length v0, p1

    if-gt p2, v0, :cond_3d

    if-ltz p3, :cond_3d

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3d

    add-int v0, p2, p3

    if-ltz v0, :cond_3d

    .line 104
    if-nez p3, :cond_13

    .line 105
    return-void

    .line 107
    :cond_13
    iget-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_16
    iget v1, p0, Ljava/io/CharArrayWriter;->count:I

    add-int/2addr v1, p3

    .line 109
    .local v1, "newcount":I
    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_2f

    .line 110
    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget-object v3, p0, Ljava/io/CharArrayWriter;->buf:[C

    array-length v3, v3

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v2

    iput-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    .line 112
    :cond_2f
    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iput v1, p0, Ljava/io/CharArrayWriter;->count:I

    .line 114
    .end local v1    # "newcount":I
    monitor-exit v0

    .line 115
    return-void

    .line 114
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_16 .. :try_end_3c} :catchall_3a

    throw v1

    .line 103
    :cond_3d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist test-api writeTo(Ljava/io/Writer;)V
    .registers 6
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_3
    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v2, p0, Ljava/io/CharArrayWriter;->count:I

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 148
    monitor-exit v0

    .line 149
    return-void

    .line 148
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method
