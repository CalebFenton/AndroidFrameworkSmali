.class public Ljava/util/zip/DeflaterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DeflaterOutputStream.java"


# instance fields
.field protected buf:[B

.field private closed:Z

.field protected def:Ljava/util/zip/Deflater;

.field private final syncFlush:Z

.field usesDefaultDeflater:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 176
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    #@4
    .line 177
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->usesDefaultDeflater:Z

    #@7
    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "def"    # Ljava/util/zip/Deflater;

    #@0
    .prologue
    .line 143
    const/16 v0, 0x200

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, p1, p2, v0, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    #@6
    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "def"    # Ljava/util/zip/Deflater;
    .param p3, "size"    # I

    #@0
    .prologue
    .line 108
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    #@4
    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "def"    # Ljava/util/zip/Deflater;
    .param p3, "size"    # I
    .param p4, "syncFlush"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 83
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@4
    .line 58
    iput-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->closed:Z

    #@6
    .line 146
    iput-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->usesDefaultDeflater:Z

    #@8
    .line 84
    if-eqz p1, :cond_0

    #@a
    if-nez p2, :cond_1

    #@c
    .line 85
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@e
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@11
    throw v0

    #@12
    .line 86
    :cond_1
    if-gtz p3, :cond_2

    #@14
    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v1, "buffer size <= 0"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 89
    :cond_2
    iput-object p2, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    #@1f
    .line 90
    new-array v0, p3, [B

    #@21
    iput-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    #@23
    .line 91
    iput-boolean p4, p0, Ljava/util/zip/DeflaterOutputStream;->syncFlush:Z

    #@25
    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "def"    # Ljava/util/zip/Deflater;
    .param p3, "syncFlush"    # Z

    #@0
    .prologue
    .line 128
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, p1, p2, v0, p3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    #@5
    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "syncFlush"    # Z

    #@0
    .prologue
    .line 163
    new-instance v0, Ljava/util/zip/Deflater;

    #@2
    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    #@5
    const/16 v1, 0x200

    #@7
    invoke-direct {p0, p1, v0, v1, p2}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    #@a
    .line 164
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->usesDefaultDeflater:Z

    #@d
    .line 162
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
    .line 238
    iget-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->closed:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 239
    invoke-virtual {p0}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    #@7
    .line 240
    iget-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->usesDefaultDeflater:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 241
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    #@d
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    #@10
    .line 242
    :cond_0
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    #@12
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@15
    .line 243
    const/4 v0, 0x1

    #@16
    iput-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->closed:Z

    #@18
    .line 237
    :cond_1
    return-void
.end method

.method protected deflate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 252
    const/4 v0, 0x0

    #@2
    .line 253
    .local v0, "len":I
    :goto_0
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    #@4
    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    #@6
    iget-object v3, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    #@8
    array-length v3, v3

    #@9
    invoke-virtual {v1, v2, v4, v3}, Ljava/util/zip/Deflater;->deflate([BII)I

    #@c
    move-result v0

    #@d
    if-lez v0, :cond_0

    #@f
    .line 254
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    #@11
    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    #@13
    invoke-virtual {v1, v2, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    #@16
    goto :goto_0

    #@17
    .line 251
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    #@2
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 225
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    #@a
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    #@d
    .line 226
    :goto_0
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    #@f
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_0

    #@15
    .line 227
    invoke-virtual {p0}, Ljava/util/zip/DeflaterOutputStream;->deflate()V

    #@18
    goto :goto_0

    #@19
    .line 223
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 274
    iget-boolean v1, p0, Ljava/util/zip/DeflaterOutputStream;->syncFlush:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    #@7
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 283
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    #@f
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    #@12
    .line 273
    return-void

    #@13
    .line 275
    :cond_1
    const/4 v0, 0x0

    #@14
    .line 276
    .local v0, "len":I
    :cond_2
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    #@16
    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    #@18
    iget-object v3, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    #@1a
    array-length v3, v3

    #@1b
    const/4 v4, 0x2

    #@1c
    invoke-virtual {v1, v2, v5, v3, v4}, Ljava/util/zip/Deflater;->deflate([BIII)I

    #@1f
    move-result v0

    #@20
    if-lez v0, :cond_0

    #@22
    .line 278
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    #@24
    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    #@26
    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    #@29
    .line 279
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    #@2b
    array-length v1, v1

    #@2c
    if-ge v0, v1, :cond_2

    #@2e
    goto :goto_0
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 187
    new-array v0, v3, [B

    #@4
    .line 188
    .local v0, "buf":[B
    and-int/lit16 v1, p1, 0xff

    #@6
    int-to-byte v1, v1

    #@7
    aput-byte v1, v0, v2

    #@9
    .line 189
    invoke-virtual {p0, v0, v2, v3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    #@c
    .line 186
    return-void
.end method

.method public write([BII)V
    .locals 3
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
    .line 201
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    #@2
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 202
    new-instance v0, Ljava/io/IOException;

    #@a
    const-string/jumbo v1, "write beyond end of stream"

    #@d
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 204
    :cond_0
    or-int v0, p2, p3

    #@13
    add-int v1, p2, p3

    #@15
    or-int/2addr v0, v1

    #@16
    array-length v1, p1

    #@17
    add-int v2, p2, p3

    #@19
    sub-int/2addr v1, v2

    #@1a
    or-int/2addr v0, v1

    #@1b
    if-gez v0, :cond_1

    #@1d
    .line 205
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@1f
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@22
    throw v0

    #@23
    .line 206
    :cond_1
    if-nez p3, :cond_2

    #@25
    .line 207
    return-void

    #@26
    .line 209
    :cond_2
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    #@28
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    #@2b
    move-result v0

    #@2c
    if-nez v0, :cond_3

    #@2e
    .line 210
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    #@30
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    #@33
    .line 211
    :goto_0
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    #@35
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    #@38
    move-result v0

    #@39
    if-nez v0, :cond_3

    #@3b
    .line 212
    invoke-virtual {p0}, Ljava/util/zip/DeflaterOutputStream;->deflate()V

    #@3e
    goto :goto_0

    #@3f
    .line 200
    :cond_3
    return-void
.end method
