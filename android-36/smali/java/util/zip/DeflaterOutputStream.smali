.class public Ljava/util/zip/DeflaterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DeflaterOutputStream.java"


# instance fields
.field protected whitelist test-api buf:[B

.field private greylist-max-o closed:Z

.field protected whitelist test-api def:Ljava/util/zip/Deflater;

.field private final greylist-max-o syncFlush:Z

.field greylist-max-o usesDefaultDeflater:Z


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->usesDefaultDeflater:Z

    .line 177
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "def"    # Ljava/util/zip/Deflater;

    .line 142
    const/16 v0, 0x200

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    .line 143
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;I)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "def"    # Ljava/util/zip/Deflater;
    .param p3, "size"    # I

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    .line 108
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V
    .registers 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "def"    # Ljava/util/zip/Deflater;
    .param p3, "size"    # I
    .param p4, "syncFlush"    # Z

    .line 82
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->closed:Z

    .line 145
    iput-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->usesDefaultDeflater:Z

    .line 83
    if-eqz p1, :cond_1f

    if-eqz p2, :cond_1f

    .line 85
    if-lez p3, :cond_17

    .line 88
    iput-object p2, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    .line 89
    new-array v0, p3, [B

    iput-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    .line 90
    iput-boolean p4, p0, Ljava/util/zip/DeflaterOutputStream;->syncFlush:Z

    .line 91
    return-void

    .line 86
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "def"    # Ljava/util/zip/Deflater;
    .param p3, "syncFlush"    # Z

    .line 127
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0, p3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    .line 128
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Z)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "syncFlush"    # Z

    .line 162
    if-eqz p1, :cond_8

    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->usesDefaultDeflater:Z

    .line 164
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    iget-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->closed:Z

    if-nez v0, :cond_24

    .line 245
    :try_start_4
    invoke-virtual {p0}, Ljava/util/zip/DeflaterOutputStream;->finish()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_19

    .line 247
    iget-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->usesDefaultDeflater:Z

    if-eqz v0, :cond_10

    .line 248
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 250
    :cond_10
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->closed:Z

    goto :goto_24

    .line 247
    :catchall_19
    move-exception v0

    iget-boolean v1, p0, Ljava/util/zip/DeflaterOutputStream;->usesDefaultDeflater:Z

    if-eqz v1, :cond_23

    .line 248
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    .line 249
    :cond_23
    throw v0

    .line 253
    :cond_24
    :goto_24
    return-void
.end method

.method protected whitelist test-api deflate()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "len":I
    :goto_1
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    iget-object v3, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v1

    move v0, v1

    if-lez v1, :cond_18

    .line 268
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    invoke-virtual {v1, v2, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 270
    :cond_18
    return-void
.end method

.method public whitelist test-api finish()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_25

    .line 225
    :try_start_8
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 226
    :goto_d
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_19

    .line 227
    invoke-virtual {p0}, Ljava/util/zip/DeflaterOutputStream;->deflate()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_1a

    goto :goto_d

    .line 233
    :cond_19
    goto :goto_25

    .line 229
    :catch_1a
    move-exception v0

    .line 230
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v1, p0, Ljava/util/zip/DeflaterOutputStream;->usesDefaultDeflater:Z

    if-eqz v1, :cond_24

    .line 231
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    .line 232
    :cond_24
    throw v0

    .line 235
    .end local v0    # "e":Ljava/io/IOException;
    :cond_25
    :goto_25
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    iget-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->syncFlush:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "len":I
    :cond_d
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    iget-object v3, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    array-length v3, v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v1

    move v0, v1

    if-lez v1, :cond_2a

    .line 292
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 293
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_d

    .line 294
    nop

    .line 297
    .end local v0    # "len":I
    :cond_2a
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 298
    return-void
.end method

.method public whitelist test-api write(I)V
    .registers 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 187
    .local v1, "buf":[B
    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 188
    invoke-virtual {p0, v1, v3, v0}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    .line 189
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_37

    .line 203
    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    array-length v1, p1

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-ltz v0, :cond_31

    .line 205
    if-nez p3, :cond_17

    .line 206
    return-void

    .line 208
    :cond_17
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_30

    .line 209
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 210
    :goto_24
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_30

    .line 211
    invoke-virtual {p0}, Ljava/util/zip/DeflaterOutputStream;->deflate()V

    goto :goto_24

    .line 214
    :cond_30
    return-void

    .line 204
    :cond_31
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 201
    :cond_37
    new-instance v0, Ljava/io/IOException;

    const-string v1, "write beyond end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
