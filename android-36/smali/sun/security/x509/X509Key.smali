.class public Lsun/security/x509/X509Key;
.super Ljava/lang/Object;
.source "X509Key.java"

# interfaces
.implements Ljava/security/PublicKey;


# static fields
.field private static final whitelist serialVersionUID:J = -0x4a5fe2419b658d5aL


# instance fields
.field protected greylist algid:Lsun/security/x509/AlgorithmId;

.field private blacklist bitStringKey:Lsun/security/util/BitArray;

.field protected greylist encodedKey:[B

.field protected greylist key:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private greylist unusedBits:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509Key;->key:[B

    .line 82
    const/4 v1, 0x0

    iput v1, p0, Lsun/security/x509/X509Key;->unusedBits:I

    .line 86
    iput-object v0, p0, Lsun/security/x509/X509Key;->bitStringKey:Lsun/security/util/BitArray;

    .line 96
    return-void
.end method

.method private constructor blacklist <init>(Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)V
    .registers 5
    .param p1, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p2, "key"    # Lsun/security/util/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509Key;->key:[B

    .line 82
    const/4 v1, 0x0

    iput v1, p0, Lsun/security/x509/X509Key;->unusedBits:I

    .line 86
    iput-object v0, p0, Lsun/security/x509/X509Key;->bitStringKey:Lsun/security/util/BitArray;

    .line 105
    iput-object p1, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    .line 106
    invoke-virtual {p0, p2}, Lsun/security/x509/X509Key;->setKey(Lsun/security/util/BitArray;)V

    .line 107
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->encode()[B

    .line 108
    return-void
.end method

.method static blacklist buildX509Key(Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)Ljava/security/PublicKey;
    .registers 10
    .param p0, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p1, "key"    # Lsun/security/util/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 213
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 214
    .local v0, "x509EncodedKeyStream":Lsun/security/util/DerOutputStream;
    invoke-static {v0, p0, p1}, Lsun/security/x509/X509Key;->encode(Lsun/security/util/DerOutputStream;Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)V

    .line 215
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    .line 216
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 220
    .local v1, "x509KeySpec":Ljava/security/spec/X509EncodedKeySpec;
    :try_start_11
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 223
    .local v2, "keyFac":Ljava/security/KeyFactory;
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_1d} :catch_29
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_11 .. :try_end_1d} :catch_1e

    return-object v3

    .line 226
    .end local v2    # "keyFac":Ljava/security/KeyFactory;
    :catch_1e
    move-exception v2

    .line 227
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 224
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_29
    move-exception v2

    .line 228
    nop

    .line 233
    const-string v2, ""

    .line 239
    .local v2, "classname":Ljava/lang/String;
    :try_start_2d
    const-string v3, "SUN"

    invoke-static {v3}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v3

    .line 240
    .local v3, "sunProvider":Ljava/security/Provider;
    if-eqz v3, :cond_85

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PublicKey.X.509."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 243
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-virtual {v3, v4}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_50
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2d .. :try_end_50} :catch_a7
    .catch Ljava/lang/InstantiationException; {:try_start_2d .. :try_end_50} :catch_a5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_50} :catch_8b

    move-object v2, v4

    .line 244
    if-eqz v2, :cond_7f

    .line 248
    const/4 v4, 0x0

    .line 250
    .local v4, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_54
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_58
    .catch Ljava/lang/ClassNotFoundException; {:try_start_54 .. :try_end_58} :catch_5a
    .catch Ljava/lang/InstantiationException; {:try_start_54 .. :try_end_58} :catch_a5
    .catch Ljava/lang/IllegalAccessException; {:try_start_54 .. :try_end_58} :catch_8b

    move-object v4, v5

    .line 256
    goto :goto_66

    .line 251
    :catch_5a
    move-exception v5

    .line 252
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    :try_start_5b
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 253
    .local v6, "cl":Ljava/lang/ClassLoader;
    if-eqz v6, :cond_66

    .line 254
    invoke-virtual {v6, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v4, v7

    .line 258
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    .end local v6    # "cl":Ljava/lang/ClassLoader;
    :cond_66
    :goto_66
    const/4 v5, 0x0

    .line 261
    .local v5, "inst":Ljava/lang/Object;
    if-eqz v4, :cond_6e

    .line 262
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 263
    :cond_6e
    instance-of v6, v5, Lsun/security/x509/X509Key;

    if-eqz v6, :cond_7e

    .line 264
    move-object v6, v5

    check-cast v6, Lsun/security/x509/X509Key;

    .line 265
    .local v6, "result":Lsun/security/x509/X509Key;
    iput-object p0, v6, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    .line 266
    invoke-virtual {v6, p1}, Lsun/security/x509/X509Key;->setKey(Lsun/security/util/BitArray;)V

    .line 267
    invoke-virtual {v6}, Lsun/security/x509/X509Key;->parseKeyBits()V

    .line 268
    return-object v6

    .line 263
    .end local v3    # "sunProvider":Ljava/security/Provider;
    .end local v4    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "inst":Ljava/lang/Object;
    .end local v6    # "result":Lsun/security/x509/X509Key;
    :cond_7e
    goto :goto_a8

    .line 245
    .restart local v3    # "sunProvider":Ljava/security/Provider;
    :cond_7f
    new-instance v4, Ljava/lang/InstantiationException;

    invoke-direct {v4}, Ljava/lang/InstantiationException;-><init>()V

    .end local v0    # "x509EncodedKeyStream":Lsun/security/util/DerOutputStream;
    .end local v1    # "x509KeySpec":Ljava/security/spec/X509EncodedKeySpec;
    .end local v2    # "classname":Ljava/lang/String;
    .end local p0    # "algid":Lsun/security/x509/AlgorithmId;
    .end local p1    # "key":Lsun/security/util/BitArray;
    throw v4

    .line 241
    .restart local v0    # "x509EncodedKeyStream":Lsun/security/util/DerOutputStream;
    .restart local v1    # "x509KeySpec":Ljava/security/spec/X509EncodedKeySpec;
    .restart local v2    # "classname":Ljava/lang/String;
    .restart local p0    # "algid":Lsun/security/x509/AlgorithmId;
    .restart local p1    # "key":Lsun/security/util/BitArray;
    :cond_85
    new-instance v4, Ljava/lang/InstantiationException;

    invoke-direct {v4}, Ljava/lang/InstantiationException;-><init>()V

    .end local v0    # "x509EncodedKeyStream":Lsun/security/util/DerOutputStream;
    .end local v1    # "x509KeySpec":Ljava/security/spec/X509EncodedKeySpec;
    .end local v2    # "classname":Ljava/lang/String;
    .end local p0    # "algid":Lsun/security/x509/AlgorithmId;
    .end local p1    # "key":Lsun/security/util/BitArray;
    throw v4
    :try_end_8b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5b .. :try_end_8b} :catch_a7
    .catch Ljava/lang/InstantiationException; {:try_start_5b .. :try_end_8b} :catch_a5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5b .. :try_end_8b} :catch_8b

    .line 272
    .end local v3    # "sunProvider":Ljava/security/Provider;
    .restart local v0    # "x509EncodedKeyStream":Lsun/security/util/DerOutputStream;
    .restart local v1    # "x509KeySpec":Ljava/security/spec/X509EncodedKeySpec;
    .restart local v2    # "classname":Ljava/lang/String;
    .restart local p0    # "algid":Lsun/security/x509/AlgorithmId;
    .restart local p1    # "key":Lsun/security/util/BitArray;
    :catch_8b
    move-exception v3

    .line 274
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " [internal error]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 271
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_a5
    move-exception v3

    goto :goto_a8

    .line 270
    :catch_a7
    move-exception v3

    .line 275
    :goto_a8
    nop

    .line 277
    new-instance v3, Lsun/security/x509/X509Key;

    invoke-direct {v3, p0, p1}, Lsun/security/x509/X509Key;-><init>(Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)V

    .line 278
    .local v3, "result":Lsun/security/x509/X509Key;
    return-object v3
.end method

.method static blacklist encode(Lsun/security/util/DerOutputStream;Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)V
    .registers 5
    .param p0, "out"    # Lsun/security/util/DerOutputStream;
    .param p1, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p2, "key"    # Lsun/security/util/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 473
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    invoke-virtual {p1, v0}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 474
    invoke-virtual {v0, p2}, Lsun/security/util/DerOutputStream;->putUnalignedBitString(Lsun/security/util/BitArray;)V

    .line 475
    const/16 v1, 0x30

    invoke-virtual {p0, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 476
    return-void
.end method

.method public static greylist parse(Lsun/security/util/DerValue;)Ljava/security/PublicKey;
    .registers 6
    .param p0, "in"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_4a

    .line 168
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    .line 170
    .local v0, "algorithm":Lsun/security/x509/AlgorithmId;
    :try_start_10
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 171
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v1

    .line 170
    invoke-static {v0, v1}, Lsun/security/x509/X509Key;->buildX509Key(Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)Ljava/security/PublicKey;

    move-result-object v1
    :try_end_1a
    .catch Ljava/security/InvalidKeyException; {:try_start_10 .. :try_end_1a} :catch_2c

    .line 175
    .local v1, "subjectKey":Ljava/security/PublicKey;
    nop

    .line 177
    iget-object v2, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_24

    .line 179
    return-object v1

    .line 178
    :cond_24
    new-instance v2, Ljava/io/IOException;

    const-string v3, "excess subject key"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    .end local v1    # "subjectKey":Ljava/security/PublicKey;
    :catch_2c
    move-exception v1

    .line 174
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subject key, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 166
    .end local v0    # "algorithm":Lsun/security/x509/AlgorithmId;
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :cond_4a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "corrupt subject key"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    :try_start_0
    invoke-virtual {p0, p1}, Lsun/security/x509/X509Key;->decode(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_3} :catch_5

    .line 425
    nop

    .line 426
    return-void

    .line 421
    :catch_5
    move-exception v0

    .line 422
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 423
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deserialized key is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 424
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 412
    return-void
.end method


# virtual methods
.method public blacklist decode(Ljava/io/InputStream;)V
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 385
    :try_start_0
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    .line 386
    .local v0, "val":Lsun/security/util/DerValue;
    iget-byte v1, v0, Lsun/security/util/DerValue;->tag:B

    const/16 v2, 0x30

    if-ne v1, v2, :cond_35

    .line 389
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    invoke-static {v1}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    .line 390
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v1

    invoke-virtual {p0, v1}, Lsun/security/x509/X509Key;->setKey(Lsun/security/util/BitArray;)V

    .line 391
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->parseKeyBits()V

    .line 392
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    if-nez v1, :cond_2d

    .line 399
    nop

    .line 400
    return-void

    .line 393
    :cond_2d
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "excess key data"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/security/x509/X509Key;
    .end local p1    # "in":Ljava/io/InputStream;
    throw v1

    .line 387
    .restart local p0    # "this":Lsun/security/x509/X509Key;
    .restart local p1    # "in":Ljava/io/InputStream;
    :cond_35
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "invalid key format"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/security/x509/X509Key;
    .end local p1    # "in":Ljava/io/InputStream;
    throw v1
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3d} :catch_3d

    .line 395
    .end local v0    # "val":Lsun/security/util/DerValue;
    .restart local p0    # "this":Lsun/security/x509/X509Key;
    .restart local p1    # "in":Ljava/io/InputStream;
    :catch_3d
    move-exception v0

    .line 397
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 398
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist decode([B)V
    .registers 3
    .param p1, "encodedKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 403
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lsun/security/x509/X509Key;->decode(Ljava/io/InputStream;)V

    .line 404
    return-void
.end method

.method public final blacklist encode(Lsun/security/util/DerOutputStream;)V
    .registers 4
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getKey()Lsun/security/util/BitArray;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lsun/security/x509/X509Key;->encode(Lsun/security/util/DerOutputStream;Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)V

    .line 301
    return-void
.end method

.method public blacklist encode()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 344
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 429
    if-ne p0, p1, :cond_4

    .line 430
    const/4 v0, 0x1

    return v0

    .line 432
    :cond_4
    instance-of v0, p1, Ljava/security/Key;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 433
    return v1

    .line 436
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getEncodedInternal()[B

    move-result-object v0

    .line 438
    .local v0, "thisEncoded":[B
    instance-of v2, p1, Lsun/security/x509/X509Key;

    if-eqz v2, :cond_1a

    .line 439
    move-object v2, p1

    check-cast v2, Lsun/security/x509/X509Key;

    invoke-virtual {v2}, Lsun/security/x509/X509Key;->getEncodedInternal()[B

    move-result-object v2

    .local v2, "otherEncoded":[B
    goto :goto_21

    .line 441
    .end local v2    # "otherEncoded":[B
    :cond_1a
    move-object v2, p1

    check-cast v2, Ljava/security/Key;

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    .line 443
    .restart local v2    # "otherEncoded":[B
    :goto_21
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_25
    .catch Ljava/security/InvalidKeyException; {:try_start_a .. :try_end_25} :catch_26

    return v1

    .line 444
    .end local v0    # "thisEncoded":[B
    .end local v2    # "otherEncoded":[B
    :catch_26
    move-exception v0

    .line 445
    .local v0, "e":Ljava/security/InvalidKeyException;
    return v1
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 285
    iget-object v0, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAlgorithmId()Lsun/security/x509/AlgorithmId;
    .registers 2

    .line 291
    iget-object v0, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2

    .line 308
    :try_start_0
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_a
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 309
    :catch_b
    move-exception v0

    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEncodedInternal()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lsun/security/x509/X509Key;->encodedKey:[B

    .line 317
    .local v0, "encoded":[B
    if-nez v0, :cond_33

    .line 319
    :try_start_4
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 320
    .local v1, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v1}, Lsun/security/x509/X509Key;->encode(Lsun/security/util/DerOutputStream;)V

    .line 321
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_10} :catch_15

    move-object v0, v2

    .line 325
    .end local v1    # "out":Lsun/security/util/DerOutputStream;
    nop

    .line 326
    iput-object v0, p0, Lsun/security/x509/X509Key;->encodedKey:[B

    goto :goto_33

    .line 322
    :catch_15
    move-exception v1

    .line 323
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 324
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 328
    .end local v1    # "e":Ljava/io/IOException;
    :cond_33
    :goto_33
    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 335
    const-string v0, "X.509"

    return-object v0
.end method

.method protected blacklist getKey()Lsun/security/util/BitArray;
    .registers 4

    .line 139
    new-instance v0, Lsun/security/util/BitArray;

    iget-object v1, p0, Lsun/security/x509/X509Key;->key:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    iget v2, p0, Lsun/security/x509/X509Key;->unusedBits:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lsun/security/x509/X509Key;->key:[B

    invoke-direct {v0, v1, v2}, Lsun/security/util/BitArray;-><init>(I[B)V

    iput-object v0, p0, Lsun/security/x509/X509Key;->bitStringKey:Lsun/security/util/BitArray;

    .line 143
    iget-object v0, p0, Lsun/security/x509/X509Key;->bitStringKey:Lsun/security/util/BitArray;

    invoke-virtual {v0}, Lsun/security/util/BitArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/BitArray;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 455
    :try_start_0
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getEncodedInternal()[B

    move-result-object v0

    .line 456
    .local v0, "b1":[B
    array-length v1, v0

    .line 457
    .local v1, "r":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    array-length v3, v0

    if-ge v2, v3, :cond_13

    .line 458
    aget-byte v3, v0, v2
    :try_end_b
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_b} :catch_14

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v3, v3, 0x25

    add-int/2addr v1, v3

    .line 457
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 460
    .end local v2    # "i":I
    :cond_13
    return v1

    .line 461
    .end local v0    # "b1":[B
    .end local v1    # "r":I
    :catch_14
    move-exception v0

    .line 463
    .local v0, "e":Ljava/security/InvalidKeyException;
    const/4 v1, 0x0

    return v1
.end method

.method protected blacklist parseKeyBits()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->encode()[B

    .line 198
    return-void
.end method

.method protected blacklist setKey(Lsun/security/util/BitArray;)V
    .registers 4
    .param p1, "key"    # Lsun/security/util/BitArray;

    .line 114
    invoke-virtual {p1}, Lsun/security/util/BitArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/BitArray;

    iput-object v0, p0, Lsun/security/x509/X509Key;->bitStringKey:Lsun/security/util/BitArray;

    .line 120
    invoke-virtual {p1}, Lsun/security/util/BitArray;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X509Key;->key:[B

    .line 121
    invoke-virtual {p1}, Lsun/security/util/BitArray;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    .line 122
    .local v0, "remaining":I
    nop

    .line 123
    if-nez v0, :cond_19

    const/4 v1, 0x0

    goto :goto_1b

    :cond_19
    rsub-int/lit8 v1, v0, 0x8

    :goto_1b
    iput v1, p0, Lsun/security/x509/X509Key;->unusedBits:I

    .line 124
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 352
    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 354
    .local v0, "encoder":Lsun/misc/HexDumpEncoder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "algorithm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", unparsed keybits = \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/X509Key;->key:[B

    .line 355
    invoke-virtual {v0, v2}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    return-object v1
.end method
