.class public abstract Lorg/apache/http/entity/AbstractHttpEntity;
.super Ljava/lang/Object;
.source "AbstractHttpEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected chunked:Z

.field protected contentEncoding:Lorg/apache/http/Header;

.field protected contentType:Lorg/apache/http/Header;


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 86
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 211
    invoke-virtual {p0}, Lorg/apache/http/entity/AbstractHttpEntity;->isStreaming()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 212
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    .line 213
    const-string/jumbo v1, "streaming entity does not implement consumeContent()"

    #@b
    .line 212
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 210
    :cond_0
    return-void
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/http/entity/AbstractHttpEntity;->contentEncoding:Lorg/apache/http/Header;

    #@2
    return-object v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/http/entity/AbstractHttpEntity;->contentType:Lorg/apache/http/Header;

    #@2
    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    #@0
    .prologue
    .line 122
    iget-boolean v0, p0, Lorg/apache/http/entity/AbstractHttpEntity;->chunked:Z

    #@2
    return v0
.end method

.method public setChunked(Z)V
    .locals 0
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 192
    iput-boolean p1, p0, Lorg/apache/http/entity/AbstractHttpEntity;->chunked:Z

    #@2
    .line 191
    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 2
    .param p1, "ceString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 176
    const/4 v0, 0x0

    #@1
    .line 177
    .local v0, "h":Lorg/apache/http/Header;
    if-eqz p1, :cond_0

    #@3
    .line 178
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    #@5
    .end local v0    # "h":Lorg/apache/http/Header;
    const-string/jumbo v1, "Content-Encoding"

    #@8
    invoke-direct {v0, v1, p1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 180
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    #@e
    .line 175
    return-void
.end method

.method public setContentEncoding(Lorg/apache/http/Header;)V
    .locals 0
    .param p1, "contentEncoding"    # Lorg/apache/http/Header;

    #@0
    .prologue
    .line 164
    iput-object p1, p0, Lorg/apache/http/entity/AbstractHttpEntity;->contentEncoding:Lorg/apache/http/Header;

    #@2
    .line 163
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2
    .param p1, "ctString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 147
    const/4 v0, 0x0

    #@1
    .line 148
    .local v0, "h":Lorg/apache/http/Header;
    if-eqz p1, :cond_0

    #@3
    .line 149
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    #@5
    .end local v0    # "h":Lorg/apache/http/Header;
    const-string/jumbo v1, "Content-Type"

    #@8
    invoke-direct {v0, v1, p1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 151
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Lorg/apache/http/Header;)V

    #@e
    .line 146
    return-void
.end method

.method public setContentType(Lorg/apache/http/Header;)V
    .locals 0
    .param p1, "contentType"    # Lorg/apache/http/Header;

    #@0
    .prologue
    .line 135
    iput-object p1, p0, Lorg/apache/http/entity/AbstractHttpEntity;->contentType:Lorg/apache/http/Header;

    #@2
    .line 134
    return-void
.end method
