.class public Lorg/apache/http/entity/StringEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "StringEntity.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final content:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@4
    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    #@3
    .line 63
    if-nez p1, :cond_0

    #@5
    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Source string may not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 66
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 67
    const-string/jumbo p2, "ISO-8859-1"

    #@13
    .line 69
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lorg/apache/http/entity/StringEntity;->content:[B

    #@19
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v1, "text/plain; charset="

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {p0, v0}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    #@30
    .line 61
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    invoke-super {p0}, Lorg/apache/http/entity/AbstractHttpEntity;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@2
    iget-object v1, p0, Lorg/apache/http/entity/StringEntity;->content:[B

    #@4
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@7
    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/http/entity/StringEntity;->content:[B

    #@2
    array-length v0, v0

    #@3
    int-to-long v0, v0

    #@4
    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    #@0
    .prologue
    .line 79
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isStreaming()Z
    .locals 1

    #@0
    .prologue
    .line 104
    const/4 v0, 0x0

    #@1
    return v0
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
    .line 91
    if-nez p1, :cond_0

    #@2
    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Output stream may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 94
    :cond_0
    iget-object v0, p0, Lorg/apache/http/entity/StringEntity;->content:[B

    #@d
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@10
    .line 95
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    #@13
    .line 90
    return-void
.end method
