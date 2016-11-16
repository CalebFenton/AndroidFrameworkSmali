.class public Lsun/security/validator/KeyStores;
.super Ljava/lang/Object;
.source "KeyStores.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getTrustedCerts(Ljava/security/KeyStore;)Ljava/util/Set;
    .locals 7
    .param p0, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyStore;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 97
    new-instance v5, Ljava/util/HashSet;

    #@2
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 99
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    #@8
    move-result-object v4

    #@9
    .local v4, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@c
    move-result v6

    #@d
    if-eqz v6, :cond_1

    #@f
    .line 100
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/lang/String;

    #@15
    .line 101
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    #@18
    move-result v6

    #@19
    if-eqz v6, :cond_2

    #@1b
    .line 102
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    #@1e
    move-result-object v1

    #@1f
    .line 103
    .local v1, "cert":Ljava/security/cert/Certificate;
    instance-of v6, v1, Ljava/security/cert/X509Certificate;

    #@21
    if-eqz v6, :cond_0

    #@23
    .line 104
    nop

    #@24
    nop

    #@25
    .end local v1    # "cert":Ljava/security/cert/Certificate;
    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@28
    goto :goto_0

    #@29
    .line 114
    .end local v0    # "alias":Ljava/lang/String;
    .end local v4    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    #@2a
    .line 117
    :cond_1
    return-object v5

    #@2b
    .line 106
    .restart local v0    # "alias":Ljava/lang/String;
    .restart local v4    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    #@2e
    move-result v6

    #@2f
    if-eqz v6, :cond_0

    #@31
    .line 107
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    #@34
    move-result-object v2

    #@35
    .line 108
    .local v2, "certs":[Ljava/security/cert/Certificate;
    if-eqz v2, :cond_0

    #@37
    array-length v6, v2

    #@38
    if-lez v6, :cond_0

    #@3a
    .line 109
    const/4 v6, 0x0

    #@3b
    aget-object v6, v2, v6

    #@3d
    instance-of v6, v6, Ljava/security/cert/X509Certificate;

    #@3f
    .line 108
    if-eqz v6, :cond_0

    #@41
    .line 110
    const/4 v6, 0x0

    #@42
    aget-object v6, v2, v6

    #@44
    check-cast v6, Ljava/security/cert/X509Certificate;

    #@46
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    goto :goto_0
.end method
