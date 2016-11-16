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
    .line 830
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 831
    iput p2, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    #@7
    .line 832
    iput-object p3, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->request:Lcom/android/okhttp/Request;

    #@9
    .line 830
    return-void
.end method


# virtual methods
.method public connection()Lcom/android/okhttp/Connection;
    .locals 1

    #@0
    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    #@2
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->-get0(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/Connection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public proceed(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;
    .locals 14
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    .line 844
    iget v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    #@3
    add-int/lit8 v9, v9, 0x1

    #@5
    iput v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    #@7
    .line 846
    iget v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    #@9
    if-lez v9, :cond_2

    #@b
    .line 847
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    #@d
    iget-object v9, v9, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@f
    invoke-virtual {v9}, Lcom/android/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    #@12
    move-result-object v9

    #@13
    iget v10, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    #@15
    add-int/lit8 v10, v10, -0x1

    #@17
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Lcom/android/okhttp/Interceptor;

    #@1d
    .line 848
    .local v2, "caller":Lcom/android/okhttp/Interceptor;
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->connection()Lcom/android/okhttp/Connection;

    #@20
    move-result-object v9

    #@21
    invoke-virtual {v9}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    #@24
    move-result-object v9

    #@25
    invoke-virtual {v9}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    #@28
    move-result-object v0

    #@29
    .line 851
    .local v0, "address":Lcom/android/okhttp/Address;
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    #@2c
    move-result-object v9

    #@2d
    invoke-virtual {v9}, Lcom/android/okhttp/HttpUrl;->rfc2732host()Ljava/lang/String;

    #@30
    move-result-object v9

    #@31
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getRfc2732Host()Ljava/lang/String;

    #@34
    move-result-object v10

    #@35
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v9

    #@39
    if-eqz v9, :cond_0

    #@3b
    .line 852
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    #@3e
    move-result-object v9

    #@3f
    invoke-virtual {v9}, Lcom/android/okhttp/HttpUrl;->port()I

    #@42
    move-result v9

    #@43
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getUriPort()I

    #@46
    move-result v10

    #@47
    if-eq v9, v10, :cond_1

    #@49
    .line 853
    :cond_0
    new-instance v9, Ljava/lang/IllegalStateException;

    #@4b
    new-instance v10, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v11, "network interceptor "

    #@53
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v10

    #@57
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v10

    #@5b
    .line 854
    const-string/jumbo v11, " must retain the same host and port"

    #@5e
    .line 853
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v10

    #@62
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v10

    #@66
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@69
    throw v9

    #@6a
    .line 858
    :cond_1
    iget v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    #@6c
    if-le v9, v11, :cond_2

    #@6e
    .line 859
    new-instance v9, Ljava/lang/IllegalStateException;

    #@70
    new-instance v10, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v11, "network interceptor "

    #@78
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v10

    #@7c
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v10

    #@80
    .line 860
    const-string/jumbo v11, " must call proceed() exactly once"

    #@83
    .line 859
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v10

    #@87
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v10

    #@8b
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8e
    throw v9

    #@8f
    .line 864
    .end local v0    # "address":Lcom/android/okhttp/Address;
    .end local v2    # "caller":Lcom/android/okhttp/Interceptor;
    :cond_2
    iget v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    #@91
    iget-object v10, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    #@93
    iget-object v10, v10, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@95
    invoke-virtual {v10}, Lcom/android/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    #@98
    move-result-object v10

    #@99
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@9c
    move-result v10

    #@9d
    if-ge v9, v10, :cond_4

    #@9f
    .line 866
    new-instance v3, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;

    #@a1
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    #@a3
    iget v10, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    #@a5
    add-int/lit8 v10, v10, 0x1

    #@a7
    invoke-direct {v3, v9, v10, p1}, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;-><init>(Lcom/android/okhttp/internal/http/HttpEngine;ILcom/android/okhttp/Request;)V

    #@aa
    .line 867
    .local v3, "chain":Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    #@ac
    iget-object v9, v9, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@ae
    invoke-virtual {v9}, Lcom/android/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    #@b1
    move-result-object v9

    #@b2
    iget v10, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    #@b4
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b7
    move-result-object v6

    #@b8
    check-cast v6, Lcom/android/okhttp/Interceptor;

    #@ba
    .line 868
    .local v6, "interceptor":Lcom/android/okhttp/Interceptor;
    invoke-interface {v6, v3}, Lcom/android/okhttp/Interceptor;->intercept(Lcom/android/okhttp/Interceptor$Chain;)Lcom/android/okhttp/Response;

    #@bd
    move-result-object v5

    #@be
    .line 871
    .local v5, "interceptedResponse":Lcom/android/okhttp/Response;
    iget v9, v3, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    #@c0
    if-eq v9, v11, :cond_3

    #@c2
    .line 872
    new-instance v9, Ljava/lang/IllegalStateException;

    #@c4
    new-instance v10, Ljava/lang/StringBuilder;

    #@c6
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@c9
    const-string/jumbo v11, "network interceptor "

    #@cc
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v10

    #@d0
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v10

    #@d4
    .line 873
    const-string/jumbo v11, " must call proceed() exactly once"

    #@d7
    .line 872
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v10

    #@db
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@de
    move-result-object v10

    #@df
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e2
    throw v9

    #@e3
    .line 876
    :cond_3
    return-object v5

    #@e4
    .line 879
    .end local v3    # "chain":Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;
    .end local v5    # "interceptedResponse":Lcom/android/okhttp/Response;
    .end local v6    # "interceptor":Lcom/android/okhttp/Interceptor;
    :cond_4
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    #@e6
    invoke-static {v9}, Lcom/android/okhttp/internal/http/HttpEngine;->-get1(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/internal/http/Transport;

    #@e9
    move-result-object v9

    #@ea
    invoke-interface {v9, p1}, Lcom/android/okhttp/internal/http/Transport;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    #@ed
    .line 882
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    #@ef
    invoke-static {v9, p1}, Lcom/android/okhttp/internal/http/HttpEngine;->-set0(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;

    #@f2
    .line 884
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    #@f4
    invoke-virtual {v9}, Lcom/android/okhttp/internal/http/HttpEngine;->permitsRequestBody()Z

    #@f7
    move-result v9

    #@f8
    if-eqz v9, :cond_5

    #@fa
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->body()Lcom/android/okhttp/RequestBody;

    #@fd
    move-result-object v9

    #@fe
    if-eqz v9, :cond_5

    #@100
    .line 885
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    #@102
    invoke-static {v9}, Lcom/android/okhttp/internal/http/HttpEngine;->-get1(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/internal/http/Transport;

    #@105
    move-result-object v9

    #@106
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->body()Lcom/android/okhttp/RequestBody;

    #@109
    move-result-object v10

    #@10a
    invoke-virtual {v10}, Lcom/android/okhttp/RequestBody;->contentLength()J

    #@10d
    move-result-wide v10

    #@10e
    invoke-interface {v9, p1, v10, v11}, Lcom/android/okhttp/internal/http/Transport;->createRequestBody(Lcom/android/okhttp/Request;J)Lcom/android/okhttp/okio/Sink;

    #@111
    move-result-object v7

    #@112
    .line 886
    .local v7, "requestBodyOut":Lcom/android/okhttp/okio/Sink;
    invoke-static {v7}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    #@115
    move-result-object v1

    #@116
    .line 887
    .local v1, "bufferedRequestBody":Lcom/android/okhttp/okio/BufferedSink;
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->body()Lcom/android/okhttp/RequestBody;

    #@119
    move-result-object v9

    #@11a
    invoke-virtual {v9, v1}, Lcom/android/okhttp/RequestBody;->writeTo(Lcom/android/okhttp/okio/BufferedSink;)V

    #@11d
    .line 888
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    #@120
    .line 891
    .end local v1    # "bufferedRequestBody":Lcom/android/okhttp/okio/BufferedSink;
    .end local v7    # "requestBodyOut":Lcom/android/okhttp/okio/Sink;
    :cond_5
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    #@122
    invoke-static {v9}, Lcom/android/okhttp/internal/http/HttpEngine;->-wrap0(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/Response;

    #@125
    move-result-object v8

    #@126
    .line 893
    .local v8, "response":Lcom/android/okhttp/Response;
    invoke-virtual {v8}, Lcom/android/okhttp/Response;->code()I

    #@129
    move-result v4

    #@12a
    .line 894
    .local v4, "code":I
    const/16 v9, 0xcc

    #@12c
    if-eq v4, v9, :cond_6

    #@12e
    const/16 v9, 0xcd

    #@130
    if-ne v4, v9, :cond_7

    #@132
    :cond_6
    invoke-virtual {v8}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    #@135
    move-result-object v9

    #@136
    invoke-virtual {v9}, Lcom/android/okhttp/ResponseBody;->contentLength()J

    #@139
    move-result-wide v10

    #@13a
    const-wide/16 v12, 0x0

    #@13c
    cmp-long v9, v10, v12

    #@13e
    if-lez v9, :cond_7

    #@140
    .line 895
    new-instance v9, Ljava/net/ProtocolException;

    #@142
    .line 896
    new-instance v10, Ljava/lang/StringBuilder;

    #@144
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@147
    const-string/jumbo v11, "HTTP "

    #@14a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v10

    #@14e
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@151
    move-result-object v10

    #@152
    const-string/jumbo v11, " had non-zero Content-Length: "

    #@155
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v10

    #@159
    invoke-virtual {v8}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    #@15c
    move-result-object v11

    #@15d
    invoke-virtual {v11}, Lcom/android/okhttp/ResponseBody;->contentLength()J

    #@160
    move-result-wide v12

    #@161
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@164
    move-result-object v10

    #@165
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@168
    move-result-object v10

    #@169
    .line 895
    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@16c
    throw v9

    #@16d
    .line 899
    :cond_7
    return-object v8
.end method

.method public request()Lcom/android/okhttp/Request;
    .locals 1

    #@0
    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->request:Lcom/android/okhttp/Request;

    #@2
    return-object v0
.end method
