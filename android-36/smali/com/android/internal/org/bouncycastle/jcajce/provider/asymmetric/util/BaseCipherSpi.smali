.class public abstract Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;
.super Ljavax/crypto/CipherSpi;
.source "BaseCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;
    }
.end annotation


# instance fields
.field private blacklist availableSpecs:[Ljava/lang/Class;

.field protected blacklist engineParams:Ljava/security/AlgorithmParameters;

.field private final blacklist helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private blacklist iv:[B

.field private blacklist ivSize:I

.field protected blacklist wrapEngine:Lcom/android/internal/org/bouncycastle/crypto/Wrapper;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 4

    .line 64
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->availableSpecs:[Ljava/lang/Class;

    .line 54
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 58
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->wrapEngine:Lcom/android/internal/org/bouncycastle/crypto/Wrapper;

    .line 65
    return-void
.end method


# virtual methods
.method protected final blacklist createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .registers 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api engineGetBlockSize()I
    .registers 2

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist test-api engineGetIV()[B
    .registers 2

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api engineGetKeySize(Ljava/security/Key;)I
    .registers 3
    .param p1, "key"    # Ljava/security/Key;

    .line 80
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method protected whitelist test-api engineGetOutputSize(I)I
    .registers 3
    .param p1, "inputLen"    # I

    .line 86
    const/4 v0, -0x1

    return v0
.end method

.method protected whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api engineSetMode(Ljava/lang/String;)V
    .registers 5
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineSetPadding(Ljava/lang/String;)V
    .registers 5
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 111
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unknown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 10
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 150
    const-string v0, "Unknown key type "

    :try_start_2
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->wrapEngine:Lcom/android/internal/org/bouncycastle/crypto/Wrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 152
    array-length v1, p1

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->engineDoFinal([BII)[B

    move-result-object v1

    .local v1, "encoded":[B
    goto :goto_14

    .line 156
    .end local v1    # "encoded":[B
    :cond_d
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->wrapEngine:Lcom/android/internal/org/bouncycastle/crypto/Wrapper;

    array-length v3, p1

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/Wrapper;->unwrap([BII)[B

    move-result-object v1
    :try_end_14
    .catch Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_2 .. :try_end_14} :catch_104
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_14} :catch_fa
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_14} :catch_ef

    .line 176
    .restart local v1    # "encoded":[B
    :goto_14
    nop

    .line 178
    const/4 v2, 0x3

    if-ne p3, v2, :cond_1e

    .line 180
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, v1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 182
    :cond_1e
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_64

    if-ne p3, v3, :cond_64

    .line 190
    :try_start_29
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    .line 192
    .local v0, "in":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v2

    .line 194
    .local v2, "privKey":Ljava/security/PrivateKey;
    if-eqz v2, :cond_34

    .line 196
    return-object v2

    .line 200
    :cond_34
    new-instance v3, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "algorithm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .end local v1    # "encoded":[B
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;
    .end local p1    # "wrappedKey":[B
    .end local p2    # "wrappedKeyAlgorithm":Ljava/lang/String;
    .end local p3    # "wrappedKeyType":I
    throw v3
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_5b} :catch_5b

    .line 203
    .end local v0    # "in":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v2    # "privKey":Ljava/security/PrivateKey;
    .restart local v1    # "encoded":[B
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;
    .restart local p1    # "wrappedKey":[B
    .restart local p2    # "wrappedKeyAlgorithm":Ljava/lang/String;
    .restart local p3    # "wrappedKeyType":I
    :catch_5b
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Invalid key encoding."

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_64
    :try_start_64
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v2, p2}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 214
    .local v2, "kf":Ljava/security/KeyFactory;
    const/4 v4, 0x1

    if-ne p3, v4, :cond_77

    .line 216
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0

    .line 218
    :cond_77
    if-ne p3, v3, :cond_83

    .line 220
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0
    :try_end_82
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_64 .. :try_end_82} :catch_d3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_64 .. :try_end_82} :catch_b7
    .catch Ljava/security/NoSuchProviderException; {:try_start_64 .. :try_end_82} :catch_9b

    return-object v0

    .line 234
    .end local v2    # "kf":Ljava/security/KeyFactory;
    :cond_83
    nop

    .line 236
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    :catch_9b
    move-exception v2

    .line 233
    .local v2, "e":Ljava/security/NoSuchProviderException;
    new-instance v3, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 227
    .end local v2    # "e":Ljava/security/NoSuchProviderException;
    :catch_b7
    move-exception v2

    .line 229
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 223
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_d3
    move-exception v2

    .line 225
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 173
    .end local v1    # "encoded":[B
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_ef
    move-exception v0

    .line 175
    .local v0, "e2":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    .end local v0    # "e2":Ljavax/crypto/IllegalBlockSizeException;
    :catch_fa
    move-exception v0

    .line 165
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$1;

    const-string/jumbo v2, "unable to unwrap"

    invoke-direct {v1, p0, v2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$1;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;Ljava/lang/String;Ljavax/crypto/BadPaddingException;)V

    throw v1

    .line 159
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_104
    move-exception v0

    .line 161
    .local v0, "e":Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api engineWrap(Ljava/security/Key;)[B
    .registers 6
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 118
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 119
    .local v0, "encoded":[B
    if-eqz v0, :cond_24

    .line 126
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->wrapEngine:Lcom/android/internal/org/bouncycastle/crypto/Wrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 128
    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->engineDoFinal([BII)[B

    move-result-object v1

    return-object v1

    .line 132
    :cond_11
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->wrapEngine:Lcom/android/internal/org/bouncycastle/crypto/Wrapper;

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/Wrapper;->wrap([BII)[B

    move-result-object v1
    :try_end_18
    .catch Ljavax/crypto/BadPaddingException; {:try_start_6 .. :try_end_18} :catch_19

    return-object v1

    .line 135
    :catch_19
    move-exception v1

    .line 137
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :cond_24
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Cannot wrap key, null encoding."

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
