.class public Ljavax/crypto/SealedObject;
.super Ljava/lang/Object;
.source "SealedObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final whitelist serialVersionUID:J = 0x3e363da6c3b75470L


# instance fields
.field protected whitelist test-api encodedParams:[B

.field private greylist-max-o encryptedContent:[B

.field private greylist-max-o paramsAlg:Ljava/lang/String;

.field private greylist-max-o sealAlg:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/Serializable;Ljavax/crypto/Cipher;)V
    .registers 7
    .param p1, "object"    # Ljava/io/Serializable;
    .param p2, "c"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    .line 108
    iput-object v0, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    .line 154
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 155
    .local v0, "b":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 159
    .local v1, "a":Ljava/io/ObjectOutput;
    :try_start_16
    invoke-interface {v1, p1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 160
    invoke-interface {v1}, Ljava/io/ObjectOutput;->flush()V

    .line 161
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_4d

    .line 163
    .local v2, "content":[B
    invoke-interface {v1}, Ljava/io/ObjectOutput;->close()V

    .line 164
    nop

    .line 170
    :try_start_24
    invoke-virtual {p2, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    iput-object v3, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B
    :try_end_2a
    .catch Ljavax/crypto/BadPaddingException; {:try_start_24 .. :try_end_2a} :catch_2b

    .line 175
    goto :goto_2c

    .line 172
    :catch_2b
    move-exception v3

    .line 178
    :goto_2c
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 179
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v3

    iput-object v3, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    .line 180
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    .line 184
    :cond_46
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    .line 185
    return-void

    .line 163
    .end local v2    # "content":[B
    :catchall_4d
    move-exception v2

    invoke-interface {v1}, Ljava/io/ObjectOutput;->close()V

    .line 164
    throw v2
.end method

.method protected constructor whitelist test-api <init>(Ljavax/crypto/SealedObject;)V
    .registers 4
    .param p1, "so"    # Ljavax/crypto/SealedObject;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    .line 108
    iput-object v0, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    .line 194
    iget-object v1, p1, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    .line 195
    iget-object v1, p1, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    iput-object v1, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    .line 196
    iget-object v1, p1, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    iput-object v1, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    .line 197
    iget-object v1, p1, Ljavax/crypto/SealedObject;->encodedParams:[B

    if-eqz v1, :cond_2d

    .line 198
    iget-object v0, p1, Ljavax/crypto/SealedObject;->encodedParams:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    goto :goto_2f

    .line 200
    :cond_2d
    iput-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    .line 202
    :goto_2f
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 447
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 448
    iget-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    if-eqz v0, :cond_11

    .line 449
    iget-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    .line 450
    :cond_11
    iget-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    if-eqz v0, :cond_1f

    .line 451
    iget-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    .line 452
    :cond_1f
    return-void
.end method

.method private greylist-max-o unseal(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
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

    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "params":Ljava/security/AlgorithmParameters;
    iget-object v1, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    const-string v2, " not found"

    if-eqz v1, :cond_45

    .line 371
    if-eqz p2, :cond_11

    .line 372
    :try_start_9
    iget-object v1, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "params":Ljava/security/AlgorithmParameters;
    .local v1, "params":Ljava/security/AlgorithmParameters;
    goto :goto_18

    .line 375
    .end local v1    # "params":Ljava/security/AlgorithmParameters;
    .restart local v0    # "params":Ljava/security/AlgorithmParameters;
    :cond_11
    iget-object v1, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-static {v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1
    :try_end_17
    .catch Ljava/security/NoSuchProviderException; {:try_start_9 .. :try_end_17} :catch_1f

    move-object v0, v1

    .line 384
    :goto_18
    nop

    .line 385
    iget-object v1, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init([B)V

    goto :goto_45

    .line 377
    :catch_1f
    move-exception v1

    .line 378
    .local v1, "nspe":Ljava/security/NoSuchProviderException;
    if-nez p2, :cond_3b

    .line 379
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 382
    :cond_3b
    new-instance v2, Ljava/security/NoSuchProviderException;

    invoke-virtual {v1}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 393
    .end local v1    # "nspe":Ljava/security/NoSuchProviderException;
    :cond_45
    :goto_45
    if-eqz p2, :cond_4e

    .line 394
    :try_start_47
    iget-object v1, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    invoke-static {v1, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .local v1, "c":Ljavax/crypto/Cipher;
    goto :goto_54

    .line 396
    .end local v1    # "c":Ljavax/crypto/Cipher;
    :cond_4e
    iget-object v1, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1
    :try_end_54
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_47 .. :try_end_54} :catch_af
    .catch Ljava/security/NoSuchProviderException; {:try_start_47 .. :try_end_54} :catch_89

    .line 407
    .restart local v1    # "c":Ljavax/crypto/Cipher;
    :goto_54
    nop

    .line 410
    const/4 v2, 0x2

    if-eqz v0, :cond_5c

    .line 411
    :try_start_58
    invoke-virtual {v1, v2, p1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    goto :goto_5f

    .line 413
    :cond_5c
    invoke-virtual {v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_5f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_58 .. :try_end_5f} :catch_7e

    .line 418
    :goto_5f
    nop

    .line 423
    iget-object v2, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 429
    .local v2, "content":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 430
    .local v3, "b":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljavax/crypto/extObjectInputStream;

    invoke-direct {v4, v3}, Ljavax/crypto/extObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 432
    .local v4, "a":Ljava/io/ObjectInput;
    :try_start_70
    invoke-interface {v4}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v5
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_79

    .line 433
    .local v5, "obj":Ljava/lang/Object;
    nop

    .line 435
    invoke-interface {v4}, Ljava/io/ObjectInput;->close()V

    .line 433
    return-object v5

    .line 435
    .end local v5    # "obj":Ljava/lang/Object;
    :catchall_79
    move-exception v5

    invoke-interface {v4}, Ljava/io/ObjectInput;->close()V

    .line 436
    throw v5

    .line 414
    .end local v2    # "content":[B
    .end local v3    # "b":Ljava/io/ByteArrayInputStream;
    .end local v4    # "a":Ljava/io/ObjectInput;
    :catch_7e
    move-exception v2

    .line 417
    .local v2, "iape":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 401
    .end local v1    # "c":Ljavax/crypto/Cipher;
    .end local v2    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    :catch_89
    move-exception v1

    .line 402
    .local v1, "nspe":Ljava/security/NoSuchProviderException;
    if-nez p2, :cond_a5

    .line 403
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 405
    :cond_a5
    new-instance v2, Ljava/security/NoSuchProviderException;

    invoke-virtual {v1}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 397
    .end local v1    # "nspe":Ljava/security/NoSuchProviderException;
    :catch_af
    move-exception v1

    .line 398
    .local v1, "nspe":Ljavax/crypto/NoSuchPaddingException;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    const-string v3, "Padding that was used in sealing operation not available"

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 210
    iget-object v0, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getObject(Ljava/security/Key;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 246
    if-eqz p1, :cond_27

    .line 251
    const/4 v0, 0x0

    :try_start_3
    invoke-direct {p0, p1, v0}, Ljavax/crypto/SealedObject;->unseal(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_7} :catch_1e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_7} :catch_13
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_7} :catch_8

    return-object v0

    .line 259
    :catch_8
    move-exception v0

    .line 260
    .local v0, "bpe":Ljavax/crypto/BadPaddingException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    .end local v0    # "bpe":Ljavax/crypto/BadPaddingException;
    :catch_13
    move-exception v0

    .line 258
    .local v0, "ibse":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    .end local v0    # "ibse":Ljavax/crypto/IllegalBlockSizeException;
    :catch_1e
    move-exception v0

    .line 256
    .local v0, "nspe":Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    const-string v2, "algorithm not found"

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    .end local v0    # "nspe":Ljava/security/NoSuchProviderException;
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getObject(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
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

    .line 345
    if-eqz p1, :cond_22

    .line 348
    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 353
    :try_start_a
    invoke-direct {p0, p1, p2}, Ljavax/crypto/SealedObject;->unseal(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_a .. :try_end_e} :catch_f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_a .. :try_end_e} :catch_f

    return-object v0

    .line 354
    :catch_f
    move-exception v0

    .line 355
    .local v0, "ex":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 349
    .end local v0    # "ex":Ljava/security/GeneralSecurityException;
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getObject(Ljavax/crypto/Cipher;)Ljava/lang/Object;
    .registers 6
    .param p1, "c"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 299
    .local v0, "content":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 300
    .local v1, "b":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljavax/crypto/extObjectInputStream;

    invoke-direct {v2, v1}, Ljavax/crypto/extObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 302
    .local v2, "a":Ljava/io/ObjectInput;
    :try_start_10
    invoke-interface {v2}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_19

    .line 303
    .local v3, "obj":Ljava/lang/Object;
    nop

    .line 305
    invoke-interface {v2}, Ljava/io/ObjectInput;->close()V

    .line 303
    return-object v3

    .line 305
    .end local v3    # "obj":Ljava/lang/Object;
    :catchall_19
    move-exception v3

    invoke-interface {v2}, Ljava/io/ObjectInput;->close()V

    .line 306
    throw v3
.end method
