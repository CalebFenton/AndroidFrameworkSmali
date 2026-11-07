.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1RelativeOID.java"


# static fields
.field private static final blacklist LONG_LIMIT:J = 0xffffffffffff80L

.field static final blacklist TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field private blacklist contents:[B

.field private final blacklist identifier:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID$1;

    const-class v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;Ljava/lang/String;)V
    .registers 6
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;
    .param p2, "branchID"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 85
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->isValidIdentifier(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    .line 91
    return-void

    .line 87
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not a valid OID branch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "identifier"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 71
    if-eqz p1, :cond_2f

    .line 75
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->isValidIdentifier(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 80
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    .line 81
    return-void

    .line 77
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not a relative OID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'identifier\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>([BZ)V
    .registers 15
    .param p1, "contents"    # [B
    .param p2, "clone"    # Z

    .line 94
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v0, "objId":Ljava/lang/StringBuffer;
    const-wide/16 v1, 0x0

    .line 97
    .local v1, "value":J
    const/4 v3, 0x0

    .line 98
    .local v3, "bigValue":Ljava/math/BigInteger;
    const/4 v4, 0x1

    .line 100
    .local v4, "first":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d
    array-length v6, p1

    if-eq v5, v6, :cond_61

    .line 102
    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0xff

    .line 104
    .local v6, "b":I
    const-wide v7, 0xffffffffffff80L

    cmp-long v7, v1, v7

    const/16 v8, 0x2e

    const/4 v9, 0x7

    if-gtz v7, :cond_37

    .line 106
    and-int/lit8 v7, v6, 0x7f

    int-to-long v10, v7

    add-long/2addr v1, v10

    .line 107
    and-int/lit16 v7, v6, 0x80

    if-nez v7, :cond_35

    .line 109
    if-eqz v4, :cond_2c

    .line 111
    const/4 v4, 0x0

    goto :goto_2f

    .line 115
    :cond_2c
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 118
    :goto_2f
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 119
    const-wide/16 v1, 0x0

    goto :goto_5e

    .line 123
    :cond_35
    shl-long/2addr v1, v9

    goto :goto_5e

    .line 128
    :cond_37
    if-nez v3, :cond_3d

    .line 130
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 132
    :cond_3d
    and-int/lit8 v7, v6, 0x7f

    int-to-long v10, v7

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 133
    and-int/lit16 v7, v6, 0x80

    if-nez v7, :cond_5a

    .line 135
    if-eqz v4, :cond_50

    .line 137
    const/4 v4, 0x0

    goto :goto_53

    .line 141
    :cond_50
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    :goto_53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 145
    const/4 v3, 0x0

    .line 146
    const-wide/16 v1, 0x0

    goto :goto_5e

    .line 150
    :cond_5a
    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 100
    .end local v6    # "b":I
    :goto_5e
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 155
    .end local v5    # "i":I
    :cond_61
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    .line 156
    if-eqz p2, :cond_6e

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v5

    goto :goto_6f

    :cond_6e
    move-object v5, p1

    :goto_6f
    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->contents:[B

    .line 157
    return-void
.end method

.method static blacklist createPrimitive([BZ)Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;
    .registers 3
    .param p0, "contents"    # [B
    .param p1, "clone"    # Z

    .line 243
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;-><init>([BZ)V

    return-object v0
.end method

.method private blacklist doOutput(Ljava/io/ByteArrayOutputStream;)V
    .registers 6
    .param p1, "aOut"    # Ljava/io/ByteArrayOutputStream;

    .line 212
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "tok":Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;
    :goto_7
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 215
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "token":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    if-gt v2, v3, :cond_21

    .line 218
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_29

    .line 222
    :cond_21
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    .line 224
    .end local v1    # "token":Ljava/lang/String;
    :goto_29
    goto :goto_7

    .line 225
    :cond_2a
    return-void
.end method

.method public static blacklist fromContents([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;
    .registers 2
    .param p0, "contents"    # [B

    .line 26
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->createPrimitive([BZ)Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized blacklist getContents()[B
    .registers 3

    monitor-enter p0

    .line 229
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->contents:[B

    if-nez v0, :cond_13

    .line 231
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 233
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->doOutput(Ljava/io/ByteArrayOutputStream;)V

    .line 235
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->contents:[B

    .line 238
    .end local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;
    :cond_13
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->contents:[B
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object v0

    .line 228
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;
    .registers 3
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 61
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;
    .registers 6
    .param p0, "obj"    # Ljava/lang/Object;

    .line 31
    if-eqz p0, :cond_6a

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;

    if-eqz v0, :cond_7

    goto :goto_6a

    .line 35
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1b

    .line 37
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 38
    .local v0, "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;

    if-eqz v1, :cond_1a

    .line 40
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;

    return-object v1

    .line 42
    .end local v0    # "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1a
    goto :goto_49

    .line 43
    :cond_1b
    instance-of v0, p0, [B

    if-eqz v0, :cond_49

    .line 45
    move-object v0, p0

    check-cast v0, [B

    .line 48
    .local v0, "enc":[B
    :try_start_22
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2a} :catch_2b

    return-object v1

    .line 50
    :catch_2b
    move-exception v1

    .line 52
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to construct relative OID from byte[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    .end local v0    # "enc":[B
    .end local v1    # "e":Ljava/io/IOException;
    :cond_49
    :goto_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_6a
    :goto_6a
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;

    return-object v0
.end method

.method static blacklist isValidIdentifier(Ljava/lang/String;I)Z
    .registers 9
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "from"    # I

    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, "digitCount":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 251
    .local v1, "pos":I
    :goto_5
    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, p1, :cond_2f

    .line 253
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 255
    .local v5, "ch":C
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_25

    .line 257
    if-eqz v0, :cond_24

    if-le v0, v4, :cond_22

    add-int/lit8 v4, v1, 0x1

    .line 258
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_22

    goto :goto_24

    .line 263
    :cond_22
    const/4 v0, 0x0

    goto :goto_2d

    .line 260
    :cond_24
    :goto_24
    return v3

    .line 265
    :cond_25
    if-gt v2, v5, :cond_2e

    const/16 v2, 0x39

    if-gt v5, v2, :cond_2e

    .line 267
    add-int/lit8 v0, v0, 0x1

    .line 273
    .end local v5    # "ch":C
    :goto_2d
    goto :goto_5

    .line 271
    .restart local v5    # "ch":C
    :cond_2e
    return v3

    .line 275
    .end local v5    # "ch":C
    :cond_2f
    if-eqz v0, :cond_3d

    if-le v0, v4, :cond_3c

    add-int/lit8 v5, v1, 0x1

    .line 276
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_3c

    goto :goto_3d

    .line 281
    :cond_3c
    return v4

    .line 278
    :cond_3d
    :goto_3d
    return v3
.end method

.method static blacklist writeField(Ljava/io/ByteArrayOutputStream;J)V
    .registers 7
    .param p0, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "fieldValue"    # J

    .line 286
    const/16 v0, 0x9

    new-array v0, v0, [B

    .line 287
    .local v0, "result":[B
    const/16 v1, 0x8

    .line 288
    .local v1, "pos":I
    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 289
    :goto_c
    const-wide/16 v2, 0x80

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1d

    .line 291
    const/4 v2, 0x7

    shr-long/2addr p1, v2

    .line 292
    add-int/lit8 v1, v1, -0x1

    long-to-int v2, p1

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_c

    .line 294
    :cond_1d
    rsub-int/lit8 v2, v1, 0x9

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 295
    return-void
.end method

.method static blacklist writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V
    .registers 9
    .param p0, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "fieldValue"    # Ljava/math/BigInteger;

    .line 299
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    const/4 v1, 0x7

    div-int/2addr v0, v1

    .line 300
    .local v0, "byteCount":I
    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 302
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_33

    .line 306
    :cond_f
    move-object v3, p1

    .line 307
    .local v3, "tmpValue":Ljava/math/BigInteger;
    new-array v4, v0, [B

    .line 308
    .local v4, "tmp":[B
    add-int/lit8 v5, v0, -0x1

    .local v5, "i":I
    :goto_14
    if-ltz v5, :cond_26

    .line 310
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 311
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 308
    add-int/lit8 v5, v5, -0x1

    goto :goto_14

    .line 313
    .end local v5    # "i":I
    :cond_26
    add-int/lit8 v1, v0, -0x1

    aget-byte v5, v4, v1

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 314
    array-length v1, v4

    invoke-virtual {p0, v4, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 316
    .end local v3    # "tmpValue":Ljava/math/BigInteger;
    .end local v4    # "tmp":[B
    :goto_33
    return-void
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 5
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 181
    if-ne p0, p1, :cond_4

    .line 183
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;

    if-nez v0, :cond_a

    .line 187
    const/4 v0, 0x0

    return v0

    .line 190
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;

    .line 192
    .local v0, "that":Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;
    .registers 3
    .param p1, "branchID"    # Ljava/lang/String;

    .line 161
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;Ljava/lang/String;)V

    return-object v0
.end method

.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 5
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    const/16 v0, 0xd

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->getContents()[B

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    .line 203
    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 2

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method blacklist encodedLength(Z)I
    .registers 3
    .param p1, "withTag"    # Z

    .line 197
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->getContents()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
.end method

.method public blacklist getId()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
