.class public Ljavax/crypto/SealedObject;
.super Ljava/lang/Object;
.source "SealedObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3e363da6c3b75470L


# instance fields
.field protected encodedParams:[B

.field private encryptedContent:[B

.field private paramsAlg:Ljava/lang/String;

.field private sealAlg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Serializable;Ljavax/crypto/Cipher;)V
    .locals 7
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
    const/4 v5, 0x0

    #@1
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 100
    if-nez p2, :cond_0

    #@6
    .line 101
    new-instance v5, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v6, "c == null"

    #@b
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v5

    #@f
    .line 103
    :cond_0
    const/4 v3, 0x0

    #@10
    .line 105
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@12
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@15
    .line 106
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/ObjectOutputStream;

    #@17
    invoke-direct {v4, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 107
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@1d
    .line 108
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    #@20
    .line 109
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    #@23
    move-result-object v0

    #@24
    .line 110
    .local v0, "ap":Ljava/security/AlgorithmParameters;
    if-nez v0, :cond_1

    #@26
    move-object v6, v5

    #@27
    :goto_0
    iput-object v6, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    #@29
    .line 111
    if-nez v0, :cond_2

    #@2b
    :goto_1
    iput-object v5, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    #@2d
    .line 112
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    iput-object v5, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    #@33
    .line 113
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@36
    move-result-object v5

    #@37
    invoke-virtual {p2, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    #@3a
    move-result-object v5

    #@3b
    iput-object v5, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B
    :try_end_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3d
    .line 119
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@40
    .line 99
    return-void

    #@41
    .line 110
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    #@44
    move-result-object v6

    #@45
    goto :goto_0

    #@46
    .line 111
    :cond_2
    invoke-virtual {v0}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;
    :try_end_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@49
    move-result-object v5

    #@4a
    goto :goto_1

    #@4b
    .line 114
    .end local v0    # "ap":Ljava/security/AlgorithmParameters;
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v2

    #@4c
    .line 117
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .local v2, "e":Ljavax/crypto/BadPaddingException;
    :goto_2
    :try_start_3
    new-instance v5, Ljava/io/IOException;

    #@4e
    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    #@51
    move-result-object v6

    #@52
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@55
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@56
    .line 118
    .end local v2    # "e":Ljavax/crypto/BadPaddingException;
    :catchall_0
    move-exception v5

    #@57
    .line 119
    :goto_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@5a
    .line 118
    throw v5

    #@5b
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v5

    #@5c
    move-object v3, v4

    #@5d
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    goto :goto_3

    #@5e
    .line 114
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v2

    #@5f
    .restart local v2    # "e":Ljavax/crypto/BadPaddingException;
    move-object v3, v4

    #@60
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_2
.end method

.method protected constructor <init>(Ljavax/crypto/SealedObject;)V
    .locals 2
    .param p1, "so"    # Ljavax/crypto/SealedObject;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 131
    if-nez p1, :cond_0

    #@6
    .line 132
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v1, "so == null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 136
    :cond_0
    iget-object v0, p1, Ljavax/crypto/SealedObject;->encryptedContent:[B

    #@11
    if-eqz v0, :cond_1

    #@13
    iget-object v0, p1, Ljavax/crypto/SealedObject;->encryptedContent:[B

    #@15
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, [B

    #@1b
    :goto_0
    iput-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    #@1d
    .line 137
    iget-object v0, p1, Ljavax/crypto/SealedObject;->encodedParams:[B

    #@1f
    if-eqz v0, :cond_2

    #@21
    iget-object v0, p1, Ljavax/crypto/SealedObject;->encodedParams:[B

    #@23
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, [B

    #@29
    :goto_1
    iput-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    #@2b
    .line 138
    iget-object v0, p1, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    #@2d
    iput-object v0, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    #@2f
    .line 139
    iget-object v0, p1, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    #@31
    iput-object v0, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    #@33
    .line 130
    return-void

    #@34
    :cond_1
    move-object v0, v1

    #@35
    .line 136
    goto :goto_0

    #@36
    :cond_2
    move-object v0, v1

    #@37
    .line 137
    goto :goto_1
.end method

.method private static getSafeCopy(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;)[B
    .locals 2
    .param p0, "fields"    # Ljava/io/ObjectInputStream$GetField;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 75
    invoke-virtual {p0, p1, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, [B

    #@7
    .line 76
    .local v0, "fieldValue":[B
    if-eqz v0, :cond_0

    #@9
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, [B

    #@f
    :cond_0
    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 64
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@4
    move-result-object v0

    #@5
    .line 67
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v1, "encodedParams"

    #@8
    invoke-static {v0, v1}, Ljavax/crypto/SealedObject;->getSafeCopy(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;)[B

    #@b
    move-result-object v1

    #@c
    iput-object v1, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    #@e
    .line 68
    const-string/jumbo v1, "encryptedContent"

    #@11
    invoke-static {v0, v1}, Ljavax/crypto/SealedObject;->getSafeCopy(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;)[B

    #@14
    move-result-object v1

    #@15
    iput-object v1, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    #@17
    .line 69
    const-string/jumbo v1, "paramsAlg"

    #@1a
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Ljava/lang/String;

    #@20
    iput-object v1, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    #@22
    .line 70
    const-string/jumbo v1, "sealAlg"

    #@25
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Ljava/lang/String;

    #@2b
    iput-object v1, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    #@2d
    .line 61
    return-void
.end method

.method private static readSerialized([B)Ljava/lang/Object;
    .locals 3
    .param p0, "serialized"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 295
    const/4 v0, 0x0

    #@1
    .line 297
    .local v0, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    #@3
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@5
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@8
    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 298
    .local v1, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@e
    .end local v0    # "ois":Ljava/io/ObjectInputStream;
    move-result-object v2

    #@f
    .line 300
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@12
    .line 298
    return-object v2

    #@13
    .line 299
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v0    # "ois":Ljava/io/ObjectInputStream;
    :catchall_0
    move-exception v2

    #@14
    .line 300
    .end local v0    # "ois":Ljava/io/ObjectInputStream;
    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@17
    .line 299
    throw v2

    #@18
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v2

    #@19
    move-object v0, v1

    #@1a
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .local v0, "ois":Ljava/io/ObjectInputStream;
    goto :goto_0
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getObject(Ljava/security/Key;)Ljava/lang/Object;
    .locals 10
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
    .line 169
    if-nez p1, :cond_0

    #@2
    .line 170
    new-instance v8, Ljava/security/InvalidKeyException;

    #@4
    const-string/jumbo v9, "key == null"

    #@7
    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@a
    throw v8

    #@b
    .line 173
    :cond_0
    :try_start_0
    iget-object v8, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    #@d
    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@10
    move-result-object v0

    #@11
    .line 174
    .local v0, "cipher":Ljavax/crypto/Cipher;
    iget-object v8, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    #@13
    if-eqz v8, :cond_1

    #@15
    iget-object v8, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    #@17
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@1a
    move-result v8

    #@1b
    if-eqz v8, :cond_1

    #@1d
    .line 175
    iget-object v8, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    #@1f
    invoke-static {v8}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    #@22
    move-result-object v6

    #@23
    .line 176
    .local v6, "params":Ljava/security/AlgorithmParameters;
    iget-object v8, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    #@25
    invoke-virtual {v6, v8}, Ljava/security/AlgorithmParameters;->init([B)V

    #@28
    .line 177
    const/4 v8, 0x2

    #@29
    invoke-virtual {v0, v8, p1, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    #@2c
    .line 181
    .end local v6    # "params":Ljava/security/AlgorithmParameters;
    :goto_0
    iget-object v8, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    #@2e
    invoke-virtual {v0, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    #@31
    move-result-object v7

    #@32
    .line 182
    .local v7, "serialized":[B
    invoke-static {v7}, Ljavax/crypto/SealedObject;->readSerialized([B)Ljava/lang/Object;

    #@35
    move-result-object v8

    #@36
    return-object v8

    #@37
    .line 179
    .end local v7    # "serialized":[B
    :cond_1
    const/4 v8, 0x2

    #@38
    invoke-virtual {v0, v8, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    #@3b
    goto :goto_0

    #@3c
    .line 183
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v5

    #@3d
    .line 186
    .local v5, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v8, Ljava/security/NoSuchAlgorithmException;

    #@3f
    invoke-virtual {v5}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    #@42
    move-result-object v9

    #@43
    invoke-direct {v8, v9}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@46
    throw v8

    #@47
    .line 199
    .end local v5    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_1
    move-exception v1

    #@48
    .line 201
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v8, Ljava/security/NoSuchAlgorithmException;

    #@4a
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    #@4d
    move-result-object v9

    #@4e
    invoke-direct {v8, v9}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@51
    throw v8

    #@52
    .line 195
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v3

    #@53
    .line 198
    .local v3, "e":Ljavax/crypto/BadPaddingException;
    new-instance v8, Ljava/security/NoSuchAlgorithmException;

    #@55
    invoke-virtual {v3}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    #@58
    move-result-object v9

    #@59
    invoke-direct {v8, v9}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v8

    #@5d
    .line 191
    .end local v3    # "e":Ljavax/crypto/BadPaddingException;
    :catch_3
    move-exception v4

    #@5e
    .line 194
    .local v4, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v8, Ljava/security/NoSuchAlgorithmException;

    #@60
    invoke-virtual {v4}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    #@63
    move-result-object v9

    #@64
    invoke-direct {v8, v9}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@67
    throw v8

    #@68
    .line 187
    .end local v4    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_4
    move-exception v2

    #@69
    .line 190
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v8, Ljava/security/NoSuchAlgorithmException;

    #@6b
    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    #@6e
    move-result-object v9

    #@6f
    invoke-direct {v8, v9}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@72
    throw v8
.end method

.method public final getObject(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
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
    .line 257
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v8

    #@6
    if-eqz v8, :cond_1

    #@8
    .line 258
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v9, "provider name empty or null"

    #@d
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v8

    #@11
    .line 261
    :cond_1
    :try_start_0
    iget-object v8, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    #@13
    invoke-static {v8, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@16
    move-result-object v0

    #@17
    .line 262
    .local v0, "cipher":Ljavax/crypto/Cipher;
    iget-object v8, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    #@19
    if-eqz v8, :cond_2

    #@1b
    iget-object v8, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    #@1d
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@20
    move-result v8

    #@21
    if-eqz v8, :cond_2

    #@23
    .line 263
    iget-object v8, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    #@25
    invoke-static {v8}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    #@28
    move-result-object v6

    #@29
    .line 264
    .local v6, "params":Ljava/security/AlgorithmParameters;
    iget-object v8, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    #@2b
    invoke-virtual {v6, v8}, Ljava/security/AlgorithmParameters;->init([B)V

    #@2e
    .line 265
    const/4 v8, 0x2

    #@2f
    invoke-virtual {v0, v8, p1, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    #@32
    .line 269
    .end local v6    # "params":Ljava/security/AlgorithmParameters;
    :goto_0
    iget-object v8, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    #@34
    invoke-virtual {v0, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    #@37
    move-result-object v7

    #@38
    .line 270
    .local v7, "serialized":[B
    invoke-static {v7}, Ljavax/crypto/SealedObject;->readSerialized([B)Ljava/lang/Object;

    #@3b
    move-result-object v8

    #@3c
    return-object v8

    #@3d
    .line 267
    .end local v7    # "serialized":[B
    :cond_2
    const/4 v8, 0x2

    #@3e
    invoke-virtual {v0, v8, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    #@41
    goto :goto_0

    #@42
    .line 271
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v5

    #@43
    .line 274
    .local v5, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v8, Ljava/security/NoSuchAlgorithmException;

    #@45
    invoke-virtual {v5}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    #@48
    move-result-object v9

    #@49
    invoke-direct {v8, v9}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v8

    #@4d
    .line 287
    .end local v5    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_1
    move-exception v1

    #@4e
    .line 289
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v8, Ljava/security/NoSuchAlgorithmException;

    #@50
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    #@53
    move-result-object v9

    #@54
    invoke-direct {v8, v9}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@57
    throw v8

    #@58
    .line 283
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v3

    #@59
    .line 286
    .local v3, "e":Ljavax/crypto/BadPaddingException;
    new-instance v8, Ljava/security/NoSuchAlgorithmException;

    #@5b
    invoke-virtual {v3}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    #@5e
    move-result-object v9

    #@5f
    invoke-direct {v8, v9}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@62
    throw v8

    #@63
    .line 279
    .end local v3    # "e":Ljavax/crypto/BadPaddingException;
    :catch_3
    move-exception v4

    #@64
    .line 282
    .local v4, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v8, Ljava/security/NoSuchAlgorithmException;

    #@66
    invoke-virtual {v4}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    #@69
    move-result-object v9

    #@6a
    invoke-direct {v8, v9}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v8

    #@6e
    .line 275
    .end local v4    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_4
    move-exception v2

    #@6f
    .line 278
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v8, Ljava/security/NoSuchAlgorithmException;

    #@71
    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    #@74
    move-result-object v9

    #@75
    invoke-direct {v8, v9}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@78
    throw v8
.end method

.method public final getObject(Ljavax/crypto/Cipher;)Ljava/lang/Object;
    .locals 3
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
    .line 226
    if-nez p1, :cond_0

    #@2
    .line 227
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "c == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 229
    :cond_0
    iget-object v1, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    #@d
    invoke-virtual {p1, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    #@10
    move-result-object v0

    #@11
    .line 230
    .local v0, "serialized":[B
    invoke-static {v0}, Ljavax/crypto/SealedObject;->readSerialized([B)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method
