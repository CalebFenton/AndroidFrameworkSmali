.class public Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1ObjectIdentifier.java"


# static fields
.field static final blacklist TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

.field private static final blacklist pool:Ljava/util/concurrent/ConcurrentMap;


# instance fields
.field private blacklist contents:[B

.field private final blacklist identifier:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 19
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$1;

    const-class v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    .line 99
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->pool:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .registers 4

    .line 215
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    const/4 v0, 0x0

    .line 216
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->isValidIdentifier(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    return-void

    .line 218
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "string "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not a valid OID branch"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4

    .line 194
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_2e

    .line 199
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    return-void

    .line 201
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "string "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not an OID"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 197
    :cond_2e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'identifier\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method constructor blacklist <init>([BZ)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 106
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 107
    array-length v2, v1

    if-eqz v2, :cond_a1

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    .line 117
    :goto_14
    array-length v11, v1

    if-eq v7, v11, :cond_8e

    .line 119
    aget-byte v11, v1, v7

    const-wide v12, 0xffffffffffff80L

    cmp-long v12, v8, v12

    const/4 v13, 0x7

    const/16 v14, 0x2e

    const/16 v4, 0x32

    const-wide/16 v15, 0x50

    if-gtz v12, :cond_5a

    and-int/lit8 v12, v11, 0x7f

    int-to-long v5, v12

    add-long/2addr v8, v5

    and-int/lit16 v5, v11, 0x80

    if-nez v5, :cond_58

    if-eqz v3, :cond_4f

    const-wide/16 v5, 0x28

    cmp-long v3, v8, v5

    if-gez v3, :cond_3f

    const/16 v3, 0x30

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4e

    :cond_3f
    cmp-long v3, v8, v15

    if-gez v3, :cond_4a

    const/16 v3, 0x31

    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-long/2addr v8, v5

    goto :goto_4e

    .line 139
    :cond_4a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-long/2addr v8, v15

    :goto_4e
    const/4 v3, 0x0

    .line 145
    :cond_4f
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v8, 0x0

    goto :goto_8b

    :cond_58
    shl-long/2addr v8, v13

    goto :goto_8b

    :cond_5a
    if-nez v10, :cond_60

    .line 158
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    :cond_60
    and-int/lit8 v5, v11, 0x7f

    int-to-long v5, v5

    .line 160
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    and-int/lit16 v6, v11, 0x80

    if-nez v6, :cond_87

    if-eqz v3, :cond_7d

    .line 165
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    invoke-static/range {v15 .. v16}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    const/4 v3, 0x0

    .line 170
    :cond_7d
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    goto :goto_8b

    .line 177
    :cond_87
    invoke-virtual {v5, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v10

    :goto_8b
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    .line 183
    :cond_8e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    if-eqz p2, :cond_9e

    .line 184
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    :cond_9e
    iput-object v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->contents:[B

    return-void

    .line 109
    :cond_a1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty OBJECT IDENTIFIER with no sub-identifiers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist createPrimitive([BZ)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 4

    .line 419
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;-><init>([B)V

    .line 420
    sget-object v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->pool:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-nez v0, :cond_14

    .line 423
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>([BZ)V

    :cond_14
    return-object v0
.end method

.method private blacklist doOutput(Ljava/io/ByteArrayOutputStream;)V
    .registers 8

    .line 259
    new-instance v0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x28

    .line 262
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    if-gt v2, v3, :cond_27

    int-to-long v4, p0

    .line 265
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    add-long/2addr v4, v1

    invoke-static {p1, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_38

    .line 269
    :cond_27
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    int-to-long v4, p0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    .line 272
    :goto_38
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_59

    .line 274
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_50

    .line 277
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_38

    .line 281
    :cond_50
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_38

    :cond_59
    return-void
.end method

.method public static blacklist fromContents([B)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    const/4 v0, 0x1

    .line 29
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->createPrimitive([BZ)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized blacklist getContents()[B
    .registers 2

    monitor-enter p0

    .line 288
    :try_start_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->contents:[B

    if-nez v0, :cond_16

    .line 290
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 292
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->doOutput(Ljava/io/ByteArrayOutputStream;)V

    .line 294
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->contents:[B

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 297
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->contents:[B
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_14

    monitor-exit p0

    return-object v0

    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_14

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 4

    if-nez p1, :cond_29

    .line 85
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isParsed()Z

    move-result v0

    if-nez v0, :cond_29

    const/16 v0, 0x80

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v1

    if-ne v0, v1, :cond_29

    .line 87
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getBaseObject()Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 88
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-nez v1, :cond_29

    .line 90
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->fromContents([B)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    return-object p0

    .line 94
    :cond_29
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 4

    if-eqz p0, :cond_63

    .line 41
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_7

    goto :goto_63

    .line 45
    :cond_7
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_19

    .line 47
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 48
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_44

    .line 50
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0

    .line 53
    :cond_19
    instance-of v0, p0, [B

    if-eqz v0, :cond_44

    .line 57
    :try_start_1d
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    move-exception p0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct object identifier from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_63
    :goto_63
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method

.method private static blacklist isValidIdentifier(Ljava/lang/String;)Z
    .registers 4

    .line 344
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lt v0, v1, :cond_25

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_12

    goto :goto_25

    .line 349
    :cond_12
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_25

    const/16 v1, 0x32

    if-le v0, v1, :cond_1f

    goto :goto_25

    :cond_1f
    const/4 v0, 0x2

    .line 355
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->isValidIdentifier(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_25
    :goto_25
    return v2
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 328
    :cond_4
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 333
    :cond_a
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object p1, p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 3

    .line 242
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    return-object v0
.end method

.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 4

    const/4 v0, 0x6

    .line 312
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getContents()[B

    move-result-object p0

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist encodedLength(Z)I
    .registers 2

    .line 307
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getContents()[B

    move-result-object p0

    array-length p0, p0

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p0

    return p0
.end method

.method public blacklist getId()Ljava/lang/String;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 317
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public blacklist intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 4

    .line 370
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getContents()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;-><init>([B)V

    .line 371
    sget-object v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->pool:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-nez v2, :cond_2b

    .line 374
    monitor-enter v1

    .line 376
    :try_start_14
    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 378
    invoke-interface {v1, v0, p0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    monitor-exit v1

    return-object p0

    :catchall_1f
    move-exception p0

    goto :goto_29

    .line 383
    :cond_21
    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    monitor-exit v1

    return-object p0

    .line 385
    :goto_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_1f

    throw p0

    :cond_2b
    return-object v2
.end method

.method public blacklist on(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .registers 4

    .line 253
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_26

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_26

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 338
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
