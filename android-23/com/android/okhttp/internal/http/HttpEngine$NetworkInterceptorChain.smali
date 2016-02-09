.class Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;
.super Ljava/lang/Object;
.source "HttpEngine.java"

# interfaces
.implements Lcom/android/okhttp/Interceptor$Chain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/HttpEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkInterceptorChain"
.end annotation


# instance fields
.field private calls:I

.field private final index:I

.field private final request:Lcom/android/okhttp/Request;

.field final synthetic this$0:Lcom/android/okhttp/internal/http/HttpEngine;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/http/HttpEngine;ILcom/android/okhttp/Request;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .param p2, "index"    # I
    .param p3, "request"    # Lcom/android/okhttp/Request;

    #@0
    .prologue
    .line 836
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 837
    iput p2, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    #@7
    .line 838
    iput-object p3, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->request:Lcom/android/okhttp/Request;

    #@9
    .line 836
    return-void
.end method


# virtual methods
.method public connection()Lcom/android/okhttp/Connection;
    .locals 1

    #@0
    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    #@2
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->-get0(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/Connection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public proceed(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;
    .locals 10
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 850
    iget v7, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    #@3
    add-int/lit8 v7, v7, 0x1

    #@5
    iput v7, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    #@7
    .line 852
    iget v7, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    #@9
    if-lez v7, :cond_2

    #@b
    .line 853
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    #@d
    iget-object v7, v7, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@f
    invoke-virtual {v7}, Lcom/android/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    #@12
    move-result-object v7

    #@13
    iget v8, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    #@15
    add-int/lit8 v8, v8, -0x1

    #@17
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Lcom/android/okhttp/Interceptor;

    #@1d
    .line 854
    .local v2, "caller":Lcom/android/okhttp/Interceptor;
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->connection()Lcom/android/okhttp/Connection;

    #@20
    move-result-object v7

    #@21
    invoke-virtual {v7}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    #@24
    move-result-object v7

    #@25
    invoke-virtual {v7}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    #@28
    move-result-object v0

    #@29
    .line 857
    .local v0, "address":Lcom/android/okhttp/Address;
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    #@2c
    move-result-object v7

    #@2d
    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@30
    move-result-object v7

    #@31
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    #@34
    move-result-object v8

    #@35
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v7

    #@39
    if-eqz v7, :cond_0

    #@3b
    .line 858
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    #@3e
    move-result-object v7

    #@3f
    invoke-static {v7}, Lcom/android/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    #@42
    move-result v7

    #@43
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getUriPort()I

    #@46
    move-result v8

    #@47
    if-eq v7, v8, :cond_1

    #@49
    .line 859
    :cond_0
    new-instance v7, Ljava/lang/IllegalStateException;

    #@4b
    new-instance v8, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v9, "network interceptor "

    #@53
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v8

    #@57
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v8

    #@5b
    .line 860
    const-string/jumbo v9, " must retain the same host and port"

    #@5e
    .line 859
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v8

    #@62
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v8

    #@66
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@69
    throw v7

    #@6a
    .line 864
    :cond_1
    iget v7, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    #@6c
    if-le v7, v9, :cond_2

    #@6e
    .line 865
    new-instance v7, Ljava/lang/IllegalStateException;

    #@70
    new-instance v8, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v9, "network interceptor "

    #@78
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v8

    #@7c
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v8

    #@80
    .line 866
    const-string/jumbo v9, " must call proceed() exactly once"

    #@83
    .line 865
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v8

    #@87
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v8

    #@8b
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8e
    throw v7

    #@8f
    .line 870
    .end local v0    # "address":Lcom/android/okhttp/Address;
    .end local v2    # "caller":Lcom/android/okhttp/Interceptor;
    :cond_2
    iget v7, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    #@91
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    #@93
    iget-object v8, v8, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@95
    invoke-virtual {v8}, Lcom/android/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    #@98
    move-result-object v8

    #@99
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@9c
    move-result v8

    #@9d
    if-ge v7, v8, :cond_4

    #@9f
    .line 872
    new-instance v3, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;

    #@a1
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    #@a3
    iget v8, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    #@a5
    add-int/lit8 v8, v8, 0x1

    #@a7
    invoke-direct {v3, v7, v8, p1}, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;-><init>(Lcom/android/okhttp/internal/http/HttpEngine;ILcom/android/okhttp/Request;)V

    #@aa
    .line 873
    .local v3, "chain":Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    #@ac
    iget-object v7, v7, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@ae
    invoke-virtual {v7}, Lcom/android/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    #@b1
    move-result-object v7

    #@b2
    iget v8, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    #@b4
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b7
    move-result-object v5

    #@b8
    check-cast v5, Lcom/android/okhttp/Interceptor;

    #@ba
    .line 874
    .local v5, "interceptor":Lcom/android/okhttp/Interceptor;
    invoke-interface {v5, v3}, Lcom/android/okhttp/Interceptor;->intercept(Lcom/android/okhttp/Interceptor$Chain;)Lcom/android/okhttp/Response;

    #@bd
    move-result-object v4

    #@be
    .line 877
    .local v4, "interceptedResponse":Lcom/android/okhttp/Response;
    iget v7, v3, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    #@c0
    if-eq v7, v9, :cond_3

    #@c2
    .line 878
    new-instance v7, Ljava/lang/IllegalStateException;

    #@c4
    new-instance v8, Ljava/lang/StringBuilder;

    #@c6
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@c9
    const-string/jumbo v9, "network interceptor "

    #@cc
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v8

    #@d0
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v8

    #@d4
    .line 879
    const-string/jumbo v9, " must call proceed() exactly once"

    #@d7
    .line 878
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v8

    #@db
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@de
    move-result-object v8

    #@df
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e2
    throw v7

    #@e3
    .line 882
    :cond_3
    return-object v4

    #@e4
    .line 885
    .end local v3    # "chain":Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;
    .end local v4    # "interceptedResponse":Lcom/android/okhttp/Response;
    .end local v5    # "interceptor":Lcom/android/okhttp/Interceptor;
    :cond_4
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    #@e6
    invoke-static {v7}, Lcom/android/okhttp/internal/http/HttpEngine;->-get1(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/internal/http/Transport;

    #@e9
    move-result-object v7

    #@ea
    invoke-interface {v7, p1}, Lcom/android/okhttp/internal/http/Transport;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    #@ed
    .line 888
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    #@ef
    invoke-static {v7, p1}, Lcom/android/okhttp/internal/http/HttpEngine;->-set0(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;

    #@f2
    .line 890
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    #@f4
    invoke-virtual {v7}, Lcom/android/okhttp/internal/http/HttpEngine;->permitsRequestBody()Z

    #@f7
    move-result v7

    #@f8
    if-eqz v7, :cond_5

    #@fa
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->body()Lcom/android/okhttp/RequestBody;

    #@fd
    move-result-object v7

    #@fe
    if-eqz v7, :cond_5

    #@100
    .line 891
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    #@102
    invoke-static {v7}, Lcom/android/okhttp/internal/http/HttpEngine;->-get1(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/internal/http/Transport;

    #@105
    move-result-object v7

    #@106
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->body()Lcom/android/okhttp/RequestBody;

    #@109
    move-result-object v8

    #@10a
    invoke-virtual {v8}, Lcom/android/okhttp/RequestBody;->contentLength()J

    #@10d
    move-result-wide v8

    #@10e
    invoke-interface {v7, p1, v8, v9}, Lcom/android/okhttp/internal/http/Transport;->createRequestBody(Lcom/android/okhttp/Request;J)Lcom/android/okhttp/okio/Sink;

    #@111
    move-result-object v6

    #@112
    .line 892
    .local v6, "requestBodyOut":Lcom/android/okhttp/okio/Sink;
    invoke-static {v6}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    #@115
    move-result-object v1

    #@116
    .line 893
    .local v1, "bufferedRequestBody":Lcom/android/okhttp/okio/BufferedSink;
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->body()Lcom/android/okhttp/RequestBody;

    #@119
    move-result-object v7

    #@11a
    invoke-virtual {v7, v1}, Lcom/android/okhttp/RequestBody;->writeTo(Lcom/android/okhttp/okio/BufferedSink;)V

    #@11d
    .line 894
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    #@120
    .line 897
    .end local v1    # "bufferedRequestBody":Lcom/android/okhttp/okio/BufferedSink;
    .end local v6    # "requestBodyOut":Lcom/android/okhttp/okio/Sink;
    :cond_5
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    #@122
    invoke-static {v7}, Lcom/android/okhttp/internal/http/HttpEngine;->-wrap0(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/Response;

    #@125
    move-result-object v7

    #@126
    return-object v7
.end method

.method public request()Lcom/android/okhttp/Request;
    .locals 1

    #@0
    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->request:Lcom/android/okhttp/Request;

    #@2
    return-object v0
.end method
