.class public Ljava/util/zip/DeflaterInputStream;
.super Ljava/io/FilterInputStream;
.source "DeflaterInputStream.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x400


# instance fields
.field private available:Z

.field protected final buf:[B

.field private closed:Z

.field protected final def:Ljava/util/zip/Deflater;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 49
    new-instance v0, Ljava/util/zip/Deflater;

    #@2
    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    #@5
    const/16 v1, 0x400

    #@7
    invoke-direct {p0, p1, v0, v1}, Ljava/util/zip/DeflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;I)V

    #@a
    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "deflater"    # Ljava/util/zip/Deflater;

    #@0
    .prologue
    .line 61
    const/16 v0, 0x400

    #@2
    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/DeflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;I)V

    #@5
    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;I)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "deflater"    # Ljava/util/zip/Deflater;
    .param p3, "bufferSize"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 74
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@4
    .line 38
    iput-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->closed:Z

    #@6
    .line 39
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->available:Z

    #@9
    .line 75
    if-nez p1, :cond_0

    #@b
    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    #@d
    const-string/jumbo v1, "in == null"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 77
    :cond_0
    if-nez p2, :cond_1

    #@16
    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    #@18
    const-string/jumbo v1, "deflater == null"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 80
    :cond_1
    if-gtz p3, :cond_2

    #@21
    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@23
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v2, "bufferSize <= 0: "

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 83
    :cond_2
    iput-object p2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    #@3d
    .line 84
    new-array v0, p3, [B

    #@3f
    iput-object v0, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    #@41
    .line 73
    return-void
.end method

.method private checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 210
    iget-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 211
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Stream is closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 209
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 181
    invoke-direct {p0}, Ljava/util/zip/DeflaterInputStream;->checkClosed()V

    #@3
    .line 182
    iget-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->available:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->closed:Z

    #@3
    .line 94
    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    #@5
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    #@8
    .line 95
    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    #@a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@d
    .line 92
    return-void
.end method

.method public mark(I)V
    .locals 0
    .param p1, "limit"    # I

    #@0
    .prologue
    .line 198
    return-void
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 191
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 115
    invoke-direct {p0}, Ljava/util/zip/DeflaterInputStream;->checkClosed()V

    #@5
    .line 116
    array-length v3, p1

    #@6
    invoke-static {v3, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@9
    .line 117
    if-nez p3, :cond_0

    #@b
    .line 118
    return v6

    #@c
    .line 121
    :cond_0
    iget-boolean v3, p0, Ljava/util/zip/DeflaterInputStream;->available:Z

    #@e
    if-nez v3, :cond_1

    #@10
    .line 122
    return v7

    #@11
    .line 125
    :cond_1
    const/4 v2, 0x0

    #@12
    .line 126
    .local v2, "count":I
    :goto_0
    if-ge v2, p3, :cond_2

    #@14
    iget-object v3, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    #@16
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finished()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_5

    #@1c
    .line 142
    :cond_2
    if-nez v2, :cond_3

    #@1e
    .line 143
    const/4 v2, -0x1

    #@1f
    .line 144
    iput-boolean v6, p0, Ljava/util/zip/DeflaterInputStream;->available:Z

    #@21
    .line 147
    :cond_3
    iget-object v3, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    #@23
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finished()Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_4

    #@29
    .line 148
    iput-boolean v6, p0, Ljava/util/zip/DeflaterInputStream;->available:Z

    #@2b
    .line 150
    :cond_4
    return v2

    #@2c
    .line 127
    :cond_5
    iget-object v3, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    #@2e
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->needsInput()Z

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_6

    #@34
    .line 129
    iget-object v3, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    #@36
    iget-object v4, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    #@38
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    #@3b
    move-result v1

    #@3c
    .line 130
    .local v1, "bytesRead":I
    if-ne v1, v7, :cond_7

    #@3e
    .line 131
    iget-object v3, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    #@40
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finish()V

    #@43
    .line 136
    .end local v1    # "bytesRead":I
    :cond_6
    :goto_1
    iget-object v3, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    #@45
    add-int v4, p2, v2

    #@47
    sub-int v5, p3, v2

    #@49
    invoke-virtual {v3, p1, v4, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    #@4c
    move-result v0

    #@4d
    .line 137
    .local v0, "bytesDeflated":I
    if-eq v0, v7, :cond_2

    #@4f
    .line 140
    add-int/2addr v2, v0

    #@50
    goto :goto_0

    #@51
    .line 133
    .end local v0    # "bytesDeflated":I
    .restart local v1    # "bytesRead":I
    :cond_7
    iget-object v3, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    #@53
    iget-object v4, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    #@55
    invoke-virtual {v3, v4, v6, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    #@58
    goto :goto_1
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 206
    new-instance v0, Ljava/io/IOException;

    #@2
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@5
    throw v0
.end method

.method public skip(J)J
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    const-wide/32 v0, 0x7fffffff

    #@3
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    #@6
    move-result-wide p1

    #@7
    .line 161
    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    #@a
    move-result-wide v0

    #@b
    return-wide v0
.end method
