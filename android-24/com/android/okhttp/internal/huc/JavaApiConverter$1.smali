.class final Lcom/android/okhttp/internal/huc/JavaApiConverter$1;
.super Ljava/net/SecureCacheResponse;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/huc/JavaApiConverter;->createJavaCacheResponse(Lcom/android/okhttp/Response;)Ljava/net/CacheResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$body:Lcom/android/okhttp/ResponseBody;

.field final synthetic val$handshake:Lcom/android/okhttp/Handshake;

.field final synthetic val$headers:Lcom/android/okhttp/Headers;

.field final synthetic val$response:Lcom/android/okhttp/Response;


# direct methods
.method constructor <init>(Lcom/android/okhttp/Handshake;Lcom/android/okhttp/Headers;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseBody;)V
    .locals 0
    .param p1, "val$handshake"    # Lcom/android/okhttp/Handshake;
    .param p2, "val$headers"    # Lcom/android/okhttp/Headers;
    .param p3, "val$response"    # Lcom/android/okhttp/Response;
    .param p4, "val$body"    # Lcom/android/okhttp/ResponseBody;

    #@0
    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    #@2
    iput-object p2, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$headers:Lcom/android/okhttp/Headers;

    #@4
    iput-object p3, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$response:Lcom/android/okhttp/Response;

    #@6
    iput-object p4, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$body:Lcom/android/okhttp/ResponseBody;

    #@8
    invoke-direct {p0}, Ljava/net/SecureCacheResponse;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 336
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$body:Lcom/android/okhttp/ResponseBody;

    #@3
    if-nez v0, :cond_0

    #@5
    return-object v1

    #@6
    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$body:Lcom/android/okhttp/ResponseBody;

    #@8
    invoke-virtual {v0}, Lcom/android/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 297
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    #@7
    invoke-virtual {v0}, Lcom/android/okhttp/Handshake;->cipherSuite()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$headers:Lcom/android/okhttp/Headers;

    #@2
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$response:Lcom/android/okhttp/Response;

    #@4
    invoke-static {v1}, Lcom/android/okhttp/internal/http/StatusLine;->get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public getLocalCertificateChain()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 302
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    #@3
    if-nez v2, :cond_0

    #@5
    return-object v1

    #@6
    .line 304
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    #@8
    invoke-virtual {v2}, Lcom/android/okhttp/Handshake;->localCertificates()Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    .line 305
    .local v0, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@f
    move-result v2

    #@10
    if-lez v2, :cond_1

    #@12
    .end local v0    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_0
    return-object v0

    #@13
    .restart local v0    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_1
    move-object v0, v1

    #@14
    goto :goto_0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 324
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    #@3
    if-nez v0, :cond_0

    #@5
    return-object v1

    #@6
    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    #@8
    invoke-virtual {v0}, Lcom/android/okhttp/Handshake;->localPrincipal()Ljava/security/Principal;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 318
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    #@3
    if-nez v0, :cond_0

    #@5
    return-object v1

    #@6
    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    #@8
    invoke-virtual {v0}, Lcom/android/okhttp/Handshake;->peerPrincipal()Ljava/security/Principal;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getServerCertificateChain()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 310
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    #@3
    if-nez v2, :cond_0

    #@5
    return-object v1

    #@6
    .line 312
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    #@8
    invoke-virtual {v2}, Lcom/android/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    .line 313
    .local v0, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@f
    move-result v2

    #@10
    if-lez v2, :cond_1

    #@12
    .end local v0    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_0
    return-object v0

    #@13
    .restart local v0    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_1
    move-object v0, v1

    #@14
    goto :goto_0
.end method
