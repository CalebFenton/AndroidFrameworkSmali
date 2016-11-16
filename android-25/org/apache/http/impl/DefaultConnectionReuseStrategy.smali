.class public Lorg/apache/http/impl/DefaultConnectionReuseStrategy;
.super Ljava/lang/Object;
.source "DefaultConnectionReuseStrategy.java"

# interfaces
.implements Lorg/apache/http/ConnectionReuseStrategy;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 78
    return-void
.end method


# virtual methods
.method protected createTokenIterator(Lorg/apache/http/HeaderIterator;)Lorg/apache/http/TokenIterator;
    .locals 1
    .param p1, "hit"    # Lorg/apache/http/HeaderIterator;

    #@0
    .prologue
    .line 185
    new-instance v0, Lorg/apache/http/message/BasicTokenIterator;

    #@2
    invoke-direct {v0, p1}, Lorg/apache/http/message/BasicTokenIterator;-><init>(Lorg/apache/http/HeaderIterator;)V

    #@5
    return-object v0
.end method

.method public keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 12
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    #@0
    .prologue
    .line 85
    if-nez p1, :cond_0

    #@2
    .line 86
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@4
    .line 87
    const-string/jumbo v9, "HTTP response may not be null."

    #@7
    .line 86
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v8

    #@b
    .line 89
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 90
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@f
    .line 91
    const-string/jumbo v9, "HTTP context may not be null."

    #@12
    .line 90
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v8

    #@16
    .line 95
    :cond_1
    const-string/jumbo v8, "http.connection"

    #@19
    invoke-interface {p2, v8}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    .line 94
    check-cast v0, Lorg/apache/http/HttpConnection;

    #@1f
    .line 97
    .local v0, "conn":Lorg/apache/http/HttpConnection;
    if-eqz v0, :cond_2

    #@21
    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->isOpen()Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_4

    #@27
    .line 103
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    #@2a
    move-result-object v1

    #@2b
    .line 104
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@2e
    move-result-object v8

    #@2f
    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@32
    move-result-object v7

    #@33
    .line 105
    .local v7, "ver":Lorg/apache/http/ProtocolVersion;
    if-eqz v1, :cond_5

    #@35
    .line 106
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    #@38
    move-result-wide v8

    #@39
    const-wide/16 v10, 0x0

    #@3b
    cmp-long v8, v8, v10

    #@3d
    if-gez v8, :cond_5

    #@3f
    .line 107
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->isChunked()Z

    #@42
    move-result v8

    #@43
    if-eqz v8, :cond_3

    #@45
    .line 108
    sget-object v8, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    #@47
    invoke-virtual {v7, v8}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    #@4a
    move-result v8

    #@4b
    .line 107
    if-eqz v8, :cond_5

    #@4d
    .line 111
    :cond_3
    const/4 v8, 0x0

    #@4e
    return v8

    #@4f
    .line 98
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v7    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_4
    const/4 v8, 0x0

    #@50
    return v8

    #@51
    .line 119
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v7    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_5
    const-string/jumbo v8, "Connection"

    #@54
    invoke-interface {p1, v8}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    #@57
    move-result-object v2

    #@58
    .line 120
    .local v2, "hit":Lorg/apache/http/HeaderIterator;
    invoke-interface {v2}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    #@5b
    move-result v8

    #@5c
    if-nez v8, :cond_6

    #@5e
    .line 121
    const-string/jumbo v8, "Proxy-Connection"

    #@61
    invoke-interface {p1, v8}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    #@64
    move-result-object v2

    #@65
    .line 146
    :cond_6
    invoke-interface {v2}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    #@68
    move-result v8

    #@69
    if-eqz v8, :cond_a

    #@6b
    .line 148
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;->createTokenIterator(Lorg/apache/http/HeaderIterator;)Lorg/apache/http/TokenIterator;

    #@6e
    move-result-object v5

    #@6f
    .line 149
    .local v5, "ti":Lorg/apache/http/TokenIterator;
    const/4 v3, 0x0

    #@70
    .line 150
    .local v3, "keepalive":Z
    :cond_7
    :goto_0
    invoke-interface {v5}, Lorg/apache/http/TokenIterator;->hasNext()Z

    #@73
    move-result v8

    #@74
    if-eqz v8, :cond_9

    #@76
    .line 151
    invoke-interface {v5}, Lorg/apache/http/TokenIterator;->nextToken()Ljava/lang/String;

    #@79
    move-result-object v6

    #@7a
    .line 152
    .local v6, "token":Ljava/lang/String;
    const-string/jumbo v8, "Close"

    #@7d
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@80
    move-result v8

    #@81
    if-eqz v8, :cond_8

    #@83
    .line 153
    const/4 v8, 0x0

    #@84
    return v8

    #@85
    .line 154
    :cond_8
    const-string/jumbo v8, "Keep-Alive"

    #@88
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@8b
    move-result v8

    #@8c
    if-eqz v8, :cond_7

    #@8e
    .line 156
    const/4 v3, 0x1

    #@8f
    goto :goto_0

    #@90
    .line 159
    .end local v6    # "token":Ljava/lang/String;
    :cond_9
    if-eqz v3, :cond_a

    #@92
    .line 160
    const/4 v8, 0x1

    #@93
    return v8

    #@94
    .line 163
    .end local v3    # "keepalive":Z
    .end local v5    # "ti":Lorg/apache/http/TokenIterator;
    :catch_0
    move-exception v4

    #@95
    .line 166
    .local v4, "px":Lorg/apache/http/ParseException;
    const/4 v8, 0x0

    #@96
    return v8

    #@97
    .line 171
    .end local v4    # "px":Lorg/apache/http/ParseException;
    :cond_a
    sget-object v8, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    #@99
    invoke-virtual {v7, v8}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    #@9c
    move-result v8

    #@9d
    if-eqz v8, :cond_b

    #@9f
    const/4 v8, 0x0

    #@a0
    :goto_1
    return v8

    #@a1
    :cond_b
    const/4 v8, 0x1

    #@a2
    goto :goto_1
.end method
