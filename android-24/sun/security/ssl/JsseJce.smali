.class final Lsun/security/ssl/JsseJce;
.super Ljava/lang/Object;
.source "JsseJce.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/JsseJce$1;,
        Lsun/security/ssl/JsseJce$SunCertificates;
    }
.end annotation


# static fields
.field static final CIPHER_3DES:Ljava/lang/String; = "DESede/CBC/NoPadding"

.field static final CIPHER_AES:Ljava/lang/String; = "AES/CBC/NoPadding"

.field static final CIPHER_DES:Ljava/lang/String; = "DES/CBC/NoPadding"

.field static final CIPHER_RC4:Ljava/lang/String; = "RC4"

.field static final CIPHER_RSA_PKCS1:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field static final SIGNATURE_DSA:Ljava/lang/String; = "DSA"

.field static final SIGNATURE_ECDSA:Ljava/lang/String; = "SHA1withECDSA"

.field static final SIGNATURE_RAWDSA:Ljava/lang/String; = "RawDSA"

.field static final SIGNATURE_RAWECDSA:Ljava/lang/String; = "NONEwithECDSA"

.field static final SIGNATURE_RAWRSA:Ljava/lang/String; = "NONEwithRSA"

.field static final SIGNATURE_SSLRSA:Ljava/lang/String; = "MD5andSHA1withRSA"

.field private static final debug:Lsun/security/ssl/Debug;

.field private static ecAvailable:Ljava/lang/Boolean;

.field private static final fipsProviderList:Lsun/security/jca/ProviderList;

.field private static final kerberosAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 58
    const-string/jumbo v4, "ssl"

    #@4
    invoke-static {v4}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    #@7
    move-result-object v4

    #@8
    sput-object v4, Lsun/security/ssl/JsseJce;->debug:Lsun/security/ssl/Debug;

    #@a
    .line 74
    :try_start_0
    new-instance v4, Lsun/security/ssl/JsseJce$1;

    #@c
    invoke-direct {v4}, Lsun/security/ssl/JsseJce$1;-><init>()V

    #@f
    .line 73
    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 82
    const/4 v3, 0x1

    #@13
    .line 87
    .local v3, "temp":Z
    :goto_0
    sput-boolean v3, Lsun/security/ssl/JsseJce;->kerberosAvailable:Z

    #@15
    .line 95
    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z

    #@18
    move-result v4

    #@19
    if-nez v4, :cond_0

    #@1b
    .line 96
    sput-object v5, Lsun/security/ssl/JsseJce;->fipsProviderList:Lsun/security/jca/ProviderList;

    #@1d
    .line 56
    :goto_1
    return-void

    #@1e
    .line 84
    .end local v3    # "temp":Z
    :catch_0
    move-exception v0

    #@1f
    .line 85
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    #@20
    .restart local v3    # "temp":Z
    goto :goto_0

    #@21
    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v4, "SUN"

    #@24
    invoke-static {v4}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@27
    move-result-object v1

    #@28
    .line 103
    .local v1, "sun":Ljava/security/Provider;
    if-nez v1, :cond_1

    #@2a
    .line 104
    new-instance v4, Ljava/lang/RuntimeException;

    #@2c
    .line 105
    const-string/jumbo v5, "FIPS mode: SUN provider must be installed"

    #@2f
    .line 104
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@32
    throw v4

    #@33
    .line 107
    :cond_1
    new-instance v2, Lsun/security/ssl/JsseJce$SunCertificates;

    #@35
    invoke-direct {v2, v1}, Lsun/security/ssl/JsseJce$SunCertificates;-><init>(Ljava/security/Provider;)V

    #@38
    .line 108
    .local v2, "sunCerts":Ljava/security/Provider;
    const/4 v4, 0x2

    #@39
    new-array v4, v4, [Ljava/security/Provider;

    #@3b
    sget-object v5, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@3d
    const/4 v6, 0x0

    #@3e
    aput-object v5, v4, v6

    #@40
    const/4 v5, 0x1

    #@41
    aput-object v2, v4, v5

    #@43
    invoke-static {v4}, Lsun/security/jca/ProviderList;->newList([Ljava/security/Provider;)Lsun/security/jca/ProviderList;

    #@46
    move-result-object v4

    #@47
    sput-object v4, Lsun/security/ssl/JsseJce;->fipsProviderList:Lsun/security/jca/ProviderList;

    #@49
    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static beginFipsProvider()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 399
    sget-object v0, Lsun/security/ssl/JsseJce;->fipsProviderList:Lsun/security/jca/ProviderList;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 400
    return-object v1

    #@6
    .line 402
    :cond_0
    sget-object v0, Lsun/security/ssl/JsseJce;->fipsProviderList:Lsun/security/jca/ProviderList;

    #@8
    invoke-static {v0}, Lsun/security/jca/Providers;->beginThreadProviderList(Lsun/security/jca/ProviderList;)Lsun/security/jca/ProviderList;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method static declared-synchronized clearEcAvailable()V
    .locals 2

    #@0
    .prologue
    const-class v0, Lsun/security/ssl/JsseJce;

    #@2
    monitor-enter v0

    #@3
    .line 210
    const/4 v1, 0x0

    #@4
    :try_start_0
    sput-object v1, Lsun/security/ssl/JsseJce;->ecAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 209
    return-void

    #@8
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method static decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;
    .locals 1
    .param p0, "encoded"    # [B
    .param p1, "curve"    # Ljava/security/spec/EllipticCurve;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 389
    invoke-static {p0, p1}, Lsun/security/ec/ECParameters;->decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static encodePoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B
    .locals 1
    .param p0, "point"    # Ljava/security/spec/ECPoint;
    .param p1, "curve"    # Ljava/security/spec/EllipticCurve;

    #@0
    .prologue
    .line 393
    invoke-static {p0, p1}, Lsun/security/ec/ECParameters;->encodePoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static endFipsProvider(Ljava/lang/Object;)V
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 407
    sget-object v0, Lsun/security/ssl/JsseJce;->fipsProviderList:Lsun/security/jca/ProviderList;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 408
    check-cast p0, Lsun/security/jca/ProviderList;

    #@6
    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0}, Lsun/security/jca/Providers;->endThreadProviderList(Lsun/security/jca/ProviderList;)V

    #@9
    .line 406
    :cond_0
    return-void
.end method

.method static getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 2
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 223
    :try_start_0
    sget-object v1, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 224
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 226
    :cond_0
    sget-object v1, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@b
    invoke-static {p0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 228
    :catch_0
    move-exception v0

    #@11
    .line 229
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    #@13
    invoke-direct {v1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method

.method static getECParameterSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;
    .locals 1
    .param p0, "namedCurveOid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 380
    invoke-static {p0}, Lsun/security/ec/NamedCurve;->getECParameterSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 284
    sget-object v0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 285
    invoke-static {p0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 287
    :cond_0
    sget-object v0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@b
    invoke-static {p0, v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method static getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 302
    sget-object v0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 303
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 305
    :cond_0
    sget-object v0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@b
    invoke-static {p0, v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method static getKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 266
    sget-object v0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 267
    invoke-static {p0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 269
    :cond_0
    sget-object v0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@b
    invoke-static {p0, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method static getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 275
    sget-object v0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 276
    invoke-static {p0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 278
    :cond_0
    sget-object v0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@b
    invoke-static {p0, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method static getMD5()Ljava/security/MessageDigest;
    .locals 1

    #@0
    .prologue
    .line 334
    const-string/jumbo v0, "MD5"

    #@3
    invoke-static {v0}, Lsun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method static getMac(Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 293
    sget-object v0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 294
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 296
    :cond_0
    sget-object v0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@b
    invoke-static {p0, v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method static getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 343
    :try_start_0
    sget-object v1, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 344
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 346
    :cond_0
    sget-object v1, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@b
    invoke-static {p0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 348
    :catch_0
    move-exception v0

    #@11
    .line 349
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@13
    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Algorithm "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    const-string/jumbo v3, " not available"

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 349
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@31
    throw v1
.end method

.method static getNamedCurveOid(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;
    .locals 1
    .param p0, "params"    # Ljava/security/spec/ECParameterSpec;

    #@0
    .prologue
    .line 384
    invoke-static {p0}, Lsun/security/ec/ECParameters;->getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static getRSAKeyLength(Ljava/security/PublicKey;)I
    .locals 3
    .param p0, "key"    # Ljava/security/PublicKey;

    #@0
    .prologue
    .line 356
    instance-of v2, p0, Ljava/security/interfaces/RSAPublicKey;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 357
    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    #@6
    .end local p0    # "key":Ljava/security/PublicKey;
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@9
    move-result-object v0

    #@a
    .line 362
    .local v0, "modulus":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    #@d
    move-result v2

    #@e
    return v2

    #@f
    .line 359
    .end local v0    # "modulus":Ljava/math/BigInteger;
    .restart local p0    # "key":Ljava/security/PublicKey;
    :cond_0
    invoke-static {p0}, Lsun/security/ssl/JsseJce;->getRSAPublicKeySpec(Ljava/security/PublicKey;)Ljava/security/spec/RSAPublicKeySpec;

    #@12
    move-result-object v1

    #@13
    .line 360
    .local v1, "spec":Ljava/security/spec/RSAPublicKeySpec;
    invoke-virtual {v1}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    #@16
    move-result-object v0

    #@17
    .restart local v0    # "modulus":Ljava/math/BigInteger;
    goto :goto_0
.end method

.method static getRSAPublicKeySpec(Ljava/security/PublicKey;)Ljava/security/spec/RSAPublicKeySpec;
    .locals 6
    .param p0, "key"    # Ljava/security/PublicKey;

    #@0
    .prologue
    .line 366
    instance-of v3, p0, Ljava/security/interfaces/RSAPublicKey;

    #@2
    if-eqz v3, :cond_0

    #@4
    move-object v2, p0

    #@5
    .line 367
    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    #@7
    .line 368
    .local v2, "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    new-instance v3, Ljava/security/spec/RSAPublicKeySpec;

    #@9
    invoke-interface {v2}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@c
    move-result-object v4

    #@d
    .line 369
    invoke-interface {v2}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    #@10
    move-result-object v5

    #@11
    .line 368
    invoke-direct {v3, v4, v5}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@14
    return-object v3

    #@15
    .line 372
    .end local v2    # "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_0
    :try_start_0
    const-string/jumbo v3, "RSA"

    #@18
    invoke-static {v3}, Lsun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@1b
    move-result-object v1

    #@1c
    .line 373
    .local v1, "factory":Ljava/security/KeyFactory;
    const-class v3, Ljava/security/spec/RSAPublicKeySpec;

    #@1e
    invoke-virtual {v1, p0, v3}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Ljava/security/spec/RSAPublicKeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    return-object v3

    #@25
    .line 374
    .end local v1    # "factory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v0

    #@26
    .line 375
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    #@28
    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    #@2b
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@2e
    move-result-object v3

    #@2f
    check-cast v3, Ljava/lang/RuntimeException;

    #@31
    throw v3
.end method

.method static getSHA()Ljava/security/MessageDigest;
    .locals 1

    #@0
    .prologue
    .line 338
    const-string/jumbo v0, "SHA"

    #@3
    invoke-static {v0}, Lsun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method static getSecureRandom()Ljava/security/SecureRandom;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    .line 310
    sget-object v4, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 311
    new-instance v4, Ljava/security/SecureRandom;

    #@6
    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    #@9
    return-object v4

    #@a
    .line 316
    :cond_0
    :try_start_0
    const-string/jumbo v4, "PKCS11"

    #@d
    sget-object v5, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@f
    invoke-static {v4, v5}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v4

    #@13
    return-object v4

    #@14
    .line 317
    :catch_0
    move-exception v0

    #@15
    .line 320
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v4, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@17
    invoke-virtual {v4}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    #@1a
    move-result-object v4

    #@1b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v3

    #@1f
    .local v3, "s$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_2

    #@25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Ljava/security/Provider$Service;

    #@2b
    .line 321
    .local v2, "s":Ljava/security/Provider$Service;
    invoke-virtual {v2}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    const-string/jumbo v5, "SecureRandom"

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_1

    #@38
    .line 323
    :try_start_1
    invoke-virtual {v2}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    sget-object v5, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@3e
    invoke-static {v4, v5}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    #@41
    move-result-object v4

    #@42
    return-object v4

    #@43
    .line 329
    .end local v2    # "s":Ljava/security/Provider$Service;
    :cond_2
    new-instance v4, Ljava/security/KeyManagementException;

    #@45
    new-instance v5, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v6, "FIPS mode: no SecureRandom  implementation found in provider "

    #@4d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    .line 330
    sget-object v6, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@53
    invoke-virtual {v6}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@56
    move-result-object v6

    #@57
    .line 329
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v5

    #@5f
    invoke-direct {v4, v5}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    #@62
    throw v4

    #@63
    .line 324
    .restart local v2    # "s":Ljava/security/Provider$Service;
    :catch_1
    move-exception v1

    #@64
    .local v1, "ee":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0
.end method

.method static getSignature(Ljava/lang/String;)Ljava/security/Signature;
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 240
    sget-object v1, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 241
    invoke-static {p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 244
    :cond_0
    const-string/jumbo v1, "MD5andSHA1withRSA"

    #@c
    if-ne p0, v1, :cond_1

    #@e
    .line 249
    sget-object v1, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@10
    const-string/jumbo v2, "Signature"

    #@13
    invoke-virtual {v1, v2, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    #@16
    move-result-object v1

    #@17
    if-nez v1, :cond_1

    #@19
    .line 254
    :try_start_0
    const-string/jumbo v1, "SunJSSE"

    #@1c
    invoke-static {p0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result-object v1

    #@20
    return-object v1

    #@21
    .line 255
    :catch_0
    move-exception v0

    #@22
    .line 256
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    #@24
    invoke-direct {v1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    #@27
    throw v1

    #@28
    .line 260
    .end local v0    # "e":Ljava/security/NoSuchProviderException;
    :cond_1
    sget-object v1, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@2a
    invoke-static {p0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    #@2d
    move-result-object v1

    #@2e
    return-object v1
.end method

.method static declared-synchronized isEcAvailable()Z
    .locals 3

    #@0
    .prologue
    const-class v2, Lsun/security/ssl/JsseJce;

    #@2
    monitor-enter v2

    #@3
    .line 194
    :try_start_0
    sget-object v1, Lsun/security/ssl/JsseJce;->ecAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v1, :cond_0

    #@7
    .line 196
    :try_start_1
    const-string/jumbo v1, "SHA1withECDSA"

    #@a
    invoke-static {v1}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    #@d
    .line 197
    const-string/jumbo v1, "NONEwithECDSA"

    #@10
    invoke-static {v1}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    #@13
    .line 198
    const-string/jumbo v1, "ECDH"

    #@16
    invoke-static {v1}, Lsun/security/ssl/JsseJce;->getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    #@19
    .line 199
    const-string/jumbo v1, "EC"

    #@1c
    invoke-static {v1}, Lsun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@1f
    .line 200
    const-string/jumbo v1, "EC"

    #@22
    invoke-static {v1}, Lsun/security/ssl/JsseJce;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    #@25
    .line 201
    const/4 v1, 0x1

    #@26
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@29
    move-result-object v1

    #@2a
    sput-object v1, Lsun/security/ssl/JsseJce;->ecAvailable:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    .line 206
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Lsun/security/ssl/JsseJce;->ecAvailable:Ljava/lang/Boolean;

    #@2e
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@31
    move-result v1

    #@32
    monitor-exit v2

    #@33
    return v1

    #@34
    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    #@35
    .line 203
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    #@36
    :try_start_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@39
    move-result-object v1

    #@3a
    sput-object v1, Lsun/security/ssl/JsseJce;->ecAvailable:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    :catchall_0
    move-exception v1

    #@3e
    monitor-exit v2

    #@3f
    throw v1
.end method

.method static isKerberosAvailable()Z
    .locals 1

    #@0
    .prologue
    .line 214
    sget-boolean v0, Lsun/security/ssl/JsseJce;->kerberosAvailable:Z

    #@2
    return v0
.end method
