.class abstract Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCRLUtil;
.super Ljava/lang/Object;
.source "PKIXCRLUtil.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist findCRLs(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;
    .registers 12
    .param p0, "crlselect"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .param p1, "validityDate"    # Ljava/util/Date;
    .param p2, "certStores"    # Ljava/util/List;
    .param p3, "pkixCrlStores"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 30
    .local v0, "initialSet":Ljava/util/HashSet;
    :try_start_5
    invoke-static {v0, p0, p3}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Ljava/util/HashSet;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/List;)V

    .line 31
    invoke-static {v0, p0, p2}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Ljava/util/HashSet;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/List;)V
    :try_end_b
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_b} :catch_46

    .line 36
    nop

    .line 38
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 41
    .local v1, "finalSet":Ljava/util/Set;
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509CRL;

    .line 45
    .local v3, "crl":Ljava/security/cert/X509CRL;
    invoke-virtual {v3}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v4

    .line 46
    .local v4, "nextUpdate":Ljava/util/Date;
    if-eqz v4, :cond_2d

    invoke-virtual {v4, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 48
    :cond_2d
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 50
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v5, :cond_41

    invoke-virtual {v3}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 52
    :cond_41
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    .end local v3    # "crl":Ljava/security/cert/X509CRL;
    .end local v4    # "nextUpdate":Ljava/util/Date;
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    :cond_44
    goto :goto_15

    .line 57
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_45
    return-object v1

    .line 33
    .end local v1    # "finalSet":Ljava/util/Set;
    :catch_46
    move-exception v1

    .line 35
    .local v1, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Exception obtaining complete CRLs."

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist findCRLs(Ljava/util/HashSet;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/List;)V
    .registers 11
    .param p0, "crls"    # Ljava/util/HashSet;
    .param p1, "crlSelect"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .param p2, "crlStores"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    const/4 v1, 0x0

    .line 77
    .local v1, "foundValidStore":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 78
    .local v2, "iter":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 80
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 102
    .local v3, "obj":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/security/cert/CertStore;

    .line 106
    .local v4, "store":Ljava/security/cert/CertStore;
    :try_start_13
    invoke-static {p1, v4}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->getCRLs(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_1a
    .catch Ljava/security/cert/CertStoreException; {:try_start_13 .. :try_end_1a} :catch_1c

    .line 107
    const/4 v1, 0x1

    .line 112
    goto :goto_25

    .line 109
    :catch_1c
    move-exception v5

    .line 111
    .local v5, "e":Ljava/security/cert/CertStoreException;
    new-instance v6, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Exception searching in X.509 CRL store."

    invoke-direct {v6, v7, v5}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 114
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "store":Ljava/security/cert/CertStore;
    .end local v5    # "e":Ljava/security/cert/CertStoreException;
    :goto_25
    goto :goto_6

    .line 116
    :cond_26
    if-nez v1, :cond_2c

    if-nez v0, :cond_2b

    goto :goto_2c

    .line 118
    :cond_2b
    throw v0

    .line 120
    :cond_2c
    :goto_2c
    return-void
.end method
