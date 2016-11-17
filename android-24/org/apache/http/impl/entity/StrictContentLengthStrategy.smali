.class public Lorg/apache/http/impl/entity/StrictContentLengthStrategy;
.super Ljava/lang/Object;
.source "StrictContentLengthStrategy.java"

# interfaces
.implements Lorg/apache/http/entity/ContentLengthStrategy;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 184
    return-void
.end method


# virtual methods
.method public determineLength(Lorg/apache/http/HttpMessage;)J
    .locals 10
    .param p1, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v8, -0x1

    #@2
    .line 189
    if-nez p1, :cond_0

    #@4
    .line 190
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v7, "HTTP message may not be null"

    #@9
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v6

    #@d
    .line 195
    :cond_0
    const-string/jumbo v6, "Transfer-Encoding"

    #@10
    invoke-interface {p1, v6}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    #@13
    move-result-object v5

    #@14
    .line 196
    .local v5, "transferEncodingHeader":Lorg/apache/http/Header;
    const-string/jumbo v6, "Content-Length"

    #@17
    invoke-interface {p1, v6}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    #@1a
    move-result-object v0

    #@1b
    .line 197
    .local v0, "contentLengthHeader":Lorg/apache/http/Header;
    if-eqz v5, :cond_4

    #@1d
    .line 198
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    .line 199
    .local v4, "s":Ljava/lang/String;
    const-string/jumbo v6, "chunked"

    #@24
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@27
    move-result v6

    #@28
    if-eqz v6, :cond_2

    #@2a
    .line 200
    invoke-interface {p1}, Lorg/apache/http/HttpMessage;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@2d
    move-result-object v6

    #@2e
    sget-object v7, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    #@30
    invoke-virtual {v6, v7}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    #@33
    move-result v6

    #@34
    if-eqz v6, :cond_1

    #@36
    .line 201
    new-instance v6, Lorg/apache/http/ProtocolException;

    #@38
    .line 202
    new-instance v7, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v8, "Chunked transfer encoding not allowed for "

    #@40
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v7

    #@44
    .line 203
    invoke-interface {p1}, Lorg/apache/http/HttpMessage;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@47
    move-result-object v8

    #@48
    .line 202
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v7

    #@4c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v7

    #@50
    .line 201
    invoke-direct {v6, v7}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    #@53
    throw v6

    #@54
    .line 205
    :cond_1
    const-wide/16 v6, -0x2

    #@56
    return-wide v6

    #@57
    .line 206
    :cond_2
    const-string/jumbo v6, "identity"

    #@5a
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5d
    move-result v6

    #@5e
    if-eqz v6, :cond_3

    #@60
    .line 207
    return-wide v8

    #@61
    .line 209
    :cond_3
    new-instance v6, Lorg/apache/http/ProtocolException;

    #@63
    .line 210
    new-instance v7, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v8, "Unsupported transfer encoding: "

    #@6b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v7

    #@6f
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v7

    #@73
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v7

    #@77
    .line 209
    invoke-direct {v6, v7}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v6

    #@7b
    .line 212
    .end local v4    # "s":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_5

    #@7d
    .line 213
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@80
    move-result-object v4

    #@81
    .line 215
    .restart local v4    # "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@84
    move-result-wide v2

    #@85
    .line 216
    .local v2, "len":J
    return-wide v2

    #@86
    .line 217
    .end local v2    # "len":J
    :catch_0
    move-exception v1

    #@87
    .line 218
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/apache/http/ProtocolException;

    #@89
    new-instance v7, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v8, "Invalid content length: "

    #@91
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v7

    #@95
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v7

    #@99
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v7

    #@9d
    invoke-direct {v6, v7}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    #@a0
    throw v6

    #@a1
    .line 221
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "s":Ljava/lang/String;
    :cond_5
    return-wide v8
.end method
