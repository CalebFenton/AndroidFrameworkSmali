.class public Lsun/security/pkcs/PKCS8Key;
.super Ljava/lang/Object;
.source "PKCS8Key.java"

# interfaces
.implements Ljava/security/PrivateKey;


# static fields
.field private static final whitelist serialVersionUID:J = -0x353f5f37736abd94L

.field public static final blacklist version:Ljava/math/BigInteger;


# instance fields
.field protected greylist algid:Lsun/security/x509/AlgorithmId;

.field protected greylist encodedKey:[B

.field protected greylist key:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 67
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    sput-object v0, Lsun/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Lsun/security/x509/AlgorithmId;[B)V
    .registers 3
    .param p1, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    .line 84
    iput-object p2, p0, Lsun/security/pkcs/PKCS8Key;->key:[B

    .line 85
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->encode()[B

    .line 86
    return-void
.end method

.method static blacklist buildPKCS8Key(Lsun/security/x509/AlgorithmId;[B)Ljava/security/PrivateKey;
    .registers 10
    .param p0, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 176
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 177
    .local v0, "pkcs8EncodedKeyStream":Lsun/security/util/DerOutputStream;
    invoke-static {v0, p0, p1}, Lsun/security/pkcs/PKCS8Key;->encode(Lsun/security/util/DerOutputStream;Lsun/security/x509/AlgorithmId;[B)V

    .line 178
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 179
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 183
    .local v1, "pkcs8KeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    :try_start_11
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 186
    .local v2, "keyFac":Ljava/security/KeyFactory;
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_1d} :catch_20
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_11 .. :try_end_1d} :catch_1e

    return-object v3

    .line 189
    .end local v2    # "keyFac":Ljava/security/KeyFactory;
    :catch_1e
    move-exception v2

    goto :goto_22

    .line 187
    :catch_20
    move-exception v2

    .line 191
    nop

    .line 196
    :goto_22
    const-string v2, ""

    .line 202
    .local v2, "classname":Ljava/lang/String;
    :try_start_24
    const-string v3, "SUN"

    invoke-static {v3}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v3

    .line 203
    .local v3, "sunProvider":Ljava/security/Provider;
    if-eqz v3, :cond_7b

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PrivateKey.PKCS#8."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 206
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-virtual {v3, v4}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_24 .. :try_end_47} :catch_9d
    .catch Ljava/lang/InstantiationException; {:try_start_24 .. :try_end_47} :catch_9b
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_47} :catch_81

    move-object v2, v4

    .line 207
    if-eqz v2, :cond_75

    .line 211
    const/4 v4, 0x0

    .line 213
    .local v4, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_4b
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_4f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4b .. :try_end_4f} :catch_51
    .catch Ljava/lang/InstantiationException; {:try_start_4b .. :try_end_4f} :catch_9b
    .catch Ljava/lang/IllegalAccessException; {:try_start_4b .. :try_end_4f} :catch_81

    move-object v4, v5

    .line 219
    goto :goto_5d

    .line 214
    :catch_51
    move-exception v5

    .line 215
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    :try_start_52
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 216
    .local v6, "cl":Ljava/lang/ClassLoader;
    if-eqz v6, :cond_5d

    .line 217
    invoke-virtual {v6, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v4, v7

    .line 221
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    .end local v6    # "cl":Ljava/lang/ClassLoader;
    :cond_5d
    :goto_5d
    const/4 v5, 0x0

    .line 224
    .local v5, "inst":Ljava/lang/Object;
    if-eqz v4, :cond_65

    .line 225
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 226
    :cond_65
    instance-of v6, v5, Lsun/security/pkcs/PKCS8Key;

    if-eqz v6, :cond_74

    .line 227
    move-object v6, v5

    check-cast v6, Lsun/security/pkcs/PKCS8Key;

    .line 228
    .local v6, "result":Lsun/security/pkcs/PKCS8Key;
    iput-object p0, v6, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    .line 229
    iput-object p1, v6, Lsun/security/pkcs/PKCS8Key;->key:[B

    .line 230
    invoke-virtual {v6}, Lsun/security/pkcs/PKCS8Key;->parseKeyBits()V

    .line 231
    return-object v6

    .line 226
    .end local v3    # "sunProvider":Ljava/security/Provider;
    .end local v4    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "inst":Ljava/lang/Object;
    .end local v6    # "result":Lsun/security/pkcs/PKCS8Key;
    :cond_74
    goto :goto_9e

    .line 208
    .restart local v3    # "sunProvider":Ljava/security/Provider;
    :cond_75
    new-instance v4, Ljava/lang/InstantiationException;

    invoke-direct {v4}, Ljava/lang/InstantiationException;-><init>()V

    .end local v0    # "pkcs8EncodedKeyStream":Lsun/security/util/DerOutputStream;
    .end local v1    # "pkcs8KeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    .end local v2    # "classname":Ljava/lang/String;
    .end local p0    # "algid":Lsun/security/x509/AlgorithmId;
    .end local p1    # "key":[B
    throw v4

    .line 204
    .restart local v0    # "pkcs8EncodedKeyStream":Lsun/security/util/DerOutputStream;
    .restart local v1    # "pkcs8KeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    .restart local v2    # "classname":Ljava/lang/String;
    .restart local p0    # "algid":Lsun/security/x509/AlgorithmId;
    .restart local p1    # "key":[B
    :cond_7b
    new-instance v4, Ljava/lang/InstantiationException;

    invoke-direct {v4}, Ljava/lang/InstantiationException;-><init>()V

    .end local v0    # "pkcs8EncodedKeyStream":Lsun/security/util/DerOutputStream;
    .end local v1    # "pkcs8KeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    .end local v2    # "classname":Ljava/lang/String;
    .end local p0    # "algid":Lsun/security/x509/AlgorithmId;
    .end local p1    # "key":[B
    throw v4
    :try_end_81
    .catch Ljava/lang/ClassNotFoundException; {:try_start_52 .. :try_end_81} :catch_9d
    .catch Ljava/lang/InstantiationException; {:try_start_52 .. :try_end_81} :catch_9b
    .catch Ljava/lang/IllegalAccessException; {:try_start_52 .. :try_end_81} :catch_81

    .line 235
    .end local v3    # "sunProvider":Ljava/security/Provider;
    .restart local v0    # "pkcs8EncodedKeyStream":Lsun/security/util/DerOutputStream;
    .restart local v1    # "pkcs8KeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    .restart local v2    # "classname":Ljava/lang/String;
    .restart local p0    # "algid":Lsun/security/x509/AlgorithmId;
    .restart local p1    # "key":[B
    :catch_81
    move-exception v3

    .line 237
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

    .line 234
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_9b
    move-exception v3

    goto :goto_9e

    .line 233
    :catch_9d
    move-exception v3

    .line 238
    :goto_9e
    nop

    .line 240
    new-instance v3, Lsun/security/pkcs/PKCS8Key;

    invoke-direct {v3}, Lsun/security/pkcs/PKCS8Key;-><init>()V

    .line 241
    .local v3, "result":Lsun/security/pkcs/PKCS8Key;
    iput-object p0, v3, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    .line 242
    iput-object p1, v3, Lsun/security/pkcs/PKCS8Key;->key:[B

    .line 243
    return-object v3
.end method

.method static blacklist encode(Lsun/security/util/DerOutputStream;Lsun/security/x509/AlgorithmId;[B)V
    .registers 5
    .param p0, "out"    # Lsun/security/util/DerOutputStream;
    .param p1, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 389
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    sget-object v1, Lsun/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 390
    invoke-virtual {p1, v0}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 391
    invoke-virtual {v0, p2}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 392
    const/16 v1, 0x30

    invoke-virtual {p0, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 393
    return-void
.end method

.method public static blacklist parse(Lsun/security/util/DerValue;)Lsun/security/pkcs/PKCS8Key;
    .registers 4
    .param p0, "in"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-static {p0}, Lsun/security/pkcs/PKCS8Key;->parseKey(Lsun/security/util/DerValue;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 95
    .local v0, "key":Ljava/security/PrivateKey;
    instance-of v1, v0, Lsun/security/pkcs/PKCS8Key;

    if-eqz v1, :cond_c

    .line 96
    move-object v1, v0

    check-cast v1, Lsun/security/pkcs/PKCS8Key;

    return-object v1

    .line 98
    :cond_c
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Provider did not return PKCS8Key"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist parseKey(Lsun/security/util/DerValue;)Ljava/security/PrivateKey;
    .registers 6
    .param p0, "in"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    const-string v2, "corrupt private key"

    if-ne v0, v1, :cond_70

    .line 123
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    .line 124
    .local v0, "parsedVersion":Ljava/math/BigInteger;
    sget-object v1, Lsun/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 131
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    invoke-static {v1}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v1

    .line 134
    .local v1, "algorithm":Lsun/security/x509/AlgorithmId;
    :try_start_20
    iget-object v3, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v3

    invoke-static {v1, v3}, Lsun/security/pkcs/PKCS8Key;->buildPKCS8Key(Lsun/security/x509/AlgorithmId;[B)Ljava/security/PrivateKey;

    move-result-object v2
    :try_end_2a
    .catch Ljava/security/InvalidKeyException; {:try_start_20 .. :try_end_2a} :catch_3c

    .line 138
    .local v2, "privKey":Ljava/security/PrivateKey;
    nop

    .line 140
    iget-object v3, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-nez v3, :cond_34

    .line 142
    return-object v2

    .line 141
    :cond_34
    new-instance v3, Ljava/io/IOException;

    const-string v4, "excess private key"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 136
    .end local v2    # "privKey":Ljava/security/PrivateKey;
    :catch_3c
    move-exception v3

    .line 137
    .local v3, "e":Ljava/security/InvalidKeyException;
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 125
    .end local v1    # "algorithm":Lsun/security/x509/AlgorithmId;
    .end local v3    # "e":Ljava/security/InvalidKeyException;
    :cond_43
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version mismatch: (supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lsun/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    .line 126
    invoke-static {v3}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", parsed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 128
    invoke-static {v0}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    .end local v0    # "parsedVersion":Ljava/math/BigInteger;
    :cond_70
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

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

    .line 374
    :try_start_0
    invoke-virtual {p0, p1}, Lsun/security/pkcs/PKCS8Key;->decode(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_3} :catch_5

    .line 380
    nop

    .line 381
    return-void

    .line 376
    :catch_5
    move-exception v0

    .line 377
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 378
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deserialized key is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 379
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist decode(Ljava/io/InputStream;)V
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 328
    :try_start_0
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    .line 329
    .local v0, "val":Lsun/security/util/DerValue;
    iget-byte v1, v0, Lsun/security/util/DerValue;->tag:B

    const/16 v2, 0x30

    if-ne v1, v2, :cond_64

    .line 333
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    .line 334
    .local v1, "version":Ljava/math/BigInteger;
    sget-object v2, Lsun/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 340
    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    invoke-static {v2}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v2

    iput-object v2, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    .line 341
    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/pkcs/PKCS8Key;->key:[B

    .line 342
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->parseKeyBits()V

    .line 344
    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    .line 352
    .end local v1    # "version":Ljava/math/BigInteger;
    nop

    .line 353
    return-void

    .line 335
    .restart local v1    # "version":Ljava/math/BigInteger;
    :cond_37
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version mismatch: (supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lsun/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    .line 336
    invoke-static {v4}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", parsed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 338
    invoke-static {v1}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/security/pkcs/PKCS8Key;
    .end local p1    # "in":Ljava/io/InputStream;
    throw v2

    .line 330
    .end local v1    # "version":Ljava/math/BigInteger;
    .restart local p0    # "this":Lsun/security/pkcs/PKCS8Key;
    .restart local p1    # "in":Ljava/io/InputStream;
    :cond_64
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "invalid key format"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/security/pkcs/PKCS8Key;
    .end local p1    # "in":Ljava/io/InputStream;
    throw v1
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6c} :catch_6c

    .line 348
    .end local v0    # "val":Lsun/security/util/DerValue;
    .restart local p0    # "this":Lsun/security/pkcs/PKCS8Key;
    .restart local p1    # "in":Ljava/io/InputStream;
    :catch_6c
    move-exception v0

    .line 350
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 351
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

    .line 356
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lsun/security/pkcs/PKCS8Key;->decode(Ljava/io/InputStream;)V

    .line 357
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

    .line 263
    iget-object v0, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    iget-object v1, p0, Lsun/security/pkcs/PKCS8Key;->key:[B

    invoke-static {p1, v0, v1}, Lsun/security/pkcs/PKCS8Key;->encode(Lsun/security/util/DerOutputStream;Lsun/security/x509/AlgorithmId;[B)V

    .line 264
    return-void
.end method

.method public blacklist encode()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lsun/security/pkcs/PKCS8Key;->encodedKey:[B

    if-nez v0, :cond_31

    .line 295
    :try_start_4
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 296
    .local v0, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v0}, Lsun/security/pkcs/PKCS8Key;->encode(Lsun/security/util/DerOutputStream;)V

    .line 297
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/pkcs/PKCS8Key;->encodedKey:[B
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_12} :catch_13

    .line 302
    .end local v0    # "out":Lsun/security/util/DerOutputStream;
    goto :goto_31

    .line 299
    :catch_13
    move-exception v0

    .line 300
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 301
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 304
    .end local v0    # "e":Ljava/io/IOException;
    :cond_31
    :goto_31
    iget-object v0, p0, Lsun/security/pkcs/PKCS8Key;->encodedKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "object"    # Ljava/lang/Object;

    .line 406
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 407
    return v0

    .line 410
    :cond_4
    instance-of v1, p1, Ljava/security/Key;

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    .line 414
    iget-object v1, p0, Lsun/security/pkcs/PKCS8Key;->encodedKey:[B

    if-eqz v1, :cond_10

    .line 415
    iget-object v1, p0, Lsun/security/pkcs/PKCS8Key;->encodedKey:[B

    .local v1, "b1":[B
    goto :goto_14

    .line 417
    .end local v1    # "b1":[B
    :cond_10
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->getEncoded()[B

    move-result-object v1

    .line 421
    .restart local v1    # "b1":[B
    :goto_14
    move-object v3, p1

    check-cast v3, Ljava/security/Key;

    invoke-interface {v3}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    .line 425
    .local v3, "b2":[B
    array-length v4, v1

    array-length v5, v3

    if-eq v4, v5, :cond_20

    .line 426
    return v2

    .line 427
    :cond_20
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_21
    array-length v5, v1

    if-ge v4, v5, :cond_2e

    .line 428
    aget-byte v5, v1, v4

    aget-byte v6, v3, v4

    if-eq v5, v6, :cond_2b

    .line 429
    return v2

    .line 427
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 432
    :cond_2e
    return v0

    .line 435
    .end local v1    # "b1":[B
    .end local v3    # "b2":[B
    .end local v4    # "i":I
    :cond_2f
    return v2
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 250
    iget-object v0, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAlgorithmId()Lsun/security/x509/AlgorithmId;
    .registers 2

    .line 256
    iget-object v0, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public declared-synchronized whitelist test-api getEncoded()[B
    .registers 3

    monitor-enter p0

    .line 270
    const/4 v0, 0x0

    .line 272
    .local v0, "result":[B
    :try_start_2
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->encode()[B

    move-result-object v1
    :try_end_6
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_6} :catch_b
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    move-object v0, v1

    .line 274
    goto :goto_c

    .line 269
    .end local v0    # "result":[B
    .end local p0    # "this":Lsun/security/pkcs/PKCS8Key;
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0

    .line 273
    .restart local v0    # "result":[B
    :catch_b
    move-exception v1

    .line 275
    :goto_c
    monitor-exit p0

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 282
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, "retval":I
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->getEncoded()[B

    move-result-object v1

    .line 446
    .local v1, "b1":[B
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_6
    array-length v3, v1

    if-ge v2, v3, :cond_10

    .line 447
    aget-byte v3, v1, v2

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 446
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 449
    .end local v2    # "i":I
    :cond_10
    return v0
.end method

.method protected blacklist parseKeyBits()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->encode()[B

    .line 161
    return-void
.end method

.method protected whitelist writeReplace()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 360
    new-instance v0, Ljava/security/KeyRep;

    sget-object v1, Ljava/security/KeyRep$Type;->PRIVATE:Ljava/security/KeyRep$Type;

    .line 361
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    .line 363
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->getEncoded()[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/KeyRep;-><init>(Ljava/security/KeyRep$Type;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 360
    return-object v0
.end method
