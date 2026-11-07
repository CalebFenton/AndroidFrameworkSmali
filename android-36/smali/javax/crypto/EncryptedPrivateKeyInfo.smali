.class public Ljavax/crypto/EncryptedPrivateKeyInfo;
.super Ljava/lang/Object;
.source "EncryptedPrivateKeyInfo.java"


# instance fields
.field private greylist-max-o algid:Lsun/security/x509/AlgorithmId;

.field private greylist-max-o encoded:[B

.field private greylist-max-o encryptedData:[B


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;[B)V
    .registers 5
    .param p1, "algName"    # Ljava/lang/String;
    .param p2, "encryptedData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 134
    if-eqz p1, :cond_2e

    .line 137
    invoke-static {p1}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    move-result-object v1

    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    .line 139
    if-eqz p2, :cond_26

    .line 142
    array-length v1, p2

    if-eqz v1, :cond_1e

    .line 146
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    .line 150
    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 151
    return-void

    .line 143
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the encryptedData parameter must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the encryptedData parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_2e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the algName parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/security/AlgorithmParameters;[B)V
    .registers 5
    .param p1, "algParams"    # Ljava/security/AlgorithmParameters;
    .param p2, "encryptedData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 175
    if-eqz p1, :cond_2e

    .line 178
    invoke-static {p1}, Lsun/security/x509/AlgorithmId;->get(Ljava/security/AlgorithmParameters;)Lsun/security/x509/AlgorithmId;

    move-result-object v1

    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    .line 180
    if-eqz p2, :cond_26

    .line 182
    array-length v1, p2

    if-eqz v1, :cond_1e

    .line 186
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    .line 191
    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 192
    return-void

    .line 183
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the encryptedData parameter must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encryptedData must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_2e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "algParams must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>([B)V
    .registers 7
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 79
    if-eqz p1, :cond_88

    .line 83
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 84
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 86
    .local v0, "val":Lsun/security/util/DerValue;
    const/4 v1, 0x2

    new-array v1, v1, [Lsun/security/util/DerValue;

    .line 88
    .local v1, "seq":[Lsun/security/util/DerValue;
    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 89
    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 91
    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_69

    .line 95
    aget-object v2, v1, v3

    invoke-static {v2}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v2

    iput-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    .line 96
    aget-object v2, v1, v3

    iget-object v2, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_61

    .line 100
    aget-object v2, v1, v4

    invoke-virtual {v2}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v2

    iput-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    .line 101
    aget-object v2, v1, v4

    iget-object v2, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_59

    .line 104
    return-void

    .line 102
    :cond_59
    new-instance v2, Ljava/io/IOException;

    const-string v3, "encryptedData field overrun"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_61
    new-instance v2, Ljava/io/IOException;

    const-string v3, "encryptionAlgorithm field overrun"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_69
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "overrun, bytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->available()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    .end local v0    # "val":Lsun/security/util/DerValue;
    .end local v1    # "seq":[Lsun/security/util/DerValue;
    :cond_88
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the encoded parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkPKCS8Encoding([B)V
    .registers 7
    .param p0, "encodedKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, p0}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 411
    .local v0, "in":Lsun/security/util/DerInputStream;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v2

    .line 413
    .local v2, "values":[Lsun/security/util/DerValue;
    array-length v3, v2

    packed-switch v3, :pswitch_data_46

    .line 427
    new-instance v1, Ljava/io/IOException;

    const-string v3, "invalid key encoding"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 415
    :pswitch_16
    aget-object v1, v2, v1

    const/16 v3, -0x80

    const-string v4, "attributes"

    invoke-static {v1, v3, v4}, Ljavax/crypto/EncryptedPrivateKeyInfo;->checkTag(Lsun/security/util/DerValue;BLjava/lang/String;)V

    .line 418
    :pswitch_1f
    const/4 v1, 0x0

    aget-object v1, v2, v1

    const-string v3, "version"

    const/4 v4, 0x2

    invoke-static {v1, v4, v3}, Ljavax/crypto/EncryptedPrivateKeyInfo;->checkTag(Lsun/security/util/DerValue;BLjava/lang/String;)V

    .line 419
    const/4 v1, 0x1

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v1

    .line 420
    .local v1, "algid":Lsun/security/util/DerInputStream;
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    .line 421
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_3b

    .line 422
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    .line 424
    :cond_3b
    aget-object v3, v2, v4

    const/4 v4, 0x4

    const-string v5, "privateKey"

    invoke-static {v3, v4, v5}, Ljavax/crypto/EncryptedPrivateKeyInfo;->checkTag(Lsun/security/util/DerValue;BLjava/lang/String;)V

    .line 425
    nop

    .line 429
    .end local v1    # "algid":Lsun/security/util/DerInputStream;
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x3
        :pswitch_1f
        :pswitch_16
    .end packed-switch
.end method

.method private static greylist-max-o checkTag(Lsun/security/util/DerValue;BLjava/lang/String;)V
    .registers 6
    .param p0, "val"    # Lsun/security/util/DerValue;
    .param p1, "tag"    # B
    .param p2, "valName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getTag()B

    move-result v0

    if-ne v0, p1, :cond_7

    .line 405
    return-void

    .line 402
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid key encoding - wrong tag for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getKeySpecImpl(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .registers 7
    .param p1, "decryptKey"    # Ljava/security/Key;
    .param p2, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 264
    const/4 v0, 0x0

    .line 267
    .local v0, "encoded":[B
    if-nez p2, :cond_e

    .line 269
    :try_start_3
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .local v1, "c":Ljavax/crypto/Cipher;
    goto :goto_18

    .line 271
    .end local v1    # "c":Ljavax/crypto/Cipher;
    :cond_e
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 273
    .restart local v1    # "c":Ljavax/crypto/Cipher;
    :goto_18
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 274
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    move-object v0, v2

    .line 275
    invoke-static {v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->checkPKCS8Encoding([B)V
    :try_end_2c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_2c} :catch_3c
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_2c} :catch_33
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_2c} :catch_33

    .line 282
    nop

    .line 283
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object v2

    .line 279
    .end local v1    # "c":Ljavax/crypto/Cipher;
    :catch_33
    move-exception v1

    .line 280
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Cannot retrieve the PKCS8EncodedKeySpec"

    invoke-direct {v2, v3, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 276
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_3c
    move-exception v1

    .line 278
    .local v1, "nsae":Ljava/security/NoSuchAlgorithmException;
    throw v1
.end method


# virtual methods
.method public whitelist test-api getAlgName()Ljava/lang/String;
    .registers 2

    .line 208
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAlgParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .line 216
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    if-nez v0, :cond_23

    .line 383
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 384
    .local v0, "out":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 387
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2, v1}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 390
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 393
    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 394
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 396
    .end local v0    # "out":Lsun/security/util/DerOutputStream;
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_23
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api getEncryptedData()[B
    .registers 2

    .line 225
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api getKeySpec(Ljava/security/Key;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .registers 4
    .param p1, "decryptKey"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 303
    if-eqz p1, :cond_8

    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getKeySpecImpl(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/spec/PKCS8EncodedKeySpec;

    move-result-object v0

    return-object v0

    .line 304
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "decryptKey is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getKeySpec(Ljava/security/Key;Ljava/lang/String;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .registers 7
    .param p1, "decryptKey"    # Ljava/security/Key;
    .param p2, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 331
    if-eqz p1, :cond_36

    .line 334
    if-eqz p2, :cond_2e

    .line 337
    invoke-static {p2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 338
    .local v0, "provider":Ljava/security/Provider;
    if-eqz v0, :cond_f

    .line 342
    invoke-direct {p0, p1, v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getKeySpecImpl(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/spec/PKCS8EncodedKeySpec;

    move-result-object v1

    return-object v1

    .line 339
    :cond_f
    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    .end local v0    # "provider":Ljava/security/Provider;
    :cond_2e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "provider is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "decryptKey is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getKeySpec(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .registers 5
    .param p1, "decryptKey"    # Ljava/security/Key;
    .param p2, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 365
    if-eqz p1, :cond_11

    .line 368
    if-eqz p2, :cond_9

    .line 371
    invoke-direct {p0, p1, p2}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getKeySpecImpl(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/spec/PKCS8EncodedKeySpec;

    move-result-object v0

    return-object v0

    .line 369
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "provider is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "decryptKey is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getKeySpec(Ljavax/crypto/Cipher;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .registers 6
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, "encoded":[B
    :try_start_1
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {p1, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    move-object v0, v1

    .line 251
    invoke-static {v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->checkPKCS8Encoding([B)V
    :try_end_b
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_b} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_b} :catch_12

    .line 257
    nop

    .line 258
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object v1

    .line 252
    :catch_12
    move-exception v1

    .line 255
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "Cannot retrieve the PKCS8EncodedKeySpec"

    invoke-direct {v2, v3, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
