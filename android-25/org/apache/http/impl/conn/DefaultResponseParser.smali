.class public Lorg/apache/http/impl/conn/DefaultResponseParser;
.super Lorg/apache/http/impl/io/AbstractMessageParser;
.source "DefaultResponseParser.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final lineBuf:Lorg/apache/http/util/CharArrayBuffer;

.field private final maxGarbageLines:I

.field private final responseFactory:Lorg/apache/http/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "buffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "parser"    # Lorg/apache/http/message/LineParser;
    .param p3, "responseFactory"    # Lorg/apache/http/HttpResponseFactory;
    .param p4, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/http/impl/io/AbstractMessageParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/params/HttpParams;)V

    #@3
    .line 68
    if-nez p3, :cond_0

    #@5
    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    .line 70
    const-string/jumbo v1, "Response factory may not be null"

    #@a
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 72
    :cond_0
    iput-object p3, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    #@10
    .line 73
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@12
    const/16 v1, 0x80

    #@14
    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@17
    iput-object v0, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    #@19
    .line 75
    const-string/jumbo v0, "http.connection.max-status-line-garbage"

    #@1c
    const v1, 0x7fffffff

    #@1f
    .line 74
    invoke-interface {p4, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    #@22
    move-result v0

    #@23
    iput v0, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->maxGarbageLines:I

    #@25
    .line 66
    return-void
.end method


# virtual methods
.method protected parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpMessage;
    .locals 8
    .param p1, "sessionBuffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, -0x1

    #@2
    .line 83
    iget-object v4, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    #@4
    invoke-virtual {v4}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    #@7
    .line 85
    const/4 v0, 0x0

    #@8
    .line 86
    .local v0, "count":I
    const/4 v1, 0x0

    #@9
    .line 88
    :goto_0
    iget-object v4, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    #@b
    invoke-interface {p1, v4}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    #@e
    move-result v2

    #@f
    .line 89
    .local v2, "i":I
    if-ne v2, v6, :cond_0

    #@11
    if-nez v0, :cond_0

    #@13
    .line 91
    new-instance v4, Lorg/apache/http/NoHttpResponseException;

    #@15
    const-string/jumbo v5, "The target server failed to respond"

    #@18
    invoke-direct {v4, v5}, Lorg/apache/http/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v4

    #@1c
    .line 93
    :cond_0
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    #@1e
    iget-object v4, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    #@20
    invoke-virtual {v4}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@23
    move-result v4

    #@24
    invoke-direct {v1, v7, v4}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    #@27
    .line 94
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    iget-object v4, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineParser:Lorg/apache/http/message/LineParser;

    #@29
    iget-object v5, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    #@2b
    invoke-interface {v4, v5, v1}, Lorg/apache/http/message/LineParser;->hasProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_1

    #@31
    .line 105
    iget-object v4, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineParser:Lorg/apache/http/message/LineParser;

    #@33
    iget-object v5, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    #@35
    invoke-interface {v4, v5, v1}, Lorg/apache/http/message/LineParser;->parseStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/StatusLine;

    #@38
    move-result-object v3

    #@39
    .line 106
    .local v3, "statusline":Lorg/apache/http/StatusLine;
    iget-object v4, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    #@3b
    const/4 v5, 0x0

    #@3c
    invoke-interface {v4, v3, v5}, Lorg/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/apache/http/StatusLine;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    #@3f
    move-result-object v4

    #@40
    return-object v4

    #@41
    .line 97
    .end local v3    # "statusline":Lorg/apache/http/StatusLine;
    :cond_1
    if-eq v2, v6, :cond_2

    #@43
    iget v4, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->maxGarbageLines:I

    #@45
    if-lt v0, v4, :cond_3

    #@47
    .line 99
    :cond_2
    new-instance v4, Lorg/apache/http/ProtocolException;

    #@49
    const-string/jumbo v5, "The server failed to respond with a valid HTTP response"

    #@4c
    invoke-direct {v4, v5}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v4

    #@50
    .line 102
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@52
    goto :goto_0
.end method
