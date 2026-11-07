.class public Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1RelativeOID.java"


# static fields
.field static final blacklist TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field private blacklist contents:[B

.field private final blacklist identifier:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID$1;

    const-class v1, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method private constructor blacklist <init>([BZ)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 94
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 95
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v11, v5

    move v8, v7

    const-wide/16 v9, 0x0

    .line 100
    :goto_13
    array-length v12, v1

    if-eq v8, v12, :cond_63

    .line 102
    aget-byte v12, v1, v8

    const-wide v13, 0xffffffffffff80L

    cmp-long v13, v9, v13

    const/4 v14, 0x7

    const/16 v15, 0x2e

    if-gtz v13, :cond_3b

    and-int/lit8 v13, v12, 0x7f

    int-to-long v3, v13

    add-long/2addr v9, v3

    and-int/lit16 v3, v12, 0x80

    if-nez v3, :cond_39

    if-eqz v6, :cond_30

    move v6, v7

    goto :goto_33

    .line 115
    :cond_30
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 118
    :goto_33
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :goto_36
    const-wide/16 v9, 0x0

    goto :goto_60

    :cond_39
    shl-long/2addr v9, v14

    goto :goto_60

    :cond_3b
    if-nez v11, :cond_41

    .line 130
    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    :cond_41
    and-int/lit8 v3, v12, 0x7f

    int-to-long v3, v3

    .line 132
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    and-int/lit16 v4, v12, 0x80

    if-nez v4, :cond_5c

    if-eqz v6, :cond_54

    move v6, v7

    goto :goto_57

    .line 141
    :cond_54
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    :goto_57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-object v11, v5

    goto :goto_36

    .line 150
    :cond_5c
    invoke-virtual {v3, v14}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    :goto_60
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    .line 155
    :cond_63
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    if-eqz p2, :cond_6f

    .line 156
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    :cond_6f
    iput-object v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->contents:[B

    return-void
.end method

.method static blacklist createPrimitive([BZ)Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;
    .registers 3

    .line 243
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;

    invoke-direct {v0, p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;-><init>([BZ)V

    return-object v0
.end method

.method private blacklist doOutput(Ljava/io/ByteArrayOutputStream;)V
    .registers 5

    .line 212
    new-instance v0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;-><init>(Ljava/lang/String;)V

    .line 213
    :goto_7
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 215
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    .line 216
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x12

    if-gt v1, v2, :cond_21

    .line 218
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_7

    .line 222
    :cond_21
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_7

    :cond_2a
    return-void
.end method

.method private declared-synchronized blacklist getContents()[B
    .registers 2

    monitor-enter p0

    .line 229
    :try_start_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->contents:[B

    if-nez v0, :cond_16

    .line 231
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 233
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->doOutput(Ljava/io/ByteArrayOutputStream;)V

    .line 235
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->contents:[B

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 238
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->contents:[B
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

.method static blacklist isValidIdentifier(Ljava/lang/String;I)Z
    .registers 10

    .line 250
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    add-int/lit8 v3, v0, -0x1

    const/16 v4, 0x30

    const/4 v5, 0x1

    if-lt v3, p1, :cond_2e

    .line 253
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_23

    if-eqz v2, :cond_22

    if-le v2, v5, :cond_20

    .line 258
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_20

    goto :goto_22

    :cond_20
    move v2, v1

    goto :goto_2b

    :cond_22
    :goto_22
    return v1

    :cond_23
    if-gt v4, v6, :cond_2d

    const/16 v0, 0x39

    if-gt v6, v0, :cond_2d

    add-int/lit8 v2, v2, 0x1

    :goto_2b
    move v0, v3

    goto :goto_6

    :cond_2d
    return v1

    :cond_2e
    if-eqz v2, :cond_3a

    if-le v2, v5, :cond_39

    .line 276
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v4, :cond_39

    goto :goto_3a

    :cond_39
    return v5

    :cond_3a
    :goto_3a
    return v1
.end method

.method static blacklist writeField(Ljava/io/ByteArrayOutputStream;J)V
    .registers 8

    const/16 v0, 0x9

    .line 286
    new-array v0, v0, [B

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    const/16 v2, 0x8

    .line 288
    aput-byte v1, v0, v2

    :goto_c
    const-wide/16 v3, 0x80

    cmp-long v1, p1, v3

    if-ltz v1, :cond_1d

    const/4 v1, 0x7

    shr-long/2addr p1, v1

    add-int/lit8 v2, v2, -0x1

    long-to-int v1, p1

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    .line 292
    aput-byte v1, v0, v2

    goto :goto_c

    :cond_1d
    rsub-int/lit8 p1, v2, 0x9

    .line 294
    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method static blacklist writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V
    .registers 9

    .line 299
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    const/4 v1, 0x7

    div-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 302
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    .line 307
    :cond_f
    new-array v3, v0, [B

    add-int/lit8 v4, v0, -0x1

    move v5, v4

    :goto_14
    if-ltz v5, :cond_26

    .line 310
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 311
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v5, v5, -0x1

    goto :goto_14

    .line 313
    :cond_26
    aget-byte p1, v3, v4

    and-int/lit8 p1, p1, 0x7f

    int-to-byte p1, p1

    aput-byte p1, v3, v4

    .line 314
    invoke-virtual {p0, v3, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 185
    :cond_4
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 190
    :cond_a
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;

    .line 192
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 4

    const/16 v0, 0xd

    .line 202
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->getContents()[B

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

    .line 197
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->getContents()[B

    move-result-object p0

    array-length p0, p0

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p0

    return p0
.end method

.method public blacklist getId()Ljava/lang/String;
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 171
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 176
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
