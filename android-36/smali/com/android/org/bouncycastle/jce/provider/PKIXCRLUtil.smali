.class abstract Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;
.super Ljava/lang/Object;
.source "PKIXCRLUtil.java"


# direct methods
.method static blacklist findCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;
    .registers 7

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 30
    :try_start_5
    invoke-static {v0, p0, p3}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Ljava/util/HashSet;Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/List;)V

    .line 31
    invoke-static {v0, p0, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Ljava/util/HashSet;Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/List;)V
    :try_end_b
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_b} :catch_45

    .line 38
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 41
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_14
    :goto_14
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 43
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 45
    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 46
    invoke-virtual {v1, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 48
    :cond_2c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 50
    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 52
    :cond_40
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_44
    return-object p2

    :catch_45
    move-exception p0

    .line 35
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Exception obtaining complete CRLs."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static blacklist findCRLs(Ljava/util/HashSet;Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/List;)V
    .registers 7

    .line 77
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 78
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 80
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 102
    check-cast v2, Ljava/security/cert/CertStore;

    .line 106
    :try_start_12
    invoke-static {p1, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->getCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_19
    .catch Ljava/security/cert/CertStoreException; {:try_start_12 .. :try_end_19} :catch_1b

    const/4 v1, 0x1

    goto :goto_6

    :catch_1b
    move-exception v0

    .line 111
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Exception searching in X.509 CRL store."

    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_6

    :cond_25
    if-nez v1, :cond_2b

    if-nez v0, :cond_2a

    goto :goto_2b

    .line 118
    :cond_2a
    throw v0

    :cond_2b
    :goto_2b
    return-void
.end method
