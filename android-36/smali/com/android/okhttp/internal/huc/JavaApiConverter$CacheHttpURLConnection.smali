.class final Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;
.super Ljava/net/HttpURLConnection;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/huc/JavaApiConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheHttpURLConnection"
.end annotation


# instance fields
.field private final blacklist request:Lcom/android/okhttp/Request;

.field private final blacklist response:Lcom/android/okhttp/Response;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/Response;)V
    .registers 4

    .line 542
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 543
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/android/okhttp/Request;

    .line 544
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    const/4 p1, 0x1

    .line 547
    iput-boolean p1, p0, Ljava/net/HttpURLConnection;->connected:Z

    .line 548
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->body()Lcom/android/okhttp/RequestBody;

    move-result-object v1

    if-eqz v1, :cond_1e

    move v1, p1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    iput-boolean v1, p0, Ljava/net/HttpURLConnection;->doOutput:Z

    .line 549
    iput-boolean p1, p0, Ljava/net/HttpURLConnection;->doInput:Z

    .line 550
    iput-boolean p1, p0, Ljava/net/HttpURLConnection;->useCaches:Z

    .line 553
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;)Lcom/android/okhttp/Response;
    .registers 1

    .line 536
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    return-object p0
.end method


# virtual methods
.method public whitelist test-api addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 577
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api connect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 560
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api disconnect()V
    .registers 1

    .line 565
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api getAllowUserInteraction()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api getConnectTimeout()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api getContent()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 718
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwResponseBodyAccessException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$200()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 723
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwResponseBodyAccessException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$200()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api getDefaultUseCaches()Z
    .registers 1

    .line 788
    invoke-super {p0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    move-result p0

    return p0
.end method

.method public whitelist test-api getDoInput()Z
    .registers 1

    .line 743
    iget-boolean p0, p0, Ljava/net/HttpURLConnection;->doInput:Z

    return p0
.end method

.method public whitelist test-api getDoOutput()Z
    .registers 1

    .line 753
    iget-boolean p0, p0, Ljava/net/HttpURLConnection;->doOutput:Z

    return p0
.end method

.method public whitelist test-api getErrorStream()Ljava/io/InputStream;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getHeaderField(I)Ljava/lang/String;
    .registers 4

    if-ltz p1, :cond_1c

    if-nez p1, :cond_f

    .line 651
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-static {p0}, Lcom/android/okhttp/internal/http/StatusLine;->get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 653
    :cond_f
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object p0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 648
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid header index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_d

    .line 659
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-static {p0}, Lcom/android/okhttp/internal/http/StatusLine;->get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 660
    :cond_d
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getHeaderFieldKey(I)Ljava/lang/String;
    .registers 4

    if-ltz p1, :cond_13

    if-nez p1, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 641
    :cond_6
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object p0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 636
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid header index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api getHeaderFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-static {p0}, Lcom/android/okhttp/internal/http/StatusLine;->get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getIfModifiedSince()J
    .registers 3

    .line 783
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/android/okhttp/Request;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object p0

    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->stringToLong(Ljava/lang/String;)J
    invoke-static {p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$000(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getInputStream()Ljava/io/InputStream;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 728
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwResponseBodyAccessException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$200()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api getInstanceFollowRedirects()Z
    .registers 1

    .line 617
    invoke-super {p0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result p0

    return p0
.end method

.method public whitelist test-api getOutputStream()Ljava/io/OutputStream;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 733
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api getReadTimeout()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api getRequestMethod()Ljava/lang/String;
    .registers 1

    .line 627
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/android/okhttp/Request;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getRequestProperties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 591
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/android/okhttp/Request;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 582
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/android/okhttp/Request;

    invoke-virtual {p0, p1}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getResponseCode()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 670
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    move-result p0

    return p0
.end method

.method public whitelist test-api getResponseMessage()Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 675
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->message()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getUseCaches()Z
    .registers 1

    .line 773
    invoke-super {p0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result p0

    return p0
.end method

.method public whitelist test-api setAllowUserInteraction(Z)V
    .registers 2

    .line 758
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api setChunkedStreamingMode(I)V
    .registers 2

    .line 606
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api setConnectTimeout(I)V
    .registers 2

    .line 696
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api setDefaultUseCaches(Z)V
    .registers 2

    .line 793
    invoke-super {p0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public whitelist test-api setDoInput(Z)V
    .registers 2

    .line 738
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api setDoOutput(Z)V
    .registers 2

    .line 748
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api setFixedLengthStreamingMode(I)V
    .registers 2

    .line 596
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api setFixedLengthStreamingMode(J)V
    .registers 3

    .line 601
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api setIfModifiedSince(J)V
    .registers 3

    .line 778
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api setInstanceFollowRedirects(Z)V
    .registers 2

    .line 611
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api setReadTimeout(I)V
    .registers 2

    .line 707
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api setRequestMethod(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 622
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 572
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api setUseCaches(Z)V
    .registers 2

    .line 768
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api usingProxy()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method
