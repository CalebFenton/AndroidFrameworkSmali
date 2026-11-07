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
.field private static final blacklist REVOCATION_CHECK_OPTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/PKIXRevocationChecker$Option;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TRUST_ANCHOR_COMPARATOR:Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;

.field private static blacklist defaultHostnameVerifier:Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

.field private static final blacklist logger:Ljava/util/logging/Logger;


# instance fields
.field private final greylist-max-o acceptedIssuers:[Ljava/security/cert/X509Certificate;

.field private final blacklist blocklist:Lcom/android/org/conscrypt/CertBlocklist;

.field private final blacklist ct:Lcom/android/org/conscrypt/ct/CertificateTransparency;

.field private final greylist-max-o err:Ljava/lang/Exception;

.field private final greylist-max-o factory:Ljava/security/cert/CertificateFactory;

.field private blacklist hostnameVerifier:Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

.field private final greylist-max-o intermediateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

.field private final greylist-max-o pinManager:Lcom/android/org/conscrypt/CertPinManager;

.field private final greylist-max-o rootKeyStore:Ljava/security/KeyStore;

.field private final greylist-max-o trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

.field private final blacklist trustedCertificateStore:Lcom/android/org/conscrypt/ConscryptCertStore;

.field private final greylist-max-o validator:Ljava/security/cert/CertPathValidator;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 86
    const-class v0, Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/TrustManagerImpl;->logger:Ljava/util/logging/Logger;

    .line 91
    new-instance v0, Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;-><init>(Lcom/android/org/conscrypt/TrustManagerImpl-IA;)V

    sput-object v0, Lcom/android/org/conscrypt/TrustManagerImpl;->TRUST_ANCHOR_COMPARATOR:Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    .line 94
    invoke-static {}, Lcom/android/org/conscrypt/TrustManagerImpl;->revocationOptions()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/TrustManagerImpl;->REVOCATION_CHECK_OPTIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor greylist test-api <init>(Ljava/security/KeyStore;)V
    .registers 3
    .param p1, "keyStore"    # Ljava/security/KeyStore;

    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;)V

    .line 150
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;)V
    .registers 4
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lcom/android/org/conscrypt/CertPinManager;

    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/ConscryptCertStore;)V

    .line 157
    return-void
.end method

.method public constructor blacklist test-api <init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/ConscryptCertStore;)V
    .registers 10
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lcom/android/org/conscrypt/CertPinManager;
    .param p3, "certStore"    # Lcom/android/org/conscrypt/ConscryptCertStore;

    .line 162
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "keyStore":Ljava/security/KeyStore;
    .end local p2    # "manager":Lcom/android/org/conscrypt/CertPinManager;
    .end local p3    # "certStore":Lcom/android/org/conscrypt/ConscryptCertStore;
    .local v1, "keyStore":Ljava/security/KeyStore;
    .local v2, "manager":Lcom/android/org/conscrypt/CertPinManager;
    .local v3, "certStore":Lcom/android/org/conscrypt/ConscryptCertStore;
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/ConscryptCertStore;Lcom/android/org/conscrypt/CertBlocklist;Lcom/android/org/conscrypt/ct/CertificateTransparency;)V

    .line 163
    return-void
.end method

.method private constructor blacklist <init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/ConscryptCertStore;Lcom/android/org/conscrypt/CertBlocklist;Lcom/android/org/conscrypt/ct/CertificateTransparency;)V
    .registers 15
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lcom/android/org/conscrypt/CertPinManager;
    .param p3, "certStore"    # Lcom/android/org/conscrypt/ConscryptCertStore;
    .param p4, "blocklist"    # Lcom/android/org/conscrypt/CertBlocklist;
    .param p5, "ct"    # Lcom/android/org/conscrypt/ct/CertificateTransparency;

    .line 167
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "validatorLocal":Ljava/security/cert/CertPathValidator;
    const/4 v1, 0x0

    .line 170
    .local v1, "factoryLocal":Ljava/security/cert/CertificateFactory;
    const/4 v2, 0x0

    .line 171
    .local v2, "rootKeyStoreLocal":Ljava/security/KeyStore;
    const/4 v3, 0x0

    .line 172
    .local v3, "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/ConscryptCertStore;
    const/4 v4, 0x0

    .line 173
    .local v4, "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    const/4 v5, 0x0

    .line 174
    .local v5, "acceptedIssuersLocal":[Ljava/security/cert/X509Certificate;
    const/4 v6, 0x0

    .line 176
    .local v6, "errLocal":Ljava/lang/Exception;
    :try_start_a
    const-string v7, "PKIX"

    invoke-static {v7}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v7

    move-object v0, v7

    .line 177
    const-string v7, "X509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v7

    move-object v1, v7

    .line 180
    const-string v7, "AndroidCAStore"

    invoke-virtual {p1}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 181
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->supportsConscryptCertStore()Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 182
    move-object v2, p1

    .line 184
    if-eqz p3, :cond_2f

    move-object v7, p3

    goto :goto_33

    :cond_2f
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->newDefaultCertStore()Lcom/android/org/conscrypt/ConscryptCertStore;

    move-result-object v7

    :goto_33
    move-object v3, v7

    .line 185
    new-instance v7, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-direct {v7}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>()V

    move-object v4, v7

    .end local v4    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    .local v7, "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    goto :goto_4b

    .line 187
    .end local v7    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    .restart local v4    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    :cond_3b
    move-object v3, p3

    .line 188
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v7

    move-object v5, v7

    .line 189
    new-instance v7, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    .line 190
    invoke-static {v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>(Ljava/util/Set;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_4a} :catch_4c

    move-object v4, v7

    .line 195
    :goto_4b
    goto :goto_4e

    .line 193
    :catch_4c
    move-exception v7

    .line 194
    .local v7, "e":Ljava/lang/Exception;
    move-object v6, v7

    .line 197
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_4e
    if-nez p5, :cond_54

    .line 198
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->newDefaultCertificateTransparency()Lcom/android/org/conscrypt/ct/CertificateTransparency;

    move-result-object p5

    .line 200
    :cond_54
    if-nez p4, :cond_5a

    .line 201
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->newDefaultBlocklist()Lcom/android/org/conscrypt/CertBlocklist;

    move-result-object p4

    .line 204
    :cond_5a
    iput-object p2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->pinManager:Lcom/android/org/conscrypt/CertPinManager;

    .line 205
    iput-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    .line 206
    iput-object v3, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/ConscryptCertStore;

    .line 207
    iput-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    .line 208
    iput-object v1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    .line 209
    iput-object v4, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    .line 210
    new-instance v7, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-direct {v7}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>()V

    iput-object v7, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->intermediateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    .line 211
    iput-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    .line 212
    iput-object v6, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    .line 213
    iput-object p4, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->blocklist:Lcom/android/org/conscrypt/CertBlocklist;

    .line 214
    iput-object p5, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->ct:Lcom/android/org/conscrypt/ct/CertificateTransparency;

    .line 215
    return-void
.end method

.method private static greylist-max-o acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;
    .registers 6
    .param p0, "ks"    # Ljava/security/KeyStore;

    .line 229
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v1, "trusted":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_a
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 231
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 232
    .local v3, "alias":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 233
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v4, :cond_21

    .line 234
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v3    # "alias":Ljava/lang/String;
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    :cond_21
    goto :goto_a

    .line 237
    .end local v2    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_22
    new-array v2, v0, [Ljava/security/cert/X509Certificate;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/X509Certificate;
    :try_end_2a
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_2a} :catch_2b

    return-object v2

    .line 238
    .end local v1    # "trusted":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_2b
    move-exception v1

    .line 239
    .local v1, "e":Ljava/security/KeyStoreException;
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method private blacklist checkBlocklist(Ljava/security/cert/X509Certificate;)V
    .registers 5
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 725
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->blocklist:Lcom/android/org/conscrypt/CertBlocklist;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->blocklist:Lcom/android/org/conscrypt/CertBlocklist;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/org/conscrypt/CertBlocklist;->isPublicKeyBlockListed(Ljava/security/PublicKey;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_2a

    .line 726
    :cond_11
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate blocklisted by public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_2a
    :goto_2a
    return-void
.end method

.method private greylist-max-o checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;
    .registers 16
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
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "ocspData":[B
    const/4 v1, 0x0

    .line 402
    .local v1, "tlsSctData":[B
    const/4 v2, 0x0

    .line 403
    .local v2, "hostname":Ljava/lang/String;
    if-eqz p3, :cond_15

    .line 404
    invoke-interface {p3}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-static {p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getOcspDataFromSession(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v0

    .line 406
    invoke-direct {p0, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTlsSctDataFromSession(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v1

    move-object v5, v0

    move-object v6, v1

    move-object v8, v2

    goto :goto_18

    .line 403
    :cond_15
    move-object v5, v0

    move-object v6, v1

    move-object v8, v2

    .line 409
    .end local v0    # "ocspData":[B
    .end local v1    # "tlsSctData":[B
    .end local v2    # "hostname":Ljava/lang/String;
    .local v5, "ocspData":[B
    .local v6, "tlsSctData":[B
    .local v8, "hostname":Ljava/lang/String;
    :goto_18
    if-eqz p3, :cond_3b

    if-eqz p4, :cond_3b

    .line 410
    invoke-virtual {p4}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "identificationAlgorithm":Ljava/lang/String;
    const-string v1, "HTTPS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 412
    invoke-direct {p0}, Lcom/android/org/conscrypt/TrustManagerImpl;->getHttpsVerifier()Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

    move-result-object v1

    .line 413
    .local v1, "verifier":Lcom/android/org/conscrypt/ConscryptHostnameVerifier;
    invoke-interface {v1, p1, v8, p3}, Lcom/android/org/conscrypt/ConscryptHostnameVerifier;->verify([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_3b

    .line 414
    :cond_33
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "No subjectAltNames on the certificate match"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 418
    .end local v0    # "identificationAlgorithm":Ljava/lang/String;
    .end local v1    # "verifier":Lcom/android/org/conscrypt/ConscryptHostnameVerifier;
    :cond_3b
    :goto_3b
    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move v9, p5

    .end local p1    # "certs":[Ljava/security/cert/X509Certificate;
    .end local p2    # "authType":Ljava/lang/String;
    .end local p5    # "clientAuth":Z
    .local v4, "certs":[Ljava/security/cert/X509Certificate;
    .local v7, "authType":Ljava/lang/String;
    .local v9, "clientAuth":Z
    invoke-direct/range {v3 .. v9}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .registers 19
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "ocspData"    # [B
    .param p3, "tlsSctData"    # [B
    .param p4, "authType"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "clientAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "[B[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 477
    if-eqz p1, :cond_50

    array-length v0, p1

    if-eqz v0, :cond_50

    if-eqz p4, :cond_50

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    .line 480
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    if-nez v0, :cond_48

    .line 483
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v9, v0

    .line 484
    .local v9, "used":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v7, "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v8, "trustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 490
    .local v0, "leaf":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v10

    .line 491
    .local v10, "leafAsAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v10, :cond_35

    .line 492
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-virtual {v10}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 495
    :cond_35
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    :goto_38
    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 498
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v11

    return-object v11

    .line 481
    .end local v0    # "leaf":Ljava/security/cert/X509Certificate;
    .end local v7    # "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v8    # "trustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local v9    # "used":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .end local v10    # "leafAsAnchor":Ljava/security/cert/TrustAnchor;
    :cond_48
    new-instance v0, Ljava/security/cert/CertificateException;

    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    invoke-direct {v0, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 478
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "null or zero-length parameter"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .registers 24
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "ocspData"    # [B
    .param p3, "tlsSctData"    # [B
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "clientAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "[B[B",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 529
    .local p6, "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local p7, "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .local p8, "used":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v1, p1

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v9, p8

    const/4 v0, 0x0

    .line 531
    .local v0, "lastException":Ljava/security/cert/CertificateException;
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 532
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    move-object v10, v2

    .local v2, "current":Ljava/security/cert/X509Certificate;
    goto :goto_2e

    .line 534
    .end local v2    # "current":Ljava/security/cert/X509Certificate;
    :cond_1d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    move-object v10, v2

    .line 538
    .local v10, "current":Ljava/security/cert/X509Certificate;
    :goto_2e
    invoke-direct {p0, v10}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkBlocklist(Ljava/security/cert/X509Certificate;)V

    .line 541
    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 542
    move-object v2, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/org/conscrypt/TrustManagerImpl;->verifyChain(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z[B[B)Ljava/util/List;

    move-result-object v11

    return-object v11

    .line 551
    :cond_4d
    invoke-direct {p0, v10}, Lcom/android/org/conscrypt/TrustManagerImpl;->findAllTrustAnchorsByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v11

    .line 552
    .local v11, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/4 v3, 0x0

    .line 553
    .local v3, "seenIssuer":Z
    invoke-static {v11}, Lcom/android/org/conscrypt/TrustManagerImpl;->sortPotentialAnchors(Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v12, v0

    move v13, v3

    .end local v0    # "lastException":Ljava/security/cert/CertificateException;
    .end local v3    # "seenIssuer":Z
    .local v12, "lastException":Ljava/security/cert/CertificateException;
    .local v13, "seenIssuer":Z
    :goto_5c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/security/cert/TrustAnchor;

    .line 554
    .local v3, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 556
    .local v6, "anchorCert":Ljava/security/cert/X509Certificate;
    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 557
    goto :goto_5c

    .line 559
    :cond_74
    const/4 v13, 0x1

    .line 560
    invoke-interface {v9, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    :try_start_7b
    invoke-direct/range {p0 .. p8}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0
    :try_end_7f
    .catch Ljava/security/cert/CertificateException; {:try_start_7b .. :try_end_7f} :catch_80

    return-object v0

    .line 565
    :catch_80
    move-exception v0

    .line 566
    .local v0, "ex":Ljava/security/cert/CertificateException;
    move-object v12, v0

    .line 569
    .end local v0    # "ex":Ljava/security/cert/CertificateException;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 570
    invoke-interface {v9, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 571
    .end local v3    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v6    # "anchorCert":Ljava/security/cert/X509Certificate;
    goto :goto_5c

    .line 576
    :cond_8f
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_aa

    .line 577
    if-nez v13, :cond_a7

    .line 578
    move-object v2, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v3, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/org/conscrypt/TrustManagerImpl;->verifyChain(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z[B[B)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 583
    :cond_a7
    move-object/from16 v3, p6

    throw v12

    .line 588
    :cond_aa
    move-object/from16 v3, p6

    const/4 v0, 0x1

    move v4, v0

    .local v4, "i":I
    :goto_ae
    array-length v0, v1

    if-ge v4, v0, :cond_10b

    .line 589
    aget-object v5, v1, v4

    .line 591
    .local v5, "candidateIssuer":Ljava/security/cert/X509Certificate;
    invoke-interface {v9, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 592
    goto :goto_108

    .line 594
    :cond_ba
    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 598
    :try_start_c8
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 599
    invoke-static {v5}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->checkCert(Ljava/security/cert/X509Certificate;)V
    :try_end_ce
    .catch Ljava/security/cert/CertificateException; {:try_start_c8 .. :try_end_ce} :catch_ea

    .line 604
    nop

    .line 605
    invoke-interface {v9, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 606
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    :try_start_d5
    invoke-direct/range {p0 .. p8}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0
    :try_end_d9
    .catch Ljava/security/cert/CertificateException; {:try_start_d5 .. :try_end_d9} :catch_da

    return-object v0

    .line 610
    :catch_da
    move-exception v0

    .line 611
    .restart local v0    # "ex":Ljava/security/cert/CertificateException;
    nop

    .line 614
    .end local v12    # "lastException":Ljava/security/cert/CertificateException;
    .local v0, "lastException":Ljava/security/cert/CertificateException;
    invoke-interface {v9, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 615
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v12, v0

    goto :goto_108

    .line 600
    .end local v0    # "lastException":Ljava/security/cert/CertificateException;
    .restart local v12    # "lastException":Ljava/security/cert/CertificateException;
    :catch_ea
    move-exception v0

    .line 601
    .local v0, "ex":Ljava/security/cert/CertificateException;
    new-instance v6, Ljava/security/cert/CertificateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unacceptable certificate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 602
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 603
    .end local v12    # "lastException":Ljava/security/cert/CertificateException;
    .local v6, "lastException":Ljava/security/cert/CertificateException;
    move-object v12, v6

    .line 588
    .end local v0    # "ex":Ljava/security/cert/CertificateException;
    .end local v5    # "candidateIssuer":Ljava/security/cert/X509Certificate;
    .end local v6    # "lastException":Ljava/security/cert/CertificateException;
    .restart local v12    # "lastException":Ljava/security/cert/CertificateException;
    :cond_108
    :goto_108
    add-int/lit8 v4, v4, 0x1

    goto :goto_ae

    .line 620
    .end local v4    # "i":I
    :cond_10b
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->intermediateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    .line 621
    invoke-virtual {v0, v10}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v4

    .line 622
    .local v4, "intermediateAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-static {v4}, Lcom/android/org/conscrypt/TrustManagerImpl;->sortPotentialAnchors(Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_119
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/security/cert/TrustAnchor;

    .line 623
    .local v6, "intermediate":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v7

    .line 625
    .local v7, "intermediateCert":Ljava/security/cert/X509Certificate;
    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 626
    goto :goto_119

    .line 628
    :cond_131
    invoke-interface {v9, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 629
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    :try_start_137
    invoke-direct/range {p0 .. p8}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0
    :try_end_13b
    .catch Ljava/security/cert/CertificateException; {:try_start_137 .. :try_end_13b} :catch_13c

    return-object v0

    .line 633
    :catch_13c
    move-exception v0

    .line 634
    .restart local v0    # "ex":Ljava/security/cert/CertificateException;
    move-object v12, v0

    .line 637
    .end local v0    # "ex":Ljava/security/cert/CertificateException;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 638
    invoke-interface {v9, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 639
    .end local v6    # "intermediate":Ljava/security/cert/TrustAnchor;
    .end local v7    # "intermediateCert":Ljava/security/cert/X509Certificate;
    goto :goto_119

    .line 642
    :cond_14b
    if-eqz v12, :cond_14e

    .line 643
    throw v12

    .line 648
    :cond_14e
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    .line 649
    .local v0, "certPath":Ljava/security/cert/CertPath;
    new-instance v5, Ljava/security/cert/CertificateException;

    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const/4 v7, 0x0

    const/4 v8, -0x1

    const-string v14, "Trust anchor for certification path not found."

    invoke-direct {v6, v14, v7, v0, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private greylist-max-o findAllTrustAnchorsByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 8
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 913
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    .line 914
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    .line 915
    .local v0, "indexedAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/ConscryptCertStore;

    if-nez v1, :cond_11

    goto :goto_42

    .line 918
    :cond_11
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/ConscryptCertStore;

    invoke-interface {v1, p1}, Lcom/android/org/conscrypt/ConscryptCertStore;->findAllIssuers(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v1

    .line 919
    .local v1, "storeAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 920
    return-object v0

    .line 922
    :cond_1e
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 923
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 924
    .local v4, "storeCert":Ljava/security/cert/X509Certificate;
    iget-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v5, v4}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 925
    .end local v4    # "storeCert":Ljava/security/cert/X509Certificate;
    goto :goto_2b

    .line 926
    :cond_41
    return-object v2

    .line 916
    .end local v1    # "storeAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .end local v2    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :cond_42
    :goto_42
    return-object v0
.end method

.method private greylist-max-o findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .registers 6
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 935
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    .line 936
    .local v0, "trustAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v0, :cond_9

    .line 937
    return-object v0

    .line 939
    :cond_9
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/ConscryptCertStore;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 941
    return-object v2

    .line 946
    :cond_f
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/ConscryptCertStore;

    invoke-interface {v1, p1}, Lcom/android/org/conscrypt/ConscryptCertStore;->getTrustAnchor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 947
    .local v1, "systemCert":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_1d

    .line 954
    new-instance v3, Ljava/security/cert/TrustAnchor;

    invoke-direct {v3, v1, v2}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    return-object v3

    .line 956
    :cond_1d
    return-object v2
.end method

.method static declared-synchronized blacklist getDefaultHostnameVerifier()Lcom/android/org/conscrypt/ConscryptHostnameVerifier;
    .registers 2

    const-class v0, Lcom/android/org/conscrypt/TrustManagerImpl;

    monitor-enter v0

    .line 979
    :try_start_3
    sget-object v1, Lcom/android/org/conscrypt/TrustManagerImpl;->defaultHostnameVerifier:Lcom/android/org/conscrypt/ConscryptHostnameVerifier;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 979
    :catchall_7
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static greylist-max-o getHandshakeSessionOrThrow(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;
    .registers 4
    .param p0, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 270
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v0, :cond_7

    .line 273
    return-object v0

    .line 271
    :cond_7
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Not in handshake; no session available"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getHttpsVerifier()Lcom/android/org/conscrypt/ConscryptHostnameVerifier;
    .registers 2

    .line 1001
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->hostnameVerifier:Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

    if-eqz v0, :cond_7

    .line 1002
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->hostnameVerifier:Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

    return-object v0

    .line 1004
    :cond_7
    sget-object v0, Lcom/android/org/conscrypt/TrustManagerImpl;->defaultHostnameVerifier:Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

    if-eqz v0, :cond_e

    .line 1005
    sget-object v0, Lcom/android/org/conscrypt/TrustManagerImpl;->defaultHostnameVerifier:Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

    return-object v0

    .line 1007
    :cond_e
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getDefaultHostnameVerifier()Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getOcspDataFromSession(Ljavax/net/ssl/SSLSession;)[B
    .registers 6
    .param p0, "session"    # Ljavax/net/ssl/SSLSession;

    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, "ocspResponses":Ljava/util/List;, "Ljava/util/List<[B>;"
    instance-of v1, p0, Lcom/android/org/conscrypt/ConscryptSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 425
    move-object v1, p0

    check-cast v1, Lcom/android/org/conscrypt/ConscryptSession;

    .line 426
    .local v1, "opensslSession":Lcom/android/org/conscrypt/ConscryptSession;
    invoke-interface {v1}, Lcom/android/org/conscrypt/ConscryptSession;->getStatusResponses()Ljava/util/List;

    move-result-object v0

    .line 427
    .end local v1    # "opensslSession":Lcom/android/org/conscrypt/ConscryptSession;
    goto :goto_3a

    .line 430
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getStatusResponses"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 431
    .local v1, "m_getResponses":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 432
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 433
    .local v3, "rawResponses":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_2c

    .line 434
    move-object v4, v3

    check-cast v4, Ljava/util/List;
    :try_end_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_2b} :catch_38
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_2b} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_2b} :catch_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_2b} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_2b} :catch_2d

    move-object v0, v4

    .line 441
    .end local v3    # "rawResponses":Ljava/lang/Object;
    :cond_2c
    goto :goto_3a

    .line 439
    .end local v1    # "m_getResponses":Ljava/lang/reflect/Method;
    :catch_2d
    move-exception v1

    .line 440
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 436
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_38
    move-exception v1

    .line 441
    nop

    .line 444
    :goto_3a
    if-eqz v0, :cond_4a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_4a

    .line 448
    :cond_43
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    return-object v1

    .line 445
    :cond_4a
    :goto_4a
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o getTlsSctDataFromSession(Ljavax/net/ssl/SSLSession;)[B
    .registers 7
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;

    .line 452
    instance-of v0, p1, Lcom/android/org/conscrypt/ConscryptSession;

    if-eqz v0, :cond_c

    .line 453
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/ConscryptSession;

    .line 454
    .local v0, "opensslSession":Lcom/android/org/conscrypt/ConscryptSession;
    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerSignedCertificateTimestamp()[B

    move-result-object v1

    return-object v1

    .line 457
    .end local v0    # "opensslSession":Lcom/android/org/conscrypt/ConscryptSession;
    :cond_c
    const/4 v0, 0x0

    .line 459
    .local v0, "data":[B
    :try_start_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPeerSignedCertificateTimestamp"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 460
    .local v1, "m_getTlsSctData":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 461
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 462
    .local v2, "rawData":Ljava/lang/Object;
    instance-of v3, v2, [B

    if-eqz v3, :cond_39

    .line 463
    move-object v3, v2

    check-cast v3, [B
    :try_end_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_2b} :catch_38
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_2b} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_2b} :catch_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_2b} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_2b} :catch_2d

    move-object v0, v3

    .end local v0    # "data":[B
    .local v3, "data":[B
    goto :goto_39

    .line 468
    .end local v1    # "m_getTlsSctData":Ljava/lang/reflect/Method;
    .end local v2    # "rawData":Ljava/lang/Object;
    .end local v3    # "data":[B
    .restart local v0    # "data":[B
    :catch_2d
    move-exception v1

    .line 469
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 465
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_38
    move-exception v1

    .line 470
    :cond_39
    :goto_39
    nop

    .line 471
    return-object v0
.end method

.method private static blacklist revocationOptions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/cert/PKIXRevocationChecker$Option;",
            ">;"
        }
    .end annotation

    .line 801
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 802
    .local v0, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PKIXRevocationChecker$Option;>;"
    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 803
    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 804
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method static declared-synchronized blacklist setDefaultHostnameVerifier(Lcom/android/org/conscrypt/ConscryptHostnameVerifier;)V
    .registers 2
    .param p0, "verifier"    # Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

    const-class v0, Lcom/android/org/conscrypt/TrustManagerImpl;

    monitor-enter v0

    .line 970
    :try_start_3
    sput-object p0, Lcom/android/org/conscrypt/TrustManagerImpl;->defaultHostnameVerifier:Lcom/android/org/conscrypt/ConscryptHostnameVerifier;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 971
    monitor-exit v0

    return-void

    .line 969
    .end local p0    # "verifier":Lcom/android/org/conscrypt/ConscryptHostnameVerifier;
    :catchall_7
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p0
.end method

.method private greylist-max-o setOcspResponses(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;[B)V
    .registers 9
    .param p1, "params"    # Ljava/security/cert/PKIXParameters;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "ocspData"    # [B

    .line 734
    if-nez p3, :cond_3

    .line 735
    return-void

    .line 738
    :cond_3
    const/4 v0, 0x0

    .line 739
    .local v0, "revChecker":Ljava/security/cert/PKIXRevocationChecker;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 740
    .local v1, "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    .line 741
    .local v3, "checker":Ljava/security/cert/PKIXCertPathChecker;
    instance-of v4, v3, Ljava/security/cert/PKIXRevocationChecker;

    if-eqz v4, :cond_25

    .line 742
    move-object v0, v3

    check-cast v0, Ljava/security/cert/PKIXRevocationChecker;

    .line 743
    goto :goto_26

    .line 745
    .end local v3    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_25
    goto :goto_11

    .line 747
    :cond_26
    :goto_26
    if-nez v0, :cond_3d

    .line 751
    :try_start_28
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    invoke-virtual {v2}, Ljava/security/cert/CertPathValidator;->getRevocationChecker()Ljava/security/cert/CertPathChecker;

    move-result-object v2

    check-cast v2, Ljava/security/cert/PKIXRevocationChecker;
    :try_end_30
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_28 .. :try_end_30} :catch_3b

    move-object v0, v2

    .line 754
    nop

    .line 756
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    sget-object v2, Lcom/android/org/conscrypt/TrustManagerImpl;->REVOCATION_CHECK_OPTIONS:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXRevocationChecker;->setOptions(Ljava/util/Set;)V

    goto :goto_3d

    .line 752
    :catch_3b
    move-exception v2

    .line 753
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    return-void

    .line 767
    .end local v2    # "e":Ljava/lang/UnsupportedOperationException;
    :cond_3d
    :goto_3d
    invoke-static {p2, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXRevocationChecker;->setOcspResponses(Ljava/util/Map;)V

    .line 768
    invoke-virtual {p1, v1}, Ljava/security/cert/PKIXParameters;->setCertPathCheckers(Ljava/util/List;)V

    .line 769
    return-void
.end method

.method private static greylist-max-o sortPotentialAnchors(Ljava/util/Set;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 777
    .local p0, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8

    .line 778
    return-object p0

    .line 780
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 781
    .local v0, "sortedAnchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    sget-object v1, Lcom/android/org/conscrypt/TrustManagerImpl;->TRUST_ANCHOR_COMPARATOR:Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 782
    return-object v0
.end method

.method private static greylist-max-o trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 7
    .param p0, "certs"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 245
    .local v0, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_18

    aget-object v3, p0, v2

    .line 246
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    new-instance v4, Ljava/security/cert/TrustAnchor;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 248
    :cond_18
    return-object v0
.end method

.method private greylist-max-o verifyChain(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z[B[B)Ljava/util/List;
    .registers 15
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "clientAuth"    # Z
    .param p5, "ocspData"    # [B
    .param p6, "tlsSctData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/lang/String;",
            "Z[B[B)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 661
    .local p1, "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local p2, "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    const-string v0, "Chain validation failed"

    :try_start_2
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v1, p1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v1

    .line 664
    .local v1, "certPath":Ljava/security/cert/CertPath;
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_bb

    .line 669
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 670
    .local v2, "wholeChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/TrustAnchor;

    .line 671
    .local v5, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    nop

    .end local v5    # "anchor":Ljava/security/cert/TrustAnchor;
    goto :goto_18

    .line 674
    :cond_2d
    iget-object v4, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->pinManager:Lcom/android/org/conscrypt/CertPinManager;

    if-eqz v4, :cond_36

    .line 675
    iget-object v4, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->pinManager:Lcom/android/org/conscrypt/CertPinManager;

    invoke-interface {v4, p3, v2}, Lcom/android/org/conscrypt/CertPinManager;->checkChainPinning(Ljava/lang/String;Ljava/util/List;)V

    .line 678
    :cond_36
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 679
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkBlocklist(Ljava/security/cert/X509Certificate;)V

    .line 680
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    goto :goto_3a

    .line 683
    :cond_4a
    if-nez p4, :cond_5f

    if-eqz p3, :cond_5f

    iget-object v4, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->ct:Lcom/android/org/conscrypt/ct/CertificateTransparency;

    if-eqz v4, :cond_5f

    iget-object v4, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->ct:Lcom/android/org/conscrypt/ct/CertificateTransparency;

    invoke-virtual {v4, p3}, Lcom/android/org/conscrypt/ct/CertificateTransparency;->isCTVerificationRequired(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 684
    iget-object v4, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->ct:Lcom/android/org/conscrypt/ct/CertificateTransparency;

    invoke-virtual {v4, v2, p5, p6, p3}, Lcom/android/org/conscrypt/ct/CertificateTransparency;->checkCT(Ljava/util/List;[B[BLjava/lang/String;)V

    .line 687
    :cond_5f
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 689
    return-object v2

    .line 692
    :cond_66
    invoke-static {p1}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->check(Ljava/util/List;)V
    :try_end_69
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_69} :catch_c9

    .line 696
    :try_start_69
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 698
    .local v4, "anchorSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/4 v5, 0x0

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/TrustAnchor;

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 699
    new-instance v6, Ljava/security/cert/PKIXParameters;

    invoke-direct {v6, v4}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 700
    .local v6, "params":Ljava/security/cert/PKIXParameters;
    invoke-virtual {v6, v5}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 701
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 702
    .local v5, "endPointCert":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v6, v5, p5}, Lcom/android/org/conscrypt/TrustManagerImpl;->setOcspResponses(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;[B)V

    .line 703
    new-instance v7, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;

    invoke-direct {v7, p4, v5, v3}, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;-><init>(ZLjava/security/cert/X509Certificate;Lcom/android/org/conscrypt/TrustManagerImpl-IA;)V

    invoke-virtual {v6, v7}, Ljava/security/cert/PKIXParameters;->addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V

    .line 705
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    invoke-virtual {v3, v1, v6}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_96
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_69 .. :try_end_96} :catch_b4
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_69 .. :try_end_96} :catch_ad
    .catch Ljava/security/cert/CertificateException; {:try_start_69 .. :try_end_96} :catch_c9

    .line 710
    .end local v4    # "anchorSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .end local v5    # "endPointCert":Ljava/security/cert/X509Certificate;
    .end local v6    # "params":Ljava/security/cert/PKIXParameters;
    nop

    .line 714
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_98
    :try_start_98
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_ac

    .line 715
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->intermediateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v4}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    .line 714
    add-int/lit8 v0, v0, 0x1

    goto :goto_98

    .line 717
    .end local v0    # "i":I
    :cond_ac
    return-object v2

    .line 708
    :catch_ad
    move-exception v3

    .line 709
    .local v3, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Ljava/security/cert/CertificateException;

    invoke-direct {v4, v0, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/TrustManagerImpl;
    .end local p1    # "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local p2    # "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local p3    # "host":Ljava/lang/String;
    .end local p4    # "clientAuth":Z
    .end local p5    # "ocspData":[B
    .end local p6    # "tlsSctData":[B
    throw v4

    .line 706
    .end local v3    # "e":Ljava/security/cert/CertPathValidatorException;
    .restart local p0    # "this":Lcom/android/org/conscrypt/TrustManagerImpl;
    .restart local p1    # "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local p2    # "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .restart local p3    # "host":Ljava/lang/String;
    .restart local p4    # "clientAuth":Z
    .restart local p5    # "ocspData":[B
    .restart local p6    # "tlsSctData":[B
    :catch_b4
    move-exception v3

    .line 707
    .local v3, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v4, Ljava/security/cert/CertificateException;

    invoke-direct {v4, v0, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/TrustManagerImpl;
    .end local p1    # "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local p2    # "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local p3    # "host":Ljava/lang/String;
    .end local p4    # "clientAuth":Z
    .end local p5    # "ocspData":[B
    .end local p6    # "tlsSctData":[B
    throw v4

    .line 665
    .end local v2    # "wholeChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v3    # "e":Ljava/security/InvalidAlgorithmParameterException;
    .restart local p0    # "this":Lcom/android/org/conscrypt/TrustManagerImpl;
    .restart local p1    # "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local p2    # "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .restart local p3    # "host":Ljava/lang/String;
    .restart local p4    # "clientAuth":Z
    .restart local p5    # "ocspData":[B
    .restart local p6    # "tlsSctData":[B
    :cond_bb
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Trust anchor for certification path not found."

    const/4 v5, -0x1

    invoke-direct {v2, v4, v3, v1, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    invoke-direct {v0, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/TrustManagerImpl;
    .end local p1    # "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local p2    # "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local p3    # "host":Ljava/lang/String;
    .end local p4    # "clientAuth":Z
    .end local p5    # "ocspData":[B
    .end local p6    # "tlsSctData":[B
    throw v0
    :try_end_c9
    .catch Ljava/security/cert/CertificateException; {:try_start_98 .. :try_end_c9} :catch_c9

    .line 718
    .end local v1    # "certPath":Ljava/security/cert/CertPath;
    .restart local p0    # "this":Lcom/android/org/conscrypt/TrustManagerImpl;
    .restart local p1    # "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local p2    # "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .restart local p3    # "host":Ljava/lang/String;
    .restart local p4    # "clientAuth":Z
    .restart local p5    # "ocspData":[B
    .restart local p6    # "tlsSctData":[B
    :catch_c9
    move-exception v0

    .line 719
    .local v0, "e":Ljava/security/cert/CertificateException;
    sget-object v1, Lcom/android/org/conscrypt/TrustManagerImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejected candidate cert chain due to error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 720
    throw v0
.end method


# virtual methods
.method public greylist-max-o checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 11
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
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 263
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "chain":[Ljava/security/cert/X509Certificate;
    .end local p2    # "authType":Ljava/lang/String;
    .end local p3    # "hostname":Ljava/lang/String;
    .local v1, "chain":[Ljava/security/cert/X509Certificate;
    .local v4, "authType":Ljava/lang/String;
    .local v5, "hostname":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 9
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 255
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "chain":[Ljava/security/cert/X509Certificate;
    .end local p2    # "authType":Ljava/lang/String;
    .local v1, "chain":[Ljava/security/cert/X509Certificate;
    .local v2, "authType":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    .line 256
    return-void
.end method

.method public whitelist test-api checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .registers 13
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    const/4 v1, 0x0

    .line 282
    .local v1, "parameters":Ljavax/net/ssl/SSLParameters;
    instance-of v2, p3, Ljavax/net/ssl/SSLSocket;

    if-eqz v2, :cond_14

    .line 283
    move-object v2, p3

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    .line 284
    .local v2, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lcom/android/org/conscrypt/TrustManagerImpl;->getHandshakeSessionOrThrow(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 285
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    move-object v6, v0

    move-object v7, v1

    goto :goto_16

    .line 282
    .end local v2    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_14
    move-object v6, v0

    move-object v7, v1

    .line 287
    .end local v0    # "session":Ljavax/net/ssl/SSLSession;
    .end local v1    # "parameters":Ljavax/net/ssl/SSLParameters;
    .local v6, "session":Ljavax/net/ssl/SSLSession;
    .local v7, "parameters":Ljavax/net/ssl/SSLParameters;
    :goto_16
    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .end local p1    # "chain":[Ljava/security/cert/X509Certificate;
    .end local p2    # "authType":Ljava/lang/String;
    .local v4, "chain":[Ljava/security/cert/X509Certificate;
    .local v5, "authType":Ljava/lang/String;
    invoke-direct/range {v3 .. v8}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    .line 288
    return-void
.end method

.method public whitelist test-api checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .registers 10
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 294
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 295
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v3, :cond_12

    .line 298
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "chain":[Ljava/security/cert/X509Certificate;
    .end local p2    # "authType":Ljava/lang/String;
    .local v1, "chain":[Ljava/security/cert/X509Certificate;
    .local v2, "authType":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    .line 299
    return-void

    .line 296
    .end local v1    # "chain":[Ljava/security/cert/X509Certificate;
    .end local v2    # "authType":Ljava/lang/String;
    .restart local p1    # "chain":[Ljava/security/cert/X509Certificate;
    .restart local p2    # "authType":Ljava/lang/String;
    :cond_12
    move-object v1, p1

    move-object v2, p2

    .end local p1    # "chain":[Ljava/security/cert/X509Certificate;
    .end local p2    # "authType":Ljava/lang/String;
    .restart local v1    # "chain":[Ljava/security/cert/X509Certificate;
    .restart local v2    # "authType":Ljava/lang/String;
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Not in handshake; no session available"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist test-api checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 11
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
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 314
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "chain":[Ljava/security/cert/X509Certificate;
    .end local p2    # "authType":Ljava/lang/String;
    .end local p3    # "hostname":Ljava/lang/String;
    .local v1, "chain":[Ljava/security/cert/X509Certificate;
    .local v4, "authType":Ljava/lang/String;
    .local v5, "hostname":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Ljava/util/List;
    .registers 10
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
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 385
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "chain":[Ljava/security/cert/X509Certificate;
    .end local p2    # "authType":Ljava/lang/String;
    .end local p3    # "session":Ljavax/net/ssl/SSLSession;
    .local v1, "chain":[Ljava/security/cert/X509Certificate;
    .local v2, "authType":Ljava/lang/String;
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist test-api checkServerTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "ocspData"    # [B
    .param p3, "tlsSctData"    # [B
    .param p4, "authType"    # Ljava/lang/String;
    .param p5, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "[B[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 328
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "chain":[Ljava/security/cert/X509Certificate;
    .end local p2    # "ocspData":[B
    .end local p3    # "tlsSctData":[B
    .end local p4    # "authType":Ljava/lang/String;
    .end local p5    # "hostname":Ljava/lang/String;
    .local v1, "chain":[Ljava/security/cert/X509Certificate;
    .local v2, "ocspData":[B
    .local v3, "tlsSctData":[B
    .local v4, "authType":Ljava/lang/String;
    .local v5, "hostname":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 9
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 304
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "chain":[Ljava/security/cert/X509Certificate;
    .end local p2    # "authType":Ljava/lang/String;
    .local v1, "chain":[Ljava/security/cert/X509Certificate;
    .local v2, "authType":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    .line 305
    return-void
.end method

.method public whitelist test-api checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .registers 4
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 368
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/util/List;

    .line 369
    return-void
.end method

.method public whitelist test-api checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .registers 4
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 374
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/util/List;

    .line 375
    return-void
.end method

.method public whitelist test-api getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    .line 961
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    invoke-static {v0}, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    :goto_13
    return-object v0
.end method

.method blacklist getHostnameVerifier()Lcom/android/org/conscrypt/ConscryptHostnameVerifier;
    .registers 2

    .line 997
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->hostnameVerifier:Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

    return-object v0
.end method

.method public greylist-max-o test-api getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/util/List;
    .registers 13
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
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    const/4 v1, 0x0

    .line 341
    .local v1, "parameters":Ljavax/net/ssl/SSLParameters;
    instance-of v2, p3, Ljavax/net/ssl/SSLSocket;

    if-eqz v2, :cond_14

    .line 342
    move-object v2, p3

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    .line 343
    .local v2, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lcom/android/org/conscrypt/TrustManagerImpl;->getHandshakeSessionOrThrow(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 344
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    move-object v6, v0

    move-object v7, v1

    goto :goto_16

    .line 341
    .end local v2    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_14
    move-object v6, v0

    move-object v7, v1

    .line 346
    .end local v0    # "session":Ljavax/net/ssl/SSLSession;
    .end local v1    # "parameters":Ljavax/net/ssl/SSLParameters;
    .local v6, "session":Ljavax/net/ssl/SSLSession;
    .local v7, "parameters":Ljavax/net/ssl/SSLParameters;
    :goto_16
    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .end local p1    # "certs":[Ljava/security/cert/X509Certificate;
    .end local p2    # "authType":Ljava/lang/String;
    .local v4, "certs":[Ljava/security/cert/X509Certificate;
    .local v5, "authType":Ljava/lang/String;
    invoke-direct/range {v3 .. v8}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o test-api getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/util/List;
    .registers 10
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
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 357
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 358
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v3, :cond_13

    .line 361
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "certs":[Ljava/security/cert/X509Certificate;
    .end local p2    # "authType":Ljava/lang/String;
    .local v1, "certs":[Ljava/security/cert/X509Certificate;
    .local v2, "authType":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 359
    .end local v1    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v2    # "authType":Ljava/lang/String;
    .restart local p1    # "certs":[Ljava/security/cert/X509Certificate;
    .restart local p2    # "authType":Ljava/lang/String;
    :cond_13
    move-object v1, p1

    move-object v2, p2

    .end local p1    # "certs":[Ljava/security/cert/X509Certificate;
    .end local p2    # "authType":Ljava/lang/String;
    .restart local v1    # "certs":[Ljava/security/cert/X509Certificate;
    .restart local v2    # "authType":Ljava/lang/String;
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Not in handshake; no session available"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o test-api handleTrustStorageUpdate()V
    .registers 3

    .line 390
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_a

    .line 391
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->reset()V

    goto :goto_15

    .line 393
    :cond_a
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    iget-object v1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    invoke-static {v1}, Lcom/android/org/conscrypt/TrustManagerImpl;->trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->reset(Ljava/util/Set;)V

    .line 395
    :goto_15
    return-void
.end method

.method blacklist setHostnameVerifier(Lcom/android/org/conscrypt/ConscryptHostnameVerifier;)V
    .registers 2
    .param p1, "verifier"    # Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

    .line 988
    iput-object p1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->hostnameVerifier:Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

    .line 989
    return-void
.end method
