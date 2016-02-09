.class public Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
.super Ljava/lang/Object;
.source "DefaultHttpRequestRetryHandler.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final requestSentRetryEnabled:Z

.field private final retryCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 77
    const/4 v0, 0x3

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    #@5
    .line 76
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "retryCount"    # I
    .param p2, "requestSentRetryEnabled"    # Z

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    iput p1, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    #@5
    .line 70
    iput-boolean p2, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    #@7
    .line 67
    return-void
.end method


# virtual methods
.method public getRetryCount()I
    .locals 1

    #@0
    .prologue
    .line 137
    iget v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    #@2
    return v0
.end method

.method public isRequestSentRetryEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 130
    iget-boolean v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    #@2
    return v0
.end method

.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 5
    .param p1, "exception"    # Ljava/io/IOException;
    .param p2, "executionCount"    # I
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 87
    if-nez p1, :cond_0

    #@4
    .line 88
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v3, "Exception parameter may not be null"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 90
    :cond_0
    if-nez p3, :cond_1

    #@f
    .line 91
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v3, "HTTP context may not be null"

    #@14
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2

    #@18
    .line 93
    :cond_1
    iget v2, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    #@1a
    if-le p2, v2, :cond_2

    #@1c
    .line 95
    return v3

    #@1d
    .line 97
    :cond_2
    instance-of v2, p1, Lorg/apache/http/NoHttpResponseException;

    #@1f
    if-eqz v2, :cond_3

    #@21
    .line 99
    return v4

    #@22
    .line 101
    :cond_3
    instance-of v2, p1, Ljava/io/InterruptedIOException;

    #@24
    if-eqz v2, :cond_4

    #@26
    .line 103
    return v3

    #@27
    .line 105
    :cond_4
    instance-of v2, p1, Ljava/net/UnknownHostException;

    #@29
    if-eqz v2, :cond_5

    #@2b
    .line 107
    return v3

    #@2c
    .line 109
    :cond_5
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    #@2e
    if-eqz v2, :cond_6

    #@30
    .line 111
    return v3

    #@31
    .line 114
    :cond_6
    const-string/jumbo v2, "http.request_sent"

    #@34
    invoke-interface {p3, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    .line 113
    check-cast v0, Ljava/lang/Boolean;

    #@3a
    .line 115
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_8

    #@3c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@3f
    move-result v1

    #@40
    .line 116
    :goto_0
    if-eqz v1, :cond_7

    #@42
    iget-boolean v2, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    #@44
    if-eqz v2, :cond_9

    #@46
    .line 119
    :cond_7
    return v4

    #@47
    .line 115
    :cond_8
    const/4 v1, 0x0

    #@48
    .local v1, "sent":Z
    goto :goto_0

    #@49
    .line 122
    .end local v1    # "sent":Z
    :cond_9
    return v3
.end method
