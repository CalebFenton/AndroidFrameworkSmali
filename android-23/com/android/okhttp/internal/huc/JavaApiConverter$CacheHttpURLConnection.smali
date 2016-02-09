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
.field private final request:Lcom/android/okhttp/Request;

.field private final response:Lcom/android/okhttp/Response;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;)Lcom/android/okhttp/Response;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/okhttp/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 540
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    #@8
    move-result-object v0

    #@9
    invoke-direct {p0, v0}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    #@c
    .line 541
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/android/okhttp/Request;

    #@12
    .line 542
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    #@14
    .line 545
    iput-boolean v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->connected:Z

    #@16
    .line 546
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/android/okhttp/Request;

    #@18
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->body()Lcom/android/okhttp/RequestBody;

    #@1b
    move-result-object v0

    #@1c
    if-eqz v0, :cond_0

    #@1e
    move v0, v1

    #@1f
    :goto_0
    iput-boolean v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->doOutput:Z

    #@21
    .line 547
    iput-boolean v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->doInput:Z

    #@23
    .line 548
    iput-boolean v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->useCaches:Z

    #@25
    .line 551
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/android/okhttp/Request;

    #@27
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->method:Ljava/lang/String;

    #@2d
    .line 539
    return-void

    #@2e
    .line 546
    :cond_0
    const/4 v0, 0x0

    #@2f
    goto :goto_0
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 575
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap0()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 558
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap0()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method

.method public disconnect()V
    .locals 1

    #@0
    .prologue
    .line 563
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap0()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    #@0
    .prologue
    .line 761
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    #@0
    .prologue
    .line 700
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 716
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap2()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "classes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 721
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap2()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    #@0
    .prologue
    .line 786
    invoke-super {p0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getDoInput()Z
    .locals 1

    #@0
    .prologue
    .line 741
    iget-boolean v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->doInput:Z

    #@2
    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    #@0
    .prologue
    .line 751
    iget-boolean v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->doOutput:Z

    #@2
    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    #@0
    .prologue
    .line 678
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    #@0
    .prologue
    .line 645
    if-gez p1, :cond_0

    #@2
    .line 646
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "Invalid header index: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 648
    :cond_0
    if-nez p1, :cond_1

    #@1e
    .line 649
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    #@20
    invoke-static {v0}, Lcom/android/okhttp/internal/http/StatusLine;->get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    return-object v0

    #@29
    .line 651
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    #@2b
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    #@2e
    move-result-object v0

    #@2f
    add-int/lit8 v1, p1, -0x1

    #@31
    invoke-virtual {v0, v1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 656
    if-nez p1, :cond_0

    #@2
    .line 657
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    #@4
    invoke-static {v0}, Lcom/android/okhttp/internal/http/StatusLine;->get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 656
    :goto_0
    return-object v0

    #@d
    .line 658
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    #@f
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    goto :goto_0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    #@0
    .prologue
    .line 633
    if-gez p1, :cond_0

    #@2
    .line 634
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "Invalid header index: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 636
    :cond_0
    if-nez p1, :cond_1

    #@1e
    .line 637
    const/4 v0, 0x0

    #@1f
    return-object v0

    #@20
    .line 639
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    #@22
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    #@25
    move-result-object v0

    #@26
    add-int/lit8 v1, p1, -0x1

    #@28
    invoke-virtual {v0, v1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    #@8
    invoke-static {v1}, Lcom/android/okhttp/internal/http/StatusLine;->get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    #@0
    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/android/okhttp/Request;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "If-Modified-Since"

    #@9
    invoke-virtual {v0, v1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    invoke-static {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap3(Ljava/lang/String;)J

    #@10
    move-result-wide v0

    #@11
    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 726
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap2()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    #@0
    .prologue
    .line 615
    invoke-super {p0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 731
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap0()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method

.method public getReadTimeout()I
    .locals 1

    #@0
    .prologue
    .line 711
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/android/okhttp/Request;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/android/okhttp/Request;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/android/okhttp/Request;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->code()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->message()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    #@0
    .prologue
    .line 771
    invoke-super {p0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1
    .param p1, "allowUserInteraction"    # Z

    #@0
    .prologue
    .line 756
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap0()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1
    .param p1, "chunklen"    # I

    #@0
    .prologue
    .line 604
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap0()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method

.method public setConnectTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 694
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap0()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method

.method public setDefaultUseCaches(Z)V
    .locals 0
    .param p1, "defaultUseCaches"    # Z

    #@0
    .prologue
    .line 791
    invoke-super {p0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    #@3
    .line 790
    return-void
.end method

.method public setDoInput(Z)V
    .locals 1
    .param p1, "doInput"    # Z

    #@0
    .prologue
    .line 736
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap0()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method

.method public setDoOutput(Z)V
    .locals 1
    .param p1, "doOutput"    # Z

    #@0
    .prologue
    .line 746
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap0()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1
    .param p1, "contentLength"    # I

    #@0
    .prologue
    .line 594
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap0()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 1
    .param p1, "contentLength"    # J

    #@0
    .prologue
    .line 599
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap0()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method

.method public setIfModifiedSince(J)V
    .locals 1
    .param p1, "ifModifiedSince"    # J

    #@0
    .prologue
    .line 776
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap0()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1
    .param p1, "followRedirects"    # Z

    #@0
    .prologue
    .line 609
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap0()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method

.method public setReadTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 705
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap0()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 620
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap0()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 570
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap0()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method

.method public setUseCaches(Z)V
    .locals 1
    .param p1, "useCaches"    # Z

    #@0
    .prologue
    .line 766
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap0()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method

.method public usingProxy()Z
    .locals 1

    #@0
    .prologue
    .line 687
    const/4 v0, 0x0

    #@1
    return v0
.end method
