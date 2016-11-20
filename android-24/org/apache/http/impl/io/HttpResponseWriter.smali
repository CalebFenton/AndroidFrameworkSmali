.class public Lorg/apache/http/impl/io/HttpResponseWriter;
.super Lorg/apache/http/impl/io/AbstractMessageWriter;
.source "HttpResponseWriter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "buffer"    # Lorg/apache/http/io/SessionOutputBuffer;
    .param p2, "formatter"    # Lorg/apache/http/message/LineFormatter;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/impl/io/AbstractMessageWriter;-><init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;Lorg/apache/http/params/HttpParams;)V

    #@3
    .line 53
    return-void
.end method


# virtual methods
.method protected writeHeadLine(Lorg/apache/http/HttpMessage;)V
    .locals 4
    .param p1, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    iget-object v1, p0, Lorg/apache/http/impl/io/HttpResponseWriter;->lineFormatter:Lorg/apache/http/message/LineFormatter;

    #@2
    .line 61
    iget-object v2, p0, Lorg/apache/http/impl/io/HttpResponseWriter;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    #@4
    check-cast p1, Lorg/apache/http/HttpResponse;

    #@6
    .end local p1    # "message":Lorg/apache/http/HttpMessage;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@9
    move-result-object v3

    #@a
    .line 60
    invoke-interface {v1, v2, v3}, Lorg/apache/http/message/LineFormatter;->formatStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/StatusLine;)Lorg/apache/http/util/CharArrayBuffer;

    #@d
    move-result-object v0

    #@e
    .line 62
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    iget-object v1, p0, Lorg/apache/http/impl/io/HttpResponseWriter;->sessionBuffer:Lorg/apache/http/io/SessionOutputBuffer;

    #@10
    invoke-interface {v1, v0}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Lorg/apache/http/util/CharArrayBuffer;)V

    #@13
    .line 58
    return-void
.end method
