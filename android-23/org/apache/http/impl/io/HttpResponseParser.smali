.class public Lorg/apache/http/impl/io/HttpResponseParser;
.super Lorg/apache/http/impl/io/AbstractMessageParser;
.source "HttpResponseParser.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final lineBuf:Lorg/apache/http/util/CharArrayBuffer;

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
    .line 64
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/http/impl/io/AbstractMessageParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/params/HttpParams;)V

    #@3
    .line 65
    if-nez p3, :cond_0

    #@5
    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Response factory may not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 68
    :cond_0
    iput-object p3, p0, Lorg/apache/http/impl/io/HttpResponseParser;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    #@10
    .line 69
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@12
    const/16 v1, 0x80

    #@14
    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@17
    iput-object v0, p0, Lorg/apache/http/impl/io/HttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    #@19
    .line 63
    return-void
.end method


# virtual methods
.method protected parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpMessage;
    .locals 5
    .param p1, "sessionBuffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 76
    iget-object v3, p0, Lorg/apache/http/impl/io/HttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    #@2
    invoke-virtual {v3}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    #@5
    .line 77
    iget-object v3, p0, Lorg/apache/http/impl/io/HttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    #@7
    invoke-interface {p1, v3}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    #@a
    move-result v1

    #@b
    .line 78
    .local v1, "i":I
    const/4 v3, -0x1

    #@c
    if-ne v1, v3, :cond_0

    #@e
    .line 79
    new-instance v3, Lorg/apache/http/NoHttpResponseException;

    #@10
    const-string/jumbo v4, "The target server failed to respond"

    #@13
    invoke-direct {v3, v4}, Lorg/apache/http/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    #@16
    throw v3

    #@17
    .line 82
    :cond_0
    new-instance v0, Lorg/apache/http/message/ParserCursor;

    #@19
    iget-object v3, p0, Lorg/apache/http/impl/io/HttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    #@1b
    invoke-virtual {v3}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@1e
    move-result v3

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-direct {v0, v4, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    #@23
    .line 83
    .local v0, "cursor":Lorg/apache/http/message/ParserCursor;
    iget-object v3, p0, Lorg/apache/http/impl/io/HttpResponseParser;->lineParser:Lorg/apache/http/message/LineParser;

    #@25
    iget-object v4, p0, Lorg/apache/http/impl/io/HttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    #@27
    invoke-interface {v3, v4, v0}, Lorg/apache/http/message/LineParser;->parseStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/StatusLine;

    #@2a
    move-result-object v2

    #@2b
    .line 84
    .local v2, "statusline":Lorg/apache/http/StatusLine;
    iget-object v3, p0, Lorg/apache/http/impl/io/HttpResponseParser;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    #@2d
    const/4 v4, 0x0

    #@2e
    invoke-interface {v3, v2, v4}, Lorg/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/apache/http/StatusLine;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    #@31
    move-result-object v3

    #@32
    return-object v3
.end method
