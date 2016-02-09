.class public Lorg/apache/commons/codec/net/BCodec;
.super Lorg/apache/commons/codec/net/RFC1522Codec;
.source "BCodec.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;
.implements Lorg/apache/commons/codec/StringDecoder;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private charset:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Lorg/apache/commons/codec/net/RFC1522Codec;-><init>()V

    #@3
    .line 54
    const-string/jumbo v0, "UTF-8"

    #@6
    iput-object v0, p0, Lorg/apache/commons/codec/net/BCodec;->charset:Ljava/lang/String;

    #@8
    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Lorg/apache/commons/codec/net/RFC1522Codec;-><init>()V

    #@3
    .line 54
    const-string/jumbo v0, "UTF-8"

    #@6
    iput-object v0, p0, Lorg/apache/commons/codec/net/BCodec;->charset:Ljava/lang/String;

    #@8
    .line 74
    iput-object p1, p0, Lorg/apache/commons/codec/net/BCodec;->charset:Ljava/lang/String;

    #@a
    .line 72
    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 193
    if-nez p1, :cond_0

    #@3
    .line 194
    return-object v0

    #@4
    .line 195
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 196
    check-cast p1, Ljava/lang/String;

    #@a
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/BCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 198
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "Objects of type "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 200
    const-string/jumbo v2, " cannot be decoded using BCodec"

    #@2c
    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0
.end method

.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 148
    if-nez p1, :cond_0

    #@3
    .line 149
    return-object v1

    #@4
    .line 152
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/BCodec;->decodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 153
    :catch_0
    move-exception v0

    #@a
    .line 154
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/apache/commons/codec/DecoderException;

    #@c
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-direct {v1, v2}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    #@13
    throw v1
.end method

.method protected doDecoding([B)[B
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 89
    if-nez p1, :cond_0

    #@3
    .line 90
    return-object v0

    #@4
    .line 92
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected doEncoding([B)[B
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 82
    if-nez p1, :cond_0

    #@3
    .line 83
    return-object v0

    #@4
    .line 85
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 169
    if-nez p1, :cond_0

    #@3
    .line 170
    return-object v0

    #@4
    .line 171
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 172
    check-cast p1, Ljava/lang/String;

    #@a
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/BCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 174
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "Objects of type "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 176
    const-string/jumbo v2, " cannot be encoded using BCodec"

    #@2c
    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 129
    if-nez p1, :cond_0

    #@3
    .line 130
    return-object v0

    #@4
    .line 132
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/codec/net/BCodec;->getDefaultCharset()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/net/BCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 108
    if-nez p1, :cond_0

    #@3
    .line 109
    return-object v1

    #@4
    .line 112
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/codec/net/BCodec;->encodeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 113
    :catch_0
    move-exception v0

    #@a
    .line 114
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/apache/commons/codec/EncoderException;

    #@c
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-direct {v1, v2}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    #@13
    throw v1
.end method

.method public getDefaultCharset()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Lorg/apache/commons/codec/net/BCodec;->charset:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected getEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 78
    const-string/jumbo v0, "B"

    #@3
    return-object v0
.end method
