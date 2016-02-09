.class public Lorg/apache/http/entity/BasicHttpEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "BasicHttpEntity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private content:Ljava/io/InputStream;

.field private contentObtained:Z

.field private length:J


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    #@3
    .line 65
    const-wide/16 v0, -0x1

    #@5
    iput-wide v0, p0, Lorg/apache/http/entity/BasicHttpEntity;->length:J

    #@7
    .line 63
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
    .line 146
    iget-object v0, p0, Lorg/apache/http/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 147
    iget-object v0, p0, Lorg/apache/http/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    #@6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@9
    .line 145
    :cond_0
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/http/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Content has not been provided"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 88
    :cond_0
    iget-boolean v0, p0, Lorg/apache/http/entity/BasicHttpEntity;->contentObtained:Z

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v1, "Content has been consumed"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 91
    :cond_1
    const/4 v0, 0x1

    #@1b
    iput-boolean v0, p0, Lorg/apache/http/entity/BasicHttpEntity;->contentObtained:Z

    #@1d
    .line 92
    iget-object v0, p0, Lorg/apache/http/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    #@1f
    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    #@0
    .prologue
    .line 70
    iget-wide v0, p0, Lorg/apache/http/entity/BasicHttpEntity;->length:J

    #@2
    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    #@0
    .prologue
    .line 102
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isStreaming()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 141
    iget-boolean v1, p0, Lorg/apache/http/entity/BasicHttpEntity;->contentObtained:Z

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Lorg/apache/http/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public setContent(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "instream"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 122
    iput-object p1, p0, Lorg/apache/http/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    #@2
    .line 123
    const/4 v0, 0x0

    #@3
    iput-boolean v0, p0, Lorg/apache/http/entity/BasicHttpEntity;->contentObtained:Z

    #@5
    .line 121
    return-void
.end method

.method public setContentLength(J)V
    .locals 1
    .param p1, "len"    # J

    #@0
    .prologue
    .line 112
    iput-wide p1, p0, Lorg/apache/http/entity/BasicHttpEntity;->length:J

    #@2
    .line 111
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    if-nez p1, :cond_0

    #@2
    .line 129
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "Output stream may not be null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 131
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/entity/BasicHttpEntity;->getContent()Ljava/io/InputStream;

    #@e
    move-result-object v0

    #@f
    .line 133
    .local v0, "instream":Ljava/io/InputStream;
    const/16 v3, 0x800

    #@11
    new-array v2, v3, [B

    #@13
    .line 134
    .local v2, "tmp":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    #@16
    move-result v1

    #@17
    .local v1, "l":I
    const/4 v3, -0x1

    #@18
    if-eq v1, v3, :cond_1

    #@1a
    .line 135
    const/4 v3, 0x0

    #@1b
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    #@1e
    goto :goto_0

    #@1f
    .line 127
    :cond_1
    return-void
.end method
