.class public final Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;
.super Ljava/security/Provider;
.source "BouncyCastleProvider.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;


# static fields
.field private static final blacklist ASYMMETRIC_CIPHERS:[Ljava/lang/String;

.field private static final blacklist ASYMMETRIC_GENERIC:[Ljava/lang/String;

.field public static final blacklist CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

.field private static final blacklist DIGESTS:[Ljava/lang/String;

.field private static final blacklist KEYSTORES:[Ljava/lang/String;

.field private static final blacklist LOG:Ljava/util/logging/Logger;

.field public static final blacklist PROVIDER_NAME:Ljava/lang/String; = "BC"

.field private static final blacklist SYMMETRIC_CIPHERS:[Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;

.field private static final blacklist SYMMETRIC_GENERIC:[Ljava/lang/String;

.field private static final blacklist SYMMETRIC_MACS:[Ljava/lang/String;

.field private static blacklist info:Ljava/lang/String;

.field private static final blacklist keyInfoConverters:Ljava/util/Map;

.field private static final blacklist revChkClass:Ljava/lang/Class;


# instance fields
.field private final blacklist privateProvider:Ljava/security/Provider;

.field private blacklist serviceMap:Ljava/util/Map;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetup(Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->setup()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 9

    .line 85
    const-class v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->LOG:Ljava/util/logging/Logger;

    .line 87
    const-string v0, "BouncyCastle Security Provider v1.77"

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->info:Ljava/lang/String;

    .line 91
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    .line 95
    const-class v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;

    const-string v1, "java.security.cert.PKIXRevocationChecker"

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->revChkClass:Ljava/lang/Class;

    .line 102
    const-string v0, "PBEPKCS12"

    const-string v1, "PBES2AlgorithmParameters"

    const-string v2, "PBEPBKDF2"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_GENERIC:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 109
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_MACS:[Ljava/lang/String;

    .line 130
    const-string v1, "AES"

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const-string v3, "ARC4"

    const/16 v4, 0x14

    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v3

    const-string v4, "Blowfish"

    const/16 v5, 0x80

    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v4

    const-string v6, "DES"

    const/16 v7, 0x38

    .line 131
    invoke-static {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v6

    const-string v7, "DESede"

    const/16 v8, 0x70

    invoke-static {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v7

    const-string v8, "RC2"

    invoke-static {v8, v5}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v5

    const-string v8, "Twofish"

    .line 132
    invoke-static {v8, v2}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v2

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;

    aput-object v1, v8, v0

    const/4 v0, 0x1

    aput-object v3, v8, v0

    const/4 v0, 0x2

    aput-object v4, v8, v0

    const/4 v0, 0x3

    aput-object v6, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v5, v8, v0

    const/4 v0, 0x6

    aput-object v2, v8, v0

    sput-object v8, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_CIPHERS:[Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;

    .line 142
    const-string v0, "X509"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_GENERIC:[Ljava/lang/String;

    .line 149
    const-string v0, "EC"

    const-string v1, "RSA"

    const-string v2, "DSA"

    const-string v3, "DH"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_CIPHERS:[Ljava/lang/String;

    .line 160
    const-string v5, "SHA384"

    const-string v6, "SHA512"

    const-string v1, "MD5"

    const-string v2, "SHA1"

    const-string v3, "SHA224"

    const-string v4, "SHA256"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->DIGESTS:[Ljava/lang/String;

    .line 173
    const-string v0, "BCFKS"

    const-string v1, "PKCS12"

    const-string v2, "BC"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->KEYSTORES:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 5

    const-wide v0, 0x3ffc51eb851eb852L    # 1.77

    .line 198
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->info:Ljava/lang/String;

    const-string v3, "BC"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 188
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->serviceMap:Ljava/util/Map;

    .line 643
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider$PrivateProvider;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider$PrivateProvider;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->privateProvider:Ljava/security/Provider;

    .line 200
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider$1;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider$1;-><init>(Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method public static blacklist getPrivateKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 607
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 610
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 609
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1d} :catch_25
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    move-exception p0

    .line 616
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getPublicKey(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 572
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    .line 575
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 574
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1d} :catch_25
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    move-exception p0

    .line 581
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_25
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist loadAlgorithms(Ljava/lang/String;[Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V
    .registers 8

    const/4 v0, 0x0

    .line 352
    :goto_1
    array-length v1, p2

    if-eq v0, v1, :cond_3b

    .line 354
    aget-object v1, p2, v0

    .line 357
    :try_start_6
    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 359
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadServiceClass(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Lcom/android/org/bouncycastle/crypto/CryptoServiceConstraintsException; {:try_start_6 .. :try_end_10} :catch_11

    goto :goto_38

    .line 363
    :catch_11
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ignored due to constraints"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_38
    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3b
    return-void
.end method

.method private blacklist loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 344
    :goto_1
    array-length v1, p2

    if-eq v0, v1, :cond_c

    .line 346
    aget-object v1, p2, v0

    invoke-direct {p0, p1, v1}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadServiceClass(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method

.method private blacklist loadServiceClass(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 373
    const-class v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$Mappings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 379
    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/util/AlgorithmProvider;

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/jcajce/provider/util/AlgorithmProvider;->configure(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p0

    .line 383
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot create instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$Mappings : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    return-void
.end method

.method private static blacklist service(Ljava/lang/String;I)Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;
    .registers 3

    .line 665
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;

    invoke-direct {v0, p0, p1}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private blacklist setup()V
    .registers 3

    .line 212
    const-string v0, "com.android.org.bouncycastle.jcajce.provider.digest."

    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->DIGESTS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_GENERIC:[Ljava/lang/String;

    const-string v1, "com.android.org.bouncycastle.jcajce.provider.symmetric."

    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_MACS:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_CIPHERS:[Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;

    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 220
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_GENERIC:[Ljava/lang/String;

    const-string v1, "com.android.org.bouncycastle.jcajce.provider.asymmetric."

    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_CIPHERS:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 224
    const-string v0, "com.android.org.bouncycastle.jcajce.provider.keystore."

    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->KEYSTORES:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 285
    const-string v0, "CertPathValidator.PKIX"

    const-string v1, "com.android.org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v0, "CertPathBuilder.PKIX"

    const-string v1, "com.android.org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v0, "CertStore.Collection"

    const-string v1, "com.android.org.bouncycastle.jce.provider.CertStoreCollectionSpi"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public blacklist addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .registers 6

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".OID."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6

    .line 523
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 524
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, p4}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    .line 525
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".OID."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public blacklist addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 501
    invoke-virtual {p0, p1}, Ljava/security/Provider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 506
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 503
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "duplicate provider key ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") found"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4

    .line 511
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0, p1, p3}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public blacklist addAttributes(Ljava/lang/String;Ljava/util/Map;)V
    .registers 7

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ImplementedIn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Software"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 547
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 549
    invoke-virtual {p0, v2}, Ljava/security/Provider;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 554
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 551
    :cond_4c
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "duplicate provider attribute key ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") found"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_68
    return-void
.end method

.method public blacklist addKeyInfoConverter(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V
    .registers 3

    .line 530
    sget-object p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    monitor-enter p0

    .line 532
    :try_start_3
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public blacklist addPrivateAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .registers 5

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->addPrivateAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist addPrivateAlgorithm(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 647
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->privateProvider:Ljava/security/Provider;

    invoke-virtual {v0, p1}, Ljava/security/Provider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 651
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->privateProvider:Ljava/security/Provider;

    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 649
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "duplicate provider key ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") found"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getKeyInfoConverter(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    .registers 2

    .line 538
    sget-object p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    return-object p0
.end method

.method public blacklist getPrivateProvider()Ljava/security/Provider;
    .registers 1

    .line 660
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->privateProvider:Ljava/security/Provider;

    return-object p0
.end method

.method public blacklist hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/Provider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alg.Alias."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/Provider;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    goto :goto_3a

    :cond_38
    const/4 p0, 0x0

    return p0

    :cond_3a
    :goto_3a
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 488
    sget-object p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    monitor-enter p0

    .line 490
    :try_start_3
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 491
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method
