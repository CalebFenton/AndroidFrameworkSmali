.class public Lorg/apache/http/impl/io/ChunkedOutputStream;
.super Ljava/io/OutputStream;
.source "ChunkedOutputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private cache:[B

.field private cachePosition:I

.field private closed:Z

.field private final out:Lorg/apache/http/io/SessionOutputBuffer;

.field private wroteLastChunk:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/http/io/SessionOutputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    const/16 v0, 0x800

    #@2
    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/io/ChunkedOutputStream;-><init>(Lorg/apache/http/io/SessionOutputBuffer;I)V

    #@5
    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;I)V
    .locals 1
    .param p1, "out"    # Lorg/apache/http/io/SessionOutputBuffer;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 78
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@4
    .line 62
    iput v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    #@6
    .line 64
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->wroteLastChunk:Z

    #@8
    .line 67
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->closed:Z

    #@a
    .line 79
    new-array v0, p2, [B

    #@c
    iput-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cache:[B

    #@e
    .line 80
    iput-object p1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    #@10
    .line 77
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
    .line 190
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->closed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 191
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->closed:Z

    #@7
    .line 192
    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStream;->finish()V

    #@a
    .line 193
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    #@c
    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    #@f
    .line 189
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
    .line 137
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->wroteLastChunk:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 138
    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStream;->flushCache()V

    #@7
    .line 139
    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStream;->writeClosingChunk()V

    #@a
    .line 140
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->wroteLastChunk:Z

    #@d
    .line 136
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 181
    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStream;->flushCache()V

    #@3
    .line 182
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    #@5
    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    #@8
    .line 180
    return-void
.end method

.method protected flushCache()V
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
    .line 101
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    #@3
    if-lez v0, :cond_0

    #@5
    .line 102
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    #@7
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    #@9
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    #@10
    .line 103
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    #@12
    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cache:[B

    #@14
    iget v2, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    #@16
    invoke-interface {v0, v1, v3, v2}, Lorg/apache/http/io/SessionOutputBuffer;->write([BII)V

    #@19
    .line 104
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    #@1b
    const-string/jumbo v1, ""

    #@1e
    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    #@21
    .line 105
    iput v3, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    #@23
    .line 100
    :cond_0
    return-void
.end method

.method protected flushCacheWithAppend([BII)V
    .locals 4
    .param p1, "bufferToAppend"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 118
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    #@3
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    #@5
    add-int/2addr v1, p3

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    #@d
    .line 119
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    #@f
    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cache:[B

    #@11
    iget v2, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    #@13
    invoke-interface {v0, v1, v3, v2}, Lorg/apache/http/io/SessionOutputBuffer;->write([BII)V

    #@16
    .line 120
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    #@18
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/io/SessionOutputBuffer;->write([BII)V

    #@1b
    .line 121
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    #@1d
    const-string/jumbo v1, ""

    #@20
    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    #@23
    .line 122
    iput v3, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    #@25
    .line 117
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 147
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Attempted write to closed stream."

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 149
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cache:[B

    #@f
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    #@11
    int-to-byte v2, p1

    #@12
    aput-byte v2, v0, v1

    #@14
    .line 150
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    #@16
    add-int/lit8 v0, v0, 0x1

    #@18
    iput v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    #@1a
    .line 151
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    #@1c
    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cache:[B

    #@1e
    array-length v1, v1

    #@1f
    if-ne v0, v1, :cond_1

    #@21
    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStream;->flushCache()V

    #@24
    .line 145
    :cond_1
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 161
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/http/impl/io/ChunkedOutputStream;->write([BII)V

    #@5
    .line 160
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "src"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 165
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 166
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Attempted write to closed stream."

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 168
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cache:[B

    #@f
    array-length v0, v0

    #@10
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    #@12
    sub-int/2addr v0, v1

    #@13
    if-lt p3, v0, :cond_1

    #@15
    .line 169
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/impl/io/ChunkedOutputStream;->flushCacheWithAppend([BII)V

    #@18
    .line 164
    :goto_0
    return-void

    #@19
    .line 171
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cache:[B

    #@1b
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    #@1d
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@20
    .line 172
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    #@22
    add-int/2addr v0, p3

    #@23
    iput v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->cachePosition:I

    #@25
    goto :goto_0
.end method

.method protected writeClosingChunk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    #@2
    const-string/jumbo v1, "0"

    #@5
    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    #@8
    .line 128
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    #@a
    const-string/jumbo v1, ""

    #@d
    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    #@10
    .line 125
    return-void
.end method
