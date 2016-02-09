.class public Lorg/apache/http/entity/BufferedHttpEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "BufferedHttpEntity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final buffer:[B


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 4
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    #@3
    .line 66
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    #@c
    move-result-wide v0

    #@d
    const-wide/16 v2, 0x0

    #@f
    cmp-long v0, v0, v2

    #@11
    if-gez v0, :cond_1

    #@13
    .line 67
    :cond_0
    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntity;->buffer:[B

    #@19
    .line 64
    :goto_0
    return-void

    #@1a
    .line 69
    :cond_1
    const/4 v0, 0x0

    #@1b
    iput-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntity;->buffer:[B

    #@1d
    goto :goto_0
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntity;->buffer:[B

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 83
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@6
    iget-object v1, p0, Lorg/apache/http/entity/BufferedHttpEntity;->buffer:[B

    #@8
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@b
    return-object v0

    #@c
    .line 85
    :cond_0
    iget-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    #@e
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntity;->buffer:[B

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 75
    iget-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntity;->buffer:[B

    #@6
    array-length v0, v0

    #@7
    int-to-long v0, v0

    #@8
    return-wide v0

    #@9
    .line 77
    :cond_0
    iget-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    #@b
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    #@e
    move-result-wide v0

    #@f
    return-wide v0
.end method

.method public isChunked()Z
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntity;->buffer:[B

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    #@6
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public isRepeatable()Z
    .locals 1

    #@0
    .prologue
    .line 104
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isStreaming()Z
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntity;->buffer:[B

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    #@6
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    if-nez p1, :cond_0

    #@2
    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Output stream may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 112
    :cond_0
    iget-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntity;->buffer:[B

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 113
    iget-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntity;->buffer:[B

    #@11
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@14
    .line 108
    :goto_0
    return-void

    #@15
    .line 115
    :cond_1
    iget-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    #@17
    invoke-interface {v0, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    #@1a
    goto :goto_0
.end method
