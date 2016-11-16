.class public Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
.super Ljava/security/cert/CertPathBuilderSpi;
.source "PKIXCertPathBuilderSpi.java"


# instance fields
.field private certPathException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderSpi;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected build(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    .locals 19
    .param p1, "tbvCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "pkixParams"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .param p3, "tbvPath"    # Ljava/util/List;

    #@0
    .prologue
    .line 151
    move-object/from16 v0, p3

    #@2
    move-object/from16 v1, p1

    #@4
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v15

    #@8
    if-eqz v15, :cond_0

    #@a
    .line 153
    const/4 v15, 0x0

    #@b
    return-object v15

    #@c
    .line 157
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getExcludedCerts()Ljava/util/Set;

    #@f
    move-result-object v15

    #@10
    move-object/from16 v0, p1

    #@12
    invoke-interface {v15, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@15
    move-result v15

    #@16
    if-eqz v15, :cond_1

    #@18
    .line 159
    const/4 v15, 0x0

    #@19
    return-object v15

    #@1a
    .line 162
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getMaxPathLength()I

    #@1d
    move-result v15

    #@1e
    const/16 v16, -0x1

    #@20
    move/from16 v0, v16

    #@22
    if-eq v15, v0, :cond_2

    #@24
    .line 164
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    #@27
    move-result v15

    #@28
    add-int/lit8 v15, v15, -0x1

    #@2a
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getMaxPathLength()I

    #@2d
    move-result v16

    #@2e
    move/from16 v0, v16

    #@30
    if-le v15, v0, :cond_2

    #@32
    .line 166
    const/4 v15, 0x0

    #@33
    return-object v15

    #@34
    .line 170
    :cond_2
    move-object/from16 v0, p3

    #@36
    move-object/from16 v1, p1

    #@38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3b
    .line 174
    const/4 v3, 0x0

    #@3c
    .line 178
    .local v3, "builderResult":Ljava/security/cert/CertPathBuilderResult;
    :try_start_0
    new-instance v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    #@3e
    invoke-direct {v4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;-><init>()V

    #@41
    .line 179
    .local v4, "cFact":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    new-instance v14, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;

    #@43
    invoke-direct {v14}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    .line 190
    .local v14, "validator":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@49
    move-result-object v15

    #@4a
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    #@4d
    move-result-object v15

    #@4e
    .line 191
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@51
    move-result-object v16

    #@52
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    #@55
    move-result-object v16

    #@56
    .line 190
    move-object/from16 v0, p1

    #@58
    move-object/from16 v1, v16

    #@5a
    invoke-static {v0, v15, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    :try_end_1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_2

    #@5d
    move-result-object v15

    #@5e
    if-eqz v15, :cond_5

    #@60
    .line 195
    const/4 v5, 0x0

    #@61
    .line 196
    .local v5, "certPath":Ljava/security/cert/CertPath;
    const/4 v12, 0x0

    #@62
    .line 199
    .local v12, "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_start_2
    move-object/from16 v0, p3

    #@64
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_2

    #@67
    move-result-object v5

    #@68
    .line 210
    .local v5, "certPath":Ljava/security/cert/CertPath;
    :try_start_3
    move-object/from16 v0, p2

    #@6a
    invoke-virtual {v14, v5, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    #@6d
    move-result-object v12

    #@6e
    .end local v12    # "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    check-cast v12, Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_2

    #@70
    .line 219
    .local v12, "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_start_4
    new-instance v15, Ljava/security/cert/PKIXCertPathBuilderResult;

    #@72
    invoke-virtual {v12}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    #@75
    move-result-object v16

    #@76
    .line 220
    invoke-virtual {v12}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPolicyTree()Ljava/security/cert/PolicyNode;

    #@79
    move-result-object v17

    #@7a
    invoke-virtual {v12}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    #@7d
    move-result-object v18

    #@7e
    .line 219
    move-object/from16 v0, v16

    #@80
    move-object/from16 v1, v17

    #@82
    move-object/from16 v2, v18

    #@84
    invoke-direct {v15, v5, v0, v1, v2}, Ljava/security/cert/PKIXCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V
    :try_end_4
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_2

    #@87
    return-object v15

    #@88
    .line 182
    .end local v4    # "cFact":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    .end local v5    # "certPath":Ljava/security/cert/CertPath;
    .end local v12    # "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    .end local v14    # "validator":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    :catch_0
    move-exception v7

    #@89
    .line 184
    .local v7, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/RuntimeException;

    #@8b
    const-string/jumbo v16, "Exception creating support classes."

    #@8e
    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@91
    throw v15

    #@92
    .line 202
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "cFact":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    .local v5, "certPath":Ljava/security/cert/CertPath;
    .local v12, "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    .restart local v14    # "validator":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    :catch_1
    move-exception v7

    #@93
    .line 203
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v15, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@95
    .line 204
    const-string/jumbo v16, "Certification path could not be constructed from certificate list."

    #@98
    .line 203
    move-object/from16 v0, v16

    #@9a
    invoke-direct {v15, v0, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9d
    throw v15
    :try_end_5
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_2

    #@9e
    .line 271
    .end local v3    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .end local v5    # "certPath":Ljava/security/cert/CertPath;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v12    # "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    :catch_2
    move-exception v6

    #@9f
    .line 272
    .local v6, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object/from16 v0, p0

    #@a1
    iput-object v6, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    #@a3
    .line 274
    .end local v6    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_3
    if-nez v3, :cond_4

    #@a5
    .line 276
    move-object/from16 v0, p3

    #@a7
    move-object/from16 v1, p1

    #@a9
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@ac
    .line 278
    :cond_4
    return-object v3

    #@ad
    .line 214
    .restart local v3    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .local v5, "certPath":Ljava/security/cert/CertPath;
    :catch_3
    move-exception v7

    #@ae
    .line 215
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v15, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@b0
    .line 216
    const-string/jumbo v16, "Certification path could not be validated."

    #@b3
    .line 215
    move-object/from16 v0, v16

    #@b5
    invoke-direct {v15, v0, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b8
    throw v15

    #@b9
    .line 226
    .end local v5    # "certPath":Ljava/security/cert/CertPath;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v13, Ljava/util/ArrayList;

    #@bb
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@be
    .line 229
    .local v13, "stores":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@c1
    move-result-object v15

    #@c2
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    #@c5
    move-result-object v15

    #@c6
    invoke-interface {v13, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_6
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_2

    #@c9
    .line 235
    :try_start_7
    sget-object v15, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuerAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@cb
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@ce
    move-result-object v15

    #@cf
    move-object/from16 v0, p1

    #@d1
    invoke-virtual {v0, v15}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    #@d4
    move-result-object v15

    #@d5
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@d8
    move-result-object v16

    #@d9
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getNamedCertificateStoreMap()Ljava/util/Map;

    #@dc
    move-result-object v16

    #@dd
    .line 234
    invoke-static/range {v15 .. v16}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromAltNames([BLjava/util/Map;)Ljava/util/List;

    #@e0
    move-result-object v15

    #@e1
    invoke-interface {v13, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_7
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_2

    #@e4
    .line 243
    :try_start_8
    new-instance v10, Ljava/util/HashSet;

    #@e6
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V
    :try_end_8
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_2

    #@e9
    .line 248
    .local v10, "issuers":Ljava/util/Collection;
    :try_start_9
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@ec
    move-result-object v15

    #@ed
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    #@f0
    move-result-object v15

    #@f1
    move-object/from16 v0, p1

    #@f3
    invoke-static {v0, v15, v13}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findIssuerCerts(Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;

    #@f6
    move-result-object v15

    #@f7
    invoke-interface {v10, v15}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_9
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_9 .. :try_end_9} :catch_5

    #@fa
    .line 256
    :try_start_a
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    #@fd
    move-result v15

    #@fe
    if-eqz v15, :cond_6

    #@100
    .line 258
    new-instance v15, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@102
    .line 259
    const-string/jumbo v16, "No issuer certificate for certificate in certification path found."

    #@105
    .line 258
    invoke-direct/range {v15 .. v16}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@108
    throw v15

    #@109
    .line 238
    .end local v10    # "issuers":Ljava/util/Collection;
    :catch_4
    move-exception v8

    #@10a
    .line 239
    .local v8, "e":Ljava/security/cert/CertificateParsingException;
    new-instance v15, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@10c
    .line 240
    const-string/jumbo v16, "No additional X.509 stores can be added from certificate locations."

    #@10f
    .line 239
    move-object/from16 v0, v16

    #@111
    invoke-direct {v15, v0, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@114
    throw v15

    #@115
    .line 251
    .end local v8    # "e":Ljava/security/cert/CertificateParsingException;
    .restart local v10    # "issuers":Ljava/util/Collection;
    :catch_5
    move-exception v6

    #@116
    .line 252
    .restart local v6    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v15, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@118
    .line 253
    const-string/jumbo v16, "Cannot find issuer certificate for certificate in certification path."

    #@11b
    .line 252
    move-object/from16 v0, v16

    #@11d
    invoke-direct {v15, v0, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@120
    throw v15

    #@121
    .line 261
    .end local v6    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_6
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@124
    move-result-object v11

    #@125
    .line 263
    .end local v3    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .local v11, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@128
    move-result v15

    #@129
    if-eqz v15, :cond_3

    #@12b
    if-nez v3, :cond_3

    #@12d
    .line 265
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@130
    move-result-object v9

    #@131
    check-cast v9, Ljava/security/cert/X509Certificate;

    #@133
    .line 266
    .local v9, "issuer":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    #@135
    move-object/from16 v1, p2

    #@137
    move-object/from16 v2, p3

    #@139
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->build(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    :try_end_a
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_a .. :try_end_a} :catch_2

    #@13c
    move-result-object v3

    #@13d
    .local v3, "builderResult":Ljava/security/cert/CertPathBuilderResult;
    goto :goto_0
.end method

.method public engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .locals 16
    .param p1, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 48
    move-object/from16 v0, p1

    #@2
    instance-of v13, v0, Ljava/security/cert/PKIXBuilderParameters;

    #@4
    if-eqz v13, :cond_2

    #@6
    .line 50
    new-instance v9, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    #@8
    move-object/from16 v13, p1

    #@a
    nop

    #@b
    nop

    #@c
    invoke-direct {v9, v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    #@f
    .line 53
    .local v9, "paramsPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    move-object/from16 v0, p1

    #@11
    instance-of v13, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    #@13
    if-eqz v13, :cond_1

    #@15
    move-object/from16 v5, p1

    #@17
    .line 55
    check-cast v5, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    #@19
    .line 58
    .local v5, "extPKIX":Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getAdditionalStores()Ljava/util/List;

    #@1c
    move-result-object v13

    #@1d
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v6

    #@21
    .local v6, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v13

    #@25
    if-eqz v13, :cond_0

    #@27
    .line 60
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v13

    #@2b
    check-cast v13, Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;

    #@2d
    invoke-virtual {v9, v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCertificateStore(Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    #@30
    goto :goto_0

    #@31
    .line 62
    :cond_0
    new-instance v7, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    #@33
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@36
    move-result-object v13

    #@37
    invoke-direct {v7, v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    #@3a
    .line 64
    .local v7, "paramsBldrPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getExcludedCerts()Ljava/util/Set;

    #@3d
    move-result-object v13

    #@3e
    invoke-virtual {v7, v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->addExcludedCerts(Ljava/util/Set;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    #@41
    .line 65
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    #@44
    move-result v13

    #@45
    invoke-virtual {v7, v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->setMaxPathLength(I)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    #@48
    .line 72
    .end local v5    # "extPKIX":Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    .end local v6    # "it":Ljava/util/Iterator;
    .end local p1    # "params":Ljava/security/cert/CertPathParameters;
    :goto_1
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    #@4b
    move-result-object v8

    #@4c
    .line 88
    .end local v7    # "paramsBldrPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    .end local v9    # "paramsPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .local v8, "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    #@4e
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@51
    .line 93
    .local v2, "certPathList":Ljava/util/List;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@54
    move-result-object v13

    #@55
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@58
    move-result-object v3

    #@59
    .line 97
    .local v3, "certSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    :try_start_0
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@5c
    move-result-object v13

    #@5d
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    #@60
    move-result-object v13

    #@61
    invoke-static {v3, v13}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    #@64
    move-result-object v12

    #@65
    .line 98
    .local v12, "targets":Ljava/util/Collection;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@68
    move-result-object v13

    #@69
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    #@6c
    move-result-object v13

    #@6d
    invoke-static {v3, v13}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    #@70
    move-result-object v13

    #@71
    invoke-interface {v12, v13}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    #@74
    .line 106
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    #@77
    move-result v13

    #@78
    if-eqz v13, :cond_4

    #@7a
    .line 109
    new-instance v13, Ljava/security/cert/CertPathBuilderException;

    #@7c
    .line 110
    const-string/jumbo v14, "No certificate found matching targetContraints."

    #@7f
    .line 109
    invoke-direct {v13, v14}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    #@82
    throw v13

    #@83
    .line 69
    .end local v2    # "certPathList":Ljava/util/List;
    .end local v3    # "certSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .end local v8    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local v12    # "targets":Ljava/util/Collection;
    .restart local v9    # "paramsPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local p1    # "params":Ljava/security/cert/CertPathParameters;
    :cond_1
    new-instance v7, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    #@85
    nop

    #@86
    nop

    #@87
    .end local p1    # "params":Ljava/security/cert/CertPathParameters;
    move-object/from16 v0, p1

    #@89
    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Ljava/security/cert/PKIXBuilderParameters;)V

    #@8c
    .restart local v7    # "paramsBldrPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    goto :goto_1

    #@8d
    .line 74
    .end local v7    # "paramsBldrPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    .end local v9    # "paramsPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local p1    # "params":Ljava/security/cert/CertPathParameters;
    :cond_2
    move-object/from16 v0, p1

    #@8f
    instance-of v13, v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    #@91
    if-eqz v13, :cond_3

    #@93
    move-object/from16 v8, p1

    #@95
    .line 76
    nop

    #@96
    nop

    #@97
    .restart local v8    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    goto :goto_2

    #@98
    .line 80
    .end local v8    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    :cond_3
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    #@9a
    .line 81
    new-instance v14, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v15, "Parameters must be an instance of "

    #@a2
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v14

    #@a6
    .line 82
    const-class v15, Ljava/security/cert/PKIXBuilderParameters;

    #@a8
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@ab
    move-result-object v15

    #@ac
    .line 81
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v14

    #@b0
    .line 82
    const-string/jumbo v15, " or "

    #@b3
    .line 81
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v14

    #@b7
    .line 83
    const-class v15, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    #@b9
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@bc
    move-result-object v15

    #@bd
    .line 81
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v14

    #@c1
    .line 83
    const-string/jumbo v15, "."

    #@c4
    .line 81
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v14

    #@c8
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v14

    #@cc
    .line 80
    invoke-direct {v13, v14}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@cf
    throw v13

    #@d0
    .line 101
    .end local p1    # "params":Ljava/security/cert/CertPathParameters;
    .restart local v2    # "certPathList":Ljava/util/List;
    .restart local v3    # "certSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .restart local v8    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    :catch_0
    move-exception v4

    #@d1
    .line 102
    .local v4, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v13, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;

    #@d3
    .line 103
    const-string/jumbo v14, "Error finding target certificate."

    #@d6
    .line 102
    invoke-direct {v13, v14, v4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d9
    throw v13

    #@da
    .line 113
    .end local v4    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v12    # "targets":Ljava/util/Collection;
    :cond_4
    const/4 v10, 0x0

    #@db
    .line 116
    .local v10, "result":Ljava/security/cert/CertPathBuilderResult;
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@de
    move-result-object v11

    #@df
    .line 117
    .end local v10    # "result":Ljava/security/cert/CertPathBuilderResult;
    .local v11, "targetIter":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@e2
    move-result v13

    #@e3
    if-eqz v13, :cond_5

    #@e5
    if-nez v10, :cond_5

    #@e7
    .line 119
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ea
    move-result-object v1

    #@eb
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@ed
    .line 120
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    #@ef
    invoke-virtual {v0, v1, v8, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->build(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    #@f2
    move-result-object v10

    #@f3
    .local v10, "result":Ljava/security/cert/CertPathBuilderResult;
    goto :goto_3

    #@f4
    .line 123
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v10    # "result":Ljava/security/cert/CertPathBuilderResult;
    :cond_5
    if-nez v10, :cond_7

    #@f6
    move-object/from16 v0, p0

    #@f8
    iget-object v13, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    #@fa
    if-eqz v13, :cond_7

    #@fc
    .line 125
    move-object/from16 v0, p0

    #@fe
    iget-object v13, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    #@100
    instance-of v13, v13, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@102
    if-eqz v13, :cond_6

    #@104
    .line 127
    new-instance v13, Ljava/security/cert/CertPathBuilderException;

    #@106
    move-object/from16 v0, p0

    #@108
    iget-object v14, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    #@10a
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@10d
    move-result-object v14

    #@10e
    move-object/from16 v0, p0

    #@110
    iget-object v15, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    #@112
    invoke-virtual {v15}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@115
    move-result-object v15

    #@116
    invoke-direct {v13, v14, v15}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@119
    throw v13

    #@11a
    .line 129
    :cond_6
    new-instance v13, Ljava/security/cert/CertPathBuilderException;

    #@11c
    .line 130
    const-string/jumbo v14, "Possible certificate chain could not be validated."

    #@11f
    .line 131
    move-object/from16 v0, p0

    #@121
    iget-object v15, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    #@123
    .line 129
    invoke-direct {v13, v14, v15}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@126
    throw v13

    #@127
    .line 134
    :cond_7
    if-nez v10, :cond_8

    #@129
    move-object/from16 v0, p0

    #@12b
    iget-object v13, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    #@12d
    if-nez v13, :cond_8

    #@12f
    .line 136
    new-instance v13, Ljava/security/cert/CertPathBuilderException;

    #@131
    .line 137
    const-string/jumbo v14, "Unable to find certificate chain."

    #@134
    .line 136
    invoke-direct {v13, v14}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    #@137
    throw v13

    #@138
    .line 140
    :cond_8
    return-object v10
.end method
