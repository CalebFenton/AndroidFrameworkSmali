.class public Ljavax/crypto/EncryptedPrivateKeyInfo;
.super Ljava/lang/Object;
.source "EncryptedPrivateKeyInfo.java"


# instance fields
.field private algid:Lsun/security/x509/AlgorithmId;

.field private encoded:[B

.field private encryptedData:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "algName"    # Ljava/lang/String;
    .param p2, "encryptedData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 67
    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    #@6
    .line 134
    if-nez p1, :cond_0

    #@8
    .line 135
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v1, "the algName parameter must be non-null"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 137
    :cond_0
    invoke-static {p1}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    #@17
    .line 139
    if-nez p2, :cond_1

    #@19
    .line 140
    new-instance v0, Ljava/lang/NullPointerException;

    #@1b
    const-string/jumbo v1, "the encryptedData parameter must be non-null"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 142
    :cond_1
    array-length v0, p2

    #@23
    if-nez v0, :cond_2

    #@25
    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@27
    const-string/jumbo v1, "the encryptedData parameter must not be empty"

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 146
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, [B

    #@34
    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    #@36
    .line 150
    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    #@38
    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/security/AlgorithmParameters;[B)V
    .locals 2
    .param p1, "algParams"    # Ljava/security/AlgorithmParameters;
    .param p2, "encryptedData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 67
    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    #@6
    .line 175
    if-nez p1, :cond_0

    #@8
    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v1, "algParams must be non-null"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 178
    :cond_0
    invoke-static {p1}, Lsun/security/x509/AlgorithmId;->get(Ljava/security/AlgorithmParameters;)Lsun/security/x509/AlgorithmId;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    #@17
    .line 180
    if-nez p2, :cond_1

    #@19
    .line 181
    new-instance v0, Ljava/lang/NullPointerException;

    #@1b
    const-string/jumbo v1, "encryptedData must be non-null"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 182
    :cond_1
    array-length v0, p2

    #@23
    if-nez v0, :cond_2

    #@25
    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@27
    const-string/jumbo v1, "the encryptedData parameter must not be empty"

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 186
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, [B

    #@34
    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    #@36
    .line 191
    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    #@38
    .line 173
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 67
    iput-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    #@8
    .line 79
    if-nez p1, :cond_0

    #@a
    .line 80
    new-instance v2, Ljava/lang/NullPointerException;

    #@c
    const-string/jumbo v3, "the encoded parameter must be non-null"

    #@f
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 83
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, [B

    #@19
    iput-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    #@1b
    .line 84
    new-instance v1, Lsun/security/util/DerValue;

    #@1d
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    #@1f
    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    #@22
    .line 86
    .local v1, "val":Lsun/security/util/DerValue;
    const/4 v2, 0x2

    #@23
    new-array v0, v2, [Lsun/security/util/DerValue;

    #@25
    .line 88
    .local v0, "seq":[Lsun/security/util/DerValue;
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@27
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@2a
    move-result-object v2

    #@2b
    aput-object v2, v0, v3

    #@2d
    .line 89
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@2f
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@32
    move-result-object v2

    #@33
    aput-object v2, v0, v4

    #@35
    .line 91
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@37
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_1

    #@3d
    .line 92
    new-instance v2, Ljava/io/IOException;

    #@3f
    new-instance v3, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v4, "overrun, bytes = "

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    iget-object v4, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@4d
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->available()I

    #@50
    move-result v4

    #@51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v2

    #@5d
    .line 95
    :cond_1
    aget-object v2, v0, v3

    #@5f
    invoke-static {v2}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    #@62
    move-result-object v2

    #@63
    iput-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    #@65
    .line 96
    aget-object v2, v0, v3

    #@67
    iget-object v2, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@69
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    #@6c
    move-result v2

    #@6d
    if-eqz v2, :cond_2

    #@6f
    .line 97
    new-instance v2, Ljava/io/IOException;

    #@71
    const-string/jumbo v3, "encryptionAlgorithm field overrun"

    #@74
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@77
    throw v2

    #@78
    .line 100
    :cond_2
    aget-object v2, v0, v4

    #@7a
    invoke-virtual {v2}, Lsun/security/util/DerValue;->getOctetString()[B

    #@7d
    move-result-object v2

    #@7e
    iput-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    #@80
    .line 101
    aget-object v2, v0, v4

    #@82
    iget-object v2, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@84
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    #@87
    move-result v2

    #@88
    if-eqz v2, :cond_3

    #@8a
    .line 102
    new-instance v2, Ljava/io/IOException;

    #@8c
    const-string/jumbo v3, "encryptedData field overrun"

    #@8f
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@92
    throw v2

    #@93
    .line 78
    :cond_3
    return-void
.end method

.method private static checkPKCS8Encoding([B)V
    .locals 8
    .param p0, "encodedKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/4 v7, 0x2

    #@2
    const/4 v6, 0x0

    #@3
    .line 429
    new-instance v1, Lsun/security/util/DerInputStream;

    #@5
    invoke-direct {v1, p0}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@8
    .line 430
    .local v1, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v1, v4}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    #@b
    move-result-object v2

    #@c
    .line 432
    .local v2, "values":[Lsun/security/util/DerValue;
    array-length v3, v2

    #@d
    packed-switch v3, :pswitch_data_0

    #@10
    .line 445
    new-instance v3, Ljava/io/IOException;

    #@12
    const-string/jumbo v4, "invalid key encoding"

    #@15
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@18
    throw v3

    #@19
    .line 434
    :pswitch_0
    aget-object v3, v2, v4

    #@1b
    const-string/jumbo v4, "attributes"

    #@1e
    const/16 v5, -0x80

    #@20
    invoke-static {v3, v5, v4}, Ljavax/crypto/EncryptedPrivateKeyInfo;->checkTag(Lsun/security/util/DerValue;BLjava/lang/String;)V

    #@23
    .line 436
    :pswitch_1
    aget-object v3, v2, v6

    #@25
    const-string/jumbo v4, "version"

    #@28
    invoke-static {v3, v7, v4}, Ljavax/crypto/EncryptedPrivateKeyInfo;->checkTag(Lsun/security/util/DerValue;BLjava/lang/String;)V

    #@2b
    .line 437
    const/4 v3, 0x1

    #@2c
    aget-object v3, v2, v3

    #@2e
    invoke-virtual {v3}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    #@31
    move-result-object v0

    #@32
    .line 438
    .local v0, "algid":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    #@35
    .line 439
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    #@38
    move-result v3

    #@39
    if-eqz v3, :cond_0

    #@3b
    .line 440
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@3e
    .line 442
    :cond_0
    aget-object v3, v2, v7

    #@40
    const-string/jumbo v4, "privateKey"

    #@43
    const/4 v5, 0x4

    #@44
    invoke-static {v3, v5, v4}, Ljavax/crypto/EncryptedPrivateKeyInfo;->checkTag(Lsun/security/util/DerValue;BLjava/lang/String;)V

    #@47
    .line 428
    return-void

    #@48
    .line 432
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static checkTag(Lsun/security/util/DerValue;BLjava/lang/String;)V
    .locals 3
    .param p0, "val"    # Lsun/security/util/DerValue;
    .param p1, "tag"    # B
    .param p2, "valName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 421
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getTag()B

    #@3
    move-result v0

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 422
    new-instance v0, Ljava/io/IOException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "invalid key encoding - wrong tag for "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 420
    :cond_0
    return-void
.end method

.method private getKeySpecImpl(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .locals 8
    .param p1, "decryptKey"    # Ljava/security/Key;
    .param p2, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 277
    const/4 v1, 0x0

    #@1
    .line 280
    .local v1, "encoded":[B
    if-nez p2, :cond_0

    #@3
    .line 282
    :try_start_0
    iget-object v6, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    #@5
    invoke-virtual {v6}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    #@8
    move-result-object v6

    #@9
    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@c
    move-result-object v0

    #@d
    .line 286
    .local v0, "c":Ljavax/crypto/Cipher;
    :goto_0
    iget-object v6, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    #@f
    invoke-virtual {v6}, Lsun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    #@12
    move-result-object v6

    #@13
    const/4 v7, 0x2

    #@14
    invoke-virtual {v0, v7, p1, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    #@17
    .line 287
    iget-object v6, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    #@19
    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    #@1c
    move-result-object v1

    #@1d
    .line 288
    .local v1, "encoded":[B
    invoke-static {v1}, Ljavax/crypto/EncryptedPrivateKeyInfo;->checkPKCS8Encoding([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 303
    new-instance v6, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@22
    invoke-direct {v6, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@25
    return-object v6

    #@26
    .line 284
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .local v1, "encoded":[B
    :cond_0
    :try_start_1
    iget-object v6, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    #@28
    invoke-virtual {v6}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    #@2b
    move-result-object v6

    #@2c
    invoke-static {v6, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@2f
    move-result-object v0

    #@30
    .restart local v0    # "c":Ljavax/crypto/Cipher;
    goto :goto_0

    #@31
    .line 297
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .end local v1    # "encoded":[B
    :catch_0
    move-exception v4

    #@32
    .line 298
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/InvalidKeyException;

    #@34
    .line 299
    const-string/jumbo v6, "Cannot retrieve the PKCS8EncodedKeySpec"

    #@37
    .line 298
    invoke-direct {v3, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@3a
    .line 300
    .local v3, "ike":Ljava/security/InvalidKeyException;
    invoke-virtual {v3, v4}, Ljava/security/InvalidKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@3d
    .line 301
    throw v3

    #@3e
    .line 292
    .end local v3    # "ike":Ljava/security/InvalidKeyException;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v2

    #@3f
    .line 293
    .local v2, "gse":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/security/InvalidKeyException;

    #@41
    .line 294
    const-string/jumbo v6, "Cannot retrieve the PKCS8EncodedKeySpec"

    #@44
    .line 293
    invoke-direct {v3, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@47
    .line 295
    .restart local v3    # "ike":Ljava/security/InvalidKeyException;
    invoke-virtual {v3, v2}, Ljava/security/InvalidKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@4a
    .line 296
    throw v3

    #@4b
    .line 289
    .end local v2    # "gse":Ljava/security/GeneralSecurityException;
    .end local v3    # "ike":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v5

    #@4c
    .line 291
    .local v5, "nsae":Ljava/security/NoSuchAlgorithmException;
    throw v5
.end method


# virtual methods
.method public getAlgName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 208
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    #@2
    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAlgParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    #@2
    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 402
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    #@2
    if-nez v2, :cond_0

    #@4
    .line 403
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@6
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@9
    .line 404
    .local v0, "out":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@b
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@e
    .line 407
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    #@10
    invoke-virtual {v2, v1}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    #@13
    .line 410
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    #@15
    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    #@18
    .line 413
    const/16 v2, 0x30

    #@1a
    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@1d
    .line 414
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@20
    move-result-object v2

    #@21
    iput-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    #@23
    .line 416
    .end local v0    # "out":Lsun/security/util/DerOutputStream;
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_0
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    #@25
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, [B

    #@2b
    return-object v2
.end method

.method public getEncryptedData()[B
    .locals 1

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public getKeySpec(Ljava/security/Key;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .locals 2
    .param p1, "decryptKey"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 323
    if-nez p1, :cond_0

    #@3
    .line 324
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "decryptKey is null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 326
    :cond_0
    invoke-direct {p0, p1, v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getKeySpecImpl(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/spec/PKCS8EncodedKeySpec;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public getKeySpec(Ljava/security/Key;Ljava/lang/String;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .locals 4
    .param p1, "decryptKey"    # Ljava/security/Key;
    .param p2, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 351
    if-nez p1, :cond_0

    #@2
    .line 352
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "decryptKey is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 354
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 355
    new-instance v1, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v2, "provider is null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 357
    :cond_1
    invoke-static {p2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@19
    move-result-object v0

    #@1a
    .line 358
    .local v0, "provider":Ljava/security/Provider;
    if-nez v0, :cond_2

    #@1c
    .line 359
    new-instance v1, Ljava/security/NoSuchProviderException;

    #@1e
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v3, "provider "

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 360
    const-string/jumbo v3, " not found"

    #@31
    .line 359
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v1

    #@3d
    .line 362
    :cond_2
    invoke-direct {p0, p1, v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getKeySpecImpl(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/spec/PKCS8EncodedKeySpec;

    #@40
    move-result-object v1

    #@41
    return-object v1
.end method

.method public getKeySpec(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .locals 2
    .param p1, "decryptKey"    # Ljava/security/Key;
    .param p2, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 385
    if-nez p1, :cond_0

    #@2
    .line 386
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "decryptKey is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 388
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 389
    new-instance v0, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v1, "provider is null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 391
    :cond_1
    invoke-direct {p0, p1, p2}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getKeySpecImpl(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/spec/PKCS8EncodedKeySpec;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public getKeySpec(Ljavax/crypto/Cipher;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .locals 6
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 248
    const/4 v0, 0x0

    #@1
    .line 250
    .local v0, "encoded":[B
    :try_start_0
    iget-object v5, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    #@3
    invoke-virtual {p1, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    #@6
    move-result-object v0

    #@7
    .line 251
    .local v0, "encoded":[B
    invoke-static {v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->checkPKCS8Encoding([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 271
    new-instance v5, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@c
    invoke-direct {v5, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@f
    return-object v5

    #@10
    .line 264
    .end local v0    # "encoded":[B
    :catch_0
    move-exception v4

    #@11
    .line 265
    .local v4, "ise":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    #@13
    .line 267
    const-string/jumbo v5, "Cannot retrieve the PKCS8EncodedKeySpec"

    #@16
    .line 265
    invoke-direct {v2, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@19
    .line 268
    .local v2, "ikse":Ljava/security/spec/InvalidKeySpecException;
    invoke-virtual {v2, v4}, Ljava/security/spec/InvalidKeySpecException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@1c
    .line 269
    throw v2

    #@1d
    .line 258
    .end local v2    # "ikse":Ljava/security/spec/InvalidKeySpecException;
    .end local v4    # "ise":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v3

    #@1e
    .line 259
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    #@20
    .line 261
    const-string/jumbo v5, "Cannot retrieve the PKCS8EncodedKeySpec"

    #@23
    .line 259
    invoke-direct {v2, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@26
    .line 262
    .restart local v2    # "ikse":Ljava/security/spec/InvalidKeySpecException;
    invoke-virtual {v2, v3}, Ljava/security/spec/InvalidKeySpecException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@29
    .line 263
    throw v2

    #@2a
    .line 252
    .end local v2    # "ikse":Ljava/security/spec/InvalidKeySpecException;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v1

    #@2b
    .line 253
    .local v1, "gse":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    #@2d
    .line 255
    const-string/jumbo v5, "Cannot retrieve the PKCS8EncodedKeySpec"

    #@30
    .line 253
    invoke-direct {v2, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@33
    .line 256
    .restart local v2    # "ikse":Ljava/security/spec/InvalidKeySpecException;
    invoke-virtual {v2, v1}, Ljava/security/spec/InvalidKeySpecException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@36
    .line 257
    throw v2
.end method
