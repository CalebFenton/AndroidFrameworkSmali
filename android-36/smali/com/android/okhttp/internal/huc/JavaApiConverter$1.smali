.class Lcom/android/okhttp/internal/huc/JavaApiConverter$1;
.super Ljava/net/SecureCacheResponse;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/huc/JavaApiConverter;->createJavaCacheResponse(Lcom/android/okhttp/Response;)Ljava/net/CacheResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$body:Lcom/android/okhttp/ResponseBody;

.field final synthetic blacklist val$handshake:Lcom/android/okhttp/Handshake;

.field final synthetic blacklist val$headers:Lcom/android/okhttp/Headers;

.field final synthetic blacklist val$response:Lcom/android/okhttp/Response;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/Handshake;Lcom/android/okhttp/Headers;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseBody;)V
    .registers 5

    .line 296
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    iput-object p2, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$headers:Lcom/android/okhttp/Headers;

    iput-object p3, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$response:Lcom/android/okhttp/Response;

    iput-object p4, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$body:Lcom/android/okhttp/ResponseBody;

    invoke-direct {p0}, Ljava/net/SecureCacheResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getBody()Ljava/io/InputStream;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$body:Lcom/android/okhttp/ResponseBody;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 339
    :cond_6
    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getCipherSuite()Ljava/lang/String;
    .registers 1

    .line 299
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/okhttp/Handshake;->cipherSuite()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getHeaders()Ljava/util/Map;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$headers:Lcom/android/okhttp/Headers;

    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$response:Lcom/android/okhttp/Response;

    invoke-static {p0}, Lcom/android/okhttp/internal/http/StatusLine;->get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getLocalCertificateChain()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 304
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 306
    :cond_6
    invoke-virtual {p0}, Lcom/android/okhttp/Handshake;->localCertificates()Ljava/util/List;

    move-result-object p0

    .line 307
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    return-object p0

    :cond_11
    return-object v0
.end method

.method public whitelist test-api getLocalPrincipal()Ljava/security/Principal;
    .registers 1

    .line 326
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 327
    :cond_6
    invoke-virtual {p0}, Lcom/android/okhttp/Handshake;->localPrincipal()Ljava/security/Principal;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getPeerPrincipal()Ljava/security/Principal;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 320
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 321
    :cond_6
    invoke-virtual {p0}, Lcom/android/okhttp/Handshake;->peerPrincipal()Ljava/security/Principal;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getServerCertificateChain()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 312
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 314
    :cond_6
    invoke-virtual {p0}, Lcom/android/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object p0

    .line 315
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    return-object p0

    :cond_11
    return-object v0
.end method
