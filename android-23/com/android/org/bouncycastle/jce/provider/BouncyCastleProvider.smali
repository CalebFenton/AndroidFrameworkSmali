.class public final Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;
.super Ljava/security/Provider;
.source "BouncyCastleProvider.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;


# static fields
.field private static final ASYMMETRIC_CIPHERS:[Ljava/lang/String;

.field private static final ASYMMETRIC_GENERIC:[Ljava/lang/String;

.field private static final ASYMMETRIC_PACKAGE:Ljava/lang/String; = "com.android.org.bouncycastle.jcajce.provider.asymmetric."

.field public static final CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

.field private static final DIGESTS:[Ljava/lang/String;

.field private static final DIGEST_PACKAGE:Ljava/lang/String; = "com.android.org.bouncycastle.jcajce.provider.digest."

.field private static final KEYSTORES:[Ljava/lang/String;

.field private static final KEYSTORE_PACKAGE:Ljava/lang/String; = "com.android.org.bouncycastle.jcajce.provider.keystore."

.field public static final PROVIDER_NAME:Ljava/lang/String; = "BC"

.field private static final SYMMETRIC_CIPHERS:[Ljava/lang/String;

.field private static final SYMMETRIC_GENERIC:[Ljava/lang/String;

.field private static final SYMMETRIC_MACS:[Ljava/lang/String;

.field private static final SYMMETRIC_PACKAGE:Ljava/lang/String; = "com.android.org.bouncycastle.jcajce.provider.symmetric."

.field private static info:Ljava/lang/String;

.field private static final keyInfoConverters:Ljava/util/Map;


# direct methods
.method static synthetic -wrap0(Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->setup()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 47
    const-string/jumbo v0, "BouncyCastle Security Provider v1.52"

    #@8
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->info:Ljava/lang/String;

    #@a
    .line 51
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;

    #@c
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;-><init>()V

    #@f
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@11
    .line 53
    new-instance v0, Ljava/util/HashMap;

    #@13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@16
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    #@18
    .line 61
    new-array v0, v5, [Ljava/lang/String;

    #@1a
    .line 62
    const-string/jumbo v1, "PBEPBKDF2"

    #@1d
    aput-object v1, v0, v3

    #@1f
    const-string/jumbo v1, "PBEPKCS12"

    #@22
    aput-object v1, v0, v4

    #@24
    .line 60
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_GENERIC:[Ljava/lang/String;

    #@26
    .line 66
    new-array v0, v3, [Ljava/lang/String;

    #@28
    .line 65
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_MACS:[Ljava/lang/String;

    #@2a
    .line 73
    const/4 v0, 0x7

    #@2b
    new-array v0, v0, [Ljava/lang/String;

    #@2d
    .line 81
    const-string/jumbo v1, "AES"

    #@30
    aput-object v1, v0, v3

    #@32
    const-string/jumbo v1, "ARC4"

    #@35
    aput-object v1, v0, v4

    #@37
    const-string/jumbo v1, "Blowfish"

    #@3a
    aput-object v1, v0, v5

    #@3c
    const-string/jumbo v1, "DES"

    #@3f
    aput-object v1, v0, v6

    #@41
    const-string/jumbo v1, "DESede"

    #@44
    aput-object v1, v0, v7

    #@46
    const-string/jumbo v1, "RC2"

    #@49
    const/4 v2, 0x5

    #@4a
    aput-object v1, v0, v2

    #@4c
    const-string/jumbo v1, "Twofish"

    #@4f
    const/4 v2, 0x6

    #@50
    aput-object v1, v0, v2

    #@52
    .line 72
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_CIPHERS:[Ljava/lang/String;

    #@54
    .line 93
    new-array v0, v4, [Ljava/lang/String;

    #@56
    .line 98
    const-string/jumbo v1, "X509"

    #@59
    aput-object v1, v0, v3

    #@5b
    .line 92
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_GENERIC:[Ljava/lang/String;

    #@5d
    .line 103
    new-array v0, v7, [Ljava/lang/String;

    #@5f
    .line 108
    const-string/jumbo v1, "DSA"

    #@62
    aput-object v1, v0, v3

    #@64
    const-string/jumbo v1, "DH"

    #@67
    aput-object v1, v0, v4

    #@69
    const-string/jumbo v1, "EC"

    #@6c
    aput-object v1, v0, v5

    #@6e
    const-string/jumbo v1, "RSA"

    #@71
    aput-object v1, v0, v6

    #@73
    .line 102
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_CIPHERS:[Ljava/lang/String;

    #@75
    .line 117
    const/4 v0, 0x6

    #@76
    new-array v0, v0, [Ljava/lang/String;

    #@78
    .line 122
    const-string/jumbo v1, "MD5"

    #@7b
    aput-object v1, v0, v3

    #@7d
    const-string/jumbo v1, "SHA1"

    #@80
    aput-object v1, v0, v4

    #@82
    const-string/jumbo v1, "SHA224"

    #@85
    aput-object v1, v0, v5

    #@87
    const-string/jumbo v1, "SHA256"

    #@8a
    aput-object v1, v0, v6

    #@8c
    const-string/jumbo v1, "SHA384"

    #@8f
    aput-object v1, v0, v7

    #@91
    const-string/jumbo v1, "SHA512"

    #@94
    const/4 v2, 0x5

    #@95
    aput-object v1, v0, v2

    #@97
    .line 116
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->DIGESTS:[Ljava/lang/String;

    #@99
    .line 131
    new-array v0, v5, [Ljava/lang/String;

    #@9b
    .line 132
    const-string/jumbo v1, "BC"

    #@9e
    aput-object v1, v0, v3

    #@a0
    const-string/jumbo v1, "PKCS12"

    #@a3
    aput-object v1, v0, v4

    #@a5
    .line 130
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->KEYSTORES:[Ljava/lang/String;

    #@a7
    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 142
    const-string/jumbo v0, "BC"

    #@3
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->info:Ljava/lang/String;

    #@5
    const-wide v2, 0x3ff851eb851eb852L    # 1.52

    #@a
    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    #@d
    .line 144
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider$1;

    #@f
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider$1;-><init>(Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;)V

    #@12
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@15
    .line 140
    return-void
.end method

.method public static getPrivateKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 4
    .param p0, "privateKeyInfo"    # Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 300
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    #@3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    #@11
    .line 302
    .local v0, "converter":Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    if-nez v0, :cond_0

    #@13
    .line 304
    return-object v3

    #@14
    .line 307
    :cond_0
    invoke-interface {v0, p0}, Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;->generatePrivate(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    #@17
    move-result-object v1

    #@18
    return-object v1
.end method

.method public static getPublicKey(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "publicKeyInfo"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 287
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    #@3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    #@11
    .line 289
    .local v0, "converter":Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    if-nez v0, :cond_0

    #@13
    .line 291
    return-object v3

    #@14
    .line 294
    :cond_0
    invoke-interface {v0, p0}, Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;->generatePublic(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    #@17
    move-result-object v1

    #@18
    return-object v1
.end method

.method private loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 220
    const/4 v3, 0x0

    #@1
    .local v3, "i":I
    :goto_0
    array-length v5, p2

    #@2
    if-eq v3, v5, :cond_2

    #@4
    .line 222
    const/4 v0, 0x0

    #@5
    .line 225
    .local v0, "clazz":Ljava/lang/Class;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v5

    #@9
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@c
    move-result-object v4

    #@d
    .line 227
    .local v4, "loader":Ljava/lang/ClassLoader;
    if-eqz v4, :cond_1

    #@f
    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    aget-object v6, p2, v3

    #@1a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    const-string/jumbo v6, "$Mappings"

    #@21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@2c
    move-result-object v0

    #@2d
    .line 241
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v4    # "loader":Ljava/lang/ClassLoader;
    :goto_1
    if-eqz v0, :cond_0

    #@2f
    .line 245
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@32
    move-result-object v5

    #@33
    check-cast v5, Lcom/android/org/bouncycastle/jcajce/provider/util/AlgorithmProvider;

    #@35
    invoke-virtual {v5, p0}, Lcom/android/org/bouncycastle/jcajce/provider/util/AlgorithmProvider;->configure(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@38
    .line 220
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 233
    .restart local v0    # "clazz":Ljava/lang/Class;
    .restart local v4    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    aget-object v6, p2, v3

    #@46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    const-string/jumbo v6, "$Mappings"

    #@4d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v5

    #@55
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    #@58
    move-result-object v0

    #@59
    .local v0, "clazz":Ljava/lang/Class;
    goto :goto_1

    #@5a
    .line 248
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v4    # "loader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v2

    #@5b
    .line 249
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/InternalError;

    #@5d
    new-instance v6, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v7, "cannot create instance of "

    #@65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v6

    #@69
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v6

    #@6d
    .line 250
    aget-object v7, p2, v3

    #@6f
    .line 249
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v6

    #@73
    .line 250
    const-string/jumbo v7, "$Mappings : "

    #@76
    .line 249
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v6

    #@7a
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v6

    #@7e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v6

    #@82
    invoke-direct {v5, v6}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@85
    throw v5

    #@86
    .line 218
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    return-void

    #@87
    .line 237
    .local v0, "clazz":Ljava/lang/Class;
    :catch_1
    move-exception v1

    #@88
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_1
.end method

.method private setup()V
    .locals 2

    #@0
    .prologue
    .line 156
    const-string/jumbo v0, "com.android.org.bouncycastle.jcajce.provider.digest."

    #@3
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->DIGESTS:[Ljava/lang/String;

    #@5
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    #@8
    .line 158
    const-string/jumbo v0, "com.android.org.bouncycastle.jcajce.provider.symmetric."

    #@b
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_GENERIC:[Ljava/lang/String;

    #@d
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    #@10
    .line 160
    const-string/jumbo v0, "com.android.org.bouncycastle.jcajce.provider.symmetric."

    #@13
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_MACS:[Ljava/lang/String;

    #@15
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    #@18
    .line 162
    const-string/jumbo v0, "com.android.org.bouncycastle.jcajce.provider.symmetric."

    #@1b
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_CIPHERS:[Ljava/lang/String;

    #@1d
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    #@20
    .line 164
    const-string/jumbo v0, "com.android.org.bouncycastle.jcajce.provider.asymmetric."

    #@23
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_GENERIC:[Ljava/lang/String;

    #@25
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    #@28
    .line 166
    const-string/jumbo v0, "com.android.org.bouncycastle.jcajce.provider.asymmetric."

    #@2b
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_CIPHERS:[Ljava/lang/String;

    #@2d
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    #@30
    .line 168
    const-string/jumbo v0, "com.android.org.bouncycastle.jcajce.provider.keystore."

    #@33
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->KEYSTORES:[Ljava/lang/String;

    #@35
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    #@38
    .line 208
    const-string/jumbo v0, "CertPathValidator.PKIX"

    #@3b
    const-string/jumbo v1, "com.android.org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi"

    #@3e
    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    .line 209
    const-string/jumbo v0, "CertPathBuilder.PKIX"

    #@44
    const-string/jumbo v1, "com.android.org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi"

    #@47
    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    .line 210
    const-string/jumbo v0, "CertStore.Collection"

    #@4d
    const-string/jumbo v1, "com.android.org.bouncycastle.jce.provider.CertStoreCollectionSpi"

    #@50
    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    .line 154
    return-void
.end method


# virtual methods
.method public addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 273
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "duplicate provider key ("

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, ") found"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 276
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    .line 269
    return-void
.end method

.method public addKeyInfoConverter(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "keyInfoConverter"    # Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    #@0
    .prologue
    .line 281
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 279
    return-void
.end method

.method public hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "."

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_0

    #@1e
    new-instance v0, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v1, "Alg.Alias."

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    const-string/jumbo v1, "."

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

    #@40
    move-result v0

    #@41
    :goto_0
    return v0

    #@42
    :cond_0
    const/4 v0, 0x1

    #@43
    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 258
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@2
    monitor-enter v1

    #@3
    .line 260
    :try_start_0
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@5
    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;

    #@7
    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    .line 256
    return-void

    #@c
    .line 258
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method
