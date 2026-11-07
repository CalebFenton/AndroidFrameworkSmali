.class public Lcom/android/org/bouncycastle/jce/provider/CertStoreCollectionSpi;
.super Ljava/security/cert/CertStoreSpi;
.source "CertStoreCollectionSpi.java"


# instance fields
.field private blacklist params:Ljava/security/cert/CollectionCertStoreParameters;


# direct methods
.method public constructor blacklist <init>(Ljava/security/cert/CertStoreParameters;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Ljava/security/cert/CertStoreSpi;-><init>(Ljava/security/cert/CertStoreParameters;)V

    .line 30
    instance-of v0, p1, Ljava/security/cert/CollectionCertStoreParameters;

    if-eqz v0, :cond_c

    .line 35
    check-cast p1, Ljava/security/cert/CollectionCertStoreParameters;

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/CertStoreCollectionSpi;->params:Ljava/security/cert/CollectionCertStoreParameters;

    return-void

    .line 32
    :cond_c
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.org.bouncycastle.jce.provider.CertStoreCollectionSpi: parameter must be a CollectionCertStoreParameters object\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api engineGetCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/CertStoreCollectionSpi;->params:Ljava/security/cert/CollectionCertStoreParameters;

    invoke-virtual {p0}, Ljava/security/cert/CollectionCertStoreParameters;->getCollection()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    if-nez p1, :cond_23

    .line 83
    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 87
    instance-of v1, p1, Ljava/security/cert/CRL;

    if-eqz v1, :cond_11

    .line 89
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 95
    :cond_23
    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 97
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 99
    instance-of v2, v1, Ljava/security/cert/CRL;

    if-eqz v2, :cond_23

    move-object v2, v1

    check-cast v2, Ljava/security/cert/CRL;

    invoke-interface {p1, v2}, Ljava/security/cert/CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 101
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_3e
    return-object v0
.end method

.method public whitelist test-api engineGetCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/CertStoreCollectionSpi;->params:Ljava/security/cert/CollectionCertStoreParameters;

    invoke-virtual {p0}, Ljava/security/cert/CollectionCertStoreParameters;->getCollection()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    if-nez p1, :cond_23

    .line 47
    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 51
    instance-of v1, p1, Ljava/security/cert/Certificate;

    if-eqz v1, :cond_11

    .line 53
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 59
    :cond_23
    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 63
    instance-of v2, v1, Ljava/security/cert/Certificate;

    if-eqz v2, :cond_23

    move-object v2, v1

    check-cast v2, Ljava/security/cert/Certificate;

    invoke-interface {p1, v2}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_3e
    return-object v0
.end method
