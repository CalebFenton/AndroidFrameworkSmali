.class public Lorg/apache/http/entity/SerializableEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "SerializableEntity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private objRef:Ljava/io/Serializable;

.field private objSer:[B


# direct methods
.method public constructor <init>(Ljava/io/Serializable;Z)V
    .locals 2
    .param p1, "ser"    # Ljava/io/Serializable;
    .param p2, "bufferize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    #@3
    .line 56
    if-nez p1, :cond_0

    #@5
    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Source object may not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 60
    :cond_0
    if-eqz p2, :cond_1

    #@10
    .line 61
    invoke-direct {p0, p1}, Lorg/apache/http/entity/SerializableEntity;->createBytes(Ljava/io/Serializable;)V

    #@13
    .line 54
    :goto_0
    return-void

    #@14
    .line 63
    :cond_1
    iput-object p1, p0, Lorg/apache/http/entity/SerializableEntity;->objRef:Ljava/io/Serializable;

    #@16
    goto :goto_0
.end method

.method private createBytes(Ljava/io/Serializable;)V
    .locals 3
    .param p1, "ser"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 69
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    #@7
    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@a
    .line 70
    .local v1, "out":Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@d
    .line 71
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    #@10
    .line 72
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@13
    move-result-object v2

    #@14
    iput-object v2, p0, Lorg/apache/http/entity/SerializableEntity;->objSer:[B

    #@16
    .line 67
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/http/entity/SerializableEntity;->objSer:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 77
    iget-object v0, p0, Lorg/apache/http/entity/SerializableEntity;->objRef:Ljava/io/Serializable;

    #@6
    invoke-direct {p0, v0}, Lorg/apache/http/entity/SerializableEntity;->createBytes(Ljava/io/Serializable;)V

    #@9
    .line 79
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@b
    iget-object v1, p0, Lorg/apache/http/entity/SerializableEntity;->objSer:[B

    #@d
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@10
    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/http/entity/SerializableEntity;->objSer:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 84
    const-wide/16 v0, -0x1

    #@6
    return-wide v0

    #@7
    .line 86
    :cond_0
    iget-object v0, p0, Lorg/apache/http/entity/SerializableEntity;->objSer:[B

    #@9
    array-length v0, v0

    #@a
    int-to-long v0, v0

    #@b
    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    #@0
    .prologue
    .line 91
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isStreaming()Z
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/http/entity/SerializableEntity;->objSer:[B

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 99
    if-nez p1, :cond_0

    #@2
    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Output stream may not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 103
    :cond_0
    iget-object v1, p0, Lorg/apache/http/entity/SerializableEntity;->objSer:[B

    #@d
    if-nez v1, :cond_1

    #@f
    .line 104
    new-instance v0, Ljava/io/ObjectOutputStream;

    #@11
    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@14
    .line 105
    .local v0, "out":Ljava/io/ObjectOutputStream;
    iget-object v1, p0, Lorg/apache/http/entity/SerializableEntity;->objRef:Ljava/io/Serializable;

    #@16
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@19
    .line 106
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    #@1c
    .line 98
    .end local v0    # "out":Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    #@1d
    .line 108
    :cond_1
    iget-object v1, p0, Lorg/apache/http/entity/SerializableEntity;->objSer:[B

    #@1f
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@22
    .line 109
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    #@25
    goto :goto_0
.end method
