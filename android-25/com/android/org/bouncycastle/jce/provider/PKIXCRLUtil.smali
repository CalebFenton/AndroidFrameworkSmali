.class Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;
.super Ljava/lang/Object;
.source "PKIXCRLUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private final findCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    .locals 8
    .param p1, "crlSelect"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .param p2, "crlStores"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    .line 81
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 82
    .local v0, "crls":Ljava/util/Set;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v3

    #@9
    .line 84
    .local v3, "iter":Ljava/util/Iterator;
    const/4 v4, 0x0

    #@a
    .line 85
    .local v4, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    const/4 v2, 0x0

    #@b
    .line 87
    .end local v4    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v2, "foundValidStore":Z
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v7

    #@f
    if-eqz v7, :cond_0

    #@11
    .line 89
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v5

    #@15
    .local v5, "obj":Ljava/lang/Object;
    move-object v6, v5

    #@16
    .line 110
    check-cast v6, Ljava/security/cert/CertStore;

    #@18
    .line 114
    .local v6, "store":Ljava/security/cert/CertStore;
    :try_start_0
    invoke-static {p1, v6}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->getCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;

    #@1b
    move-result-object v7

    #@1c
    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/security/cert/CertStoreException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 115
    const/4 v2, 0x1

    #@20
    goto :goto_0

    #@21
    .line 118
    :catch_0
    move-exception v1

    #@22
    .line 119
    .local v1, "e":Ljava/security/cert/CertStoreException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@24
    .line 120
    const-string/jumbo v7, "Exception searching in X.509 CRL store."

    #@27
    .line 119
    invoke-direct {v4, v7, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2a
    .local v4, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    goto :goto_0

    #@2b
    .line 124
    .end local v1    # "e":Ljava/security/cert/CertStoreException;
    .end local v4    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "store":Ljava/security/cert/CertStore;
    :cond_0
    if-nez v2, :cond_1

    #@2d
    if-eqz v4, :cond_1

    #@2f
    .line 126
    throw v4

    #@30
    .line 128
    :cond_1
    return-object v0
.end method


# virtual methods
.method public findCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;
    .locals 8
    .param p1, "crlselect"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .param p2, "validityDate"    # Ljava/util/Date;
    .param p3, "certStores"    # Ljava/util/List;
    .param p4, "pkixCrlStores"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    .line 24
    new-instance v4, Ljava/util/HashSet;

    #@2
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 29
    .local v4, "initialSet":Ljava/util/Set;
    :try_start_0
    invoke-direct {p0, p1, p4}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    #@8
    move-result-object v6

    #@9
    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@c
    .line 30
    invoke-direct {p0, p1, p3}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    #@f
    move-result-object v6

    #@10
    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 37
    new-instance v3, Ljava/util/HashSet;

    #@15
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@18
    .line 40
    .local v3, "finalSet":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v5

    #@1c
    .local v5, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v6

    #@20
    if-eqz v6, :cond_2

    #@22
    .line 42
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Ljava/security/cert/X509CRL;

    #@28
    .line 44
    .local v1, "crl":Ljava/security/cert/X509CRL;
    invoke-virtual {v1}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    #@2b
    move-result-object v6

    #@2c
    invoke-virtual {v6, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    #@2f
    move-result v6

    #@30
    if-eqz v6, :cond_0

    #@32
    .line 46
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    #@35
    move-result-object v0

    #@36
    .line 48
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_1

    #@38
    .line 50
    invoke-virtual {v1}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    #@3b
    move-result-object v6

    #@3c
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    #@3f
    move-result-object v7

    #@40
    invoke-virtual {v6, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    #@43
    move-result v6

    #@44
    if-eqz v6, :cond_0

    #@46
    .line 52
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@49
    goto :goto_0

    #@4a
    .line 33
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "crl":Ljava/security/cert/X509CRL;
    .end local v3    # "finalSet":Ljava/util/Set;
    .end local v5    # "it":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    #@4b
    .line 34
    .local v2, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@4d
    const-string/jumbo v7, "Exception obtaining complete CRLs."

    #@50
    invoke-direct {v6, v7, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@53
    throw v6

    #@54
    .line 57
    .end local v2    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "crl":Ljava/security/cert/X509CRL;
    .restart local v3    # "finalSet":Ljava/util/Set;
    .restart local v5    # "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@57
    goto :goto_0

    #@58
    .line 62
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "crl":Ljava/security/cert/X509CRL;
    :cond_2
    return-object v3
.end method
