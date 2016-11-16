.class public Lsun/security/pkcs/PKCS8Key;
.super Ljava/lang/Object;
.source "PKCS8Key.java"

# interfaces
.implements Ljava/security/PrivateKey;


# static fields
.field private static final serialVersionUID:J = -0x353f5f37736abd94L

.field public static final version:Ljava/math/BigInteger;


# instance fields
.field protected algid:Lsun/security/x509/AlgorithmId;

.field protected encodedKey:[B

.field protected key:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 67
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    #@2
    sput-object v0, Lsun/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    #@4
    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Lsun/security/x509/AlgorithmId;[B)V
    .locals 0
    .param p1, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 83
    iput-object p1, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    #@5
    .line 84
    iput-object p2, p0, Lsun/security/pkcs/PKCS8Key;->key:[B

    #@7
    .line 85
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->encode()[B

    #@a
    .line 82
    return-void
.end method

.method static buildPKCS8Key(Lsun/security/x509/AlgorithmId;[B)Ljava/security/PrivateKey;
    .locals 19
    .param p0, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 176
    new-instance v12, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v12}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 177
    .local v12, "pkcs8EncodedKeyStream":Lsun/security/util/DerOutputStream;
    move-object/from16 v0, p0

    #@7
    move-object/from16 v1, p1

    #@9
    invoke-static {v12, v0, v1}, Lsun/security/pkcs/PKCS8Key;->encode(Lsun/security/util/DerOutputStream;Lsun/security/x509/AlgorithmId;[B)V

    #@c
    .line 179
    new-instance v13, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@e
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@11
    move-result-object v16

    #@12
    move-object/from16 v0, v16

    #@14
    invoke-direct {v13, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@17
    .line 183
    .local v13, "pkcs8KeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    #@1a
    move-result-object v16

    #@1b
    invoke-static/range {v16 .. v16}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@1e
    move-result-object v11

    #@1f
    .line 186
    .local v11, "keyFac":Ljava/security/KeyFactory;
    invoke-virtual {v11, v13}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_5

    #@22
    move-result-object v16

    #@23
    return-object v16

    #@24
    .line 187
    .end local v11    # "keyFac":Ljava/security/KeyFactory;
    :catch_0
    move-exception v7

    #@25
    .line 196
    :goto_0
    const-string/jumbo v3, ""

    #@28
    .line 202
    .local v3, "classname":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v16, "SUN"

    #@2b
    invoke-static/range {v16 .. v16}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@2e
    move-result-object v15

    #@2f
    .line 203
    .local v15, "sunProvider":Ljava/security/Provider;
    if-nez v15, :cond_1

    #@31
    .line 204
    new-instance v16, Ljava/lang/InstantiationException;

    #@33
    invoke-direct/range {v16 .. v16}, Ljava/lang/InstantiationException;-><init>()V

    #@36
    throw v16
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    #@37
    .line 233
    .end local v15    # "sunProvider":Ljava/security/Provider;
    :catch_1
    move-exception v4

    #@38
    .line 240
    :cond_0
    :goto_1
    new-instance v14, Lsun/security/pkcs/PKCS8Key;

    #@3a
    invoke-direct {v14}, Lsun/security/pkcs/PKCS8Key;-><init>()V

    #@3d
    .line 241
    .local v14, "result":Lsun/security/pkcs/PKCS8Key;
    move-object/from16 v0, p0

    #@3f
    iput-object v0, v14, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    #@41
    .line 242
    move-object/from16 v0, p1

    #@43
    iput-object v0, v14, Lsun/security/pkcs/PKCS8Key;->key:[B

    #@45
    .line 243
    return-object v14

    #@46
    .line 205
    .end local v14    # "result":Lsun/security/pkcs/PKCS8Key;
    .restart local v15    # "sunProvider":Ljava/security/Provider;
    :cond_1
    :try_start_2
    new-instance v16, Ljava/lang/StringBuilder;

    #@48
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v17, "PrivateKey.PKCS#8."

    #@4e
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v16

    #@52
    .line 206
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    #@55
    move-result-object v17

    #@56
    .line 205
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v16

    #@5a
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v16

    #@5e
    invoke-virtual/range {v15 .. v16}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    .line 207
    if-nez v3, :cond_2

    #@64
    .line 208
    new-instance v16, Ljava/lang/InstantiationException;

    #@66
    invoke-direct/range {v16 .. v16}, Ljava/lang/InstantiationException;-><init>()V

    #@69
    throw v16
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    #@6a
    .line 234
    .end local v15    # "sunProvider":Ljava/security/Provider;
    :catch_2
    move-exception v6

    #@6b
    .local v6, "e":Ljava/lang/InstantiationException;
    goto :goto_1

    #@6c
    .line 211
    .end local v6    # "e":Ljava/lang/InstantiationException;
    .restart local v15    # "sunProvider":Ljava/security/Provider;
    :cond_2
    const/4 v10, 0x0

    #@6d
    .line 213
    .local v10, "keyClass":Ljava/lang/Class;
    :try_start_3
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4

    #@70
    move-result-object v10

    #@71
    .line 221
    .end local v10    # "keyClass":Ljava/lang/Class;
    :cond_3
    :goto_2
    const/4 v9, 0x0

    #@72
    .line 224
    .local v9, "inst":Ljava/lang/Object;
    if-eqz v10, :cond_4

    #@74
    .line 225
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@77
    move-result-object v9

    #@78
    .line 226
    .end local v9    # "inst":Ljava/lang/Object;
    :cond_4
    instance-of v0, v9, Lsun/security/pkcs/PKCS8Key;

    #@7a
    move/from16 v16, v0

    #@7c
    if-eqz v16, :cond_0

    #@7e
    .line 227
    move-object v0, v9

    #@7f
    check-cast v0, Lsun/security/pkcs/PKCS8Key;

    #@81
    move-object v14, v0

    #@82
    .line 228
    .restart local v14    # "result":Lsun/security/pkcs/PKCS8Key;
    move-object/from16 v0, p0

    #@84
    iput-object v0, v14, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    #@86
    .line 229
    move-object/from16 v0, p1

    #@88
    iput-object v0, v14, Lsun/security/pkcs/PKCS8Key;->key:[B

    #@8a
    .line 230
    invoke-virtual {v14}, Lsun/security/pkcs/PKCS8Key;->parseKeyBits()V

    #@8d
    .line 231
    return-object v14

    #@8e
    .line 214
    .end local v14    # "result":Lsun/security/pkcs/PKCS8Key;
    .restart local v10    # "keyClass":Ljava/lang/Class;
    :catch_3
    move-exception v4

    #@8f
    .line 215
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@92
    move-result-object v2

    #@93
    .line 216
    .local v2, "cl":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_3

    #@95
    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    #@98
    move-result-object v10

    #@99
    .local v10, "keyClass":Ljava/lang/Class;
    goto :goto_2

    #@9a
    .line 235
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .end local v10    # "keyClass":Ljava/lang/Class;
    .end local v15    # "sunProvider":Ljava/security/Provider;
    :catch_4
    move-exception v5

    #@9b
    .line 237
    .local v5, "e":Ljava/lang/IllegalAccessException;
    new-instance v16, Ljava/io/IOException;

    #@9d
    new-instance v17, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    move-object/from16 v0, v17

    #@a4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v17

    #@a8
    const-string/jumbo v18, " [internal error]"

    #@ab
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v17

    #@af
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v17

    #@b3
    invoke-direct/range {v16 .. v17}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@b6
    throw v16

    #@b7
    .line 189
    .end local v3    # "classname":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v8

    #@b8
    .local v8, "e":Ljava/security/spec/InvalidKeySpecException;
    goto/16 :goto_0
.end method

.method static encode(Lsun/security/util/DerOutputStream;Lsun/security/x509/AlgorithmId;[B)V
    .locals 2
    .param p0, "out"    # Lsun/security/util/DerOutputStream;
    .param p1, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 399
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 400
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    sget-object v1, Lsun/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    #@7
    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    #@a
    .line 401
    invoke-virtual {p1, v0}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    #@d
    .line 402
    invoke-virtual {v0, p2}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    #@10
    .line 403
    const/16 v1, 0x30

    #@12
    invoke-virtual {p0, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@15
    .line 398
    return-void
.end method

.method public static parse(Lsun/security/util/DerValue;)Lsun/security/pkcs/PKCS8Key;
    .locals 3
    .param p0, "in"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    invoke-static {p0}, Lsun/security/pkcs/PKCS8Key;->parseKey(Lsun/security/util/DerValue;)Ljava/security/PrivateKey;

    #@3
    move-result-object v0

    #@4
    .line 95
    .local v0, "key":Ljava/security/PrivateKey;
    instance-of v1, v0, Lsun/security/pkcs/PKCS8Key;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 96
    nop

    #@9
    nop

    #@a
    .end local v0    # "key":Ljava/security/PrivateKey;
    return-object v0

    #@b
    .line 98
    .restart local v0    # "key":Ljava/security/PrivateKey;
    :cond_0
    new-instance v1, Ljava/io/IOException;

    #@d
    const-string/jumbo v2, "Provider did not return PKCS8Key"

    #@10
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@13
    throw v1
.end method

.method public static parseKey(Lsun/security/util/DerValue;)Ljava/security/PrivateKey;
    .locals 7
    .param p0, "in"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    iget-byte v4, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    const/16 v5, 0x30

    #@4
    if-eq v4, v5, :cond_0

    #@6
    .line 121
    new-instance v4, Ljava/io/IOException;

    #@8
    const-string/jumbo v5, "corrupt private key"

    #@b
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v4

    #@f
    .line 123
    :cond_0
    iget-object v4, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@11
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    #@14
    move-result-object v2

    #@15
    .line 124
    .local v2, "parsedVersion":Ljava/math/BigInteger;
    sget-object v4, Lsun/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    #@17
    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v4

    #@1b
    if-nez v4, :cond_1

    #@1d
    .line 125
    new-instance v4, Ljava/io/IOException;

    #@1f
    new-instance v5, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v6, "version mismatch: (supported: "

    #@27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    .line 126
    sget-object v6, Lsun/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    #@2d
    invoke-static {v6}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    #@30
    move-result-object v6

    #@31
    .line 125
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    .line 127
    const-string/jumbo v6, ", parsed: "

    #@38
    .line 125
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    .line 128
    invoke-static {v2}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    .line 125
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v4

    #@4c
    .line 131
    :cond_1
    iget-object v4, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@4e
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@51
    move-result-object v4

    #@52
    invoke-static {v4}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    #@55
    move-result-object v0

    #@56
    .line 134
    .local v0, "algorithm":Lsun/security/x509/AlgorithmId;
    :try_start_0
    iget-object v4, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@58
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getOctetString()[B

    #@5b
    move-result-object v4

    #@5c
    invoke-static {v0, v4}, Lsun/security/pkcs/PKCS8Key;->buildPKCS8Key(Lsun/security/x509/AlgorithmId;[B)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    #@5f
    move-result-object v3

    #@60
    .line 140
    .local v3, "privKey":Ljava/security/PrivateKey;
    iget-object v4, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@62
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->available()I

    #@65
    move-result v4

    #@66
    if-eqz v4, :cond_2

    #@68
    .line 141
    new-instance v4, Ljava/io/IOException;

    #@6a
    const-string/jumbo v5, "excess private key"

    #@6d
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@70
    throw v4

    #@71
    .line 136
    .end local v3    # "privKey":Ljava/security/PrivateKey;
    :catch_0
    move-exception v1

    #@72
    .line 137
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v4, Ljava/io/IOException;

    #@74
    const-string/jumbo v5, "corrupt private key"

    #@77
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v4

    #@7b
    .line 142
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    .restart local v3    # "privKey":Ljava/security/PrivateKey;
    :cond_2
    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 385
    :try_start_0
    invoke-virtual {p0, p1}, Lsun/security/pkcs/PKCS8Key;->decode(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 382
    return-void

    #@4
    .line 387
    :catch_0
    move-exception v0

    #@5
    .line 388
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    #@8
    .line 389
    new-instance v1, Ljava/io/IOException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "deserialized key is invalid: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 390
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    .line 389
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 339
    :try_start_0
    new-instance v1, Lsun/security/util/DerValue;

    #@2
    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    #@5
    .line 340
    .local v1, "val":Lsun/security/util/DerValue;
    iget-byte v3, v1, Lsun/security/util/DerValue;->tag:B

    #@7
    const/16 v4, 0x30

    #@9
    if-eq v3, v4, :cond_0

    #@b
    .line 341
    new-instance v3, Ljava/security/InvalidKeyException;

    #@d
    const-string/jumbo v4, "invalid key format"

    #@10
    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@13
    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 359
    .end local v1    # "val":Lsun/security/util/DerValue;
    :catch_0
    move-exception v0

    #@15
    .line 361
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/InvalidKeyException;

    #@17
    new-instance v4, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v5, "IOException : "

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    .line 362
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    .line 361
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@32
    throw v3

    #@33
    .line 344
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "val":Lsun/security/util/DerValue;
    :cond_0
    :try_start_1
    iget-object v3, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@35
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    #@38
    move-result-object v2

    #@39
    .line 345
    .local v2, "version":Ljava/math/BigInteger;
    sget-object v3, Lsun/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    #@3b
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v3

    #@3f
    if-nez v3, :cond_1

    #@41
    .line 346
    new-instance v3, Ljava/io/IOException;

    #@43
    new-instance v4, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v5, "version mismatch: (supported: "

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    .line 347
    sget-object v5, Lsun/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    #@51
    invoke-static {v5}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    #@54
    move-result-object v5

    #@55
    .line 346
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    .line 348
    const-string/jumbo v5, ", parsed: "

    #@5c
    .line 346
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    .line 349
    invoke-static {v2}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    #@63
    move-result-object v5

    #@64
    .line 346
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v4

    #@68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v4

    #@6c
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v3

    #@70
    .line 351
    :cond_1
    iget-object v3, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@72
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@75
    move-result-object v3

    #@76
    invoke-static {v3}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    #@79
    move-result-object v3

    #@7a
    iput-object v3, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    #@7c
    .line 352
    iget-object v3, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@7e
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    #@81
    move-result-object v3

    #@82
    iput-object v3, p0, Lsun/security/pkcs/PKCS8Key;->key:[B

    #@84
    .line 353
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->parseKeyBits()V

    #@87
    .line 355
    iget-object v3, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@89
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@8c
    move-result v3

    #@8d
    if-eqz v3, :cond_2

    #@8f
    .line 334
    :cond_2
    return-void
.end method

.method public decode([B)V
    .locals 1
    .param p1, "encodedKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 367
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@2
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5
    invoke-virtual {p0, v0}, Lsun/security/pkcs/PKCS8Key;->decode(Ljava/io/InputStream;)V

    #@8
    .line 366
    return-void
.end method

.method public final encode(Lsun/security/util/DerOutputStream;)V
    .locals 2
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    #@2
    iget-object v1, p0, Lsun/security/pkcs/PKCS8Key;->key:[B

    #@4
    invoke-static {p1, v0, v1}, Lsun/security/pkcs/PKCS8Key;->encode(Lsun/security/util/DerOutputStream;Lsun/security/x509/AlgorithmId;[B)V

    #@7
    .line 261
    return-void
.end method

.method public encode()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 291
    iget-object v2, p0, Lsun/security/pkcs/PKCS8Key;->encodedKey:[B

    #@2
    if-nez v2, :cond_0

    #@4
    .line 295
    :try_start_0
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@6
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@9
    .line 296
    .local v1, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v1}, Lsun/security/pkcs/PKCS8Key;->encode(Lsun/security/util/DerOutputStream;)V

    #@c
    .line 297
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@f
    move-result-object v2

    #@10
    iput-object v2, p0, Lsun/security/pkcs/PKCS8Key;->encodedKey:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 304
    .end local v1    # "out":Lsun/security/util/DerOutputStream;
    :cond_0
    iget-object v2, p0, Lsun/security/pkcs/PKCS8Key;->encodedKey:[B

    #@14
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, [B

    #@1a
    return-object v2

    #@1b
    .line 299
    :catch_0
    move-exception v0

    #@1c
    .line 300
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/InvalidKeyException;

    #@1e
    new-instance v3, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v4, "IOException : "

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    .line 301
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    .line 300
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@39
    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 417
    if-ne p0, p1, :cond_0

    #@4
    .line 418
    return v6

    #@5
    .line 421
    :cond_0
    instance-of v3, p1, Ljava/security/Key;

    #@7
    if-eqz v3, :cond_5

    #@9
    .line 425
    iget-object v3, p0, Lsun/security/pkcs/PKCS8Key;->encodedKey:[B

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 426
    iget-object v0, p0, Lsun/security/pkcs/PKCS8Key;->encodedKey:[B

    #@f
    .line 432
    .local v0, "b1":[B
    :goto_0
    check-cast p1, Ljava/security/Key;

    #@11
    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@14
    move-result-object v1

    #@15
    .line 436
    .local v1, "b2":[B
    array-length v3, v0

    #@16
    array-length v4, v1

    #@17
    if-eq v3, v4, :cond_2

    #@19
    .line 437
    return v5

    #@1a
    .line 428
    .end local v0    # "b1":[B
    .end local v1    # "b2":[B
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->getEncoded()[B

    #@1d
    move-result-object v0

    #@1e
    .restart local v0    # "b1":[B
    goto :goto_0

    #@1f
    .line 438
    .end local p1    # "object":Ljava/lang/Object;
    .restart local v1    # "b2":[B
    :cond_2
    const/4 v2, 0x0

    #@20
    .local v2, "i":I
    :goto_1
    array-length v3, v0

    #@21
    if-ge v2, v3, :cond_4

    #@23
    .line 439
    aget-byte v3, v0, v2

    #@25
    aget-byte v4, v1, v2

    #@27
    if-eq v3, v4, :cond_3

    #@29
    .line 440
    return v5

    #@2a
    .line 438
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 443
    :cond_4
    return v6

    #@2e
    .line 446
    .end local v0    # "b1":[B
    .end local v1    # "b2":[B
    .end local v2    # "i":I
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_5
    return v5
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    #@2
    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAlgorithmId()Lsun/security/x509/AlgorithmId;
    .locals 1

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    #@2
    return-object v0
.end method

.method public declared-synchronized getEncoded()[B
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 270
    const/4 v1, 0x0

    #@2
    .line 272
    .local v1, "result":[B
    :try_start_0
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->encode()[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    move-result-object v1

    #@6
    .end local v1    # "result":[B
    :goto_0
    monitor-exit p0

    #@7
    .line 275
    return-object v1

    #@8
    .line 273
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Ljava/security/InvalidKeyException;
    goto :goto_0

    #@a
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catchall_0
    move-exception v2

    #@b
    monitor-exit p0

    #@c
    throw v2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 282
    const-string/jumbo v0, "PKCS#8"

    #@3
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 454
    const/4 v2, 0x0

    #@1
    .line 455
    .local v2, "retval":I
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->getEncoded()[B

    #@4
    move-result-object v0

    #@5
    .line 457
    .local v0, "b1":[B
    const/4 v1, 0x1

    #@6
    .local v1, "i":I
    :goto_0
    array-length v3, v0

    #@7
    if-ge v1, v3, :cond_0

    #@9
    .line 458
    aget-byte v3, v0, v1

    #@b
    mul-int/2addr v3, v1

    #@c
    add-int/2addr v2, v3

    #@d
    .line 457
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 460
    :cond_0
    return v2
.end method

.method protected parseKeyBits()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->encode()[B

    #@3
    .line 159
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 312
    new-instance v0, Lsun/misc/HexDumpEncoder;

    #@2
    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@5
    .line 314
    .local v0, "encoder":Lsun/misc/HexDumpEncoder;
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "algorithm = "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    iget-object v2, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    #@13
    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 315
    const-string/jumbo v2, ", unparsed keybits = \n"

    #@1e
    .line 314
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 315
    iget-object v2, p0, Lsun/security/pkcs/PKCS8Key;->key:[B

    #@24
    invoke-virtual {v0, v2}, Lsun/misc/CharacterEncoder;->encodeBuffer([B)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    .line 314
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    return-object v1
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 371
    new-instance v0, Ljava/security/KeyRep;

    #@2
    sget-object v1, Ljava/security/KeyRep$Type;->PRIVATE:Ljava/security/KeyRep$Type;

    #@4
    .line 372
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->getAlgorithm()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 373
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->getFormat()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 374
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->getEncoded()[B

    #@f
    move-result-object v4

    #@10
    .line 371
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/KeyRep;-><init>(Ljava/security/KeyRep$Type;Ljava/lang/String;Ljava/lang/String;[B)V

    #@13
    return-object v0
.end method
