.class public Lcom/android/org/bouncycastle/jce/provider/CertStoreCollectionSpi;
.super Ljava/security/cert/CertStoreSpi;
.source "CertStoreCollectionSpi.java"


# instance fields
.field private params:Ljava/security/cert/CollectionCertStoreParameters;


# direct methods
.method public constructor <init>(Ljava/security/cert/CertStoreParameters;)V
    .locals 3
    .param p1, "params"    # Ljava/security/cert/CertStoreParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 24
    invoke-direct {p0, p1}, Ljava/security/cert/CertStoreSpi;-><init>(Ljava/security/cert/CertStoreParameters;)V

    #@3
    .line 26
    instance-of v0, p1, Ljava/security/cert/CollectionCertStoreParameters;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 28
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "org.bouncycastle.jce.provider.CertStoreCollectionSpi: parameter must be a CollectionCertStoreParameters object\n"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 31
    :cond_0
    check-cast p1, Ljava/security/cert/CollectionCertStoreParameters;

    #@27
    .end local p1    # "params":Ljava/security/cert/CertStoreParameters;
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/CertStoreCollectionSpi;->params:Ljava/security/cert/CollectionCertStoreParameters;

    #@29
    .line 22
    return-void
.end method


# virtual methods
.method public engineGetCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .locals 4
    .param p1, "selector"    # Ljava/security/cert/CRLSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 75
    .local v0, "col":Ljava/util/List;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/CertStoreCollectionSpi;->params:Ljava/security/cert/CollectionCertStoreParameters;

    #@7
    invoke-virtual {v3}, Ljava/security/cert/CollectionCertStoreParameters;->getCollection()Ljava/util/Collection;

    #@a
    move-result-object v3

    #@b
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .line 77
    .local v1, "iter":Ljava/util/Iterator;
    if-nez p1, :cond_1

    #@11
    .line 79
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_2

    #@17
    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    .line 83
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Ljava/security/cert/CRL;

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 85
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@22
    goto :goto_0

    #@23
    .line 91
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_2

    #@29
    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    .line 95
    .restart local v2    # "obj":Ljava/lang/Object;
    instance-of v3, v2, Ljava/security/cert/CRL;

    #@2f
    if-eqz v3, :cond_1

    #@31
    move-object v3, v2

    #@32
    check-cast v3, Ljava/security/cert/CRL;

    #@34
    invoke-interface {p1, v3}, Ljava/security/cert/CRLSelector;->match(Ljava/security/cert/CRL;)Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_1

    #@3a
    .line 97
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3d
    goto :goto_1

    #@3e
    .line 102
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_2
    return-object v0
.end method

.method public engineGetCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .locals 4
    .param p1, "selector"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 39
    .local v0, "col":Ljava/util/List;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/CertStoreCollectionSpi;->params:Ljava/security/cert/CollectionCertStoreParameters;

    #@7
    invoke-virtual {v3}, Ljava/security/cert/CollectionCertStoreParameters;->getCollection()Ljava/util/Collection;

    #@a
    move-result-object v3

    #@b
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .line 41
    .local v1, "iter":Ljava/util/Iterator;
    if-nez p1, :cond_1

    #@11
    .line 43
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_2

    #@17
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    .line 47
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Ljava/security/cert/Certificate;

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 49
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@22
    goto :goto_0

    #@23
    .line 55
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_2

    #@29
    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    .line 59
    .restart local v2    # "obj":Ljava/lang/Object;
    instance-of v3, v2, Ljava/security/cert/Certificate;

    #@2f
    if-eqz v3, :cond_1

    #@31
    move-object v3, v2

    #@32
    check-cast v3, Ljava/security/cert/Certificate;

    #@34
    invoke-interface {p1, v3}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_1

    #@3a
    .line 61
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3d
    goto :goto_1

    #@3e
    .line 66
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_2
    return-object v0
.end method
