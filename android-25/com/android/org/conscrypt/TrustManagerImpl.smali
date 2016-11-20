.class public final Lcom/android/org/conscrypt/TrustManagerImpl;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "TrustManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;,
        Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;
    }
.end annotation


# static fields
.field private static final TRUST_ANCHOR_COMPARATOR:Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;


# instance fields
.field private final acceptedIssuers:[Ljava/security/cert/X509Certificate;

.field private final blacklist:Lcom/android/org/conscrypt/CertBlacklist;

.field private final err:Ljava/lang/Exception;

.field private final factory:Ljava/security/cert/CertificateFactory;

.field private final intermediateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

.field private pinManager:Lcom/android/org/conscrypt/CertPinManager;

.field private final rootKeyStore:Ljava/security/KeyStore;

.field private final trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

.field private final trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field private final validator:Ljava/security/cert/CertPathValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 68
    new-instance v0, Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;-><init>(Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;)V

    #@6
    .line 67
    sput-object v0, Lcom/android/org/conscrypt/TrustManagerImpl;->TRUST_ANCHOR_COMPARATOR:Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    #@8
    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 1
    .param p1, "keyStore"    # Ljava/security/KeyStore;

    #@0
    .prologue
    .line 118
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;)V

    #@4
    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;)V
    .locals 1
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lcom/android/org/conscrypt/CertPinManager;

    #@0
    .prologue
    .line 125
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/TrustedCertificateStore;)V

    #@4
    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/TrustedCertificateStore;)V
    .locals 1
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lcom/android/org/conscrypt/CertPinManager;
    .param p3, "certStore"    # Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@0
    .prologue
    .line 133
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/org/conscrypt/CertBlacklist;)V

    #@4
    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/org/conscrypt/CertBlacklist;)V
    .locals 14
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lcom/android/org/conscrypt/CertPinManager;
    .param p3, "certStore"    # Lcom/android/org/conscrypt/TrustedCertificateStore;
    .param p4, "blacklist"    # Lcom/android/org/conscrypt/CertBlacklist;

    #@0
    .prologue
    .line 139
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    #@3
    .line 142
    const/4 v11, 0x0

    #@4
    .line 143
    .local v11, "validatorLocal":Ljava/security/cert/CertPathValidator;
    const/4 v5, 0x0

    #@5
    .line 144
    .local v5, "factoryLocal":Ljava/security/cert/CertificateFactory;
    const/4 v6, 0x0

    #@6
    .line 145
    .local v6, "rootKeyStoreLocal":Ljava/security/KeyStore;
    const/4 v9, 0x0

    #@7
    .line 146
    .local v9, "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    const/4 v7, 0x0

    #@8
    .line 147
    .local v7, "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    const/4 v1, 0x0

    #@9
    .line 148
    .local v1, "acceptedIssuersLocal":[Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    #@a
    .line 150
    .local v4, "errLocal":Ljava/lang/Exception;
    :try_start_0
    const-string/jumbo v12, "PKIX"

    #@d
    invoke-static {v12}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    #@10
    move-result-object v11

    #@11
    .line 151
    .local v11, "validatorLocal":Ljava/security/cert/CertPathValidator;
    const-string/jumbo v12, "X509"

    #@14
    invoke-static {v12}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@17
    move-result-object v5

    #@18
    .line 154
    .local v5, "factoryLocal":Ljava/security/cert/CertificateFactory;
    const-string/jumbo v12, "AndroidCAStore"

    #@1b
    invoke-virtual {p1}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    #@1e
    move-result-object v13

    #@1f
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v12

    #@23
    if-eqz v12, :cond_2

    #@25
    .line 155
    move-object v6, p1

    #@26
    .line 157
    .local v6, "rootKeyStoreLocal":Ljava/security/KeyStore;
    if-eqz p3, :cond_1

    #@28
    move-object/from16 v9, p3

    #@2a
    .line 158
    .local v9, "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :goto_0
    const/4 v1, 0x0

    #@2b
    .line 159
    new-instance v8, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@2d
    invoke-direct {v8}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .local v8, "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    move-object v7, v8

    #@31
    .line 172
    .end local v1    # "acceptedIssuersLocal":[Ljava/security/cert/X509Certificate;
    .end local v4    # "errLocal":Ljava/lang/Exception;
    .end local v5    # "factoryLocal":Ljava/security/cert/CertificateFactory;
    .end local v6    # "rootKeyStoreLocal":Ljava/security/KeyStore;
    .end local v7    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    .end local v8    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    .end local v9    # "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    .end local v11    # "validatorLocal":Ljava/security/cert/CertPathValidator;
    :goto_1
    if-eqz p2, :cond_3

    #@33
    .line 173
    move-object/from16 v0, p2

    #@35
    iput-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->pinManager:Lcom/android/org/conscrypt/CertPinManager;

    #@37
    .line 182
    :goto_2
    if-nez p4, :cond_0

    #@39
    .line 183
    new-instance p4, Lcom/android/org/conscrypt/CertBlacklist;

    #@3b
    .end local p4    # "blacklist":Lcom/android/org/conscrypt/CertBlacklist;
    invoke-direct/range {p4 .. p4}, Lcom/android/org/conscrypt/CertBlacklist;-><init>()V

    #@3e
    .line 186
    .restart local p4    # "blacklist":Lcom/android/org/conscrypt/CertBlacklist;
    :cond_0
    iput-object v6, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    #@40
    .line 187
    iput-object v9, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@42
    .line 188
    iput-object v11, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    #@44
    .line 189
    iput-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    #@46
    .line 190
    iput-object v7, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@48
    .line 191
    new-instance v12, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@4a
    invoke-direct {v12}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>()V

    #@4d
    iput-object v12, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->intermediateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@4f
    .line 192
    iput-object v1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    #@51
    .line 193
    iput-object v4, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    #@53
    .line 194
    move-object/from16 v0, p4

    #@55
    iput-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->blacklist:Lcom/android/org/conscrypt/CertBlacklist;

    #@57
    .line 141
    return-void

    #@58
    .line 157
    .restart local v1    # "acceptedIssuersLocal":[Ljava/security/cert/X509Certificate;
    .restart local v4    # "errLocal":Ljava/lang/Exception;
    .restart local v5    # "factoryLocal":Ljava/security/cert/CertificateFactory;
    .restart local v6    # "rootKeyStoreLocal":Ljava/security/KeyStore;
    .restart local v7    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    .local v9, "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    .restart local v11    # "validatorLocal":Ljava/security/cert/CertPathValidator;
    :cond_1
    :try_start_1
    new-instance v10, Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@5a
    invoke-direct {v10}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    #@5d
    .local v10, "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    move-object v9, v10

    #@5e
    .end local v10    # "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    .local v9, "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    goto :goto_0

    #@5f
    .line 161
    .local v6, "rootKeyStoreLocal":Ljava/security/KeyStore;
    .local v9, "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :cond_2
    const/4 v6, 0x0

    #@60
    .line 162
    move-object/from16 v9, p3

    #@62
    .line 163
    .local v9, "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    #@65
    move-result-object v1

    #@66
    .line 165
    .local v1, "acceptedIssuersLocal":[Ljava/security/cert/X509Certificate;
    new-instance v8, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@68
    invoke-static {v1}, Lcom/android/org/conscrypt/TrustManagerImpl;->trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    #@6b
    move-result-object v12

    #@6c
    invoke-direct {v8, v12}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>(Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@6f
    .restart local v8    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    move-object v7, v8

    #@70
    .line 164
    .end local v8    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    .local v7, "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    goto :goto_1

    #@71
    .line 168
    .end local v1    # "acceptedIssuersLocal":[Ljava/security/cert/X509Certificate;
    .end local v5    # "factoryLocal":Ljava/security/cert/CertificateFactory;
    .end local v6    # "rootKeyStoreLocal":Ljava/security/KeyStore;
    .end local v9    # "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    .end local v11    # "validatorLocal":Ljava/security/cert/CertPathValidator;
    .local v7, "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    :catch_0
    move-exception v3

    #@72
    .line 169
    .local v3, "e":Ljava/lang/Exception;
    move-object v4, v3

    #@73
    .local v4, "errLocal":Ljava/lang/Exception;
    goto :goto_1

    #@74
    .line 176
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "errLocal":Ljava/lang/Exception;
    .end local v7    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    :cond_3
    :try_start_2
    new-instance v12, Lcom/android/org/conscrypt/CertPinManager;

    #@76
    invoke-direct {v12, v9}, Lcom/android/org/conscrypt/CertPinManager;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;)V

    #@79
    iput-object v12, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->pinManager:Lcom/android/org/conscrypt/CertPinManager;
    :try_end_2
    .catch Lcom/android/org/conscrypt/PinManagerException; {:try_start_2 .. :try_end_2} :catch_1

    #@7b
    goto :goto_2

    #@7c
    .line 177
    :catch_1
    move-exception v2

    #@7d
    .line 178
    .local v2, "e":Lcom/android/org/conscrypt/PinManagerException;
    new-instance v12, Ljava/lang/SecurityException;

    #@7f
    const-string/jumbo v13, "Could not initialize CertPinManager"

    #@82
    invoke-direct {v12, v13, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@85
    throw v12
.end method

.method private static acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;
    .locals 6
    .param p0, "ks"    # Ljava/security/KeyStore;

    #@0
    .prologue
    .line 208
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 209
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
    .line 210
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/lang/String;

    #@15
    .line 211
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@1b
    .line 212
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_0

    #@1d
    .line 213
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    goto :goto_0

    #@21
    .line 217
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4    # "trusted":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v2

    #@22
    .line 218
    .local v2, "e":Ljava/security/KeyStoreException;
    const/4 v5, 0x0

    #@23
    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    #@25
    return-object v5

    #@26
    .line 216
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

.method private checkBlacklist(Ljava/security/cert/X509Certificate;)V
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->blacklist:Lcom/android/org/conscrypt/CertBlacklist;

    #@2
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/CertBlacklist;->isPublicKeyBlackListed(Ljava/security/PublicKey;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 623
    new-instance v0, Ljava/security/cert/CertificateException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Certificate blacklisted by public key: "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 621
    :cond_0
    return-void
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 9
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
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
    const/4 v1, 0x0

    #@1
    .line 380
    if-eqz p1, :cond_0

    #@3
    array-length v0, p1

    #@4
    if-nez v0, :cond_1

    #@6
    .line 381
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "null or zero-length parameter"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 380
    :cond_1
    if-eqz p2, :cond_0

    #@11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 383
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 384
    new-instance v0, Ljava/security/cert/CertificateException;

    #@1d
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    #@1f
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #@22
    throw v0

    #@23
    .line 386
    :cond_2
    new-instance v6, Ljava/util/HashSet;

    #@25
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@28
    .line 387
    .local v6, "used":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    new-instance v4, Ljava/util/ArrayList;

    #@2a
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@2d
    .line 388
    .local v4, "untrustedChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    new-instance v5, Ljava/util/ArrayList;

    #@2f
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@32
    .line 392
    .local v5, "trustedChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/TrustAnchor;>;"
    aget-object v7, p1, v1

    #@34
    .line 393
    .local v7, "leaf":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v7}, Lcom/android/org/conscrypt/TrustManagerImpl;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    #@37
    move-result-object v8

    #@38
    .line 394
    .local v8, "leafAsAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v8, :cond_3

    #@3a
    .line 395
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3d
    .line 396
    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@40
    move-result-object v0

    #@41
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@44
    .line 400
    :goto_0
    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@47
    move-object v0, p0

    #@48
    move-object v1, p1

    #@49
    move-object v2, p3

    #@4a
    move v3, p4

    #@4b
    .line 401
    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;

    #@4e
    move-result-object v0

    #@4f
    return-object v0

    #@50
    .line 398
    :cond_3
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@53
    goto :goto_0
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;
    .locals 5
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "session"    # Ljavax/net/ssl/SSLSession;
    .param p4, "parameters"    # Ljavax/net/ssl/SSLParameters;
    .param p5, "clientAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLSession;",
            "Ljavax/net/ssl/SSLParameters;",
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
    .line 364
    if-eqz p3, :cond_0

    #@2
    invoke-interface {p3}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 365
    :goto_0
    if-eqz p3, :cond_1

    #@8
    if-eqz p4, :cond_1

    #@a
    .line 366
    invoke-virtual {p4}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 367
    .local v1, "identificationAlgorithm":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@10
    .line 368
    const-string/jumbo v3, "HTTPS"

    #@13
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@15
    invoke-virtual {v1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v3

    #@1d
    .line 367
    if-eqz v3, :cond_1

    #@1f
    .line 369
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    #@22
    move-result-object v2

    #@23
    .line 370
    .local v2, "verifier":Ljavax/net/ssl/HostnameVerifier;
    invoke-interface {v2, v0, p3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    #@26
    move-result v3

    #@27
    if-nez v3, :cond_1

    #@29
    .line 371
    new-instance v3, Ljava/security/cert/CertificateException;

    #@2b
    const-string/jumbo v4, "No subjectAltNames on the certificate match"

    #@2e
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@31
    throw v3

    #@32
    .line 364
    .end local v1    # "identificationAlgorithm":Ljava/lang/String;
    .end local v2    # "verifier":Ljavax/net/ssl/HostnameVerifier;
    :cond_0
    const/4 v0, 0x0

    #@33
    .local v0, "hostname":Ljava/lang/String;
    goto :goto_0

    #@34
    .line 375
    .end local v0    # "hostname":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1, p2, v0, p5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    #@37
    move-result-object v3

    #@38
    return-object v3
.end method

.method private checkTrustedRecursive([Ljava/security/cert/X509Certificate;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;
    .locals 25
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "clientAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
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
    .line 431
    .local p4, "untrustedChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    .local p5, "trustAnchorChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/TrustAnchor;>;"
    .local p6, "used":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    const/16 v18, 0x0

    #@2
    .line 433
    .local v18, "lastException":Ljava/security/cert/CertificateException;
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v20

    #@6
    if-eqz v20, :cond_0

    #@8
    .line 434
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v20

    #@c
    add-int/lit8 v20, v20, -0x1

    #@e
    move-object/from16 v0, p4

    #@10
    move/from16 v1, v20

    #@12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v11

    #@16
    check-cast v11, Ljava/security/cert/X509Certificate;

    #@18
    .line 440
    .local v11, "current":Ljava/security/cert/X509Certificate;
    :goto_0
    move-object/from16 v0, p0

    #@1a
    invoke-direct {v0, v11}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkBlacklist(Ljava/security/cert/X509Certificate;)V

    #@1d
    .line 443
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    #@20
    move-result-object v20

    #@21
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    #@24
    move-result-object v21

    #@25
    invoke-interface/range {v20 .. v21}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v20

    #@29
    if-eqz v20, :cond_1

    #@2b
    .line 444
    move-object/from16 v0, p0

    #@2d
    move-object/from16 v1, p4

    #@2f
    move-object/from16 v2, p5

    #@31
    move-object/from16 v3, p2

    #@33
    move/from16 v4, p3

    #@35
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/conscrypt/TrustManagerImpl;->verifyChain(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;

    #@38
    move-result-object v20

    #@39
    return-object v20

    #@3a
    .line 436
    .end local v11    # "current":Ljava/security/cert/X509Certificate;
    :cond_0
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    #@3d
    move-result v20

    #@3e
    add-int/lit8 v20, v20, -0x1

    #@40
    move-object/from16 v0, p5

    #@42
    move/from16 v1, v20

    #@44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v20

    #@48
    check-cast v20, Ljava/security/cert/TrustAnchor;

    #@4a
    invoke-virtual/range {v20 .. v20}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@4d
    move-result-object v11

    #@4e
    .restart local v11    # "current":Ljava/security/cert/X509Certificate;
    goto :goto_0

    #@4f
    .line 452
    :cond_1
    move-object/from16 v0, p0

    #@51
    invoke-direct {v0, v11}, Lcom/android/org/conscrypt/TrustManagerImpl;->findAllTrustAnchorsByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    #@54
    move-result-object v8

    #@55
    .line 453
    .local v8, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/16 v19, 0x0

    #@57
    .line 454
    .local v19, "seenIssuer":Z
    invoke-static {v8}, Lcom/android/org/conscrypt/TrustManagerImpl;->sortPotentialAnchors(Ljava/util/Set;)Ljava/util/Collection;

    #@5a
    move-result-object v20

    #@5b
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5e
    move-result-object v6

    #@5f
    .end local v18    # "lastException":Ljava/security/cert/CertificateException;
    .local v6, "anchor$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@62
    move-result v20

    #@63
    if-eqz v20, :cond_3

    #@65
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@68
    move-result-object v5

    #@69
    check-cast v5, Ljava/security/cert/TrustAnchor;

    #@6b
    .line 455
    .local v5, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@6e
    move-result-object v7

    #@6f
    .line 457
    .local v7, "anchorCert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p6

    #@71
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@74
    move-result v20

    #@75
    if-nez v20, :cond_2

    #@77
    .line 460
    const/16 v19, 0x1

    #@79
    .line 461
    move-object/from16 v0, p6

    #@7b
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7e
    .line 462
    move-object/from16 v0, p5

    #@80
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@83
    .line 464
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@86
    move-result-object v20

    #@87
    return-object v20

    #@88
    .line 466
    :catch_0
    move-exception v12

    #@89
    .line 467
    .local v12, "ex":Ljava/security/cert/CertificateException;
    move-object/from16 v18, v12

    #@8b
    .line 470
    .local v18, "lastException":Ljava/security/cert/CertificateException;
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    #@8e
    move-result v20

    #@8f
    add-int/lit8 v20, v20, -0x1

    #@91
    move-object/from16 v0, p5

    #@93
    move/from16 v1, v20

    #@95
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@98
    .line 471
    move-object/from16 v0, p6

    #@9a
    invoke-interface {v0, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@9d
    goto :goto_1

    #@9e
    .line 477
    .end local v5    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v7    # "anchorCert":Ljava/security/cert/X509Certificate;
    .end local v12    # "ex":Ljava/security/cert/CertificateException;
    .end local v18    # "lastException":Ljava/security/cert/CertificateException;
    :cond_3
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->isEmpty()Z

    #@a1
    move-result v20

    #@a2
    if-nez v20, :cond_5

    #@a4
    .line 478
    if-nez v19, :cond_4

    #@a6
    .line 479
    move-object/from16 v0, p0

    #@a8
    move-object/from16 v1, p4

    #@aa
    move-object/from16 v2, p5

    #@ac
    move-object/from16 v3, p2

    #@ae
    move/from16 v4, p3

    #@b0
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/conscrypt/TrustManagerImpl;->verifyChain(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;

    #@b3
    move-result-object v20

    #@b4
    return-object v20

    #@b5
    .line 483
    :cond_4
    throw v18

    #@b6
    .line 488
    :cond_5
    const/4 v13, 0x1

    #@b7
    .local v13, "i":I
    :goto_2
    move-object/from16 v0, p1

    #@b9
    array-length v0, v0

    #@ba
    move/from16 v20, v0

    #@bc
    move/from16 v0, v20

    #@be
    if-ge v13, v0, :cond_8

    #@c0
    .line 489
    aget-object v9, p1, v13

    #@c2
    .line 491
    .local v9, "candidateIssuer":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p6

    #@c4
    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@c7
    move-result v20

    #@c8
    if-eqz v20, :cond_7

    #@ca
    .line 488
    :cond_6
    :goto_3
    add-int/lit8 v13, v13, 0x1

    #@cc
    goto :goto_2

    #@cd
    .line 494
    :cond_7
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    #@d0
    move-result-object v20

    #@d1
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    #@d4
    move-result-object v21

    #@d5
    invoke-interface/range {v20 .. v21}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    #@d8
    move-result v20

    #@d9
    if-eqz v20, :cond_6

    #@db
    .line 498
    :try_start_1
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->checkValidity()V

    #@de
    .line 499
    invoke-static {v9}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->checkCert(Ljava/security/cert/X509Certificate;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    #@e1
    .line 505
    move-object/from16 v0, p6

    #@e3
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@e6
    .line 506
    move-object/from16 v0, p4

    #@e8
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@eb
    .line 508
    :try_start_2
    invoke-direct/range {p0 .. p6}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    #@ee
    move-result-object v20

    #@ef
    return-object v20

    #@f0
    .line 500
    :catch_1
    move-exception v12

    #@f1
    .line 501
    .restart local v12    # "ex":Ljava/security/cert/CertificateException;
    new-instance v18, Ljava/security/cert/CertificateException;

    #@f3
    new-instance v20, Ljava/lang/StringBuilder;

    #@f5
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@f8
    const-string/jumbo v21, "Unacceptable certificate: "

    #@fb
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v20

    #@ff
    .line 502
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@102
    move-result-object v21

    #@103
    .line 501
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v20

    #@107
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10a
    move-result-object v20

    #@10b
    move-object/from16 v0, v18

    #@10d
    move-object/from16 v1, v20

    #@10f
    invoke-direct {v0, v1, v12}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@112
    .line 503
    .restart local v18    # "lastException":Ljava/security/cert/CertificateException;
    goto :goto_3

    #@113
    .line 510
    .end local v12    # "ex":Ljava/security/cert/CertificateException;
    .end local v18    # "lastException":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v12

    #@114
    .line 511
    .restart local v12    # "ex":Ljava/security/cert/CertificateException;
    move-object/from16 v18, v12

    #@116
    .line 514
    .restart local v18    # "lastException":Ljava/security/cert/CertificateException;
    move-object/from16 v0, p6

    #@118
    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@11b
    .line 515
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    #@11e
    move-result v20

    #@11f
    add-int/lit8 v20, v20, -0x1

    #@121
    move-object/from16 v0, p4

    #@123
    move/from16 v1, v20

    #@125
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@128
    goto :goto_3

    #@129
    .line 521
    .end local v9    # "candidateIssuer":Ljava/security/cert/X509Certificate;
    .end local v12    # "ex":Ljava/security/cert/CertificateException;
    .end local v18    # "lastException":Ljava/security/cert/CertificateException;
    :cond_8
    move-object/from16 v0, p0

    #@12b
    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->intermediateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@12d
    move-object/from16 v20, v0

    #@12f
    move-object/from16 v0, v20

    #@131
    invoke-virtual {v0, v11}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    #@134
    move-result-object v16

    #@135
    .line 522
    .local v16, "intermediateAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-static/range {v16 .. v16}, Lcom/android/org/conscrypt/TrustManagerImpl;->sortPotentialAnchors(Ljava/util/Set;)Ljava/util/Collection;

    #@138
    move-result-object v20

    #@139
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13c
    move-result-object v15

    #@13d
    .local v15, "intermediate$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@140
    move-result v20

    #@141
    if-eqz v20, :cond_a

    #@143
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@146
    move-result-object v14

    #@147
    check-cast v14, Ljava/security/cert/TrustAnchor;

    #@149
    .line 523
    .local v14, "intermediate":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v14}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@14c
    move-result-object v17

    #@14d
    .line 525
    .local v17, "intermediateCert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p6

    #@14f
    move-object/from16 v1, v17

    #@151
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@154
    move-result v20

    #@155
    if-nez v20, :cond_9

    #@157
    .line 528
    move-object/from16 v0, p6

    #@159
    move-object/from16 v1, v17

    #@15b
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@15e
    .line 529
    move-object/from16 v0, p4

    #@160
    move-object/from16 v1, v17

    #@162
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@165
    .line 531
    :try_start_3
    invoke-direct/range {p0 .. p6}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3

    #@168
    move-result-object v20

    #@169
    return-object v20

    #@16a
    .line 533
    :catch_3
    move-exception v12

    #@16b
    .line 534
    .restart local v12    # "ex":Ljava/security/cert/CertificateException;
    move-object/from16 v18, v12

    #@16d
    .line 537
    .restart local v18    # "lastException":Ljava/security/cert/CertificateException;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    #@170
    move-result v20

    #@171
    add-int/lit8 v20, v20, -0x1

    #@173
    move-object/from16 v0, p4

    #@175
    move/from16 v1, v20

    #@177
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@17a
    .line 538
    move-object/from16 v0, p6

    #@17c
    move-object/from16 v1, v17

    #@17e
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@181
    goto :goto_4

    #@182
    .line 542
    .end local v12    # "ex":Ljava/security/cert/CertificateException;
    .end local v14    # "intermediate":Ljava/security/cert/TrustAnchor;
    .end local v17    # "intermediateCert":Ljava/security/cert/X509Certificate;
    .end local v18    # "lastException":Ljava/security/cert/CertificateException;
    :cond_a
    if-eqz v18, :cond_b

    #@184
    .line 543
    throw v18

    #@185
    .line 548
    :cond_b
    move-object/from16 v0, p0

    #@187
    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    #@189
    move-object/from16 v20, v0

    #@18b
    move-object/from16 v0, v20

    #@18d
    move-object/from16 v1, p4

    #@18f
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    #@192
    move-result-object v10

    #@193
    .line 549
    .local v10, "certPath":Ljava/security/cert/CertPath;
    new-instance v20, Ljava/security/cert/CertificateException;

    #@195
    new-instance v21, Ljava/security/cert/CertPathValidatorException;

    #@197
    .line 550
    const-string/jumbo v22, "Trust anchor for certification path not found."

    #@19a
    const/16 v23, 0x0

    #@19c
    const/16 v24, -0x1

    #@19e
    .line 549
    move-object/from16 v0, v21

    #@1a0
    move-object/from16 v1, v22

    #@1a2
    move-object/from16 v2, v23

    #@1a4
    move/from16 v3, v24

    #@1a6
    invoke-direct {v0, v1, v2, v10, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@1a9
    invoke-direct/range {v20 .. v21}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #@1ac
    throw v20
.end method

.method private findAllTrustAnchorsByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 6
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 763
    iget-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@2
    invoke-virtual {v5, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    .line 764
    .local v0, "indexedAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@9
    move-result v5

    #@a
    if-eqz v5, :cond_0

    #@c
    iget-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@e
    if-nez v5, :cond_1

    #@10
    .line 765
    :cond_0
    return-object v0

    #@11
    .line 767
    :cond_1
    iget-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@13
    invoke-virtual {v5, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findAllIssuers(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    #@16
    move-result-object v2

    #@17
    .line 768
    .local v2, "storeAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_2

    #@1d
    .line 769
    return-object v0

    #@1e
    .line 771
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    #@20
    invoke-interface {v2}, Ljava/util/Set;->size()I

    #@23
    move-result v5

    #@24
    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(I)V

    #@27
    .line 772
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v4

    #@2b
    .local v4, "storeCert$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_3

    #@31
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    check-cast v3, Ljava/security/cert/X509Certificate;

    #@37
    .line 773
    .local v3, "storeCert":Ljava/security/cert/X509Certificate;
    iget-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@39
    invoke-virtual {v5, v3}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    #@3c
    move-result-object v5

    #@3d
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@40
    goto :goto_0

    #@41
    .line 775
    .end local v3    # "storeCert":Ljava/security/cert/X509Certificate;
    :cond_3
    return-object v1
.end method

.method private findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 784
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@3
    invoke-virtual {v2, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    #@6
    move-result-object v1

    #@7
    .line 785
    .local v1, "trustAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v1, :cond_0

    #@9
    .line 786
    return-object v1

    #@a
    .line 788
    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@c
    if-nez v2, :cond_1

    #@e
    .line 790
    return-object v3

    #@f
    .line 795
    :cond_1
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@11
    invoke-virtual {v2, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getTrustAnchor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    #@14
    move-result-object v0

    #@15
    .line 796
    .local v0, "systemCert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_2

    #@17
    .line 803
    new-instance v2, Ljava/security/cert/TrustAnchor;

    #@19
    invoke-direct {v2, v0, v3}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    #@1c
    return-object v2

    #@1d
    .line 805
    :cond_2
    return-object v3
.end method

.method private static getHandshakeSessionOrThrow(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;
    .locals 3
    .param p0, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 246
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    #@3
    move-result-object v0

    #@4
    .line 247
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    if-nez v0, :cond_0

    #@6
    .line 248
    new-instance v1, Ljava/security/cert/CertificateException;

    #@8
    const-string/jumbo v2, "Not in handshake; no session available"

    #@b
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 250
    :cond_0
    return-object v0
.end method

.method private static sortPotentialAnchors(Ljava/util/Set;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 633
    .local p0, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {p0}, Ljava/util/Set;->size()I

    #@3
    move-result v1

    #@4
    const/4 v2, 0x1

    #@5
    if-gt v1, v2, :cond_0

    #@7
    .line 634
    return-object p0

    #@8
    .line 636
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@d
    .line 637
    .local v0, "sortedAnchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    sget-object v1, Lcom/android/org/conscrypt/TrustManagerImpl;->TRUST_ANCHOR_COMPARATOR:Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    #@f
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@12
    .line 638
    return-object v0
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
    .line 223
    new-instance v1, Ljava/util/HashSet;

    #@2
    array-length v2, p0

    #@3
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    #@6
    .line 224
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
    .line 225
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    new-instance v4, Ljava/security/cert/TrustAnchor;

    #@e
    const/4 v5, 0x0

    #@f
    invoke-direct {v4, v0, v5}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    #@12
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@15
    .line 224
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 227
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    return-object v1
.end method

.method private verifyChain(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;
    .locals 23
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "clientAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
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
    .line 559
    .local p1, "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local p2, "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    #@4
    move-object/from16 v17, v0

    #@6
    move-object/from16 v0, v17

    #@8
    move-object/from16 v1, p1

    #@a
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    #@d
    move-result-object v9

    #@e
    .line 562
    .local v9, "certPath":Ljava/security/cert/CertPath;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    #@11
    move-result v17

    #@12
    if-eqz v17, :cond_0

    #@14
    .line 563
    new-instance v17, Ljava/security/cert/CertificateException;

    #@16
    new-instance v18, Ljava/security/cert/CertPathValidatorException;

    #@18
    .line 564
    const-string/jumbo v19, "Trust anchor for certification path not found."

    #@1b
    const/16 v20, 0x0

    #@1d
    const/16 v21, -0x1

    #@1f
    .line 563
    move-object/from16 v0, v18

    #@21
    move-object/from16 v1, v19

    #@23
    move-object/from16 v2, v20

    #@25
    move/from16 v3, v21

    #@27
    invoke-direct {v0, v1, v2, v9, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@2a
    invoke-direct/range {v17 .. v18}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #@2d
    throw v17

    #@2e
    .line 567
    :cond_0
    new-instance v16, Ljava/util/ArrayList;

    #@30
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    #@33
    .line 568
    .local v16, "wholeChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v0, v16

    #@35
    move-object/from16 v1, p1

    #@37
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@3a
    .line 569
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3d
    move-result-object v5

    #@3e
    .local v5, "anchor$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@41
    move-result v17

    #@42
    if-eqz v17, :cond_1

    #@44
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@47
    move-result-object v4

    #@48
    check-cast v4, Ljava/security/cert/TrustAnchor;

    #@4a
    .line 570
    .local v4, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v4}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@4d
    move-result-object v17

    #@4e
    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@51
    goto :goto_0

    #@52
    .line 573
    .end local v4    # "anchor":Ljava/security/cert/TrustAnchor;
    :cond_1
    if-eqz p3, :cond_2

    #@54
    .line 574
    const/4 v10, 0x0

    #@55
    .line 576
    .local v10, "chainValid":Z
    :try_start_0
    move-object/from16 v0, p0

    #@57
    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->pinManager:Lcom/android/org/conscrypt/CertPinManager;

    #@59
    move-object/from16 v17, v0

    #@5b
    move-object/from16 v0, v17

    #@5d
    move-object/from16 v1, p3

    #@5f
    move-object/from16 v2, v16

    #@61
    invoke-virtual {v0, v1, v2}, Lcom/android/org/conscrypt/CertPinManager;->isChainValid(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_0
    .catch Lcom/android/org/conscrypt/PinManagerException; {:try_start_0 .. :try_end_0} :catch_0

    #@64
    move-result v10

    #@65
    .line 580
    .local v10, "chainValid":Z
    if-nez v10, :cond_2

    #@67
    .line 581
    new-instance v17, Ljava/security/cert/CertificateException;

    #@69
    const-string/jumbo v18, "Pinning failure"

    #@6c
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    #@6e
    .line 582
    const-string/jumbo v20, "Certificate path is not properly pinned."

    #@71
    const/16 v21, 0x0

    #@73
    const/16 v22, -0x1

    #@75
    .line 581
    move-object/from16 v0, v19

    #@77
    move-object/from16 v1, v20

    #@79
    move-object/from16 v2, v21

    #@7b
    move/from16 v3, v22

    #@7d
    invoke-direct {v0, v1, v2, v9, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@80
    invoke-direct/range {v17 .. v19}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@83
    throw v17

    #@84
    .line 577
    .local v10, "chainValid":Z
    :catch_0
    move-exception v11

    #@85
    .line 578
    .local v11, "e":Lcom/android/org/conscrypt/PinManagerException;
    new-instance v17, Ljava/security/cert/CertificateException;

    #@87
    const-string/jumbo v18, "Failed to check pinning"

    #@8a
    move-object/from16 v0, v17

    #@8c
    move-object/from16 v1, v18

    #@8e
    invoke-direct {v0, v1, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@91
    throw v17

    #@92
    .line 586
    .end local v10    # "chainValid":Z
    .end local v11    # "e":Lcom/android/org/conscrypt/PinManagerException;
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@95
    move-result-object v8

    #@96
    .local v8, "cert$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@99
    move-result v17

    #@9a
    if-eqz v17, :cond_3

    #@9c
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9f
    move-result-object v7

    #@a0
    check-cast v7, Ljava/security/cert/X509Certificate;

    #@a2
    .line 587
    .local v7, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    #@a4
    invoke-direct {v0, v7}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkBlacklist(Ljava/security/cert/X509Certificate;)V

    #@a7
    goto :goto_1

    #@a8
    .line 590
    .end local v7    # "cert":Ljava/security/cert/X509Certificate;
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    #@ab
    move-result v17

    #@ac
    if-eqz v17, :cond_4

    #@ae
    .line 592
    return-object v16

    #@af
    .line 595
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->check(Ljava/util/List;)V

    #@b2
    .line 599
    :try_start_1
    new-instance v6, Ljava/util/HashSet;

    #@b4
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@b7
    .line 601
    .local v6, "anchorSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/16 v17, 0x0

    #@b9
    move-object/from16 v0, p2

    #@bb
    move/from16 v1, v17

    #@bd
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c0
    move-result-object v17

    #@c1
    check-cast v17, Ljava/security/cert/TrustAnchor;

    #@c3
    move-object/from16 v0, v17

    #@c5
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c8
    .line 602
    new-instance v15, Ljava/security/cert/PKIXParameters;

    #@ca
    invoke-direct {v15, v6}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    #@cd
    .line 603
    .local v15, "params":Ljava/security/cert/PKIXParameters;
    const/16 v17, 0x0

    #@cf
    move/from16 v0, v17

    #@d1
    invoke-virtual {v15, v0}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    #@d4
    .line 604
    new-instance v18, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;

    #@d6
    .line 605
    const/16 v17, 0x0

    #@d8
    move-object/from16 v0, p1

    #@da
    move/from16 v1, v17

    #@dc
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@df
    move-result-object v17

    #@e0
    check-cast v17, Ljava/security/cert/X509Certificate;

    #@e2
    .line 604
    const/16 v19, 0x0

    #@e4
    move-object/from16 v0, v18

    #@e6
    move/from16 v1, p4

    #@e8
    move-object/from16 v2, v17

    #@ea
    move-object/from16 v3, v19

    #@ec
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;-><init>(ZLjava/security/cert/X509Certificate;Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;)V

    #@ef
    move-object/from16 v0, v18

    #@f1
    invoke-virtual {v15, v0}, Ljava/security/cert/PKIXParameters;->addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V

    #@f4
    .line 606
    move-object/from16 v0, p0

    #@f6
    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    #@f8
    move-object/from16 v17, v0

    #@fa
    move-object/from16 v0, v17

    #@fc
    invoke-virtual {v0, v9, v15}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    #@ff
    .line 615
    const/4 v14, 0x1

    #@100
    .local v14, "i":I
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    #@103
    move-result v17

    #@104
    move/from16 v0, v17

    #@106
    if-ge v14, v0, :cond_5

    #@108
    .line 616
    move-object/from16 v0, p0

    #@10a
    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->intermediateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@10c
    move-object/from16 v18, v0

    #@10e
    move-object/from16 v0, p1

    #@110
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@113
    move-result-object v17

    #@114
    check-cast v17, Ljava/security/cert/X509Certificate;

    #@116
    move-object/from16 v0, v18

    #@118
    move-object/from16 v1, v17

    #@11a
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    #@11d
    .line 615
    add-int/lit8 v14, v14, 0x1

    #@11f
    goto :goto_2

    #@120
    .line 609
    .end local v6    # "anchorSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .end local v14    # "i":I
    .end local v15    # "params":Ljava/security/cert/PKIXParameters;
    :catch_1
    move-exception v13

    #@121
    .line 610
    .local v13, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v17, Ljava/security/cert/CertificateException;

    #@123
    const-string/jumbo v18, "Chain validation failed"

    #@126
    move-object/from16 v0, v17

    #@128
    move-object/from16 v1, v18

    #@12a
    invoke-direct {v0, v1, v13}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@12d
    throw v17

    #@12e
    .line 607
    .end local v13    # "e":Ljava/security/cert/CertPathValidatorException;
    :catch_2
    move-exception v12

    #@12f
    .line 608
    .local v12, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v17, Ljava/security/cert/CertificateException;

    #@131
    const-string/jumbo v18, "Chain validation failed"

    #@134
    move-object/from16 v0, v17

    #@136
    move-object/from16 v1, v18

    #@138
    invoke-direct {v0, v1, v12}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13b
    throw v17

    #@13c
    .line 618
    .end local v12    # "e":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v6    # "anchorSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .restart local v14    # "i":I
    .restart local v15    # "params":Ljava/security/cert/PKIXParameters;
    :cond_5
    return-object v16
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
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
    .line 241
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 6
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 233
    const/4 v5, 0x1

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v4, v3

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    #@9
    .line 232
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 7
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 256
    const/4 v3, 0x0

    #@1
    .line 257
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    const/4 v4, 0x0

    #@2
    .line 258
    .local v4, "parameters":Ljavax/net/ssl/SSLParameters;
    instance-of v0, p3, Ljavax/net/ssl/SSLSocket;

    #@4
    if-eqz v0, :cond_0

    #@6
    move-object v6, p3

    #@7
    .line 259
    check-cast v6, Ljavax/net/ssl/SSLSocket;

    #@9
    .line 260
    .local v6, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-static {v6}, Lcom/android/org/conscrypt/TrustManagerImpl;->getHandshakeSessionOrThrow(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;

    #@c
    move-result-object v3

    #@d
    .line 261
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    #@10
    move-result-object v4

    #@11
    .line 263
    .end local v3    # "session":Ljavax/net/ssl/SSLSession;
    .end local v4    # "parameters":Ljavax/net/ssl/SSLParameters;
    .end local v6    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_0
    const/4 v5, 0x1

    #@12
    move-object v0, p0

    #@13
    move-object v1, p1

    #@14
    move-object v2, p2

    #@15
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    #@18
    .line 255
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 6
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 269
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    #@3
    move-result-object v3

    #@4
    .line 270
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    if-nez v3, :cond_0

    #@6
    .line 271
    new-instance v0, Ljava/security/cert/CertificateException;

    #@8
    const-string/jumbo v1, "Not in handshake; no session available"

    #@b
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 273
    :cond_0
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    #@12
    move-result-object v4

    #@13
    const/4 v5, 0x1

    #@14
    move-object v0, p0

    #@15
    move-object v1, p1

    #@16
    move-object v2, p2

    #@17
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    #@1a
    .line 268
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
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
    .line 287
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Ljava/util/List;
    .locals 6
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
    .line 350
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v3, p3

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 6
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 279
    const/4 v5, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v4, v3

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    #@9
    .line 278
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 325
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/util/List;

    #@3
    .line 324
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 331
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/util/List;

    #@3
    .line 330
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    #@0
    .prologue
    .line 810
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

.method public getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/util/List;
    .locals 7
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/net/Socket;",
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
    .line 297
    const/4 v3, 0x0

    #@1
    .line 298
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    const/4 v4, 0x0

    #@2
    .line 299
    .local v4, "parameters":Ljavax/net/ssl/SSLParameters;
    instance-of v0, p3, Ljavax/net/ssl/SSLSocket;

    #@4
    if-eqz v0, :cond_0

    #@6
    move-object v6, p3

    #@7
    .line 300
    check-cast v6, Ljavax/net/ssl/SSLSocket;

    #@9
    .line 301
    .local v6, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-static {v6}, Lcom/android/org/conscrypt/TrustManagerImpl;->getHandshakeSessionOrThrow(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;

    #@c
    move-result-object v3

    #@d
    .line 302
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    #@10
    move-result-object v4

    #@11
    .line 304
    .end local v3    # "session":Ljavax/net/ssl/SSLSession;
    .end local v4    # "parameters":Ljavax/net/ssl/SSLParameters;
    .end local v6    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_0
    const/4 v5, 0x0

    #@12
    move-object v0, p0

    #@13
    move-object v1, p1

    #@14
    move-object v2, p2

    #@15
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/util/List;
    .locals 6
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLEngine;",
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
    .line 314
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    #@3
    move-result-object v3

    #@4
    .line 315
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    if-nez v3, :cond_0

    #@6
    .line 316
    new-instance v0, Ljava/security/cert/CertificateException;

    #@8
    const-string/jumbo v1, "Not in handshake; no session available"

    #@b
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 318
    :cond_0
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    #@12
    move-result-object v4

    #@13
    .line 319
    const/4 v5, 0x0

    #@14
    move-object v0, p0

    #@15
    move-object v1, p1

    #@16
    move-object v2, p2

    #@17
    .line 318
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public handleTrustStorageUpdate()V
    .locals 2

    #@0
    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 355
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->reset()V

    #@9
    .line 353
    :goto_0
    return-void

    #@a
    .line 357
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
    .line 335
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 336
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method
