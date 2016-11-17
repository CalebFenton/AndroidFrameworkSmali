.class public abstract Lorg/apache/http/impl/io/AbstractMessageWriter;
.super Ljava/lang/Object;
.source "AbstractMessageWriter.java"

# interfaces
.implements Lorg/apache/http/io/HttpMessageWriter;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final lineBuf:Lorg/apache/http/util/CharArrayBuffer;

.field protected final lineFormatter:Lorg/apache/http/message/LineFormatter;

.field protected final sessionBuffer:Lorg/apache/http/io/SessionOutputBuffer;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "buffer"    # Lorg/apache/http/io/SessionOutputBuffer;
    .param p2, "formatter"    # Lorg/apache/http/message/LineFormatter;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    if-nez p1, :cond_0

    #@5
    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Session input buffer may not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 66
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/io/AbstractMessageWriter;->sessionBuffer:Lorg/apache/http/io/SessionOutputBuffer;

    #@10
    .line 67
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@12
    const/16 v1, 0x80

    #@14
    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@17
    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    #@19
    .line 68
    if-eqz p2, :cond_1

    #@1b
    .end local p2    # "formatter":Lorg/apache/http/message/LineFormatter;
    :goto_0
    iput-object p2, p0, Lorg/apache/http/impl/io/AbstractMessageWriter;->lineFormatter:Lorg/apache/http/message/LineFormatter;

    #@1d
    .line 61
    return-void

    #@1e
    .line 69
    .restart local p2    # "formatter":Lorg/apache/http/message/LineFormatter;
    :cond_1
    sget-object p2, Lorg/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/apache/http/message/BasicLineFormatter;

    #@20
    goto :goto_0
.end method


# virtual methods
.method public write(Lorg/apache/http/HttpMessage;)V
    .locals 5
    .param p1, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    if-nez p1, :cond_0

    #@2
    .line 79
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "HTTP message may not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 81
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/io/AbstractMessageWriter;->writeHeadLine(Lorg/apache/http/HttpMessage;)V

    #@e
    .line 82
    invoke-interface {p1}, Lorg/apache/http/HttpMessage;->headerIterator()Lorg/apache/http/HeaderIterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lorg/apache/http/Header;

    #@1e
    .line 84
    .local v0, "header":Lorg/apache/http/Header;
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractMessageWriter;->sessionBuffer:Lorg/apache/http/io/SessionOutputBuffer;

    #@20
    .line 85
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractMessageWriter;->lineFormatter:Lorg/apache/http/message/LineFormatter;

    #@22
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    #@24
    invoke-interface {v3, v4, v0}, Lorg/apache/http/message/LineFormatter;->formatHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/Header;)Lorg/apache/http/util/CharArrayBuffer;

    #@27
    move-result-object v3

    #@28
    .line 84
    invoke-interface {v2, v3}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Lorg/apache/http/util/CharArrayBuffer;)V

    #@2b
    goto :goto_0

    #@2c
    .line 87
    .end local v0    # "header":Lorg/apache/http/Header;
    :cond_1
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    #@2e
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    #@31
    .line 88
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractMessageWriter;->sessionBuffer:Lorg/apache/http/io/SessionOutputBuffer;

    #@33
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    #@35
    invoke-interface {v2, v3}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Lorg/apache/http/util/CharArrayBuffer;)V

    #@38
    .line 77
    return-void
.end method

.method protected abstract writeHeadLine(Lorg/apache/http/HttpMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
