.class public Ljavax/crypto/SealedObject;
.super Ljava/lang/Object;
.source "SealedObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x3e363da6c3b75470L


# instance fields
.field protected encodedParams:[B

.field private encryptedContent:[B

.field private paramsAlg:Ljava/lang/String;

.field private sealAlg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Serializable;Ljavax/crypto/Cipher;)V
    .locals 5
    .param p1, "object"    # Ljava/io/Serializable;
    .param p2, "c"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 103
    iput-object v4, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    #@6
    .line 110
    iput-object v4, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    #@8
    .line 117
    iput-object v4, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    #@a
    .line 127
    iput-object v4, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    #@c
    .line 156
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@e
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@11
    .line 157
    .local v1, "b":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/ObjectOutputStream;

    #@13
    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@16
    .line 161
    .local v0, "a":Ljava/io/ObjectOutput;
    :try_start_0
    invoke-interface {v0, p1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    #@19
    .line 162
    invoke-interface {v0}, Ljava/io/ObjectOutput;->flush()V

    #@1c
    .line 163
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v2

    #@20
    .line 165
    .local v2, "content":[B
    invoke-interface {v0}, Ljava/io/ObjectOutput;->close()V

    #@23
    .line 172
    :try_start_1
    invoke-virtual {p2, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    #@26
    move-result-object v4

    #@27
    iput-object v4, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B
    :try_end_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0

    #@29
    .line 180
    :goto_0
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    #@2c
    move-result-object v4

    #@2d
    if-eqz v4, :cond_0

    #@2f
    .line 181
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    #@36
    move-result-object v4

    #@37
    iput-object v4, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    #@39
    .line 182
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    iput-object v4, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    #@43
    .line 186
    :cond_0
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    iput-object v4, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    #@49
    .line 149
    return-void

    #@4a
    .line 164
    .end local v2    # "content":[B
    :catchall_0
    move-exception v4

    #@4b
    .line 165
    invoke-interface {v0}, Ljava/io/ObjectOutput;->close()V

    #@4e
    .line 164
    throw v4

    #@4f
    .line 174
    .restart local v2    # "content":[B
    :catch_0
    move-exception v3

    #@50
    .local v3, "ex":Ljavax/crypto/BadPaddingException;
    goto :goto_0
.end method

.method protected constructor <init>(Ljavax/crypto/SealedObject;)V
    .locals 2
    .param p1, "so"    # Ljavax/crypto/SealedObject;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 103
    iput-object v1, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    #@6
    .line 110
    iput-object v1, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    #@8
    .line 117
    iput-object v1, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    #@a
    .line 127
    iput-object v1, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    #@c
    .line 196
    iget-object v0, p1, Ljavax/crypto/SealedObject;->encryptedContent:[B

    #@e
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, [B

    #@14
    iput-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    #@16
    .line 197
    iget-object v0, p1, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    #@18
    iput-object v0, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    #@1a
    .line 198
    iget-object v0, p1, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    #@1c
    iput-object v0, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    #@1e
    .line 199
    iget-object v0, p1, Ljavax/crypto/SealedObject;->encodedParams:[B

    #@20
    if-eqz v0, :cond_0

    #@22
    .line 200
    iget-object v0, p1, Ljavax/crypto/SealedObject;->encodedParams:[B

    #@24
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, [B

    #@2a
    iput-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    #@2c
    .line 195
    :goto_0
    return-void

    #@2d
    .line 202
    :cond_0
    iput-object v1, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    #@2f
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 451
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 452
    iget-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 453
    iget-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    #@9
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, [B

    #@f
    iput-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    #@11
    .line 454
    :cond_0
    iget-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 455
    iget-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    #@17
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, [B

    #@1d
    iput-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    #@1f
    .line 449
    :cond_1
    return-void
.end method

.method private unseal(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 372
    const/4 v8, 0x0

    #@1
    .line 373
    .local v8, "params":Ljava/security/AlgorithmParameters;
    iget-object v9, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    #@3
    if-eqz v9, :cond_0

    #@5
    .line 375
    if-eqz p2, :cond_1

    #@7
    .line 376
    :try_start_0
    iget-object v9, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    #@9
    invoke-static {v9, p2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v8

    #@d
    .line 389
    .local v8, "params":Ljava/security/AlgorithmParameters;
    :goto_0
    iget-object v9, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    #@f
    invoke-virtual {v8, v9}, Ljava/security/AlgorithmParameters;->init([B)V

    #@12
    .line 397
    .end local v8    # "params":Ljava/security/AlgorithmParameters;
    :cond_0
    if-eqz p2, :cond_3

    #@14
    .line 398
    :try_start_1
    iget-object v9, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    #@16
    invoke-static {v9, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_1

    #@19
    move-result-object v2

    #@1a
    .line 414
    .local v2, "c":Ljavax/crypto/Cipher;
    :goto_1
    if-eqz v8, :cond_5

    #@1c
    .line 415
    const/4 v9, 0x2

    #@1d
    :try_start_2
    invoke-virtual {v2, v9, p1, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    :try_end_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_3

    #@20
    .line 427
    :goto_2
    iget-object v9, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    #@22
    invoke-virtual {v2, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    #@25
    move-result-object v3

    #@26
    .line 433
    .local v3, "content":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@28
    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@2b
    .line 434
    .local v1, "b":Ljava/io/ByteArrayInputStream;
    new-instance v0, Ljavax/crypto/extObjectInputStream;

    #@2d
    invoke-direct {v0, v1}, Ljavax/crypto/extObjectInputStream;-><init>(Ljava/io/InputStream;)V

    #@30
    .line 436
    .local v0, "a":Ljava/io/ObjectInput;
    :try_start_3
    invoke-interface {v0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@33
    move-result-object v7

    #@34
    .line 439
    .local v7, "obj":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/io/ObjectInput;->close()V

    #@37
    .line 437
    return-object v7

    #@38
    .line 379
    .end local v0    # "a":Ljava/io/ObjectInput;
    .end local v1    # "b":Ljava/io/ByteArrayInputStream;
    .end local v2    # "c":Ljavax/crypto/Cipher;
    .end local v3    # "content":[B
    .end local v7    # "obj":Ljava/lang/Object;
    .local v8, "params":Ljava/security/AlgorithmParameters;
    :cond_1
    :try_start_4
    iget-object v9, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    #@3a
    invoke-static {v9}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    :try_end_4
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_4} :catch_0

    #@3d
    move-result-object v8

    #@3e
    .local v8, "params":Ljava/security/AlgorithmParameters;
    goto :goto_0

    #@3f
    .line 381
    .local v8, "params":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v5

    #@40
    .line 382
    .local v5, "nspe":Ljava/security/NoSuchProviderException;
    if-nez p2, :cond_2

    #@42
    .line 383
    new-instance v9, Ljava/security/NoSuchAlgorithmException;

    #@44
    new-instance v10, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    iget-object v11, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    #@4b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v10

    #@4f
    .line 384
    const-string/jumbo v11, " not found"

    #@52
    .line 383
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v10

    #@56
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v10

    #@5a
    invoke-direct {v9, v10}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v9

    #@5e
    .line 386
    :cond_2
    new-instance v9, Ljava/security/NoSuchProviderException;

    #@60
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@63
    move-result-object v10

    #@64
    invoke-direct {v9, v10}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@67
    throw v9

    #@68
    .line 400
    .end local v5    # "nspe":Ljava/security/NoSuchProviderException;
    .end local v8    # "params":Ljava/security/AlgorithmParameters;
    :cond_3
    :try_start_5
    iget-object v9, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    #@6a
    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_5 .. :try_end_5} :catch_1

    #@6d
    move-result-object v2

    #@6e
    .restart local v2    # "c":Ljavax/crypto/Cipher;
    goto :goto_1

    #@6f
    .line 405
    .end local v2    # "c":Ljavax/crypto/Cipher;
    :catch_1
    move-exception v5

    #@70
    .line 406
    .restart local v5    # "nspe":Ljava/security/NoSuchProviderException;
    if-nez p2, :cond_4

    #@72
    .line 407
    new-instance v9, Ljava/security/NoSuchAlgorithmException;

    #@74
    new-instance v10, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    iget-object v11, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    #@7b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v10

    #@7f
    const-string/jumbo v11, " not found"

    #@82
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v10

    #@86
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v10

    #@8a
    invoke-direct {v9, v10}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@8d
    throw v9

    #@8e
    .line 409
    :cond_4
    new-instance v9, Ljava/security/NoSuchProviderException;

    #@90
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@93
    move-result-object v10

    #@94
    invoke-direct {v9, v10}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@97
    throw v9

    #@98
    .line 401
    .end local v5    # "nspe":Ljava/security/NoSuchProviderException;
    :catch_2
    move-exception v6

    #@99
    .line 402
    .local v6, "nspe":Ljavax/crypto/NoSuchPaddingException;
    new-instance v9, Ljava/security/NoSuchAlgorithmException;

    #@9b
    const-string/jumbo v10, "Padding that was used in sealing operation not available"

    #@9e
    invoke-direct {v9, v10}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@a1
    throw v9

    #@a2
    .line 417
    .end local v6    # "nspe":Ljavax/crypto/NoSuchPaddingException;
    .restart local v2    # "c":Ljavax/crypto/Cipher;
    :cond_5
    const/4 v9, 0x2

    #@a3
    :try_start_6
    invoke-virtual {v2, v9, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6 .. :try_end_6} :catch_3

    #@a6
    goto/16 :goto_2

    #@a8
    .line 418
    :catch_3
    move-exception v4

    #@a9
    .line 421
    .local v4, "iape":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v9, Ljava/lang/RuntimeException;

    #@ab
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@ae
    move-result-object v10

    #@af
    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b2
    throw v9

    #@b3
    .line 438
    .end local v4    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v0    # "a":Ljava/io/ObjectInput;
    .restart local v1    # "b":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "content":[B
    :catchall_0
    move-exception v9

    #@b4
    .line 439
    invoke-interface {v0}, Ljava/io/ObjectInput;->close()V

    #@b7
    .line 438
    throw v9
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getObject(Ljava/security/Key;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 248
    if-nez p1, :cond_0

    #@2
    .line 249
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v4, "key is null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 253
    :cond_0
    const/4 v3, 0x0

    #@c
    :try_start_0
    invoke-direct {p0, p1, v3}, Ljavax/crypto/SealedObject;->unseal(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v3

    #@10
    return-object v3

    #@11
    .line 261
    :catch_0
    move-exception v0

    #@12
    .line 262
    .local v0, "bpe":Ljavax/crypto/BadPaddingException;
    new-instance v3, Ljava/security/InvalidKeyException;

    #@14
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v3

    #@1c
    .line 259
    .end local v0    # "bpe":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v1

    #@1d
    .line 260
    .local v1, "ibse":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v3, Ljava/security/InvalidKeyException;

    #@1f
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@26
    throw v3

    #@27
    .line 254
    .end local v1    # "ibse":Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v2

    #@28
    .line 258
    .local v2, "nspe":Ljava/security/NoSuchProviderException;
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    #@2a
    const-string/jumbo v4, "algorithm not found"

    #@2d
    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@30
    throw v3
.end method

.method public final getObject(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 347
    if-nez p1, :cond_0

    #@2
    .line 348
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "key is null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 350
    :cond_0
    if-eqz p2, :cond_1

    #@d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_2

    #@13
    .line 351
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v3, "missing provider"

    #@18
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 355
    :cond_2
    :try_start_0
    invoke-direct {p0, p1, p2}, Ljavax/crypto/SealedObject;->unseal(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result-object v2

    #@20
    return-object v2

    #@21
    .line 358
    :catch_0
    move-exception v0

    #@22
    .line 359
    .local v0, "bpe":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljava/security/InvalidKeyException;

    #@24
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v2

    #@2c
    .line 356
    .end local v0    # "bpe":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v1

    #@2d
    .line 357
    .local v1, "ibse":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v2, Ljava/security/InvalidKeyException;

    #@2f
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@36
    throw v2
.end method

.method public final getObject(Ljavax/crypto/Cipher;)Ljava/lang/Object;
    .locals 5
    .param p1, "c"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 295
    iget-object v4, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    #@2
    invoke-virtual {p1, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    #@5
    move-result-object v2

    #@6
    .line 301
    .local v2, "content":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@8
    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@b
    .line 302
    .local v1, "b":Ljava/io/ByteArrayInputStream;
    new-instance v0, Ljavax/crypto/extObjectInputStream;

    #@d
    invoke-direct {v0, v1}, Ljavax/crypto/extObjectInputStream;-><init>(Ljava/io/InputStream;)V

    #@10
    .line 304
    .local v0, "a":Ljava/io/ObjectInput;
    :try_start_0
    invoke-interface {v0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result-object v3

    #@14
    .line 307
    .local v3, "obj":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/io/ObjectInput;->close()V

    #@17
    .line 305
    return-object v3

    #@18
    .line 306
    .end local v3    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    #@19
    .line 307
    invoke-interface {v0}, Ljava/io/ObjectInput;->close()V

    #@1c
    .line 306
    throw v4
.end method
