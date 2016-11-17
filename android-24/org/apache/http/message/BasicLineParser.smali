.class public Lorg/apache/http/message/BasicLineParser;
.super Ljava/lang/Object;
.source "BasicLineParser.java"

# interfaces
.implements Lorg/apache/http/message/LineParser;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/http/message/BasicLineParser;


# instance fields
.field protected final protocol:Lorg/apache/http/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 78
    new-instance v0, Lorg/apache/http/message/BasicLineParser;

    #@2
    invoke-direct {v0}, Lorg/apache/http/message/BasicLineParser;-><init>()V

    #@5
    sput-object v0, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    #@7
    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 107
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lorg/apache/http/message/BasicLineParser;-><init>(Lorg/apache/http/ProtocolVersion;)V

    #@4
    .line 106
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/ProtocolVersion;)V
    .locals 0
    .param p1, "proto"    # Lorg/apache/http/ProtocolVersion;

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 96
    if-nez p1, :cond_0

    #@5
    .line 97
    sget-object p1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    #@7
    .line 99
    :cond_0
    iput-object p1, p0, Lorg/apache/http/message/BasicLineParser;->protocol:Lorg/apache/http/ProtocolVersion;

    #@9
    .line 95
    return-void
.end method

.method public static final parseHeader(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/Header;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/LineParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 473
    if-nez p0, :cond_0

    #@2
    .line 474
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    .line 475
    const-string/jumbo v2, "Value to parse may not be null"

    #@7
    .line 474
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 478
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 479
    sget-object p1, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    #@f
    .line 481
    :cond_1
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@14
    move-result v1

    #@15
    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@18
    .line 482
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@1b
    .line 483
    invoke-interface {p1, v0}, Lorg/apache/http/message/LineParser;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/Header;

    #@1e
    move-result-object v1

    #@1f
    return-object v1
.end method

.method public static final parseProtocolVersion(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/ProtocolVersion;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/LineParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    if-nez p0, :cond_0

    #@2
    .line 118
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    .line 119
    const-string/jumbo v3, "Value to parse may not be null."

    #@7
    .line 118
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 122
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 123
    sget-object p1, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    #@f
    .line 125
    :cond_1
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@14
    move-result v2

    #@15
    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@18
    .line 126
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@1b
    .line 127
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    #@1d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@20
    move-result v2

    #@21
    const/4 v3, 0x0

    #@22
    invoke-direct {v1, v3, v2}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    #@25
    .line 128
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/LineParser;->parseProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/ProtocolVersion;

    #@28
    move-result-object v2

    #@29
    return-object v2
.end method

.method public static final parseRequestLine(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/RequestLine;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/LineParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 282
    if-nez p0, :cond_0

    #@2
    .line 283
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    .line 284
    const-string/jumbo v3, "Value to parse may not be null."

    #@7
    .line 283
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 287
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 288
    sget-object p1, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    #@f
    .line 290
    :cond_1
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@14
    move-result v2

    #@15
    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@18
    .line 291
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@1b
    .line 292
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    #@1d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@20
    move-result v2

    #@21
    const/4 v3, 0x0

    #@22
    invoke-direct {v1, v3, v2}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    #@25
    .line 293
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/LineParser;->parseRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/RequestLine;

    #@28
    move-result-object v2

    #@29
    return-object v2
.end method

.method public static final parseStatusLine(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/StatusLine;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/LineParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 382
    if-nez p0, :cond_0

    #@2
    .line 383
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    .line 384
    const-string/jumbo v3, "Value to parse may not be null."

    #@7
    .line 383
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 387
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 388
    sget-object p1, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    #@f
    .line 390
    :cond_1
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@14
    move-result v2

    #@15
    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@18
    .line 391
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@1b
    .line 392
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    #@1d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@20
    move-result v2

    #@21
    const/4 v3, 0x0

    #@22
    invoke-direct {v1, v3, v2}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    #@25
    .line 393
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/LineParser;->parseStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/StatusLine;

    #@28
    move-result-object v2

    #@29
    return-object v2
.end method


# virtual methods
.method protected createProtocolVersion(II)Lorg/apache/http/ProtocolVersion;
    .locals 1
    .param p1, "major"    # I
    .param p2, "minor"    # I

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/http/message/BasicLineParser;->protocol:Lorg/apache/http/ProtocolVersion;

    #@2
    invoke-virtual {v0, p1, p2}, Lorg/apache/http/ProtocolVersion;->forVersion(II)Lorg/apache/http/ProtocolVersion;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected createRequestLine(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/RequestLine;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "ver"    # Lorg/apache/http/ProtocolVersion;

    #@0
    .prologue
    .line 372
    new-instance v0, Lorg/apache/http/message/BasicRequestLine;

    #@2
    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    #@5
    return-object v0
.end method

.method protected createStatusLine(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)Lorg/apache/http/StatusLine;
    .locals 1
    .param p1, "ver"    # Lorg/apache/http/ProtocolVersion;
    .param p2, "status"    # I
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 463
    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    #@2
    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    #@5
    return-object v0
.end method

.method public hasProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Z
    .locals 8
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 232
    if-nez p1, :cond_0

    #@3
    .line 233
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v6, "Char array buffer may not be null"

    #@8
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v5

    #@c
    .line 235
    :cond_0
    if-nez p2, :cond_1

    #@e
    .line 236
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v6, "Parser cursor may not be null"

    #@13
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v5

    #@17
    .line 238
    :cond_1
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    #@1a
    move-result v0

    #@1b
    .line 240
    .local v0, "index":I
    iget-object v5, p0, Lorg/apache/http/message/BasicLineParser;->protocol:Lorg/apache/http/ProtocolVersion;

    #@1d
    invoke-virtual {v5}, Lorg/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    .line 241
    .local v4, "protoname":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@24
    move-result v3

    #@25
    .line 243
    .local v3, "protolength":I
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@28
    move-result v5

    #@29
    add-int/lit8 v6, v3, 0x4

    #@2b
    if-ge v5, v6, :cond_2

    #@2d
    .line 244
    return v7

    #@2e
    .line 246
    :cond_2
    if-gez v0, :cond_4

    #@30
    .line 249
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@33
    move-result v5

    #@34
    add-int/lit8 v5, v5, -0x4

    #@36
    sub-int v0, v5, v3

    #@38
    .line 259
    :cond_3
    add-int v5, v0, v3

    #@3a
    add-int/lit8 v5, v5, 0x4

    #@3c
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@3f
    move-result v6

    #@40
    if-le v5, v6, :cond_5

    #@42
    .line 260
    return v7

    #@43
    .line 250
    :cond_4
    if-nez v0, :cond_3

    #@45
    .line 252
    :goto_0
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@48
    move-result v5

    #@49
    if-ge v0, v5, :cond_3

    #@4b
    .line 253
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    #@4e
    move-result v5

    #@4f
    invoke-static {v5}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    #@52
    move-result v5

    #@53
    .line 252
    if-eqz v5, :cond_3

    #@55
    .line 254
    add-int/lit8 v0, v0, 0x1

    #@57
    goto :goto_0

    #@58
    .line 264
    :cond_5
    const/4 v2, 0x1

    #@59
    .line 265
    .local v2, "ok":Z
    const/4 v1, 0x0

    #@5a
    .local v1, "j":I
    :goto_1
    if-eqz v2, :cond_7

    #@5c
    if-ge v1, v3, :cond_7

    #@5e
    .line 266
    add-int v5, v0, v1

    #@60
    invoke-virtual {p1, v5}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    #@63
    move-result v5

    #@64
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@67
    move-result v6

    #@68
    if-ne v5, v6, :cond_6

    #@6a
    const/4 v2, 0x1

    #@6b
    .line 265
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@6d
    goto :goto_1

    #@6e
    .line 266
    :cond_6
    const/4 v2, 0x0

    #@6f
    goto :goto_2

    #@70
    .line 268
    :cond_7
    if-eqz v2, :cond_8

    #@72
    .line 269
    add-int v5, v0, v3

    #@74
    invoke-virtual {p1, v5}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    #@77
    move-result v5

    #@78
    const/16 v6, 0x2f

    #@7a
    if-ne v5, v6, :cond_9

    #@7c
    const/4 v2, 0x1

    #@7d
    .line 272
    :cond_8
    :goto_3
    return v2

    #@7e
    .line 269
    :cond_9
    const/4 v2, 0x0

    #@7f
    goto :goto_3
.end method

.method public parseHeader(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/Header;
    .locals 1
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 492
    new-instance v0, Lorg/apache/http/message/BufferedHeader;

    #@2
    invoke-direct {v0, p1}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    #@5
    return-object v0
.end method

.method public parseProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/ProtocolVersion;
    .locals 16
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    if-nez p1, :cond_0

    #@2
    .line 138
    new-instance v13, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v14, "Char array buffer may not be null"

    #@7
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v13

    #@b
    .line 140
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 141
    new-instance v13, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v14, "Parser cursor may not be null"

    #@12
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v13

    #@16
    .line 144
    :cond_1
    move-object/from16 v0, p0

    #@18
    iget-object v13, v0, Lorg/apache/http/message/BasicLineParser;->protocol:Lorg/apache/http/ProtocolVersion;

    #@1a
    invoke-virtual {v13}, Lorg/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    #@1d
    move-result-object v12

    #@1e
    .line 145
    .local v12, "protoname":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@21
    move-result v11

    #@22
    .line 147
    .local v11, "protolength":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    #@25
    move-result v4

    #@26
    .line 148
    .local v4, "indexFrom":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    #@29
    move-result v5

    #@2a
    .line 150
    .local v5, "indexTo":I
    invoke-virtual/range {p0 .. p2}, Lorg/apache/http/message/BasicLineParser;->skipWhitespace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    #@2d
    .line 152
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    #@30
    move-result v3

    #@31
    .line 155
    .local v3, "i":I
    add-int v13, v3, v11

    #@33
    add-int/lit8 v13, v13, 0x4

    #@35
    if-le v13, v5, :cond_2

    #@37
    .line 156
    new-instance v13, Lorg/apache/http/ParseException;

    #@39
    .line 157
    new-instance v14, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v15, "Not a valid protocol version: "

    #@41
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v14

    #@45
    .line 158
    move-object/from16 v0, p1

    #@47
    invoke-virtual {v0, v4, v5}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    #@4a
    move-result-object v15

    #@4b
    .line 157
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v14

    #@4f
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v14

    #@53
    .line 156
    invoke-direct {v13, v14}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    #@56
    throw v13

    #@57
    .line 162
    :cond_2
    const/4 v9, 0x1

    #@58
    .line 163
    .local v9, "ok":Z
    const/4 v6, 0x0

    #@59
    .local v6, "j":I
    :goto_0
    if-eqz v9, :cond_4

    #@5b
    if-ge v6, v11, :cond_4

    #@5d
    .line 164
    add-int v13, v3, v6

    #@5f
    move-object/from16 v0, p1

    #@61
    invoke-virtual {v0, v13}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    #@64
    move-result v13

    #@65
    invoke-virtual {v12, v6}, Ljava/lang/String;->charAt(I)C

    #@68
    move-result v14

    #@69
    if-ne v13, v14, :cond_3

    #@6b
    const/4 v9, 0x1

    #@6c
    .line 163
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@6e
    goto :goto_0

    #@6f
    .line 164
    :cond_3
    const/4 v9, 0x0

    #@70
    goto :goto_1

    #@71
    .line 166
    :cond_4
    if-eqz v9, :cond_5

    #@73
    .line 167
    add-int v13, v3, v11

    #@75
    move-object/from16 v0, p1

    #@77
    invoke-virtual {v0, v13}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    #@7a
    move-result v13

    #@7b
    const/16 v14, 0x2f

    #@7d
    if-ne v13, v14, :cond_6

    #@7f
    const/4 v9, 0x1

    #@80
    .line 169
    :cond_5
    :goto_2
    if-nez v9, :cond_7

    #@82
    .line 170
    new-instance v13, Lorg/apache/http/ParseException;

    #@84
    .line 171
    new-instance v14, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v15, "Not a valid protocol version: "

    #@8c
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v14

    #@90
    .line 172
    move-object/from16 v0, p1

    #@92
    invoke-virtual {v0, v4, v5}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    #@95
    move-result-object v15

    #@96
    .line 171
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v14

    #@9a
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v14

    #@9e
    .line 170
    invoke-direct {v13, v14}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    #@a1
    throw v13

    #@a2
    .line 167
    :cond_6
    const/4 v9, 0x0

    #@a3
    goto :goto_2

    #@a4
    .line 175
    :cond_7
    add-int/lit8 v13, v11, 0x1

    #@a6
    add-int/2addr v3, v13

    #@a7
    .line 177
    const/16 v13, 0x2e

    #@a9
    move-object/from16 v0, p1

    #@ab
    invoke-virtual {v0, v13, v3, v5}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I

    #@ae
    move-result v10

    #@af
    .line 178
    .local v10, "period":I
    const/4 v13, -0x1

    #@b0
    if-ne v10, v13, :cond_8

    #@b2
    .line 179
    new-instance v13, Lorg/apache/http/ParseException;

    #@b4
    .line 180
    new-instance v14, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v15, "Invalid protocol version number: "

    #@bc
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v14

    #@c0
    .line 181
    move-object/from16 v0, p1

    #@c2
    invoke-virtual {v0, v4, v5}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    #@c5
    move-result-object v15

    #@c6
    .line 180
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v14

    #@ca
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v14

    #@ce
    .line 179
    invoke-direct {v13, v14}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    #@d1
    throw v13

    #@d2
    .line 185
    :cond_8
    :try_start_0
    move-object/from16 v0, p1

    #@d4
    invoke-virtual {v0, v3, v10}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    #@d7
    move-result-object v13

    #@d8
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@db
    move-result v7

    #@dc
    .line 191
    .local v7, "major":I
    add-int/lit8 v3, v10, 0x1

    #@de
    .line 193
    const/16 v13, 0x20

    #@e0
    move-object/from16 v0, p1

    #@e2
    invoke-virtual {v0, v13, v3, v5}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I

    #@e5
    move-result v1

    #@e6
    .line 194
    .local v1, "blank":I
    const/4 v13, -0x1

    #@e7
    if-ne v1, v13, :cond_9

    #@e9
    .line 195
    move v1, v5

    #@ea
    .line 199
    :cond_9
    :try_start_1
    move-object/from16 v0, p1

    #@ec
    invoke-virtual {v0, v3, v1}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    #@ef
    move-result-object v13

    #@f0
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@f3
    move-result v8

    #@f4
    .line 206
    .local v8, "minor":I
    move-object/from16 v0, p2

    #@f6
    invoke-virtual {v0, v1}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    #@f9
    .line 208
    move-object/from16 v0, p0

    #@fb
    invoke-virtual {v0, v7, v8}, Lorg/apache/http/message/BasicLineParser;->createProtocolVersion(II)Lorg/apache/http/ProtocolVersion;

    #@fe
    move-result-object v13

    #@ff
    return-object v13

    #@100
    .line 186
    .end local v1    # "blank":I
    .end local v7    # "major":I
    .end local v8    # "minor":I
    :catch_0
    move-exception v2

    #@101
    .line 187
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v13, Lorg/apache/http/ParseException;

    #@103
    .line 188
    new-instance v14, Ljava/lang/StringBuilder;

    #@105
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@108
    const-string/jumbo v15, "Invalid protocol major version number: "

    #@10b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v14

    #@10f
    .line 189
    move-object/from16 v0, p1

    #@111
    invoke-virtual {v0, v4, v5}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    #@114
    move-result-object v15

    #@115
    .line 188
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v14

    #@119
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11c
    move-result-object v14

    #@11d
    .line 187
    invoke-direct {v13, v14}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    #@120
    throw v13

    #@121
    .line 200
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "blank":I
    .restart local v7    # "major":I
    :catch_1
    move-exception v2

    #@122
    .line 201
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    new-instance v13, Lorg/apache/http/ParseException;

    #@124
    .line 202
    new-instance v14, Ljava/lang/StringBuilder;

    #@126
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@129
    const-string/jumbo v15, "Invalid protocol minor version number: "

    #@12c
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v14

    #@130
    .line 203
    move-object/from16 v0, p1

    #@132
    invoke-virtual {v0, v4, v5}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    #@135
    move-result-object v15

    #@136
    .line 202
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v14

    #@13a
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13d
    move-result-object v14

    #@13e
    .line 201
    invoke-direct {v13, v14}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    #@141
    throw v13
.end method

.method public parseRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/RequestLine;
    .locals 11
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 310
    if-nez p1, :cond_0

    #@2
    .line 311
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v9, "Char array buffer may not be null"

    #@7
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v8

    #@b
    .line 313
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 314
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v9, "Parser cursor may not be null"

    #@12
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v8

    #@16
    .line 317
    :cond_1
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    #@19
    move-result v3

    #@1a
    .line 318
    .local v3, "indexFrom":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    #@1d
    move-result v4

    #@1e
    .line 321
    .local v4, "indexTo":I
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->skipWhitespace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    #@21
    .line 322
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    #@24
    move-result v2

    #@25
    .line 324
    .local v2, "i":I
    const/16 v8, 0x20

    #@27
    invoke-virtual {p1, v8, v2, v4}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I

    #@2a
    move-result v0

    #@2b
    .line 325
    .local v0, "blank":I
    if-gez v0, :cond_2

    #@2d
    .line 326
    new-instance v8, Lorg/apache/http/ParseException;

    #@2f
    new-instance v9, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v10, "Invalid request line: "

    #@37
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v9

    #@3b
    .line 327
    invoke-virtual {p1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    #@3e
    move-result-object v10

    #@3f
    .line 326
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v9

    #@43
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v9

    #@47
    invoke-direct {v8, v9}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v8
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    .line 352
    .end local v0    # "blank":I
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    #@4c
    .line 353
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lorg/apache/http/ParseException;

    #@4e
    new-instance v9, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v10, "Invalid request line: "

    #@56
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v9

    #@5a
    .line 354
    invoke-virtual {p1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    #@5d
    move-result-object v10

    #@5e
    .line 353
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v9

    #@62
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v9

    #@66
    invoke-direct {v8, v9}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    #@69
    throw v8

    #@6a
    .line 329
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v0    # "blank":I
    .restart local v2    # "i":I
    :cond_2
    :try_start_1
    invoke-virtual {p1, v2, v0}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    #@6d
    move-result-object v5

    #@6e
    .line 330
    .local v5, "method":Ljava/lang/String;
    invoke-virtual {p2, v0}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    #@71
    .line 332
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->skipWhitespace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    #@74
    .line 333
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    #@77
    move-result v2

    #@78
    .line 335
    const/16 v8, 0x20

    #@7a
    invoke-virtual {p1, v8, v2, v4}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I

    #@7d
    move-result v0

    #@7e
    .line 336
    if-gez v0, :cond_3

    #@80
    .line 337
    new-instance v8, Lorg/apache/http/ParseException;

    #@82
    new-instance v9, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v10, "Invalid request line: "

    #@8a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v9

    #@8e
    .line 338
    invoke-virtual {p1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    #@91
    move-result-object v10

    #@92
    .line 337
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v9

    #@96
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v9

    #@9a
    invoke-direct {v8, v9}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    #@9d
    throw v8

    #@9e
    .line 340
    :cond_3
    invoke-virtual {p1, v2, v0}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    #@a1
    move-result-object v6

    #@a2
    .line 341
    .local v6, "uri":Ljava/lang/String;
    invoke-virtual {p2, v0}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    #@a5
    .line 343
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->parseProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/ProtocolVersion;

    #@a8
    move-result-object v7

    #@a9
    .line 345
    .local v7, "ver":Lorg/apache/http/ProtocolVersion;
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->skipWhitespace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    #@ac
    .line 346
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    #@af
    move-result v8

    #@b0
    if-nez v8, :cond_4

    #@b2
    .line 347
    new-instance v8, Lorg/apache/http/ParseException;

    #@b4
    new-instance v9, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v10, "Invalid request line: "

    #@bc
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v9

    #@c0
    .line 348
    invoke-virtual {p1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    #@c3
    move-result-object v10

    #@c4
    .line 347
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v9

    #@c8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v9

    #@cc
    invoke-direct {v8, v9}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    #@cf
    throw v8

    #@d0
    .line 351
    :cond_4
    invoke-virtual {p0, v5, v6, v7}, Lorg/apache/http/message/BasicLineParser;->createRequestLine(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/RequestLine;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    #@d3
    move-result-object v8

    #@d4
    return-object v8
.end method

.method public parseStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/StatusLine;
    .locals 12
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 402
    if-nez p1, :cond_0

    #@2
    .line 403
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v10, "Char array buffer may not be null"

    #@7
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v9

    #@b
    .line 405
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 406
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v10, "Parser cursor may not be null"

    #@12
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v9

    #@16
    .line 409
    :cond_1
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    #@19
    move-result v4

    #@1a
    .line 410
    .local v4, "indexFrom":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    #@1d
    move-result v5

    #@1e
    .line 414
    .local v5, "indexTo":I
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->parseProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/ProtocolVersion;

    #@21
    move-result-object v8

    #@22
    .line 417
    .local v8, "ver":Lorg/apache/http/ProtocolVersion;
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->skipWhitespace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    #@25
    .line 418
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    #@28
    move-result v3

    #@29
    .line 420
    .local v3, "i":I
    const/16 v9, 0x20

    #@2b
    invoke-virtual {p1, v9, v3, v5}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    #@2e
    move-result v0

    #@2f
    .line 421
    .local v0, "blank":I
    if-gez v0, :cond_2

    #@31
    .line 422
    move v0, v5

    #@32
    .line 424
    :cond_2
    const/4 v7, 0x0

    #@33
    .line 427
    .local v7, "statusCode":I
    :try_start_1
    invoke-virtual {p1, v3, v0}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    #@36
    move-result-object v9

    #@37
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    #@3a
    move-result v7

    #@3b
    .line 434
    move v3, v0

    #@3c
    .line 435
    const/4 v6, 0x0

    #@3d
    .line 436
    .local v6, "reasonPhrase":Ljava/lang/String;
    if-ge v3, v5, :cond_3

    #@3f
    .line 437
    :try_start_2
    invoke-virtual {p1, v3, v5}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    .line 441
    .local v6, "reasonPhrase":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v8, v7, v6}, Lorg/apache/http/message/BasicLineParser;->createStatusLine(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)Lorg/apache/http/StatusLine;

    #@46
    move-result-object v9

    #@47
    return-object v9

    #@48
    .line 428
    .end local v6    # "reasonPhrase":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@49
    .line 429
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Lorg/apache/http/ParseException;

    #@4b
    .line 430
    new-instance v10, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v11, "Unable to parse status code from status line: "

    #@53
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v10

    #@57
    .line 431
    invoke-virtual {p1, v4, v5}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    #@5a
    move-result-object v11

    #@5b
    .line 430
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v10

    #@5f
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v10

    #@63
    .line 429
    invoke-direct {v9, v10}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    #@66
    throw v9
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    #@67
    .line 443
    .end local v0    # "blank":I
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "i":I
    .end local v7    # "statusCode":I
    .end local v8    # "ver":Lorg/apache/http/ProtocolVersion;
    :catch_1
    move-exception v1

    #@68
    .line 444
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Lorg/apache/http/ParseException;

    #@6a
    new-instance v10, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v11, "Invalid status line: "

    #@72
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v10

    #@76
    .line 445
    invoke-virtual {p1, v4, v5}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    #@79
    move-result-object v11

    #@7a
    .line 444
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v10

    #@7e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v10

    #@82
    invoke-direct {v9, v10}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    #@85
    throw v9

    #@86
    .line 439
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v0    # "blank":I
    .restart local v3    # "i":I
    .local v6, "reasonPhrase":Ljava/lang/String;
    .restart local v7    # "statusCode":I
    .restart local v8    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_3
    :try_start_3
    const-string/jumbo v6, ""
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    #@89
    .local v6, "reasonPhrase":Ljava/lang/String;
    goto :goto_0
.end method

.method protected skipWhitespace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V
    .locals 3
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    #@0
    .prologue
    .line 500
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    #@3
    move-result v1

    #@4
    .line 501
    .local v1, "pos":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    #@7
    move-result v0

    #@8
    .line 502
    .local v0, "indexTo":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@a
    .line 503
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    #@d
    move-result v2

    #@e
    invoke-static {v2}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    #@11
    move-result v2

    #@12
    .line 502
    if-eqz v2, :cond_0

    #@14
    .line 504
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 506
    :cond_0
    invoke-virtual {p2, v1}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    #@1a
    .line 499
    return-void
.end method
