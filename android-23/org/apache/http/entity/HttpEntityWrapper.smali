.class public Lorg/apache/http/entity/HttpEntityWrapper;
.super Ljava/lang/Object;
.source "HttpEntityWrapper.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected wrappedEntity:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 2
    .param p1, "wrapped"    # Lorg/apache/http/HttpEntity;

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    if-nez p1, :cond_0

    #@5
    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    .line 72
    const-string/jumbo v1, "wrapped entity must not be null"

    #@a
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 74
    :cond_0
    iput-object p1, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    #@10
    .line 67
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    #@2
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    #@5
    .line 114
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    #@2
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    #@2
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    #@2
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    #@2
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    #@2
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    #@2
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isStreaming()Z
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    #@2
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    #@5
    .line 105
    return-void
.end method
