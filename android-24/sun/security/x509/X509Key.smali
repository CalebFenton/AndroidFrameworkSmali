.class public Lsun/security/x509/X509Key;
.super Ljava/lang/Object;
.source "X509Key.java"

# interfaces
.implements Ljava/security/PublicKey;


# static fields
.field private static final serialVersionUID:J = -0x4a5fe2419b658d5aL


# instance fields
.field protected algid:Lsun/security/x509/AlgorithmId;

.field private bitStringKey:Lsun/security/util/BitArray;

.field protected encodedKey:[B

.field protected key:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private unusedBits:I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 76
    iput-object v1, p0, Lsun/security/x509/X509Key;->key:[B

    #@6
    .line 83
    const/4 v0, 0x0

    #@7
    iput v0, p0, Lsun/security/x509/X509Key;->unusedBits:I

    #@9
    .line 86
    iput-object v1, p0, Lsun/security/x509/X509Key;->bitStringKey:Lsun/security/util/BitArray;

    #@b
    .line 96
    return-void
.end method

.method private constructor <init>(Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)V
    .locals 2
    .param p1, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p2, "key"    # Lsun/security/util/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 76
    iput-object v1, p0, Lsun/security/x509/X509Key;->key:[B

    #@6
    .line 83
    const/4 v0, 0x0

    #@7
    iput v0, p0, Lsun/security/x509/X509Key;->unusedBits:I

    #@9
    .line 86
    iput-object v1, p0, Lsun/security/x509/X509Key;->bitStringKey:Lsun/security/util/BitArray;

    #@b
    .line 105
    iput-object p1, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    #@d
    .line 106
    invoke-virtual {p0, p2}, Lsun/security/x509/X509Key;->setKey(Lsun/security/util/BitArray;)V

    #@10
    .line 107
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->encode()[B

    #@13
    .line 104
    return-void
.end method

.method static buildX509Key(Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)Ljava/security/PublicKey;
    .locals 19
    .param p0, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p1, "key"    # Lsun/security/util/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 213
    new-instance v14, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v14}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 214
    .local v14, "x509EncodedKeyStream":Lsun/security/util/DerOutputStream;
    move-object/from16 v0, p0

    #@7
    move-object/from16 v1, p1

    #@9
    invoke-static {v14, v0, v1}, Lsun/security/x509/X509Key;->encode(Lsun/security/util/DerOutputStream;Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)V

    #@c
    .line 216
    new-instance v15, Ljava/security/spec/X509EncodedKeySpec;

    #@e
    invoke-virtual {v14}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@11
    move-result-object v16

    #@12
    invoke-direct/range {v15 .. v16}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@15
    .line 220
    .local v15, "x509KeySpec":Ljava/security/spec/X509EncodedKeySpec;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    #@18
    move-result-object v16

    #@19
    invoke-static/range {v16 .. v16}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@1c
    move-result-object v11

    #@1d
    .line 223
    .local v11, "keyFac":Ljava/security/KeyFactory;
    invoke-virtual {v11, v15}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result-object v16

    #@21
    return-object v16

    #@22
    .line 226
    .end local v11    # "keyFac":Ljava/security/KeyFactory;
    :catch_0
    move-exception v8

    #@23
    .line 227
    .local v8, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v16, Ljava/security/InvalidKeyException;

    #@25
    invoke-virtual {v8}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    #@28
    move-result-object v17

    #@29
    move-object/from16 v0, v16

    #@2b
    move-object/from16 v1, v17

    #@2d
    invoke-direct {v0, v1, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@30
    throw v16

    #@31
    .line 224
    .end local v8    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_1
    move-exception v7

    #@32
    .line 233
    .local v7, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v3, ""

    #@35
    .line 239
    .local v3, "classname":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v16, "SUN"

    #@38
    invoke-static/range {v16 .. v16}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@3b
    move-result-object v13

    #@3c
    .line 240
    .local v13, "sunProvider":Ljava/security/Provider;
    if-nez v13, :cond_1

    #@3e
    .line 241
    new-instance v16, Ljava/lang/InstantiationException;

    #@40
    invoke-direct/range {v16 .. v16}, Ljava/lang/InstantiationException;-><init>()V

    #@43
    throw v16
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5

    #@44
    .line 270
    .end local v13    # "sunProvider":Ljava/security/Provider;
    :catch_2
    move-exception v4

    #@45
    .line 277
    :cond_0
    :goto_0
    new-instance v12, Lsun/security/x509/X509Key;

    #@47
    move-object/from16 v0, p0

    #@49
    move-object/from16 v1, p1

    #@4b
    invoke-direct {v12, v0, v1}, Lsun/security/x509/X509Key;-><init>(Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)V

    #@4e
    .line 278
    .local v12, "result":Lsun/security/x509/X509Key;
    return-object v12

    #@4f
    .line 242
    .end local v12    # "result":Lsun/security/x509/X509Key;
    .restart local v13    # "sunProvider":Ljava/security/Provider;
    :cond_1
    :try_start_2
    new-instance v16, Ljava/lang/StringBuilder;

    #@51
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v17, "PublicKey.X.509."

    #@57
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v16

    #@5b
    .line 243
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    #@5e
    move-result-object v17

    #@5f
    .line 242
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v16

    #@63
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v16

    #@67
    move-object/from16 v0, v16

    #@69
    invoke-virtual {v13, v0}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    .line 244
    if-nez v3, :cond_2

    #@6f
    .line 245
    new-instance v16, Ljava/lang/InstantiationException;

    #@71
    invoke-direct/range {v16 .. v16}, Ljava/lang/InstantiationException;-><init>()V

    #@74
    throw v16
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5

    #@75
    .line 271
    .end local v13    # "sunProvider":Ljava/security/Provider;
    :catch_3
    move-exception v6

    #@76
    .local v6, "e":Ljava/lang/InstantiationException;
    goto :goto_0

    #@77
    .line 248
    .end local v6    # "e":Ljava/lang/InstantiationException;
    .restart local v13    # "sunProvider":Ljava/security/Provider;
    :cond_2
    const/4 v10, 0x0

    #@78
    .line 250
    .local v10, "keyClass":Ljava/lang/Class;
    :try_start_3
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5

    #@7b
    move-result-object v10

    #@7c
    .line 258
    .end local v10    # "keyClass":Ljava/lang/Class;
    :cond_3
    :goto_1
    const/4 v9, 0x0

    #@7d
    .line 261
    .local v9, "inst":Ljava/lang/Object;
    if-eqz v10, :cond_4

    #@7f
    .line 262
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@82
    move-result-object v9

    #@83
    .line 263
    .end local v9    # "inst":Ljava/lang/Object;
    :cond_4
    instance-of v0, v9, Lsun/security/x509/X509Key;

    #@85
    move/from16 v16, v0

    #@87
    if-eqz v16, :cond_0

    #@89
    .line 264
    move-object v0, v9

    #@8a
    check-cast v0, Lsun/security/x509/X509Key;

    #@8c
    move-object v12, v0

    #@8d
    .line 265
    .restart local v12    # "result":Lsun/security/x509/X509Key;
    move-object/from16 v0, p0

    #@8f
    iput-object v0, v12, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    #@91
    .line 266
    move-object/from16 v0, p1

    #@93
    invoke-virtual {v12, v0}, Lsun/security/x509/X509Key;->setKey(Lsun/security/util/BitArray;)V

    #@96
    .line 267
    invoke-virtual {v12}, Lsun/security/x509/X509Key;->parseKeyBits()V

    #@99
    .line 268
    return-object v12

    #@9a
    .line 251
    .end local v12    # "result":Lsun/security/x509/X509Key;
    .restart local v10    # "keyClass":Ljava/lang/Class;
    :catch_4
    move-exception v4

    #@9b
    .line 252
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@9e
    move-result-object v2

    #@9f
    .line 253
    .local v2, "cl":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_3

    #@a1
    .line 254
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5

    #@a4
    move-result-object v10

    #@a5
    .local v10, "keyClass":Ljava/lang/Class;
    goto :goto_1

    #@a6
    .line 272
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .end local v10    # "keyClass":Ljava/lang/Class;
    .end local v13    # "sunProvider":Ljava/security/Provider;
    :catch_5
    move-exception v5

    #@a7
    .line 274
    .local v5, "e":Ljava/lang/IllegalAccessException;
    new-instance v16, Ljava/io/IOException;

    #@a9
    new-instance v17, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    move-object/from16 v0, v17

    #@b0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v17

    #@b4
    const-string/jumbo v18, " [internal error]"

    #@b7
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v17

    #@bb
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v17

    #@bf
    invoke-direct/range {v16 .. v17}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c2
    throw v16
.end method

.method static encode(Lsun/security/util/DerOutputStream;Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)V
    .locals 2
    .param p0, "out"    # Lsun/security/util/DerOutputStream;
    .param p1, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p2, "key"    # Lsun/security/util/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 472
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 473
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    invoke-virtual {p1, v0}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    #@8
    .line 474
    invoke-virtual {v0, p2}, Lsun/security/util/DerOutputStream;->putUnalignedBitString(Lsun/security/util/BitArray;)V

    #@b
    .line 475
    const/16 v1, 0x30

    #@d
    invoke-virtual {p0, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@10
    .line 471
    return-void
.end method

.method public static parse(Lsun/security/util/DerValue;)Ljava/security/PublicKey;
    .locals 6
    .param p0, "in"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 165
    iget-byte v3, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    const/16 v4, 0x30

    #@4
    if-eq v3, v4, :cond_0

    #@6
    .line 166
    new-instance v3, Ljava/io/IOException;

    #@8
    const-string/jumbo v4, "corrupt subject key"

    #@b
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 168
    :cond_0
    iget-object v3, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@11
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@14
    move-result-object v3

    #@15
    invoke-static {v3}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    #@18
    move-result-object v0

    #@19
    .line 171
    .local v0, "algorithm":Lsun/security/x509/AlgorithmId;
    :try_start_0
    iget-object v3, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@1b
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getUnalignedBitString()Lsun/security/util/BitArray;

    #@1e
    move-result-object v3

    #@1f
    .line 170
    invoke-static {v0, v3}, Lsun/security/x509/X509Key;->buildX509Key(Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result-object v2

    #@23
    .line 177
    .local v2, "subjectKey":Ljava/security/PublicKey;
    iget-object v3, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@25
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    .line 178
    new-instance v3, Ljava/io/IOException;

    #@2d
    const-string/jumbo v4, "excess subject key"

    #@30
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@33
    throw v3

    #@34
    .line 173
    .end local v2    # "subjectKey":Ljava/security/PublicKey;
    :catch_0
    move-exception v1

    #@35
    .line 174
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v3, Ljava/io/IOException;

    #@37
    new-instance v4, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v5, "subject key, "

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-direct {v3, v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@52
    throw v3

    #@53
    .line 179
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    .restart local v2    # "subjectKey":Ljava/security/PublicKey;
    :cond_1
    return-object v2
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
    .line 420
    :try_start_0
    invoke-virtual {p0, p1}, Lsun/security/x509/X509Key;->decode(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 418
    return-void

    #@4
    .line 421
    :catch_0
    move-exception v0

    #@5
    .line 422
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    #@8
    .line 423
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
    .line 424
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    .line 423
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

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 411
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getEncoded()[B

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    #@7
    .line 410
    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 385
    :try_start_0
    new-instance v1, Lsun/security/util/DerValue;

    #@2
    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    #@5
    .line 386
    .local v1, "val":Lsun/security/util/DerValue;
    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    #@7
    const/16 v3, 0x30

    #@9
    if-eq v2, v3, :cond_0

    #@b
    .line 387
    new-instance v2, Ljava/security/InvalidKeyException;

    #@d
    const-string/jumbo v3, "invalid key format"

    #@10
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@13
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 395
    .end local v1    # "val":Lsun/security/util/DerValue;
    :catch_0
    move-exception v0

    #@15
    .line 397
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/InvalidKeyException;

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "IOException: "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    .line 398
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    .line 397
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@32
    throw v2

    #@33
    .line 389
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "val":Lsun/security/util/DerValue;
    :cond_0
    :try_start_1
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@35
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@38
    move-result-object v2

    #@39
    invoke-static {v2}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    #@3c
    move-result-object v2

    #@3d
    iput-object v2, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    #@3f
    .line 390
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@41
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getUnalignedBitString()Lsun/security/util/BitArray;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {p0, v2}, Lsun/security/x509/X509Key;->setKey(Lsun/security/util/BitArray;)V

    #@48
    .line 391
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->parseKeyBits()V

    #@4b
    .line 392
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@4d
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    #@50
    move-result v2

    #@51
    if-eqz v2, :cond_1

    #@53
    .line 393
    new-instance v2, Ljava/security/InvalidKeyException;

    #@55
    const-string/jumbo v3, "excess key data"

    #@58
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@5c
    .line 380
    :cond_1
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
    .line 403
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@2
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5
    invoke-virtual {p0, v0}, Lsun/security/x509/X509Key;->decode(Ljava/io/InputStream;)V

    #@8
    .line 402
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
    .line 300
    iget-object v0, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    #@2
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getKey()Lsun/security/util/BitArray;

    #@5
    move-result-object v1

    #@6
    invoke-static {p1, v0, v1}, Lsun/security/x509/X509Key;->encode(Lsun/security/util/DerOutputStream;Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)V

    #@9
    .line 298
    return-void
.end method

.method public encode()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 344
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getEncodedInternal()[B

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, [B

    #@a
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 429
    if-ne p0, p1, :cond_0

    #@3
    .line 430
    const/4 v3, 0x1

    #@4
    return v3

    #@5
    .line 432
    :cond_0
    instance-of v3, p1, Ljava/security/Key;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 433
    return v4

    #@a
    .line 436
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getEncodedInternal()[B

    #@d
    move-result-object v2

    #@e
    .line 438
    .local v2, "thisEncoded":[B
    instance-of v3, p1, Lsun/security/x509/X509Key;

    #@10
    if-eqz v3, :cond_2

    #@12
    .line 439
    check-cast p1, Lsun/security/x509/X509Key;

    #@14
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lsun/security/x509/X509Key;->getEncodedInternal()[B

    #@17
    move-result-object v1

    #@18
    .line 443
    .local v1, "otherEncoded":[B
    :goto_0
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@1b
    move-result v3

    #@1c
    return v3

    #@1d
    .line 441
    .end local v1    # "otherEncoded":[B
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    check-cast p1, Ljava/security/Key;

    #@1f
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result-object v1

    #@23
    .restart local v1    # "otherEncoded":[B
    goto :goto_0

    #@24
    .line 444
    .end local v1    # "otherEncoded":[B
    .end local v2    # "thisEncoded":[B
    :catch_0
    move-exception v0

    #@25
    .line 445
    .local v0, "e":Ljava/security/InvalidKeyException;
    return v4
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 285
    iget-object v0, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

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
    .line 291
    iget-object v0, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    #@0
    .prologue
    .line 308
    :try_start_0
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getEncodedInternal()[B

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, [B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    return-object v1

    #@b
    .line 309
    :catch_0
    move-exception v0

    #@c
    .line 312
    .local v0, "e":Ljava/security/InvalidKeyException;
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method public getEncodedInternal()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 316
    iget-object v1, p0, Lsun/security/x509/X509Key;->encodedKey:[B

    #@2
    .line 317
    .local v1, "encoded":[B
    if-nez v1, :cond_0

    #@4
    .line 319
    :try_start_0
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@6
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@9
    .line 320
    .local v2, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v2}, Lsun/security/x509/X509Key;->encode(Lsun/security/util/DerOutputStream;)V

    #@c
    .line 321
    invoke-virtual {v2}, Lsun/security/util/DerOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    .line 326
    iput-object v1, p0, Lsun/security/x509/X509Key;->encodedKey:[B

    #@12
    .line 328
    .end local v2    # "out":Lsun/security/util/DerOutputStream;
    :cond_0
    return-object v1

    #@13
    .line 322
    :catch_0
    move-exception v0

    #@14
    .line 323
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/InvalidKeyException;

    #@16
    new-instance v4, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v5, "IOException : "

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    .line 324
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    .line 323
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@31
    throw v3
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 335
    const-string/jumbo v0, "X.509"

    #@3
    return-object v0
.end method

.method protected getKey()Lsun/security/util/BitArray;
    .locals 3

    #@0
    .prologue
    .line 139
    new-instance v0, Lsun/security/util/BitArray;

    #@2
    .line 140
    iget-object v1, p0, Lsun/security/x509/X509Key;->key:[B

    #@4
    array-length v1, v1

    #@5
    mul-int/lit8 v1, v1, 0x8

    #@7
    iget v2, p0, Lsun/security/x509/X509Key;->unusedBits:I

    #@9
    sub-int/2addr v1, v2

    #@a
    .line 141
    iget-object v2, p0, Lsun/security/x509/X509Key;->key:[B

    #@c
    .line 139
    invoke-direct {v0, v1, v2}, Lsun/security/util/BitArray;-><init>(I[B)V

    #@f
    iput-object v0, p0, Lsun/security/x509/X509Key;->bitStringKey:Lsun/security/util/BitArray;

    #@11
    .line 143
    iget-object v0, p0, Lsun/security/x509/X509Key;->bitStringKey:Lsun/security/util/BitArray;

    #@13
    invoke-virtual {v0}, Lsun/security/util/BitArray;->clone()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lsun/security/util/BitArray;

    #@19
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    .line 455
    :try_start_0
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getEncodedInternal()[B

    #@3
    move-result-object v0

    #@4
    .line 456
    .local v0, "b1":[B
    array-length v3, v0

    #@5
    .line 457
    .local v3, "r":I
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    :goto_0
    array-length v4, v0

    #@7
    if-ge v2, v4, :cond_0

    #@9
    .line 458
    aget-byte v4, v0, v2
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    and-int/lit16 v4, v4, 0xff

    #@d
    mul-int/lit8 v4, v4, 0x25

    #@f
    add-int/2addr v3, v4

    #@10
    .line 457
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 460
    :cond_0
    return v3

    #@14
    .line 461
    .end local v0    # "b1":[B
    .end local v2    # "i":I
    .end local v3    # "r":I
    :catch_0
    move-exception v1

    #@15
    .line 463
    .local v1, "e":Ljava/security/InvalidKeyException;
    const/4 v4, 0x0

    #@16
    return v4
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
    .line 197
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->encode()[B

    #@3
    .line 196
    return-void
.end method

.method protected setKey(Lsun/security/util/BitArray;)V
    .locals 3
    .param p1, "key"    # Lsun/security/util/BitArray;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 114
    invoke-virtual {p1}, Lsun/security/util/BitArray;->clone()Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    check-cast v1, Lsun/security/util/BitArray;

    #@7
    iput-object v1, p0, Lsun/security/x509/X509Key;->bitStringKey:Lsun/security/util/BitArray;

    #@9
    .line 120
    invoke-virtual {p1}, Lsun/security/util/BitArray;->toByteArray()[B

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Lsun/security/x509/X509Key;->key:[B

    #@f
    .line 121
    invoke-virtual {p1}, Lsun/security/util/BitArray;->length()I

    #@12
    move-result v1

    #@13
    rem-int/lit8 v0, v1, 0x8

    #@15
    .line 123
    .local v0, "remaining":I
    if-nez v0, :cond_0

    #@17
    move v1, v2

    #@18
    .line 122
    :goto_0
    iput v1, p0, Lsun/security/x509/X509Key;->unusedBits:I

    #@1a
    .line 113
    return-void

    #@1b
    .line 123
    :cond_0
    rsub-int/lit8 v1, v0, 0x8

    #@1d
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 352
    new-instance v0, Lsun/misc/HexDumpEncoder;

    #@2
    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@5
    .line 354
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
    iget-object v2, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    #@13
    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 355
    const-string/jumbo v2, ", unparsed keybits = \n"

    #@1e
    .line 354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 355
    iget-object v2, p0, Lsun/security/x509/X509Key;->key:[B

    #@24
    invoke-virtual {v0, v2}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    .line 354
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
