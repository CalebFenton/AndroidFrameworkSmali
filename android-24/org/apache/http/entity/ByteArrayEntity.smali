.class public Lorg/apache/http/entity/ByteArrayEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "ByteArrayEntity.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final content:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "b"    # [B

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    #@3
    .line 59
    if-nez p1, :cond_0

    #@5
    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Source byte array may not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 62
    :cond_0
    iput-object p1, p0, Lorg/apache/http/entity/ByteArrayEntity;->content:[B

    #@10
    .line 57
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
    .line 96
    invoke-super {p0}, Lorg/apache/http/entity/AbstractHttpEntity;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2

    #@0
    .prologue
    .line 74
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@2
    iget-object v1, p0, Lorg/apache/http/entity/ByteArrayEntity;->content:[B

    #@4
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@7
    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/http/entity/ByteArrayEntity;->content:[B

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
    .line 66
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isStreaming()Z
    .locals 1

    #@0
    .prologue
    .line 92
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
    .line 78
    if-nez p1, :cond_0

    #@2
    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Output stream may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 81
    :cond_0
    iget-object v0, p0, Lorg/apache/http/entity/ByteArrayEntity;->content:[B

    #@d
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@10
    .line 82
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    #@13
    .line 77
    return-void
.end method
