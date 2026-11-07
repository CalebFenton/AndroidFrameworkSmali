.class public Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
.super Ljava/security/cert/CertPathBuilderSpi;
.source "PKIXCertPathBuilderSpi.java"


# instance fields
.field private blacklist certPathException:Ljava/lang/Exception;

.field private final blacklist isForCRLCheck:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;-><init>(Z)V

    return-void
.end method

.method constructor blacklist <init>(Z)V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderSpi;-><init>()V

    .line 47
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->isForCRLCheck:Z

    return-void
.end method


# virtual methods
.method protected blacklist build(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    .registers 9

    .line 143
    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 149
    :cond_8
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getExcludedCerts()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-object v1

    .line 154
    :cond_13
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getMaxPathLength()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_27

    .line 156
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getMaxPathLength()I

    move-result v2

    if-le v0, v2, :cond_27

    return-object v1

    .line 162
    :cond_27
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :try_start_2a
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;-><init>()V

    .line 171
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;

    iget-boolean v3, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->isForCRLCheck:Z

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;-><init>(Z)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_36} :catch_f9

    .line 182
    :try_start_36
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v3

    .line 183
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-static {p1, v3, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isIssuerTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v3
    :try_end_4a
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_36 .. :try_end_4a} :catch_68

    if-eqz v3, :cond_7d

    .line 191
    :try_start_4c
    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_50} :catch_74

    .line 202
    :try_start_50
    invoke-virtual {v2, v0, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object p2

    check-cast p2, Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_56} :catch_6b

    .line 211
    :try_start_56
    new-instance v2, Ljava/security/cert/PKIXCertPathBuilderResult;

    .line 212
    invoke-virtual {p2}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v3

    invoke-virtual {p2}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPolicyTree()Ljava/security/cert/PolicyNode;

    move-result-object v4

    .line 213
    invoke-virtual {p2}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    invoke-direct {v2, v0, v3, v4, p2}, Ljava/security/cert/PKIXCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v2

    :catch_68
    move-exception p2

    goto/16 :goto_f1

    :catch_6b
    move-exception p2

    .line 207
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Certification path could not be validated."

    invoke-direct {v0, v2, p2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_74
    move-exception p2

    .line 195
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Certification path could not be constructed from certificate list."

    invoke-direct {v0, v2, p2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 218
    :cond_7d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_8d
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_56 .. :try_end_8d} :catch_68

    .line 226
    :try_start_8d
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuerAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 227
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getNamedCertificateStoreMap()Ljava/util/Map;

    move-result-object v3

    .line 226
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromAltNames([BLjava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_a6
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_8d .. :try_end_a6} :catch_e8
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_8d .. :try_end_a6} :catch_68

    .line 235
    :try_start_a6
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
    :try_end_ab
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_a6 .. :try_end_ab} :catch_68

    .line 240
    :try_start_ab
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v3, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findIssuerCerts(Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_ba
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_ab .. :try_end_ba} :catch_df

    .line 248
    :try_start_ba
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d7

    .line 253
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 255
    :goto_c4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f3

    if-nez v1, :cond_f3

    .line 257
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 258
    invoke-virtual {p0, v2, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->build(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v1

    goto :goto_c4

    .line 250
    :cond_d7
    new-instance p2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v0, "No issuer certificate for certificate in certification path found."

    invoke-direct {p2, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_df
    move-exception p2

    .line 244
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Cannot find issuer certificate for certificate in certification path."

    invoke-direct {v0, v2, p2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_e8
    move-exception p2

    .line 231
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "No additional X.509 stores can be added from certificate locations."

    invoke-direct {v0, v2, p2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_f1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_ba .. :try_end_f1} :catch_68

    .line 264
    :goto_f1
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    :cond_f3
    if-nez v1, :cond_f8

    .line 268
    invoke-interface {p3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_f8
    return-object v1

    .line 176
    :catch_f9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Exception creating support classes."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 60
    instance-of v0, p1, Ljava/security/cert/PKIXBuilderParameters;

    if-eqz v0, :cond_15

    .line 62
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    check-cast p1, Ljava/security/cert/PKIXBuilderParameters;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    .line 80
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Ljava/security/cert/PKIXBuilderParameters;)V

    .line 83
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    move-result-object p1

    goto :goto_1b

    .line 85
    :cond_15
    instance-of v0, p1, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    if-eqz v0, :cond_72

    .line 87
    check-cast p1, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    .line 99
    :goto_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTargets(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;)Ljava/util/Collection;

    move-result-object v1

    .line 108
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 109
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    if-nez v2, :cond_3c

    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 112
    invoke-virtual {p0, v2, p1, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->build(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v2

    goto :goto_29

    :cond_3c
    if-nez v2, :cond_62

    .line 115
    iget-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    if-eqz p1, :cond_62

    .line 117
    instance-of p1, p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    if-eqz p1, :cond_58

    .line 119
    new-instance p1, Ljava/security/cert/CertPathBuilderException;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 121
    :cond_58
    new-instance p1, Ljava/security/cert/CertPathBuilderException;

    const-string v0, "Possible certificate chain could not be validated."

    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-direct {p1, v0, p0}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_62
    if-nez v2, :cond_71

    .line 126
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    if-eqz p0, :cond_69

    goto :goto_71

    .line 128
    :cond_69
    new-instance p0, Ljava/security/cert/CertPathBuilderException;

    const-string p1, "Unable to find certificate chain."

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_71
    :goto_71
    return-object v2

    .line 91
    :cond_72
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Parameters must be an instance of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Ljava/security/cert/PKIXBuilderParameters;

    .line 93
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " or "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    .line 94
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
