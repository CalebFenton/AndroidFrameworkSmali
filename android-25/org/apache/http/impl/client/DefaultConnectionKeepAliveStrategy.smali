.class public Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;
.super Ljava/lang/Object;
.source "DefaultConnectionKeepAliveStrategy.java"

# interfaces
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .locals 10
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    #@0
    .prologue
    .line 62
    if-nez p1, :cond_0

    #@2
    .line 63
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v6, "HTTP response may not be null"

    #@7
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 65
    :cond_0
    new-instance v2, Lorg/apache/http/message/BasicHeaderElementIterator;

    #@d
    .line 66
    const-string/jumbo v5, "Keep-Alive"

    #@10
    invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    #@13
    move-result-object v5

    #@14
    .line 65
    invoke-direct {v2, v5}, Lorg/apache/http/message/BasicHeaderElementIterator;-><init>(Lorg/apache/http/HeaderIterator;)V

    #@17
    .line 67
    .local v2, "it":Lorg/apache/http/HeaderElementIterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Lorg/apache/http/HeaderElementIterator;->hasNext()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_2

    #@1d
    .line 68
    invoke-interface {v2}, Lorg/apache/http/HeaderElementIterator;->nextElement()Lorg/apache/http/HeaderElement;

    #@20
    move-result-object v0

    #@21
    .line 69
    .local v0, "he":Lorg/apache/http/HeaderElement;
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    .line 70
    .local v3, "param":Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    .line 71
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_1

    #@2b
    const-string/jumbo v5, "timeout"

    #@2e
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_1

    #@34
    .line 73
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    move-result-wide v6

    #@38
    const-wide/16 v8, 0x3e8

    #@3a
    mul-long/2addr v6, v8

    #@3b
    return-wide v6

    #@3c
    .line 74
    :catch_0
    move-exception v1

    #@3d
    .local v1, "ignore":Ljava/lang/NumberFormatException;
    goto :goto_0

    #@3e
    .line 78
    .end local v0    # "he":Lorg/apache/http/HeaderElement;
    .end local v1    # "ignore":Ljava/lang/NumberFormatException;
    .end local v3    # "param":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    const-wide/16 v6, -0x1

    #@40
    return-wide v6
.end method
