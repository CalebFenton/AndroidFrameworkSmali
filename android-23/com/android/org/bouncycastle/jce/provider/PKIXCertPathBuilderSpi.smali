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
    .line 154
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
    .line 156
    const/4 v15, 0x0

    #@b
    return-object v15

    #@c
    .line 160
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
    .line 162
    const/4 v15, 0x0

    #@19
    return-object v15

    #@1a
    .line 165
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
    .line 167
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
    .line 169
    const/4 v15, 0x0

    #@33
    return-object v15

    #@34
    .line 173
    :cond_2
    move-object/from16 v0, p3

    #@36
    move-object/from16 v1, p1

    #@38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3b
    .line 177
    const/4 v3, 0x0

    #@3c
    .line 181
    .local v3, "builderResult":Ljava/security/cert/CertPathBuilderResult;
    :try_start_0
    new-instance v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    #@3e
    invoke-direct {v4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;-><init>()V

    #@41
    .line 182
    .local v4, "cFact":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    new-instance v14, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;

    #@43
    invoke-direct {v14}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    .line 193
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
    .line 194
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@51
    move-result-object v16

    #@52
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    #@55
    move-result-object v16

    #@56
    .line 193
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
    .line 198
    const/4 v5, 0x0

    #@61
    .line 199
    .local v5, "certPath":Ljava/security/cert/CertPath;
    const/4 v12, 0x0

    #@62
    .line 202
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
    .line 213
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
    .line 222
    .local v12, "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_start_4
    new-instance v15, Ljava/security/cert/PKIXCertPathBuilderResult;

    #@72
    invoke-virtual {v12}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    #@75
    move-result-object v16

    #@76
    .line 223
    invoke-virtual {v12}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPolicyTree()Ljava/security/cert/PolicyNode;

    #@79
    move-result-object v17

    #@7a
    invoke-virtual {v12}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    #@7d
    move-result-object v18

    #@7e
    .line 222
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
    .line 185
    .end local v4    # "cFact":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    .end local v5    # "certPath":Ljava/security/cert/CertPath;
    .end local v12    # "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    .end local v14    # "validator":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    :catch_0
    move-exception v7

    #@89
    .line 187
    .local v7, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/RuntimeException;

    #@8b
    const-string/jumbo v16, "Exception creating support classes."

    #@8e
    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@91
    throw v15

    #@92
    .line 205
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "cFact":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    .local v5, "certPath":Ljava/security/cert/CertPath;
    .local v12, "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    .restart local v14    # "validator":Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    :catch_1
    move-exception v7

    #@93
    .line 206
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v15, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@95
    .line 207
    const-string/jumbo v16, "Certification path could not be constructed from certificate list."

    #@98
    .line 206
    move-object/from16 v0, v16

    #@9a
    invoke-direct {v15, v0, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9d
    throw v15
    :try_end_5
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_2

    #@9e
    .line 274
    .end local v3    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .end local v5    # "certPath":Ljava/security/cert/CertPath;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v12    # "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    :catch_2
    move-exception v6

    #@9f
    .line 275
    .local v6, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object/from16 v0, p0

    #@a1
    iput-object v6, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    #@a3
    .line 277
    .end local v6    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_3
    if-nez v3, :cond_4

    #@a5
    .line 279
    move-object/from16 v0, p3

    #@a7
    move-object/from16 v1, p1

    #@a9
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@ac
    .line 281
    :cond_4
    return-object v3

    #@ad
    .line 217
    .restart local v3    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .local v5, "certPath":Ljava/security/cert/CertPath;
    :catch_3
    move-exception v7

    #@ae
    .line 218
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v15, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@b0
    .line 219
    const-string/jumbo v16, "Certification path could not be validated."

    #@b3
    .line 218
    move-object/from16 v0, v16

    #@b5
    invoke-direct {v15, v0, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b8
    throw v15

    #@b9
    .line 229
    .end local v5    # "certPath":Ljava/security/cert/CertPath;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v13, Ljava/util/ArrayList;

    #@bb
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@be
    .line 232
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
    .line 238
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
    .line 237
    invoke-static/range {v15 .. v16}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromAltNames([BLjava/util/Map;)Ljava/util/List;

    #@e0
    move-result-object v15

    #@e1
    invoke-interface {v13, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_7
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_2

    #@e4
    .line 246
    :try_start_8
    new-instance v10, Ljava/util/HashSet;

    #@e6
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V
    :try_end_8
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_2

    #@e9
    .line 251
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
    .line 259
    :try_start_a
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    #@fd
    move-result v15

    #@fe
    if-eqz v15, :cond_6

    #@100
    .line 261
    new-instance v15, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@102
    .line 262
    const-string/jumbo v16, "No issuer certificate for certificate in certification path found."

    #@105
    .line 261
    invoke-direct/range {v15 .. v16}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@108
    throw v15

    #@109
    .line 241
    .end local v10    # "issuers":Ljava/util/Collection;
    :catch_4
    move-exception v8

    #@10a
    .line 242
    .local v8, "e":Ljava/security/cert/CertificateParsingException;
    new-instance v15, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@10c
    .line 243
    const-string/jumbo v16, "No additional X.509 stores can be added from certificate locations."

    #@10f
    .line 242
    move-object/from16 v0, v16

    #@111
    invoke-direct {v15, v0, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@114
    throw v15

    #@115
    .line 254
    .end local v8    # "e":Ljava/security/cert/CertificateParsingException;
    .restart local v10    # "issuers":Ljava/util/Collection;
    :catch_5
    move-exception v6

    #@116
    .line 255
    .restart local v6    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v15, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@118
    .line 256
    const-string/jumbo v16, "Cannot find issuer certificate for certificate in certification path."

    #@11b
    .line 255
    move-object/from16 v0, v16

    #@11d
    invoke-direct {v15, v0, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@120
    throw v15

    #@121
    .line 264
    .end local v6    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_6
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@124
    move-result-object v11

    #@125
    .line 266
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
    .line 268
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@130
    move-result-object v9

    #@131
    check-cast v9, Ljava/security/cert/X509Certificate;

    #@133
    .line 269
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
    .line 47
    move-object/from16 v0, p1

    #@2
    instance-of v13, v0, Ljava/security/cert/PKIXBuilderParameters;

    #@4
    if-nez v13, :cond_0

    #@6
    .line 48
    move-object/from16 v0, p1

    #@8
    instance-of v13, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    #@a
    if-eqz v13, :cond_1

    #@c
    .line 58
    :cond_0
    move-object/from16 v0, p1

    #@e
    instance-of v13, v0, Ljava/security/cert/PKIXBuilderParameters;

    #@10
    if-eqz v13, :cond_4

    #@12
    .line 60
    new-instance v9, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    #@14
    move-object/from16 v13, p1

    #@16
    check-cast v13, Ljava/security/cert/PKIXBuilderParameters;

    #@18
    invoke-direct {v9, v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    #@1b
    .line 63
    .local v9, "paramsPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    move-object/from16 v0, p1

    #@1d
    instance-of v13, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    #@1f
    if-eqz v13, :cond_3

    #@21
    move-object/from16 v5, p1

    #@23
    .line 65
    check-cast v5, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    #@25
    .line 68
    .local v5, "extPKIX":Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getAdditionalStores()Ljava/util/List;

    #@28
    move-result-object v13

    #@29
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v6

    #@2d
    .local v6, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v13

    #@31
    if-eqz v13, :cond_2

    #@33
    .line 70
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v13

    #@37
    check-cast v13, Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;

    #@39
    invoke-virtual {v9, v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCertificateStore(Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    #@3c
    goto :goto_0

    #@3d
    .line 49
    .end local v5    # "extPKIX":Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    .end local v6    # "it":Ljava/util/Iterator;
    .end local v9    # "paramsPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :cond_1
    move-object/from16 v0, p1

    #@3f
    instance-of v13, v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    #@41
    if-nez v13, :cond_0

    #@43
    .line 51
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    #@45
    .line 52
    new-instance v14, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v15, "Parameters must be an instance of "

    #@4d
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v14

    #@51
    .line 53
    const-class v15, Ljava/security/cert/PKIXBuilderParameters;

    #@53
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@56
    move-result-object v15

    #@57
    .line 52
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v14

    #@5b
    .line 53
    const-string/jumbo v15, " or "

    #@5e
    .line 52
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v14

    #@62
    .line 54
    const-class v15, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    #@64
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@67
    move-result-object v15

    #@68
    .line 52
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v14

    #@6c
    .line 54
    const-string/jumbo v15, "."

    #@6f
    .line 52
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v14

    #@73
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v14

    #@77
    .line 51
    invoke-direct {v13, v14}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v13

    #@7b
    .line 72
    .restart local v5    # "extPKIX":Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    .restart local v6    # "it":Ljava/util/Iterator;
    .restart local v9    # "paramsPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :cond_2
    new-instance v7, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    #@7d
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@80
    move-result-object v13

    #@81
    invoke-direct {v7, v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    #@84
    .line 74
    .local v7, "paramsBldrPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getExcludedCerts()Ljava/util/Set;

    #@87
    move-result-object v13

    #@88
    invoke-virtual {v7, v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->addExcludedCerts(Ljava/util/Set;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    #@8b
    .line 75
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    #@8e
    move-result v13

    #@8f
    invoke-virtual {v7, v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->setMaxPathLength(I)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    #@92
    .line 82
    .end local v5    # "extPKIX":Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    .end local v6    # "it":Ljava/util/Iterator;
    .end local p1    # "params":Ljava/security/cert/CertPathParameters;
    :goto_1
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    #@95
    move-result-object v8

    #@96
    .line 91
    .end local v7    # "paramsBldrPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    .end local v9    # "paramsPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .local v8, "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    #@98
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@9b
    .line 96
    .local v2, "certPathList":Ljava/util/List;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@9e
    move-result-object v13

    #@9f
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@a2
    move-result-object v3

    #@a3
    .line 100
    .local v3, "certSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    :try_start_0
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@a6
    move-result-object v13

    #@a7
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    #@aa
    move-result-object v13

    #@ab
    invoke-static {v3, v13}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    #@ae
    move-result-object v12

    #@af
    .line 101
    .local v12, "targets":Ljava/util/Collection;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@b2
    move-result-object v13

    #@b3
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    #@b6
    move-result-object v13

    #@b7
    invoke-static {v3, v13}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    #@ba
    move-result-object v13

    #@bb
    invoke-interface {v12, v13}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    #@be
    .line 109
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    #@c1
    move-result v13

    #@c2
    if-eqz v13, :cond_5

    #@c4
    .line 112
    new-instance v13, Ljava/security/cert/CertPathBuilderException;

    #@c6
    .line 113
    const-string/jumbo v14, "No certificate found matching targetContraints."

    #@c9
    .line 112
    invoke-direct {v13, v14}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    #@cc
    throw v13

    #@cd
    .line 79
    .end local v2    # "certPathList":Ljava/util/List;
    .end local v3    # "certSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .end local v8    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local v12    # "targets":Ljava/util/Collection;
    .restart local v9    # "paramsPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local p1    # "params":Ljava/security/cert/CertPathParameters;
    :cond_3
    new-instance v7, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    #@cf
    check-cast p1, Ljava/security/cert/PKIXBuilderParameters;

    #@d1
    .end local p1    # "params":Ljava/security/cert/CertPathParameters;
    move-object/from16 v0, p1

    #@d3
    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Ljava/security/cert/PKIXBuilderParameters;)V

    #@d6
    .restart local v7    # "paramsBldrPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    goto :goto_1

    #@d7
    .end local v7    # "paramsBldrPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    .end local v9    # "paramsPKIXBldr":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local p1    # "params":Ljava/security/cert/CertPathParameters;
    :cond_4
    move-object/from16 v8, p1

    #@d9
    .line 86
    check-cast v8, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    #@db
    .restart local v8    # "paramsPKIX":Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    goto :goto_2

    #@dc
    .line 104
    .end local p1    # "params":Ljava/security/cert/CertPathParameters;
    .restart local v2    # "certPathList":Ljava/util/List;
    .restart local v3    # "certSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    :catch_0
    move-exception v4

    #@dd
    .line 105
    .local v4, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v13, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;

    #@df
    .line 106
    const-string/jumbo v14, "Error finding target certificate."

    #@e2
    .line 105
    invoke-direct {v13, v14, v4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@e5
    throw v13

    #@e6
    .line 116
    .end local v4    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v12    # "targets":Ljava/util/Collection;
    :cond_5
    const/4 v10, 0x0

    #@e7
    .line 119
    .local v10, "result":Ljava/security/cert/CertPathBuilderResult;
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@ea
    move-result-object v11

    #@eb
    .line 120
    .end local v10    # "result":Ljava/security/cert/CertPathBuilderResult;
    .local v11, "targetIter":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@ee
    move-result v13

    #@ef
    if-eqz v13, :cond_6

    #@f1
    if-nez v10, :cond_6

    #@f3
    .line 122
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f6
    move-result-object v1

    #@f7
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@f9
    .line 123
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    #@fb
    invoke-virtual {v0, v1, v8, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->build(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    #@fe
    move-result-object v10

    #@ff
    .local v10, "result":Ljava/security/cert/CertPathBuilderResult;
    goto :goto_3

    #@100
    .line 126
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v10    # "result":Ljava/security/cert/CertPathBuilderResult;
    :cond_6
    if-nez v10, :cond_8

    #@102
    move-object/from16 v0, p0

    #@104
    iget-object v13, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    #@106
    if-eqz v13, :cond_8

    #@108
    .line 128
    move-object/from16 v0, p0

    #@10a
    iget-object v13, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    #@10c
    instance-of v13, v13, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@10e
    if-eqz v13, :cond_7

    #@110
    .line 130
    new-instance v13, Ljava/security/cert/CertPathBuilderException;

    #@112
    move-object/from16 v0, p0

    #@114
    iget-object v14, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    #@116
    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@119
    move-result-object v14

    #@11a
    move-object/from16 v0, p0

    #@11c
    iget-object v15, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    #@11e
    invoke-virtual {v15}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    #@121
    move-result-object v15

    #@122
    invoke-direct {v13, v14, v15}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@125
    throw v13

    #@126
    .line 132
    :cond_7
    new-instance v13, Ljava/security/cert/CertPathBuilderException;

    #@128
    .line 133
    const-string/jumbo v14, "Possible certificate chain could not be validated."

    #@12b
    .line 134
    move-object/from16 v0, p0

    #@12d
    iget-object v15, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    #@12f
    .line 132
    invoke-direct {v13, v14, v15}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@132
    throw v13

    #@133
    .line 137
    :cond_8
    if-nez v10, :cond_9

    #@135
    move-object/from16 v0, p0

    #@137
    iget-object v13, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    #@139
    if-nez v13, :cond_9

    #@13b
    .line 139
    new-instance v13, Ljava/security/cert/CertPathBuilderException;

    #@13d
    .line 140
    const-string/jumbo v14, "Unable to find certificate chain."

    #@140
    .line 139
    invoke-direct {v13, v14}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    #@143
    throw v13

    #@144
    .line 143
    :cond_9
    return-object v10
.end method
