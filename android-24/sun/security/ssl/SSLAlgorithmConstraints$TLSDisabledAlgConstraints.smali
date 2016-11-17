.class Lsun/security/ssl/SSLAlgorithmConstraints$TLSDisabledAlgConstraints;
.super Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;
.source "SSLAlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/SSLAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TLSDisabledAlgConstraints"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 396
    const-string/jumbo v0, "jdk.tls.disabledAlgorithms"

    #@3
    invoke-direct {p0, v0}, Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;-><init>(Ljava/lang/String;)V

    #@6
    .line 395
    return-void
.end method


# virtual methods
.method protected decomposes(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 401
    const-string/jumbo v3, "SSL_"

    #@3
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_0

    #@9
    const-string/jumbo v3, "TLS_"

    #@c
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_4

    #@12
    .line 402
    :cond_0
    const/4 v0, 0x0

    #@13
    .line 404
    .local v0, "cipherSuite":Lsun/security/ssl/CipherSuite;
    :try_start_0
    invoke-static {p1}, Lsun/security/ssl/CipherSuite;->valueOf(Ljava/lang/String;)Lsun/security/ssl/CipherSuite;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v0

    #@17
    .line 409
    .end local v0    # "cipherSuite":Lsun/security/ssl/CipherSuite;
    :goto_0
    if-eqz v0, :cond_4

    #@19
    .line 410
    new-instance v1, Ljava/util/HashSet;

    #@1b
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@1e
    .line 412
    .local v1, "components":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@20
    if-eqz v3, :cond_1

    #@22
    .line 414
    iget-object v3, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@24
    const/4 v4, 0x0

    #@25
    invoke-virtual {p0, v3, v4}, Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;->decomposes(Lsun/security/ssl/CipherSuite$KeyExchange;Z)Ljava/util/Set;

    #@28
    move-result-object v3

    #@29
    .line 413
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@2c
    .line 417
    :cond_1
    iget-object v3, v0, Lsun/security/ssl/CipherSuite;->cipher:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@2e
    if-eqz v3, :cond_2

    #@30
    .line 418
    iget-object v3, v0, Lsun/security/ssl/CipherSuite;->cipher:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@32
    invoke-virtual {p0, v3}, Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;->decomposes(Lsun/security/ssl/CipherSuite$BulkCipher;)Ljava/util/Set;

    #@35
    move-result-object v3

    #@36
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@39
    .line 421
    :cond_2
    iget-object v3, v0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    #@3b
    if-eqz v3, :cond_3

    #@3d
    .line 422
    iget-object v3, v0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    #@3f
    invoke-virtual {p0, v3}, Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;->decomposes(Lsun/security/ssl/CipherSuite$MacAlg;)Ljava/util/Set;

    #@42
    move-result-object v3

    #@43
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@46
    .line 425
    :cond_3
    return-object v1

    #@47
    .line 405
    .end local v1    # "components":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "cipherSuite":Lsun/security/ssl/CipherSuite;
    :catch_0
    move-exception v2

    #@48
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    #@49
    .line 429
    .end local v0    # "cipherSuite":Lsun/security/ssl/CipherSuite;
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_4
    invoke-super {p0, p1}, Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;->decomposes(Ljava/lang/String;)Ljava/util/Set;

    #@4c
    move-result-object v3

    #@4d
    return-object v3
.end method
