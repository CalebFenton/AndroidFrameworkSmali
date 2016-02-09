.class public Ljava/util/zip/DeflaterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DeflaterOutputStream.java"


# static fields
.field static final BUF_SIZE:I = 0x200


# instance fields
.field protected buf:[B

.field protected def:Ljava/util/zip/Deflater;

.field done:Z

.field private final syncFlush:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 54
    new-instance v0, Ljava/util/zip/Deflater;

    #@2
    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    #@5
    const/16 v1, 0x200

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    #@b
    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "def"    # Ljava/util/zip/Deflater;

    #@0
    .prologue
    .line 61
    const/16 v0, 0x200

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, p1, p2, v0, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    #@6
    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;I)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "def"    # Ljava/util/zip/Deflater;
    .param p3, "bufferSize"    # I

    #@0
    .prologue
    .line 68
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    #@4
    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "def"    # Ljava/util/zip/Deflater;
    .param p3, "bufferSize"    # I
    .param p4, "syncFlush"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 94
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@4
    .line 46
    iput-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->done:Z

    #@6
    .line 95
    if-nez p1, :cond_0

    #@8
    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v1, "os == null"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 97
    :cond_0
    if-nez p2, :cond_1

    #@13
    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    #@15
    const-string/jumbo v1, "def == null"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 100
    :cond_1
    if-gtz p3, :cond_2

    #@1e
    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "bufferSize <= 0: "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    .line 103
    :cond_2
    iput-object p2, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    #@3a
    .line 104
    iput-boolean p4, p0, Ljava/util/zip/DeflaterOutputStream;->syncFlush:Z

    #@3c
    .line 105
    new-array v0, p3, [B

    #@3e
    iput-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    #@40
    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "def"    # Ljava/util/zip/Deflater;
    .param p3, "syncFlush"    # Z

    #@0
    .prologue
    .line 85
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, p1, p2, v0, p3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    #@5
    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "syncFlush"    # Z

    #@0
    .prologue
    .line 76
    new-instance v0, Ljava/util/zip/Deflater;

    #@2
    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    #@5
    const/16 v1, 0x200

    #@7
    invoke-direct {p0, p1, v0, v1, p2}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    #@a
    .line 75
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
    .line 134
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    #@2
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 135
    invoke-virtual {p0}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    #@b
    .line 137
    :cond_0
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    #@d
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    #@10
    .line 138
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    #@12
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@15
    .line 132
    return-void
.end method

.method protected deflate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 117
    :goto_0
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    #@3
    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    #@5
    invoke-virtual {v1, v2}, Ljava/util/zip/Deflater;->deflate([B)I

    #@8
    move-result v0

    #@9
    .local v0, "byteCount":I
    if-eqz v0, :cond_0

    #@b
    .line 118
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    #@d
    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    #@f
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    #@12
    goto :goto_0

    #@13
    .line 115
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 149
    iget-boolean v1, p0, Ljava/util/zip/DeflaterOutputStream;->done:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 150
    return-void

    #@5
    .line 152
    :cond_0
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    #@7
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    #@a
    .line 153
    :goto_0
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    #@c
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_1

    #@12
    .line 154
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    #@14
    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    #@16
    invoke-virtual {v1, v2}, Ljava/util/zip/Deflater;->deflate([B)I

    #@19
    move-result v0

    #@1a
    .line 155
    .local v0, "byteCount":I
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    #@1c
    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    #@1e
    const/4 v3, 0x0

    #@1f
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    #@22
    goto :goto_0

    #@23
    .line 157
    .end local v0    # "byteCount":I
    :cond_1
    const/4 v1, 0x1

    #@24
    iput-boolean v1, p0, Ljava/util/zip/DeflaterOutputStream;->done:Z

    #@26
    .line 148
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
    .line 194
    iget-boolean v1, p0, Ljava/util/zip/DeflaterOutputStream;->syncFlush:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-boolean v1, p0, Ljava/util/zip/DeflaterOutputStream;->done:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 200
    :cond_0
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    #@b
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    #@e
    .line 190
    return-void

    #@f
    .line 196
    :cond_1
    :goto_0
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    #@11
    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    #@13
    iget-object v3, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    #@15
    array-length v3, v3

    #@16
    const/4 v4, 0x2

    #@17
    invoke-virtual {v1, v2, v5, v3, v4}, Ljava/util/zip/Deflater;->deflate([BIII)I

    #@1a
    move-result v0

    #@1b
    .local v0, "byteCount":I
    if-eqz v0, :cond_0

    #@1d
    .line 197
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    #@1f
    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    #@21
    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    #@24
    goto :goto_0
.end method

.method public write(I)V
    .locals 0
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 161
    invoke-static {p0, p1}, Llibcore/io/Streams;->writeSingleByte(Ljava/io/OutputStream;I)V

    #@3
    .line 160
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 171
    iget-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->done:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 172
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "attempt to write after finish"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 174
    :cond_0
    array-length v0, p1

    #@e
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@11
    .line 175
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    #@13
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_1

    #@19
    .line 176
    new-instance v0, Ljava/io/IOException;

    #@1b
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@1e
    throw v0

    #@1f
    .line 178
    :cond_1
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    #@21
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    #@24
    .line 179
    invoke-virtual {p0}, Ljava/util/zip/DeflaterOutputStream;->deflate()V

    #@27
    .line 170
    return-void
.end method
