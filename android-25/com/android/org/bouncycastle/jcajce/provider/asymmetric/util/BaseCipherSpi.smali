.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;
.super Ljavax/crypto/CipherSpi;
.source "BaseCipherSpi.java"


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field protected engineParams:Ljava/security/AlgorithmParameters;

.field private final helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private iv:[B

.field private ivSize:I

.field protected wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;


# direct methods
.method protected constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 59
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    #@4
    .line 41
    const/4 v0, 0x2

    #@5
    new-array v0, v0, [Ljava/lang/Class;

    #@7
    .line 42
    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    .line 43
    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    .line 40
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->availableSpecs:[Ljava/lang/Class;

    #@13
    .line 50
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    #@15
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@1a
    .line 52
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    #@1c
    .line 54
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    #@1e
    .line 59
    return-void
.end method


# virtual methods
.method protected final createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@2
    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 65
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    #@0
    .prologue
    .line 70
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .param p1, "key"    # Ljava/security/Key;

    #@0
    .prologue
    .line 76
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    return v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 1
    .param p1, "inputLen"    # I

    #@0
    .prologue
    .line 82
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    #@0
    .prologue
    .line 87
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "can\'t support mode "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 3
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Padding "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, " unknown."

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 15
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    :try_start_0
    iget-object v12, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    #@2
    if-nez v12, :cond_0

    #@4
    .line 148
    move-object/from16 v0, p1

    #@6
    array-length v12, v0

    #@7
    const/4 v13, 0x0

    #@8
    move-object/from16 v0, p1

    #@a
    invoke-virtual {p0, v0, v13, v12}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->engineDoFinal([BII)[B
    :try_end_0
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v8

    #@e
    .line 168
    .local v8, "encoded":[B
    :goto_0
    const/4 v12, 0x3

    #@f
    move/from16 v0, p3

    #@11
    if-ne v0, v12, :cond_1

    #@13
    .line 170
    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-direct {v12, v8, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@1a
    return-object v12

    #@1b
    .line 152
    .end local v8    # "encoded":[B
    :cond_0
    :try_start_1
    iget-object v12, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    #@1d
    move-object/from16 v0, p1

    #@1f
    array-length v13, v0

    #@20
    const/4 v14, 0x0

    #@21
    move-object/from16 v0, p1

    #@23
    invoke-interface {v12, v0, v14, v13}, Lcom/android/org/bouncycastle/crypto/Wrapper;->unwrap([BII)[B
    :try_end_1
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0

    #@26
    move-result-object v8

    #@27
    .restart local v8    # "encoded":[B
    goto :goto_0

    #@28
    .line 164
    .end local v8    # "encoded":[B
    :catch_0
    move-exception v7

    #@29
    .line 165
    .local v7, "e2":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v12, Ljava/security/InvalidKeyException;

    #@2b
    invoke-virtual {v7}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    #@2e
    move-result-object v13

    #@2f
    invoke-direct {v12, v13}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@32
    throw v12

    #@33
    .line 160
    .end local v7    # "e2":Ljavax/crypto/IllegalBlockSizeException;
    :catch_1
    move-exception v6

    #@34
    .line 161
    .local v6, "e":Ljavax/crypto/BadPaddingException;
    new-instance v12, Ljava/security/InvalidKeyException;

    #@36
    invoke-virtual {v6}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    #@39
    move-result-object v13

    #@3a
    invoke-direct {v12, v13}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v12

    #@3e
    .line 156
    .end local v6    # "e":Ljavax/crypto/BadPaddingException;
    :catch_2
    move-exception v1

    #@3f
    .line 157
    .local v1, "e":Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v12, Ljava/security/InvalidKeyException;

    #@41
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    #@44
    move-result-object v13

    #@45
    invoke-direct {v12, v13}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@48
    throw v12

    #@49
    .line 172
    .end local v1    # "e":Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
    .restart local v8    # "encoded":[B
    :cond_1
    const-string/jumbo v12, ""

    #@4c
    move-object/from16 v0, p2

    #@4e
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v12

    #@52
    if-eqz v12, :cond_3

    #@54
    const/4 v12, 0x2

    #@55
    move/from16 v0, p3

    #@57
    if-ne v0, v12, :cond_3

    #@59
    .line 180
    :try_start_2
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@5c
    move-result-object v9

    #@5d
    .line 182
    .local v9, "in":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-static {v9}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    #@60
    move-result-object v11

    #@61
    .line 184
    .local v11, "privKey":Ljava/security/PrivateKey;
    if-eqz v11, :cond_2

    #@63
    .line 186
    return-object v11

    #@64
    .line 190
    :cond_2
    new-instance v12, Ljava/security/InvalidKeyException;

    #@66
    new-instance v13, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v14, "algorithm "

    #@6e
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v13

    #@72
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@75
    move-result-object v14

    #@76
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@79
    move-result-object v14

    #@7a
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v13

    #@7e
    const-string/jumbo v14, " not supported"

    #@81
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v13

    #@85
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v13

    #@89
    invoke-direct {v12, v13}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    #@8d
    .line 194
    .end local v9    # "in":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v11    # "privKey":Ljava/security/PrivateKey;
    :catch_3
    move-exception v2

    #@8e
    .line 195
    .local v2, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/security/InvalidKeyException;

    #@90
    const-string/jumbo v13, "Invalid key encoding."

    #@93
    invoke-direct {v12, v13}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@96
    throw v12

    #@97
    .line 202
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_3
    iget-object v12, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@99
    move-object/from16 v0, p2

    #@9b
    invoke-interface {v12, v0}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@9e
    move-result-object v10

    #@9f
    .line 204
    .local v10, "kf":Ljava/security/KeyFactory;
    const/4 v12, 0x1

    #@a0
    move/from16 v0, p3

    #@a2
    if-ne v0, v12, :cond_4

    #@a4
    .line 206
    new-instance v12, Ljava/security/spec/X509EncodedKeySpec;

    #@a6
    invoke-direct {v12, v8}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@a9
    invoke-virtual {v10, v12}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    #@ac
    move-result-object v12

    #@ad
    return-object v12

    #@ae
    .line 208
    :cond_4
    const/4 v12, 0x2

    #@af
    move/from16 v0, p3

    #@b1
    if-ne v0, v12, :cond_5

    #@b3
    .line 210
    new-instance v12, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@b5
    invoke-direct {v12, v8}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@b8
    invoke-virtual {v10, v12}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_4

    #@bb
    move-result-object v12

    #@bc
    return-object v12

    #@bd
    .line 222
    .end local v10    # "kf":Ljava/security/KeyFactory;
    :catch_4
    move-exception v4

    #@be
    .line 223
    .local v4, "e":Ljava/security/NoSuchProviderException;
    new-instance v12, Ljava/security/InvalidKeyException;

    #@c0
    new-instance v13, Ljava/lang/StringBuilder;

    #@c2
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@c5
    const-string/jumbo v14, "Unknown key type "

    #@c8
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v13

    #@cc
    invoke-virtual {v4}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    #@cf
    move-result-object v14

    #@d0
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v13

    #@d4
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v13

    #@d8
    invoke-direct {v12, v13}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@db
    throw v12

    #@dc
    .line 218
    .end local v4    # "e":Ljava/security/NoSuchProviderException;
    :catch_5
    move-exception v5

    #@dd
    .line 219
    .local v5, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v12, Ljava/security/InvalidKeyException;

    #@df
    new-instance v13, Ljava/lang/StringBuilder;

    #@e1
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@e4
    const-string/jumbo v14, "Unknown key type "

    #@e7
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v13

    #@eb
    invoke-virtual {v5}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    #@ee
    move-result-object v14

    #@ef
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v13

    #@f3
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v13

    #@f7
    invoke-direct {v12, v13}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@fa
    throw v12

    #@fb
    .line 214
    .end local v5    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_6
    move-exception v3

    #@fc
    .line 215
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v12, Ljava/security/InvalidKeyException;

    #@fe
    new-instance v13, Ljava/lang/StringBuilder;

    #@100
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@103
    const-string/jumbo v14, "Unknown key type "

    #@106
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v13

    #@10a
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    #@10d
    move-result-object v14

    #@10e
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v13

    #@112
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@115
    move-result-object v13

    #@116
    invoke-direct {v12, v13}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@119
    throw v12

    #@11a
    .line 226
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v10    # "kf":Ljava/security/KeyFactory;
    :cond_5
    new-instance v12, Ljava/security/InvalidKeyException;

    #@11c
    new-instance v13, Ljava/lang/StringBuilder;

    #@11e
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@121
    const-string/jumbo v14, "Unknown key type "

    #@124
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v13

    #@128
    move/from16 v0, p3

    #@12a
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v13

    #@12e
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@131
    move-result-object v13

    #@132
    invoke-direct {v12, v13}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@135
    throw v12
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@3
    move-result-object v1

    #@4
    .line 115
    .local v1, "encoded":[B
    if-nez v1, :cond_0

    #@6
    .line 117
    new-instance v2, Ljava/security/InvalidKeyException;

    #@8
    const-string/jumbo v3, "Cannot wrap key, null encoding."

    #@b
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 122
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    #@11
    if-nez v2, :cond_1

    #@13
    .line 124
    array-length v2, v1

    #@14
    const/4 v3, 0x0

    #@15
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->engineDoFinal([BII)[B

    #@18
    move-result-object v2

    #@19
    return-object v2

    #@1a
    .line 128
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    #@1c
    array-length v3, v1

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v2, v1, v4, v3}, Lcom/android/org/bouncycastle/crypto/Wrapper;->wrap([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result-object v2

    #@22
    return-object v2

    #@23
    .line 132
    :catch_0
    move-exception v0

    #@24
    .line 133
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    #@26
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-direct {v2, v3}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2
.end method
