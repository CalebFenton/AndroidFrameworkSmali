.class public Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Enumerated.java"


# static fields
.field static final blacklist TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

.field private static final blacklist cache:[Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;


# instance fields
.field private final blacklist contents:[B

.field private final blacklist start:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated$1;

    const-class v1, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    const/16 v0, 0xc

    .line 192
    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->cache:[Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4

    .line 78
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-ltz p1, :cond_14

    int-to-long v0, p1

    .line 84
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    const/4 p1, 0x0

    .line 85
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->start:I

    return-void

    .line 81
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "enumerated must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 3

    .line 94
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 95
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_13

    .line 100
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->start:I

    return-void

    .line 97
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "enumerated must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor blacklist <init>([B)V
    .registers 3

    const/4 v0, 0x1

    .line 111
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>([BZ)V

    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 4

    .line 115
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 116
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->isMalformed([B)Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x0

    .line 120
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_21

    if-eqz p2, :cond_17

    .line 125
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    goto :goto_18

    :cond_17
    move-object p2, p1

    :goto_18
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    .line 126
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->signBytesToSkip([B)I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->start:I

    return-void

    .line 122
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "enumerated must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "malformed enumerated"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static blacklist createPrimitive([BZ)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    .registers 5

    .line 196
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    .line 198
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>([BZ)V

    return-object v0

    .line 201
    :cond_a
    array-length v0, p0

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    .line 205
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 207
    sget-object v1, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->cache:[Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    array-length v2, v1

    if-lt v0, v2, :cond_1d

    .line 209
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>([BZ)V

    return-object v0

    .line 212
    :cond_1d
    aget-object v2, v1, v0

    if-nez v2, :cond_28

    .line 216
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v2, p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>([BZ)V

    aput-object v2, v1, v0

    :cond_28
    return-object v2

    .line 203
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ENUMERATED has zero length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    .registers 3

    .line 66
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    .registers 4

    if-eqz p0, :cond_51

    .line 34
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    if-eqz v0, :cond_7

    goto :goto_51

    .line 39
    :cond_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_32

    .line 43
    :try_start_b
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    .line 47
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

    .line 51
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

    .line 36
    :cond_51
    :goto_51
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    return-object p0
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 3

    .line 177
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 182
    :cond_6
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    .line 184
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    iget-object p1, p1, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    return p0
.end method

.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 4

    const/16 v0, 0xa

    .line 171
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

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

    .line 166
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p0

    return p0
.end method

.method public blacklist getValue()Ljava/math/BigInteger;
    .registers 2

    .line 131
    new-instance v0, Ljava/math/BigInteger;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public blacklist hasValue(I)Z
    .registers 5

    .line 136
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    array-length v1, v0

    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->start:I

    sub-int/2addr v1, p0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_12

    const/4 v1, -0x1

    .line 137
    invoke-static {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->intValue([BII)I

    move-result p0

    if-ne p0, p1, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasValue(Ljava/math/BigInteger;)Z
    .registers 5

    if-eqz p1, :cond_1d

    .line 142
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->start:I

    const/4 v2, -0x1

    .line 144
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->intValue([BII)I

    move-result v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1d

    .line 145
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

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

    .line 189
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public blacklist intValueExact()I
    .registers 4

    .line 150
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    array-length v1, v0

    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->start:I

    sub-int/2addr v1, p0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_f

    const/4 v1, -0x1

    .line 156
    invoke-static {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->intValue([BII)I

    move-result p0

    return p0

    .line 153
    :cond_f
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "ASN.1 Enumerated out of int range"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
