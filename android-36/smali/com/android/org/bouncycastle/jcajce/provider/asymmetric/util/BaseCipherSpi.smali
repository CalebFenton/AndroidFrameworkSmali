.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;
.super Ljavax/crypto/CipherSpi;
.source "BaseCipherSpi.java"


# instance fields
.field private blacklist availableSpecs:[Ljava/lang/Class;

.field protected blacklist engineParams:Ljava/security/AlgorithmParameters;

.field private final blacklist helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

.field protected blacklist wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 4

    .line 64
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    const/4 v0, 0x2

    .line 45
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->availableSpecs:[Ljava/lang/Class;

    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 58
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetIV()[B
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected whitelist test-api engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 8

    .line 150
    const-string v0, "Unknown key type "

    :try_start_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 152
    array-length v1, p1

    invoke-virtual {p0, p1, v2, v1}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object p1

    goto :goto_15

    :catch_d
    move-exception p1

    goto/16 :goto_f0

    .line 156
    :cond_10
    array-length v3, p1

    invoke-interface {v1, p1, v2, v3}, Lcom/android/org/bouncycastle/crypto/Wrapper;->unwrap([BII)[B

    move-result-object p1
    :try_end_15
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_2 .. :try_end_15} :catch_f8
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_15} :catch_d
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_15} :catch_e5

    :goto_15
    const/4 v1, 0x3

    if-ne p3, v1, :cond_1e

    .line 180
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p0

    .line 182
    :cond_1e
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_60

    if-ne p3, v2, :cond_60

    .line 190
    :try_start_29
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p0

    .line 192
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object p1

    if-eqz p1, :cond_34

    return-object p1

    .line 200
    :cond_34
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "algorithm "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not supported"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_58} :catch_58

    .line 205
    :catch_58
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Invalid key encoding."

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 212
    :cond_60
    :try_start_60
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {p0, p2}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    const/4 p2, 0x1

    if-ne p3, p2, :cond_79

    .line 216
    new-instance p2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {p2, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, p2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :catch_73
    move-exception p0

    goto :goto_9a

    :catch_75
    move-exception p0

    goto :goto_b3

    :catch_77
    move-exception p0

    goto :goto_cc

    :cond_79
    if-ne p3, v2, :cond_85

    .line 220
    new-instance p2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {p2, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, p2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_84
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_60 .. :try_end_84} :catch_77
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_60 .. :try_end_84} :catch_75
    .catch Ljava/security/NoSuchProviderException; {:try_start_60 .. :try_end_84} :catch_73

    return-object p0

    .line 236
    :cond_85
    new-instance p0, Ljava/security/InvalidKeyException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 233
    :goto_9a
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 229
    :goto_b3
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :goto_cc
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_e5
    move-exception p0

    .line 175
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-virtual {p0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :goto_f0
    new-instance p2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$1;

    const-string p3, "unable to unwrap"

    invoke-direct {p2, p0, p3, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$1;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;Ljava/lang/String;Ljavax/crypto/BadPaddingException;)V

    throw p2

    :catch_f8
    move-exception p0

    .line 161
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist test-api engineWrap(Ljava/security/Key;)[B
    .registers 4

    .line 118
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    if-eqz p1, :cond_22

    .line 126
    :try_start_6
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 128
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object p0

    return-object p0

    .line 132
    :cond_11
    array-length p0, p1

    invoke-interface {v0, p1, v1, p0}, Lcom/android/org/bouncycastle/crypto/Wrapper;->wrap([BII)[B

    move-result-object p0
    :try_end_16
    .catch Ljavax/crypto/BadPaddingException; {:try_start_6 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    .line 137
    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_22
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Cannot wrap key, null encoding."

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
