.class public Lcom/android/org/bouncycastle/asn1/ASN1Integer;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Integer.java"


# static fields
.field static final blacklist TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field private final blacklist bytes:[B

.field private final blacklist start:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 17
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer$1;

    const-class v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 3

    .line 82
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 83
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    const/4 p1, 0x0

    .line 84
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->start:I

    return-void
.end method

.method public constructor greylist <init>(Ljava/math/BigInteger;)V
    .registers 2

    .line 94
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 95
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    const/4 p1, 0x0

    .line 96
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->start:I

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3

    const/4 v0, 0x1

    .line 123
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>([BZ)V

    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 4

    .line 127
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 128
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->isMalformed([B)Z

    move-result v0

    if-nez v0, :cond_1a

    if-eqz p2, :cond_10

    .line 133
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    goto :goto_11

    :cond_10
    move-object p2, p1

    :goto_11
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    .line 134
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->signBytesToSkip([B)I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->start:I

    return-void

    .line 130
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "malformed integer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static blacklist createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .registers 3

    .line 245
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>([BZ)V

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .registers 3

    .line 73
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .registers 4

    if-eqz p0, :cond_51

    .line 41
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_7

    goto :goto_51

    .line 46
    :cond_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_32

    .line 50
    :try_start_b
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoding error in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_32
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
    :cond_51
    :goto_51
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method static blacklist intValue([BII)I
    .registers 5

    .line 250
    array-length v0, p0

    add-int/lit8 v1, v0, -0x4

    .line 251
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 253
    aget-byte v1, p0, p1

    and-int/2addr p2, v1

    :goto_a
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_16

    shl-int/lit8 p2, p2, 0x8

    .line 256
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p2, v1

    goto :goto_a

    :cond_16
    return p2
.end method

.method static blacklist isMalformed([B)Z
    .registers 4

    .line 282
    array-length v0, p0

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    const/4 v2, 0x0

    if-eq v0, v1, :cond_18

    .line 289
    aget-byte v0, p0, v2

    aget-byte p0, p0, v1

    shr-int/lit8 p0, p0, 0x7

    if-ne v0, p0, :cond_18

    const-string p0, "com.android.org.bouncycastle.asn1.allow_unsafe_integer"

    .line 291
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_18

    return v1

    :cond_18
    return v2

    :cond_19
    return v1
.end method

.method static blacklist longValue([BII)J
    .registers 8

    .line 263
    array-length v0, p0

    add-int/lit8 v1, v0, -0x8

    .line 264
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 266
    aget-byte v1, p0, p1

    and-int/2addr p2, v1

    int-to-long v1, p2

    :goto_b
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_19

    const/16 p2, 0x8

    shl-long/2addr v1, p2

    .line 269
    aget-byte p2, p0, p1

    and-int/lit16 p2, p2, 0xff

    int-to-long v3, p2

    or-long/2addr v1, v3

    goto :goto_b

    :cond_19
    return-wide v1
.end method

.method static blacklist signBytesToSkip([B)I
    .registers 6

    .line 297
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_12

    .line 298
    aget-byte v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p0, v3

    shr-int/lit8 v4, v4, 0x7

    if-ne v2, v4, :cond_12

    move v1, v3

    goto :goto_4

    :cond_12
    return v1
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 3

    .line 228
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 233
    :cond_6
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 235
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    iget-object p1, p1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    return p0
.end method

.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 4

    const/4 v0, 0x2

    .line 218
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

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

    .line 213
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p0

    return p0
.end method

.method public blacklist getPositiveValue()Ljava/math/BigInteger;
    .registers 3

    .line 145
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public blacklist getValue()Ljava/math/BigInteger;
    .registers 2

    .line 150
    new-instance v0, Ljava/math/BigInteger;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public blacklist hasValue(I)Z
    .registers 5

    .line 155
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    array-length v1, v0

    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->start:I

    sub-int/2addr v1, p0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_12

    const/4 v1, -0x1

    .line 156
    invoke-static {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->intValue([BII)I

    move-result p0

    if-ne p0, p1, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasValue(J)Z
    .registers 6

    .line 161
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    array-length v1, v0

    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->start:I

    sub-int/2addr v1, p0

    const/16 v2, 0x8

    if-gt v1, v2, :cond_15

    const/4 v1, -0x1

    .line 162
    invoke-static {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->longValue([BII)J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-nez p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasValue(Ljava/math/BigInteger;)Z
    .registers 5

    if-eqz p1, :cond_1d

    .line 167
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->start:I

    const/4 v2, -0x1

    .line 169
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->intValue([BII)I

    move-result v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1d

    .line 170
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 223
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public blacklist intPositiveValueExact()I
    .registers 4

    .line 175
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    array-length v1, v0

    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->start:I

    sub-int/2addr v1, p0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_18

    if-ne v1, v2, :cond_11

    .line 176
    aget-byte v1, v0, p0

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_18

    :cond_11
    const/16 v1, 0xff

    .line 181
    invoke-static {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->intValue([BII)I

    move-result p0

    return p0

    .line 178
    :cond_18
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "ASN.1 Integer out of positive int range"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist intValueExact()I
    .registers 4

    .line 186
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    array-length v1, v0

    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->start:I

    sub-int/2addr v1, p0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_f

    const/4 v1, -0x1

    .line 192
    invoke-static {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->intValue([BII)I

    move-result p0

    return p0

    .line 189
    :cond_f
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "ASN.1 Integer out of int range"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist longValueExact()J
    .registers 4

    .line 197
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    array-length v1, v0

    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->start:I

    sub-int/2addr v1, p0

    const/16 v2, 0x8

    if-gt v1, v2, :cond_10

    const/4 v1, -0x1

    .line 203
    invoke-static {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->longValue([BII)J

    move-result-wide v0

    return-wide v0

    .line 200
    :cond_10
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "ASN.1 Integer out of long range"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 240
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
