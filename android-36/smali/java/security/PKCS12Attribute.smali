.class public final Ljava/security/PKCS12Attribute;
.super Ljava/lang/Object;
.source "PKCS12Attribute.java"

# interfaces
.implements Ljava/security/KeyStore$Entry$Attribute;


# static fields
.field private static final greylist-max-o COLON_SEPARATED_HEX_PAIRS:Ljava/util/regex/Pattern;


# instance fields
.field private final greylist-max-o encoded:[B

.field private greylist-max-o hashValue:I

.field private greylist-max-o name:Ljava/lang/String;

.field private greylist-max-o value:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    nop

    .line 44
    const-string v0, "^[0-9a-fA-F]{2}(:[0-9a-fA-F]{2})+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/security/PKCS12Attribute;->COLON_SEPARATED_HEX_PAIRS:Ljava/util/regex/Pattern;

    .line 43
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/PKCS12Attribute;->hashValue:I

    .line 73
    if-eqz p1, :cond_5a

    if-eqz p2, :cond_5a

    .line 79
    :try_start_a
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_51

    .line 82
    .local v0, "type":Lsun/security/util/ObjectIdentifier;
    nop

    .line 83
    iput-object p1, p0, Ljava/security/PKCS12Attribute;->name:Ljava/lang/String;

    .line 86
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 88
    .local v1, "length":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_39

    .line 89
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_39

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_39

    .line 90
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "values":[Ljava/lang/String;
    goto :goto_3e

    .line 92
    .end local v2    # "values":[Ljava/lang/String;
    :cond_39
    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v2

    move-object v2, v3

    .line 94
    .restart local v2    # "values":[Ljava/lang/String;
    :goto_3e
    iput-object p2, p0, Ljava/security/PKCS12Attribute;->value:Ljava/lang/String;

    .line 97
    :try_start_40
    invoke-direct {p0, v0, v2}, Ljava/security/PKCS12Attribute;->encode(Lsun/security/util/ObjectIdentifier;[Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Ljava/security/PKCS12Attribute;->encoded:[B
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_46} :catch_48

    .line 100
    nop

    .line 101
    return-void

    .line 98
    :catch_48
    move-exception v3

    .line 99
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Incorrect format: value"

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 80
    .end local v0    # "type":Lsun/security/util/ObjectIdentifier;
    .end local v1    # "length":I
    .end local v2    # "values":[Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_51
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incorrect format: name"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 74
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>([B)V
    .registers 5
    .param p1, "encoded"    # [B

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/PKCS12Attribute;->hashValue:I

    .line 126
    if-eqz p1, :cond_1e

    .line 129
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/PKCS12Attribute;->encoded:[B

    .line 132
    :try_start_10
    invoke-direct {p0, p1}, Ljava/security/PKCS12Attribute;->parse([B)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_15

    .line 135
    nop

    .line 136
    return-void

    .line 133
    :catch_15
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incorrect format: encoded"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 127
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o encode(Lsun/security/util/ObjectIdentifier;[Ljava/lang/String;)[B
    .registers 12
    .param p1, "type"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 233
    .local v0, "attribute":Lsun/security/util/DerOutputStream;
    invoke-virtual {v0, p1}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 234
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 235
    .local v1, "attrContent":Lsun/security/util/DerOutputStream;
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v2, :cond_47

    aget-object v5, p2, v4

    .line 236
    .local v5, "value":Ljava/lang/String;
    sget-object v6, Ljava/security/PKCS12Attribute;->COLON_SEPARATED_HEX_PAIRS:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_41

    .line 237
    new-instance v6, Ljava/math/BigInteger;

    .line 238
    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    .line 239
    .local v6, "bytes":[B
    aget-byte v7, v6, v3

    if-nez v7, :cond_3d

    .line 240
    array-length v7, v6

    const/4 v8, 0x1

    invoke-static {v6, v8, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 242
    :cond_3d
    invoke-virtual {v1, v6}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 243
    .end local v6    # "bytes":[B
    goto :goto_44

    .line 244
    :cond_41
    invoke-virtual {v1, v5}, Lsun/security/util/DerOutputStream;->putUTF8String(Ljava/lang/String;)V

    .line 235
    .end local v5    # "value":Ljava/lang/String;
    :goto_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 247
    :cond_47
    const/16 v2, 0x31

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 248
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 249
    .local v2, "attributeValue":Lsun/security/util/DerOutputStream;
    const/16 v3, 0x30

    invoke-virtual {v2, v3, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 251
    invoke-virtual {v2}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method private greylist-max-o parse([B)V
    .registers 15
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 256
    .local v0, "attributeValue":Lsun/security/util/DerInputStream;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v2

    .line 257
    .local v2, "attrSeq":[Lsun/security/util/DerValue;
    array-length v3, v2

    if-ne v3, v1, :cond_d4

    .line 260
    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v4

    .line 261
    .local v4, "type":Lsun/security/util/ObjectIdentifier;
    new-instance v5, Lsun/security/util/DerInputStream;

    const/4 v6, 0x1

    aget-object v7, v2, v6

    .line 262
    invoke-virtual {v7}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 263
    .local v5, "attrContent":Lsun/security/util/DerInputStream;
    invoke-virtual {v5, v6}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v7

    .line 264
    .local v7, "attrValueSet":[Lsun/security/util/DerValue;
    array-length v8, v7

    new-array v8, v8, [Ljava/lang/String;

    .line 266
    .local v8, "values":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_28
    array-length v10, v7

    if-ge v9, v10, :cond_c1

    .line 267
    aget-object v10, v7, v9

    iget-byte v10, v10, Lsun/security/util/DerValue;->tag:B

    const/4 v11, 0x4

    if-ne v10, v11, :cond_40

    .line 268
    aget-object v10, v7, v9

    invoke-virtual {v10}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v10

    invoke-static {v10}, Lsun/security/util/Debug;->toString([B)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto/16 :goto_bd

    .line 269
    :cond_40
    aget-object v10, v7, v9

    invoke-virtual {v10}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    .local v11, "printableString":Ljava/lang/String;
    if-eqz v10, :cond_4d

    .line 271
    aput-object v11, v8, v9

    goto/16 :goto_bd

    .line 272
    :cond_4d
    aget-object v10, v7, v9

    iget-byte v10, v10, Lsun/security/util/DerValue;->tag:B

    const/4 v12, 0x6

    if-ne v10, v12, :cond_61

    .line 273
    aget-object v10, v7, v9

    invoke-virtual {v10}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto :goto_bd

    .line 274
    :cond_61
    aget-object v10, v7, v9

    iget-byte v10, v10, Lsun/security/util/DerValue;->tag:B

    const/16 v12, 0x18

    if-ne v10, v12, :cond_76

    .line 275
    aget-object v10, v7, v9

    invoke-virtual {v10}, Lsun/security/util/DerValue;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto :goto_bd

    .line 276
    :cond_76
    aget-object v10, v7, v9

    iget-byte v10, v10, Lsun/security/util/DerValue;->tag:B

    const/16 v12, 0x17

    if-ne v10, v12, :cond_8b

    .line 277
    aget-object v10, v7, v9

    invoke-virtual {v10}, Lsun/security/util/DerValue;->getUTCTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto :goto_bd

    .line 278
    :cond_8b
    aget-object v10, v7, v9

    iget-byte v10, v10, Lsun/security/util/DerValue;->tag:B

    if-ne v10, v1, :cond_9e

    .line 279
    aget-object v10, v7, v9

    invoke-virtual {v10}, Lsun/security/util/DerValue;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto :goto_bd

    .line 280
    :cond_9e
    aget-object v10, v7, v9

    iget-byte v10, v10, Lsun/security/util/DerValue;->tag:B

    if-ne v10, v6, :cond_b1

    .line 281
    aget-object v10, v7, v9

    invoke-virtual {v10}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto :goto_bd

    .line 283
    :cond_b1
    aget-object v10, v7, v9

    invoke-virtual {v10}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v10

    invoke-static {v10}, Lsun/security/util/Debug;->toString([B)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 266
    .end local v11    # "printableString":Ljava/lang/String;
    :goto_bd
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_28

    .line 287
    .end local v9    # "i":I
    :cond_c1
    invoke-virtual {v4}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/security/PKCS12Attribute;->name:Ljava/lang/String;

    .line 288
    array-length v1, v8

    if-ne v1, v6, :cond_cd

    aget-object v1, v8, v3

    goto :goto_d1

    :cond_cd
    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_d1
    iput-object v1, p0, Ljava/security/PKCS12Attribute;->value:Ljava/lang/String;

    .line 289
    return-void

    .line 258
    .end local v4    # "type":Lsun/security/util/ObjectIdentifier;
    .end local v5    # "attrContent":Lsun/security/util/DerInputStream;
    .end local v7    # "attrValueSet":[Lsun/security/util/DerValue;
    .end local v8    # "values":[Ljava/lang/String;
    :cond_d4
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Invalid length for PKCS12Attribute"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 196
    if-ne p0, p1, :cond_4

    .line 197
    const/4 v0, 0x1

    return v0

    .line 199
    :cond_4
    instance-of v0, p1, Ljava/security/PKCS12Attribute;

    if-nez v0, :cond_a

    .line 200
    const/4 v0, 0x0

    return v0

    .line 202
    :cond_a
    iget-object v0, p0, Ljava/security/PKCS12Attribute;->encoded:[B

    move-object v1, p1

    check-cast v1, Ljava/security/PKCS12Attribute;

    iget-object v1, v1, Ljava/security/PKCS12Attribute;->encoded:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2

    .line 182
    iget-object v0, p0, Ljava/security/PKCS12Attribute;->encoded:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Ljava/security/PKCS12Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getValue()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Ljava/security/PKCS12Attribute;->value:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 213
    iget v0, p0, Ljava/security/PKCS12Attribute;->hashValue:I

    .line 214
    .local v0, "h":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 215
    iget-object v1, p0, Ljava/security/PKCS12Attribute;->encoded:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    move v0, v1

    iput v1, p0, Ljava/security/PKCS12Attribute;->hashValue:I

    .line 217
    :cond_e
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/security/PKCS12Attribute;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/PKCS12Attribute;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
