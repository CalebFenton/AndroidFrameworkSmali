.class abstract Lorg/apache/commons/codec/net/RFC1522Codec;
.super Ljava/lang/Object;
.source "RFC1522Codec.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected decodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v7, -0x1

    #@2
    .line 103
    if-nez p1, :cond_0

    #@4
    .line 104
    return-object v6

    #@5
    .line 106
    :cond_0
    const-string/jumbo v6, "=?"

    #@8
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_2

    #@e
    const-string/jumbo v6, "?="

    #@11
    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@14
    move-result v6

    #@15
    if-eqz v6, :cond_2

    #@17
    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1a
    move-result v6

    #@1b
    add-int/lit8 v4, v6, -0x2

    #@1d
    .line 110
    .local v4, "termnator":I
    const/4 v3, 0x2

    #@1e
    .line 111
    .local v3, "from":I
    const-string/jumbo v6, "?"

    #@21
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@24
    move-result v5

    #@25
    .line 112
    .local v5, "to":I
    if-eq v5, v7, :cond_1

    #@27
    if-ne v5, v4, :cond_3

    #@29
    .line 113
    :cond_1
    new-instance v6, Lorg/apache/commons/codec/DecoderException;

    #@2b
    const-string/jumbo v7, "RFC 1522 violation: charset token not found"

    #@2e
    invoke-direct {v6, v7}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    #@31
    throw v6

    #@32
    .line 107
    .end local v3    # "from":I
    .end local v4    # "termnator":I
    .end local v5    # "to":I
    :cond_2
    new-instance v6, Lorg/apache/commons/codec/DecoderException;

    #@34
    const-string/jumbo v7, "RFC 1522 violation: malformed encoded content"

    #@37
    invoke-direct {v6, v7}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v6

    #@3b
    .line 115
    .restart local v3    # "from":I
    .restart local v4    # "termnator":I
    .restart local v5    # "to":I
    :cond_3
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    .line 116
    .local v0, "charset":Ljava/lang/String;
    const-string/jumbo v6, ""

    #@42
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v6

    #@46
    if-eqz v6, :cond_4

    #@48
    .line 117
    new-instance v6, Lorg/apache/commons/codec/DecoderException;

    #@4a
    const-string/jumbo v7, "RFC 1522 violation: charset not specified"

    #@4d
    invoke-direct {v6, v7}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    #@50
    throw v6

    #@51
    .line 119
    :cond_4
    add-int/lit8 v3, v5, 0x1

    #@53
    .line 120
    const-string/jumbo v6, "?"

    #@56
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@59
    move-result v5

    #@5a
    .line 121
    if-eq v5, v7, :cond_5

    #@5c
    if-ne v5, v4, :cond_6

    #@5e
    .line 122
    :cond_5
    new-instance v6, Lorg/apache/commons/codec/DecoderException;

    #@60
    const-string/jumbo v7, "RFC 1522 violation: encoding token not found"

    #@63
    invoke-direct {v6, v7}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    #@66
    throw v6

    #@67
    .line 124
    :cond_6
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6a
    move-result-object v2

    #@6b
    .line 125
    .local v2, "encoding":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/codec/net/RFC1522Codec;->getEncoding()Ljava/lang/String;

    #@6e
    move-result-object v6

    #@6f
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@72
    move-result v6

    #@73
    if-nez v6, :cond_7

    #@75
    .line 126
    new-instance v6, Lorg/apache/commons/codec/DecoderException;

    #@77
    new-instance v7, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v8, "This codec cannot decode "

    #@7f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v7

    #@83
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v7

    #@87
    .line 127
    const-string/jumbo v8, " encoded content"

    #@8a
    .line 126
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v7

    #@8e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v7

    #@92
    invoke-direct {v6, v7}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    #@95
    throw v6

    #@96
    .line 129
    :cond_7
    add-int/lit8 v3, v5, 0x1

    #@98
    .line 130
    const-string/jumbo v6, "?"

    #@9b
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@9e
    move-result v5

    #@9f
    .line 131
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a2
    move-result-object v6

    #@a3
    const-string/jumbo v7, "US-ASCII"

    #@a6
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@a9
    move-result-object v1

    #@aa
    .line 132
    .local v1, "data":[B
    invoke-virtual {p0, v1}, Lorg/apache/commons/codec/net/RFC1522Codec;->doDecoding([B)[B

    #@ad
    move-result-object v1

    #@ae
    .line 133
    new-instance v6, Ljava/lang/String;

    #@b0
    invoke-direct {v6, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@b3
    return-object v6
.end method

.method protected abstract doDecoding([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation
.end method

.method protected abstract doEncoding([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation
.end method

.method protected encodeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/16 v3, 0x3f

    #@3
    .line 73
    if-nez p1, :cond_0

    #@5
    .line 74
    return-object v2

    #@6
    .line 76
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@b
    .line 77
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "=?"

    #@e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    .line 78
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14
    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@17
    .line 80
    invoke-virtual {p0}, Lorg/apache/commons/codec/net/RFC1522Codec;->getEncoding()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@21
    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@24
    move-result-object v2

    #@25
    invoke-virtual {p0, v2}, Lorg/apache/commons/codec/net/RFC1522Codec;->doEncoding([B)[B

    #@28
    move-result-object v1

    #@29
    .line 83
    .local v1, "rawdata":[B
    new-instance v2, Ljava/lang/String;

    #@2b
    const-string/jumbo v3, "US-ASCII"

    #@2e
    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@34
    .line 84
    const-string/jumbo v2, "?="

    #@37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3a
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    return-object v2
.end method

.method protected abstract getEncoding()Ljava/lang/String;
.end method
