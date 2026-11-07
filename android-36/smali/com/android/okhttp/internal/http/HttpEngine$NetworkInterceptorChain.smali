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
.field private greylist-max-o calls:I

.field private final greylist-max-o index:I

.field private final greylist-max-o request:Lcom/android/okhttp/Request;

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/http/HttpEngine;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/internal/http/HttpEngine;ILcom/android/okhttp/Request;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 670
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    iput p2, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    .line 672
    iput-object p3, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->request:Lcom/android/okhttp/Request;

    return-void
.end method


# virtual methods
.method public greylist-max-o connection()Lcom/android/okhttp/Connection;
    .registers 1

    .line 676
    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o proceed(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 684
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    .line 686
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    const-string v2, " must call proceed() exactly once"

    const-string v3, "network interceptor "

    if-lez v0, :cond_82

    .line 687
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v0

    iget v4, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    sub-int/2addr v4, v1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/Interceptor;

    .line 688
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->connection()Lcom/android/okhttp/Connection;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v4

    .line 691
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 692
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/okhttp/Address;->getUriPort()I

    move-result v4

    if-ne v5, v4, :cond_68

    .line 698
    iget v4, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    if-gt v4, v1, :cond_50

    goto :goto_82

    .line 699
    :cond_50
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 693
    :cond_68
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " must retain the same host and port"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 704
    :cond_82
    :goto_82
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v4, v4, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v4}, Lcom/android/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_e9

    .line 706
    new-instance v0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    iget v5, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    add-int/2addr v5, v1

    invoke-direct {v0, v4, v5, p1}, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;-><init>(Lcom/android/okhttp/internal/http/HttpEngine;ILcom/android/okhttp/Request;)V

    .line 707
    iget-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object p1, p1, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object p1

    iget p0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/okhttp/Interceptor;

    .line 708
    invoke-interface {p0, v0}, Lcom/android/okhttp/Interceptor;->intercept(Lcom/android/okhttp/Interceptor$Chain;)Lcom/android/okhttp/Response;

    move-result-object p1

    .line 711
    iget v0, v0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    if-ne v0, v1, :cond_d1

    if-eqz p1, :cond_b7

    return-object p1

    .line 716
    :cond_b7
    new-instance p1, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " returned null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 712
    :cond_d1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 723
    :cond_e9
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    # getter for: Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->access$000(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/internal/http/HttpStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/okhttp/internal/http/HttpStream;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    .line 726
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    # setter for: Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;
    invoke-static {v0, p1}, Lcom/android/okhttp/internal/http/HttpEngine;->access$102(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;

    .line 728
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/internal/http/HttpEngine;->permitsRequestBody(Lcom/android/okhttp/Request;)Z

    move-result v0

    if-eqz v0, :cond_125

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->body()Lcom/android/okhttp/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_125

    .line 729
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    # getter for: Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->access$000(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/internal/http/HttpStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->body()Lcom/android/okhttp/RequestBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/RequestBody;->contentLength()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Lcom/android/okhttp/internal/http/HttpStream;->createRequestBody(Lcom/android/okhttp/Request;J)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    .line 730
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    .line 731
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->body()Lcom/android/okhttp/RequestBody;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/okhttp/RequestBody;->writeTo(Lcom/android/okhttp/okio/BufferedSink;)V

    .line 732
    invoke-interface {v0}, Lcom/android/okhttp/okio/Sink;->close()V

    .line 735
    :cond_125
    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    # invokes: Lcom/android/okhttp/internal/http/HttpEngine;->readNetworkResponse()Lcom/android/okhttp/Response;
    invoke-static {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->access$200(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/Response;

    move-result-object p0

    .line 737
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    move-result p1

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_137

    const/16 v0, 0xcd

    if-ne p1, v0, :cond_145

    .line 738
    :cond_137
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/ResponseBody;->contentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_146

    :cond_145
    return-object p0

    .line 739
    :cond_146
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " had non-zero Content-Length: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->contentLength()J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o request()Lcom/android/okhttp/Request;
    .registers 1

    .line 680
    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->request:Lcom/android/okhttp/Request;

    return-object p0
.end method
