.class public final Lcom/android/org/conscrypt/TrustManagerImpl;
.super Ljava/lang/Object;
.source "TrustManagerImpl.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;
    }
.end annotation


# instance fields
.field private final acceptedIssuers:[Ljava/security/cert/X509Certificate;

.field private final err:Ljava/lang/Exception;

.field private final factory:Ljava/security/cert/CertificateFactory;

.field private pinManager:Lcom/android/org/conscrypt/CertPinManager;

.field private final rootKeyStore:Ljava/security/KeyStore;

.field private final trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

.field private final trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field private final validator:Ljava/security/cert/CertPathValidator;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 1
    .param p1, "keyStore"    # Ljava/security/KeyStore;

    #@0
    .prologue
    .line 103
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;)V

    #@4
    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;)V
    .locals 1
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lcom/android/org/conscrypt/CertPinManager;

    #@0
    .prologue
    .line 110
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/TrustedCertificateStore;)V

    #@4
    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/TrustedCertificateStore;)V
    .locals 13
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lcom/android/org/conscrypt/CertPinManager;
    .param p3, "certStore"    # Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@0
    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 118
    const/4 v10, 0x0

    #@4
    .line 119
    .local v10, "validatorLocal":Ljava/security/cert/CertPathValidator;
    const/4 v4, 0x0

    #@5
    .line 120
    .local v4, "factoryLocal":Ljava/security/cert/CertificateFactory;
    const/4 v5, 0x0

    #@6
    .line 121
    .local v5, "rootKeyStoreLocal":Ljava/security/KeyStore;
    const/4 v8, 0x0

    #@7
    .line 122
    .local v8, "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    const/4 v6, 0x0

    #@8
    .line 123
    .local v6, "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    const/4 v0, 0x0

    #@9
    .line 124
    .local v0, "acceptedIssuersLocal":[Ljava/security/cert/X509Certificate;
    const/4 v3, 0x0

    #@a
    .line 126
    .local v3, "errLocal":Ljava/lang/Exception;
    :try_start_0
    const-string/jumbo v11, "PKIX"

    #@d
    invoke-static {v11}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    #@10
    move-result-object v10

    #@11
    .line 127
    .local v10, "validatorLocal":Ljava/security/cert/CertPathValidator;
    const-string/jumbo v11, "X509"

    #@14
    invoke-static {v11}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@17
    move-result-object v4

    #@18
    .line 130
    .local v4, "factoryLocal":Ljava/security/cert/CertificateFactory;
    const-string/jumbo v11, "AndroidCAStore"

    #@1b
    invoke-virtual {p1}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    #@1e
    move-result-object v12

    #@1f
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v11

    #@23
    if-eqz v11, :cond_1

    #@25
    .line 131
    move-object v5, p1

    #@26
    .line 133
    .local v5, "rootKeyStoreLocal":Ljava/security/KeyStore;
    if-eqz p3, :cond_0

    #@28
    move-object/from16 v8, p3

    #@2a
    .line 134
    .local v8, "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :goto_0
    const/4 v0, 0x0

    #@2b
    .line 135
    new-instance v7, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@2d
    invoke-direct {v7}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .local v7, "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    move-object v6, v7

    #@31
    .line 148
    .end local v0    # "acceptedIssuersLocal":[Ljava/security/cert/X509Certificate;
    .end local v3    # "errLocal":Ljava/lang/Exception;
    .end local v4    # "factoryLocal":Ljava/security/cert/CertificateFactory;
    .end local v5    # "rootKeyStoreLocal":Ljava/security/KeyStore;
    .end local v6    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    .end local v7    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    .end local v8    # "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    .end local v10    # "validatorLocal":Ljava/security/cert/CertPathValidator;
    :goto_1
    if-eqz p2, :cond_2

    #@33
    .line 149
    iput-object p2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->pinManager:Lcom/android/org/conscrypt/CertPinManager;

    #@35
    .line 158
    :goto_2
    iput-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    #@37
    .line 159
    iput-object v8, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@39
    .line 160
    iput-object v10, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    #@3b
    .line 161
    iput-object v4, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    #@3d
    .line 162
    iput-object v6, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@3f
    .line 163
    iput-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    #@41
    .line 164
    iput-object v3, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    #@43
    .line 117
    return-void

    #@44
    .line 133
    .restart local v0    # "acceptedIssuersLocal":[Ljava/security/cert/X509Certificate;
    .restart local v3    # "errLocal":Ljava/lang/Exception;
    .restart local v4    # "factoryLocal":Ljava/security/cert/CertificateFactory;
    .restart local v5    # "rootKeyStoreLocal":Ljava/security/KeyStore;
    .restart local v6    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    .local v8, "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    .restart local v10    # "validatorLocal":Ljava/security/cert/CertPathValidator;
    :cond_0
    :try_start_1
    new-instance v9, Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@46
    invoke-direct {v9}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    #@49
    .local v9, "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    move-object v8, v9

    #@4a
    .end local v9    # "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    .local v8, "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    goto :goto_0

    #@4b
    .line 137
    .local v5, "rootKeyStoreLocal":Ljava/security/KeyStore;
    .local v8, "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :cond_1
    const/4 v5, 0x0

    #@4c
    .line 138
    move-object/from16 v8, p3

    #@4e
    .line 139
    .local v8, "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    #@51
    move-result-object v0

    #@52
    .line 141
    .local v0, "acceptedIssuersLocal":[Ljava/security/cert/X509Certificate;
    new-instance v7, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@54
    invoke-static {v0}, Lcom/android/org/conscrypt/TrustManagerImpl;->trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    #@57
    move-result-object v11

    #@58
    invoke-direct {v7, v11}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>(Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@5b
    .restart local v7    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    move-object v6, v7

    #@5c
    .line 140
    .end local v7    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    .local v6, "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    goto :goto_1

    #@5d
    .line 144
    .end local v0    # "acceptedIssuersLocal":[Ljava/security/cert/X509Certificate;
    .end local v4    # "factoryLocal":Ljava/security/cert/CertificateFactory;
    .end local v5    # "rootKeyStoreLocal":Ljava/security/KeyStore;
    .end local v8    # "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    .end local v10    # "validatorLocal":Ljava/security/cert/CertPathValidator;
    .local v6, "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    :catch_0
    move-exception v2

    #@5e
    .line 145
    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v2

    #@5f
    .local v3, "errLocal":Ljava/lang/Exception;
    goto :goto_1

    #@60
    .line 152
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "errLocal":Ljava/lang/Exception;
    .end local v6    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    :cond_2
    :try_start_2
    new-instance v11, Lcom/android/org/conscrypt/CertPinManager;

    #@62
    invoke-direct {v11, v8}, Lcom/android/org/conscrypt/CertPinManager;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;)V

    #@65
    iput-object v11, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->pinManager:Lcom/android/org/conscrypt/CertPinManager;
    :try_end_2
    .catch Lcom/android/org/conscrypt/PinManagerException; {:try_start_2 .. :try_end_2} :catch_1

    #@67
    goto :goto_2

    #@68
    .line 153
    :catch_1
    move-exception v1

    #@69
    .line 154
    .local v1, "e":Lcom/android/org/conscrypt/PinManagerException;
    new-instance v11, Ljava/lang/SecurityException;

    #@6b
    const-string/jumbo v12, "Could not initialize CertPinManager"

    #@6e
    invoke-direct {v11, v12, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@71
    throw v11
.end method

.method private static acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;
    .locals 6
    .param p0, "ks"    # Ljava/security/KeyStore;

    #@0
    .prologue
    .line 178
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 179
    .local v4, "trusted":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    #@8
    move-result-object v3

    #@9
    .local v3, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_1

    #@f
    .line 180
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/lang/String;

    #@15
    .line 181
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@1b
    .line 182
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_0

    #@1d
    .line 183
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    goto :goto_0

    #@21
    .line 187
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4    # "trusted":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v2

    #@22
    .line 188
    .local v2, "e":Ljava/security/KeyStoreException;
    const/4 v5, 0x0

    #@23
    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    #@25
    return-object v5

    #@26
    .line 186
    .end local v2    # "e":Ljava/security/KeyStoreException;
    .restart local v3    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v4    # "trusted":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@29
    move-result v5

    #@2a
    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    #@2c
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2f
    move-result-object v5

    #@30
    check-cast v5, [Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    #@32
    return-object v5
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 24
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "clientAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 252
    if-eqz p1, :cond_0

    #@2
    move-object/from16 v0, p1

    #@4
    array-length v0, v0

    #@5
    move/from16 v19, v0

    #@7
    if-nez v19, :cond_1

    #@9
    .line 253
    :cond_0
    new-instance v19, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v20, "null or zero-length parameter"

    #@e
    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v19

    #@12
    .line 252
    :cond_1
    if-eqz p2, :cond_0

    #@14
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    #@17
    move-result v19

    #@18
    if-eqz v19, :cond_0

    #@1a
    .line 255
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    #@1e
    move-object/from16 v19, v0

    #@20
    if-eqz v19, :cond_2

    #@22
    .line 256
    new-instance v19, Ljava/security/cert/CertificateException;

    #@24
    move-object/from16 v0, p0

    #@26
    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    #@28
    move-object/from16 v20, v0

    #@2a
    invoke-direct/range {v19 .. v20}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #@2d
    throw v19

    #@2e
    .line 260
    :cond_2
    new-instance v17, Ljava/util/HashSet;

    #@30
    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    #@33
    .line 261
    .local v17, "trustAnchor":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    move-object/from16 v0, p0

    #@35
    move-object/from16 v1, p1

    #@37
    move-object/from16 v2, v17

    #@39
    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/TrustManagerImpl;->cleanupCertChainAndFindTrustAnchors([Ljava/security/cert/X509Certificate;Ljava/util/Set;)[Ljava/security/cert/X509Certificate;

    #@3c
    move-result-object v12

    #@3d
    .line 264
    .local v12, "newChain":[Ljava/security/cert/X509Certificate;
    new-instance v18, Ljava/util/ArrayList;

    #@3f
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    #@42
    .line 265
    .local v18, "wholeChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@45
    move-result-object v19

    #@46
    invoke-interface/range {v18 .. v19}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@49
    .line 267
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4c
    move-result-object v16

    #@4d
    .local v16, "trust$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@50
    move-result v19

    #@51
    if-eqz v19, :cond_3

    #@53
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@56
    move-result-object v15

    #@57
    check-cast v15, Ljava/security/cert/TrustAnchor;

    #@59
    .line 268
    .local v15, "trust":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v15}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@5c
    move-result-object v19

    #@5d
    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@60
    goto :goto_0

    #@61
    .line 274
    .end local v15    # "trust":Ljava/security/cert/TrustAnchor;
    :cond_3
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    #@64
    move-result v19

    #@65
    add-int/lit8 v19, v19, -0x1

    #@67
    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@6a
    move-result-object v11

    #@6b
    check-cast v11, Ljava/security/cert/X509Certificate;

    #@6d
    .line 276
    .local v11, "last":Ljava/security/cert/X509Certificate;
    :goto_1
    move-object/from16 v0, p0

    #@6f
    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@71
    move-object/from16 v19, v0

    #@73
    move-object/from16 v0, v19

    #@75
    invoke-virtual {v0, v11}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    #@78
    move-result-object v4

    #@79
    .line 279
    .local v4, "cachedTrust":Ljava/security/cert/TrustAnchor;
    if-nez v4, :cond_5

    #@7b
    .line 297
    :cond_4
    move-object/from16 v0, p0

    #@7d
    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    #@7f
    move-object/from16 v19, v0

    #@81
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@84
    move-result-object v20

    #@85
    invoke-virtual/range {v19 .. v20}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    #@88
    move-result-object v5

    #@89
    .line 299
    .local v5, "certPath":Ljava/security/cert/CertPath;
    if-eqz p3, :cond_6

    #@8b
    .line 300
    const/4 v10, 0x0

    #@8c
    .line 302
    .local v10, "isChainValid":Z
    :try_start_0
    move-object/from16 v0, p0

    #@8e
    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->pinManager:Lcom/android/org/conscrypt/CertPinManager;

    #@90
    move-object/from16 v19, v0

    #@92
    move-object/from16 v0, v19

    #@94
    move-object/from16 v1, p3

    #@96
    move-object/from16 v2, v18

    #@98
    invoke-virtual {v0, v1, v2}, Lcom/android/org/conscrypt/CertPinManager;->isChainValid(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_0
    .catch Lcom/android/org/conscrypt/PinManagerException; {:try_start_0 .. :try_end_0} :catch_0

    #@9b
    move-result v10

    #@9c
    .line 306
    .local v10, "isChainValid":Z
    if-nez v10, :cond_6

    #@9e
    .line 307
    new-instance v19, Ljava/security/cert/CertificateException;

    #@a0
    new-instance v20, Ljava/security/cert/CertPathValidatorException;

    #@a2
    .line 308
    const-string/jumbo v21, "Certificate path is not properly pinned."

    #@a5
    const/16 v22, 0x0

    #@a7
    const/16 v23, -0x1

    #@a9
    .line 307
    move-object/from16 v0, v20

    #@ab
    move-object/from16 v1, v21

    #@ad
    move-object/from16 v2, v22

    #@af
    move/from16 v3, v23

    #@b1
    invoke-direct {v0, v1, v2, v5, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@b4
    invoke-direct/range {v19 .. v20}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #@b7
    throw v19

    #@b8
    .line 286
    .end local v5    # "certPath":Ljava/security/cert/CertPath;
    .end local v10    # "isChainValid":Z
    :cond_5
    invoke-virtual {v4}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@bb
    move-result-object v13

    #@bc
    .line 287
    .local v13, "next":Ljava/security/cert/X509Certificate;
    if-eq v13, v11, :cond_4

    #@be
    .line 288
    move-object/from16 v0, v18

    #@c0
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@c3
    .line 289
    move-object v11, v13

    #@c4
    goto :goto_1

    #@c5
    .line 303
    .end local v13    # "next":Ljava/security/cert/X509Certificate;
    .restart local v5    # "certPath":Ljava/security/cert/CertPath;
    .local v10, "isChainValid":Z
    :catch_0
    move-exception v6

    #@c6
    .line 304
    .local v6, "e":Lcom/android/org/conscrypt/PinManagerException;
    new-instance v19, Ljava/security/cert/CertificateException;

    #@c8
    move-object/from16 v0, v19

    #@ca
    invoke-direct {v0, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #@cd
    throw v19

    #@ce
    .line 312
    .end local v6    # "e":Lcom/android/org/conscrypt/PinManagerException;
    .end local v10    # "isChainValid":Z
    :cond_6
    array-length v0, v12

    #@cf
    move/from16 v19, v0

    #@d1
    if-nez v19, :cond_7

    #@d3
    .line 314
    return-object v18

    #@d4
    .line 317
    :cond_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->isEmpty()Z

    #@d7
    move-result v19

    #@d8
    if-eqz v19, :cond_8

    #@da
    .line 318
    new-instance v19, Ljava/security/cert/CertificateException;

    #@dc
    new-instance v20, Ljava/security/cert/CertPathValidatorException;

    #@de
    .line 319
    const-string/jumbo v21, "Trust anchor for certification path not found."

    #@e1
    const/16 v22, 0x0

    #@e3
    const/16 v23, -0x1

    #@e5
    .line 318
    move-object/from16 v0, v20

    #@e7
    move-object/from16 v1, v21

    #@e9
    move-object/from16 v2, v22

    #@eb
    move/from16 v3, v23

    #@ed
    invoke-direct {v0, v1, v2, v5, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@f0
    invoke-direct/range {v19 .. v20}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #@f3
    throw v19

    #@f4
    .line 324
    :cond_8
    invoke-static {v12}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->check([Ljava/security/cert/X509Certificate;)V

    #@f7
    .line 327
    :try_start_1
    new-instance v14, Ljava/security/cert/PKIXParameters;

    #@f9
    move-object/from16 v0, v17

    #@fb
    invoke-direct {v14, v0}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    #@fe
    .line 328
    .local v14, "params":Ljava/security/cert/PKIXParameters;
    const/16 v19, 0x0

    #@100
    move/from16 v0, v19

    #@102
    invoke-virtual {v14, v0}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    #@105
    .line 329
    new-instance v19, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;

    #@107
    .line 330
    const/16 v20, 0x0

    #@109
    aget-object v20, v12, v20

    #@10b
    .line 329
    const/16 v21, 0x0

    #@10d
    move-object/from16 v0, v19

    #@10f
    move/from16 v1, p4

    #@111
    move-object/from16 v2, v20

    #@113
    move-object/from16 v3, v21

    #@115
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;-><init>(ZLjava/security/cert/X509Certificate;Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;)V

    #@118
    move-object/from16 v0, v19

    #@11a
    invoke-virtual {v14, v0}, Ljava/security/cert/PKIXParameters;->addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V

    #@11d
    .line 331
    move-object/from16 v0, p0

    #@11f
    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    #@121
    move-object/from16 v19, v0

    #@123
    move-object/from16 v0, v19

    #@125
    invoke-virtual {v0, v5, v14}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    #@128
    .line 338
    const/4 v9, 0x1

    #@129
    .local v9, "i":I
    :goto_2
    array-length v0, v12

    #@12a
    move/from16 v19, v0

    #@12c
    move/from16 v0, v19

    #@12e
    if-ge v9, v0, :cond_9

    #@130
    .line 339
    move-object/from16 v0, p0

    #@132
    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@134
    move-object/from16 v19, v0

    #@136
    aget-object v20, v12, v9

    #@138
    invoke-virtual/range {v19 .. v20}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    #@13b
    .line 338
    add-int/lit8 v9, v9, 0x1

    #@13d
    goto :goto_2

    #@13e
    .line 343
    .end local v9    # "i":I
    .end local v14    # "params":Ljava/security/cert/PKIXParameters;
    :catch_1
    move-exception v8

    #@13f
    .line 344
    .local v8, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v19, Ljava/security/cert/CertificateException;

    #@141
    move-object/from16 v0, v19

    #@143
    invoke-direct {v0, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #@146
    throw v19

    #@147
    .line 341
    .end local v8    # "e":Ljava/security/cert/CertPathValidatorException;
    :catch_2
    move-exception v7

    #@148
    .line 342
    .local v7, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v19, Ljava/security/cert/CertificateException;

    #@14a
    move-object/from16 v0, v19

    #@14c
    invoke-direct {v0, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #@14f
    throw v19

    #@150
    .line 347
    .end local v7    # "e":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v9    # "i":I
    .restart local v14    # "params":Ljava/security/cert/PKIXParameters;
    :cond_9
    return-object v18
.end method

.method private cleanupCertChainAndFindTrustAnchors([Ljava/security/cert/X509Certificate;Ljava/util/Set;)[Ljava/security/cert/X509Certificate;
    .locals 11
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    #@0
    .prologue
    .line 362
    .local p2, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    move-object v6, p1

    #@1
    .line 368
    .local v6, "original":[Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    #@2
    .local v2, "currIndex":I
    :goto_0
    array-length v9, p1

    #@3
    if-ge v2, v9, :cond_2

    #@5
    .line 374
    const/4 v3, 0x0

    #@6
    .line 375
    .local v3, "foundNext":Z
    add-int/lit8 v5, v2, 0x1

    #@8
    .local v5, "nextIndex":I
    :goto_1
    array-length v9, p1

    #@9
    if-ge v5, v9, :cond_1

    #@b
    .line 376
    aget-object v9, p1, v2

    #@d
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    #@10
    move-result-object v9

    #@11
    aget-object v10, p1, v5

    #@13
    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    #@16
    move-result-object v10

    #@17
    invoke-interface {v9, v10}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v9

    #@1b
    if-eqz v9, :cond_5

    #@1d
    .line 377
    const/4 v3, 0x1

    #@1e
    .line 379
    add-int/lit8 v9, v2, 0x1

    #@20
    if-eq v5, v9, :cond_1

    #@22
    .line 381
    if-ne p1, v6, :cond_0

    #@24
    .line 382
    invoke-virtual {v6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@27
    move-result-object p1

    #@28
    .end local p1    # "chain":[Ljava/security/cert/X509Certificate;
    check-cast p1, [Ljava/security/cert/X509Certificate;

    #@2a
    .line 384
    .restart local p1    # "chain":[Ljava/security/cert/X509Certificate;
    :cond_0
    aget-object v7, p1, v5

    #@2c
    .line 385
    .local v7, "tempCertificate":Ljava/security/cert/X509Certificate;
    add-int/lit8 v9, v2, 0x1

    #@2e
    aget-object v9, p1, v9

    #@30
    aput-object v9, p1, v5

    #@32
    .line 386
    add-int/lit8 v9, v2, 0x1

    #@34
    aput-object v7, p1, v9

    #@36
    .line 395
    .end local v7    # "tempCertificate":Ljava/security/cert/X509Certificate;
    :cond_1
    if-nez v3, :cond_6

    #@38
    .line 402
    .end local v3    # "foundNext":Z
    .end local v5    # "nextIndex":I
    :cond_2
    const/4 v0, 0x0

    #@39
    .local v0, "anchorIndex":I
    :goto_2
    if-gt v0, v2, :cond_3

    #@3b
    .line 405
    aget-object v9, p1, v0

    #@3d
    invoke-direct {p0, v9}, Lcom/android/org/conscrypt/TrustManagerImpl;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    #@40
    move-result-object v8

    #@41
    .line 406
    .local v8, "trustAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v8, :cond_7

    #@43
    .line 407
    invoke-interface {p2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@46
    .line 413
    .end local v8    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :cond_3
    move v1, v0

    #@47
    .line 414
    .local v1, "chainLength":I
    array-length v9, p1

    #@48
    if-ne v1, v9, :cond_8

    #@4a
    .line 415
    move-object v4, p1

    #@4b
    .line 419
    .local v4, "newChain":[Ljava/security/cert/X509Certificate;
    :goto_3
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    #@4e
    move-result v9

    #@4f
    if-eqz v9, :cond_4

    #@51
    .line 420
    add-int/lit8 v9, v0, -0x1

    #@53
    aget-object v9, v4, v9

    #@55
    invoke-direct {p0, v9}, Lcom/android/org/conscrypt/TrustManagerImpl;->findTrustAnchorByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    #@58
    move-result-object v8

    #@59
    .line 421
    .restart local v8    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v8, :cond_4

    #@5b
    .line 422
    invoke-interface {p2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5e
    .line 425
    .end local v8    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :cond_4
    return-object v4

    #@5f
    .line 375
    .end local v0    # "anchorIndex":I
    .end local v1    # "chainLength":I
    .end local v4    # "newChain":[Ljava/security/cert/X509Certificate;
    .restart local v3    # "foundNext":Z
    .restart local v5    # "nextIndex":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    #@61
    goto :goto_1

    #@62
    .line 368
    :cond_6
    add-int/lit8 v2, v2, 0x1

    #@64
    goto :goto_0

    #@65
    .line 402
    .end local v3    # "foundNext":Z
    .end local v5    # "nextIndex":I
    .restart local v0    # "anchorIndex":I
    .restart local v8    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    #@67
    goto :goto_2

    #@68
    .line 416
    .end local v8    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    .restart local v1    # "chainLength":I
    :cond_8
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@6b
    move-result-object v4

    #@6c
    check-cast v4, [Ljava/security/cert/X509Certificate;

    #@6e
    .restart local v4    # "newChain":[Ljava/security/cert/X509Certificate;
    goto :goto_3
.end method

.method private findTrustAnchorByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 4
    .param p1, "lastCert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 531
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@3
    invoke-virtual {v2, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    #@6
    move-result-object v1

    #@7
    .line 532
    .local v1, "trustAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v1, :cond_0

    #@9
    .line 533
    return-object v1

    #@a
    .line 535
    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@c
    if-nez v2, :cond_1

    #@e
    .line 536
    return-object v3

    #@f
    .line 541
    :cond_1
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@11
    invoke-virtual {v2, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    #@14
    move-result-object v0

    #@15
    .line 542
    .local v0, "issuer":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_2

    #@17
    .line 543
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@19
    invoke-virtual {v2, v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    #@1c
    move-result-object v2

    #@1d
    return-object v2

    #@1e
    .line 545
    :cond_2
    return-object v3
.end method

.method private findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 554
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@3
    invoke-virtual {v2, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    #@6
    move-result-object v1

    #@7
    .line 555
    .local v1, "trustAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v1, :cond_0

    #@9
    .line 556
    return-object v1

    #@a
    .line 558
    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@c
    if-nez v2, :cond_1

    #@e
    .line 560
    return-object v3

    #@f
    .line 565
    :cond_1
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@11
    invoke-virtual {v2, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getTrustAnchor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    #@14
    move-result-object v0

    #@15
    .line 566
    .local v0, "systemCert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_2

    #@17
    .line 569
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@19
    invoke-virtual {v2, v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    #@1c
    move-result-object v2

    #@1d
    return-object v2

    #@1e
    .line 571
    :cond_2
    return-object v3
.end method

.method private static trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 6
    .param p0, "certs"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 193
    new-instance v1, Ljava/util/HashSet;

    #@2
    array-length v2, p0

    #@3
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    #@6
    .line 194
    .local v1, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/4 v2, 0x0

    #@7
    array-length v3, p0

    #@8
    :goto_0
    if-ge v2, v3, :cond_0

    #@a
    aget-object v0, p0, v2

    #@c
    .line 195
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    new-instance v4, Ljava/security/cert/TrustAnchor;

    #@e
    const/4 v5, 0x0

    #@f
    invoke-direct {v4, v0, v5}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    #@12
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@15
    .line 194
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 197
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 203
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    #@5
    .line 202
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Ljava/util/List;
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "session"    # Ljavax/net/ssl/SSLSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLSession;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 238
    invoke-interface {p3}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 209
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    #@5
    .line 208
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    #@0
    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    #@6
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [Ljava/security/cert/X509Certificate;

    #@c
    :goto_0
    return-object v0

    #@d
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    #@f
    invoke-static {v0}, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    #@12
    move-result-object v0

    #@13
    goto :goto_0
.end method

.method public handleTrustStorageUpdate()V
    .locals 2

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 243
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->reset()V

    #@9
    .line 241
    :goto_0
    return-void

    #@a
    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@c
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    #@e
    invoke-static {v1}, Lcom/android/org/conscrypt/TrustManagerImpl;->trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->reset(Ljava/util/Set;)V

    #@15
    goto :goto_0
.end method

.method public isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 224
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method
