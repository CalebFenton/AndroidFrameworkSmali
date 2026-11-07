.class public final Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;
.super Ljava/security/Provider;
.source "BouncyCastleProvider.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider$PrivateProvider;,
        Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;
    }
.end annotation


# static fields
.field private static final blacklist ASYMMETRIC_CIPHERS:[Ljava/lang/String;

.field private static final blacklist ASYMMETRIC_GENERIC:[Ljava/lang/String;

.field private static final blacklist ASYMMETRIC_PACKAGE:Ljava/lang/String; = "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric."

.field public static final blacklist CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

.field private static final blacklist DIGESTS:[Ljava/lang/String;

.field private static final blacklist DIGEST_PACKAGE:Ljava/lang/String; = "com.android.internal.org.bouncycastle.jcajce.provider.digest."

.field private static final blacklist KEYSTORES:[Ljava/lang/String;

.field private static final blacklist KEYSTORE_PACKAGE:Ljava/lang/String; = "com.android.internal.org.bouncycastle.jcajce.provider.keystore."

.field private static final blacklist LOG:Ljava/util/logging/Logger;

.field public static final blacklist PROVIDER_NAME:Ljava/lang/String; = "BC"

.field private static final blacklist SYMMETRIC_CIPHERS:[Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

.field private static final blacklist SYMMETRIC_GENERIC:[Ljava/lang/String;

.field private static final blacklist SYMMETRIC_MACS:[Ljava/lang/String;

.field private static final blacklist SYMMETRIC_PACKAGE:Ljava/lang/String; = "com.android.internal.org.bouncycastle.jcajce.provider.symmetric."

.field private static blacklist info:Ljava/lang/String;

.field private static final blacklist keyInfoConverters:Ljava/util/Map;

.field private static final blacklist revChkClass:Ljava/lang/Class;


# instance fields
.field private final blacklist privateProvider:Ljava/security/Provider;

.field private blacklist serviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetup(Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->setup()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 7

    .line 85
    const-class v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->LOG:Ljava/util/logging/Logger;

    .line 87
    const-string v1, "BouncyCastle Security Provider v1.77"

    sput-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->info:Ljava/lang/String;

    .line 91
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;-><init>()V

    sput-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    .line 95
    const-string v1, "java.security.cert.PKIXRevocationChecker"

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->revChkClass:Ljava/lang/Class;

    .line 102
    const-string v0, "PBEPKCS12"

    const-string v1, "PBES2AlgorithmParameters"

    const-string v2, "PBEPBKDF2"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_GENERIC:[Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_MACS:[Ljava/lang/String;

    .line 115
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    .line 130
    const-string v2, "AES"

    const/16 v3, 0x100

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "ARC4"

    const/16 v2, 0x14

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "Blowfish"

    const/16 v2, 0x80

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v1, v4

    .line 131
    const-string v0, "DES"

    const/16 v4, 0x38

    invoke-static {v0, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v1, v4

    const-string v0, "DESede"

    const/16 v4, 0x70

    invoke-static {v0, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    const/4 v4, 0x4

    aput-object v0, v1, v4

    const-string v0, "RC2"

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v1, v2

    .line 132
    const-string v0, "Twofish"

    invoke-static {v0, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    const/4 v2, 0x6

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_CIPHERS:[Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    .line 142
    const-string v0, "X509"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_GENERIC:[Ljava/lang/String;

    .line 149
    const-string v0, "EC"

    const-string v1, "RSA"

    const-string v2, "DSA"

    const-string v3, "DH"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_CIPHERS:[Ljava/lang/String;

    .line 160
    const-string v5, "SHA384"

    const-string v6, "SHA512"

    const-string v1, "MD5"

    const-string v2, "SHA1"

    const-string v3, "SHA224"

    const-string v4, "SHA256"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->DIGESTS:[Ljava/lang/String;

    .line 173
    const-string v0, "BCFKS"

    const-string v1, "PKCS12"

    const-string v2, "BC"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->KEYSTORES:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 5

    .line 197
    const-wide v0, 0x3ffc51eb851eb852L    # 1.77

    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->info:Ljava/lang/String;

    const-string v3, "BC"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 188
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->serviceMap:Ljava/util/Map;

    .line 642
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider$PrivateProvider;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider$PrivateProvider;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->privateProvider:Ljava/security/Provider;

    .line 199
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider$1;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider$1;-><init>(Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 207
    return-void
.end method

.method private static blacklist getAsymmetricKeyInfoConverter(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    .registers 3
    .param p0, "algorithm"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 559
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    monitor-enter v0

    .line 561
    :try_start_3
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    monitor-exit v0

    return-object v1

    .line 562
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static blacklist getPrivateKey(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .registers 4
    .param p0, "privateKeyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 605
    nop

    .line 607
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 606
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 609
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 608
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0
    :try_end_1e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1e} :catch_26
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1e} :catch_1f

    .line 605
    return-object v0

    .line 614
    :catch_1f
    move-exception v0

    .line 615
    .local v0, "ex":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 610
    .end local v0    # "ex":Ljava/security/spec/InvalidKeySpecException;
    :catch_26
    move-exception v0

    .line 613
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getPublicKey(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .registers 4
    .param p0, "publicKeyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
    nop

    .line 572
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 571
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    .line 574
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 573
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_1e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1e} :catch_26
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1e} :catch_1f

    .line 570
    return-object v0

    .line 579
    :catch_1f
    move-exception v0

    .line 580
    .local v0, "ex":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 575
    .end local v0    # "ex":Ljava/security/spec/InvalidKeySpecException;
    :catch_26
    move-exception v0

    .line 578
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist loadAlgorithms(Ljava/lang/String;[Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "services"    # [Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    .line 351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-eq v0, v1, :cond_42

    .line 353
    aget-object v1, p2, v0

    .line 356
    .local v1, "service":Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;
    :try_start_6
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 358
    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadServiceClass(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceConstraintsException; {:try_start_6 .. :try_end_10} :catch_11

    .line 366
    goto :goto_3f

    .line 360
    :catch_11
    move-exception v2

    .line 362
    .local v2, "e":Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceConstraintsException;
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 364
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->LOG:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;->getServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ignored due to constraints"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 351
    .end local v1    # "service":Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;
    .end local v2    # "e":Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceConstraintsException;
    :cond_3f
    :goto_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 368
    .end local v0    # "i":I
    :cond_42
    return-void
.end method

.method private blacklist loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;

    .line 343
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-eq v0, v1, :cond_c

    .line 345
    aget-object v1, p2, v0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadServiceClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 347
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method private blacklist loadServiceClass(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$Mappings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 374
    .local v0, "clazz":Ljava/lang/Class;
    if-eqz v0, :cond_51

    .line 378
    :try_start_1f
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AlgorithmProvider;

    invoke-virtual {v1, p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AlgorithmProvider;->configure(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_28} :catch_29

    .line 384
    goto :goto_51

    .line 380
    :catch_29
    move-exception v1

    .line 382
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/InternalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot create instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$Mappings : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 386
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_51
    :goto_51
    return-void
.end method

.method private static blacklist service(Ljava/lang/String;I)Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "bitsOfSecurity"    # I

    .line 664
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private blacklist setup()V
    .registers 3

    .line 211
    const-string v0, "com.android.internal.org.bouncycastle.jcajce.provider.digest."

    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->DIGESTS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_GENERIC:[Ljava/lang/String;

    const-string v1, "com.android.internal.org.bouncycastle.jcajce.provider.symmetric."

    invoke-direct {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 215
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_MACS:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_CIPHERS:[Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 219
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_GENERIC:[Ljava/lang/String;

    const-string v1, "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric."

    invoke-direct {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_CIPHERS:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 223
    const-string v0, "com.android.internal.org.bouncycastle.jcajce.provider.keystore."

    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->KEYSTORES:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 284
    const-string v0, "CertPathValidator.PKIX"

    const-string v1, "com.android.internal.org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v0, "CertPathBuilder.PKIX"

    const-string v1, "com.android.internal.org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v0, "CertStore.Collection"

    const-string v1, "com.android.internal.org.bouncycastle.jce.provider.CertStoreCollectionSpi"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    return-void
.end method


# virtual methods
.method public blacklist addAlgorithm(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "className"    # Ljava/lang/String;

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".OID."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method public blacklist addAlgorithm(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 522
    .local p4, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".OID."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    .line 525
    return-void
.end method

.method public blacklist addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 500
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 505
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    return-void

    .line 502
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate provider key ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 510
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    .line 512
    return-void
.end method

.method public blacklist addAttributes(Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 542
    .local p2, "attributeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ImplementedIn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Software"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 546
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 547
    .local v1, "attributeName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, "attributeKey":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 553
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .end local v1    # "attributeName":Ljava/lang/String;
    .end local v2    # "attributeKey":Ljava/lang/String;
    goto :goto_20

    .line 550
    .restart local v1    # "attributeName":Ljava/lang/String;
    .restart local v2    # "attributeKey":Ljava/lang/String;
    :cond_51
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicate provider attribute key ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 555
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "attributeName":Ljava/lang/String;
    .end local v2    # "attributeKey":Ljava/lang/String;
    :cond_70
    return-void
.end method

.method public blacklist addKeyInfoConverter(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V
    .registers 5
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "keyInfoConverter"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    .line 529
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    monitor-enter v0

    .line 531
    :try_start_3
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    monitor-exit v0

    .line 533
    return-void

    .line 532
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist addPrivateAlgorithm(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "className"    # Ljava/lang/String;

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->addPrivateAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    return-void
.end method

.method public blacklist addPrivateAlgorithm(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 646
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->privateProvider:Ljava/security/Provider;

    invoke-virtual {v0, p1}, Ljava/security/Provider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 650
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->privateProvider:Ljava/security/Provider;

    invoke-virtual {v0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    return-void

    .line 648
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate provider key ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getKeyInfoConverter(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    .registers 3
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 537
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    return-object v0
.end method

.method public blacklist getPrivateProvider()Ljava/security/Provider;
    .registers 2

    .line 659
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->privateProvider:Ljava/security/Provider;

    return-object v0
.end method

.method public blacklist hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alg.Alias."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 v0, 0x0

    goto :goto_42

    :cond_41
    :goto_41
    const/4 v0, 0x1

    :goto_42
    return v0
.end method

.method public blacklist setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/Object;

    .line 487
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    monitor-enter v0

    .line 489
    :try_start_3
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    check-cast v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 490
    monitor-exit v0

    .line 491
    return-void

    .line 490
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method
