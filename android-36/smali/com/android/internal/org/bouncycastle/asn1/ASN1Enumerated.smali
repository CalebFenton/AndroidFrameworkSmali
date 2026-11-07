.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Enumerated.java"


# static fields
.field static final blacklist TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

.field private static final blacklist cache:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;


# instance fields
.field private final blacklist contents:[B

.field private final blacklist start:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated$1;

    const-class v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    .line 192
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->cache:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "value"    # I

    .line 78
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 79
    if-ltz p1, :cond_14

    .line 84
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->start:I

    .line 86
    return-void

    .line 81
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enumerated must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "value"    # Ljava/math/BigInteger;

    .line 94
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 95
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_13

    .line 100
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->start:I

    .line 102
    return-void

    .line 97
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enumerated must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "contents"    # [B

    .line 111
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>([BZ)V

    .line 112
    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 5
    .param p1, "contents"    # [B
    .param p2, "clone"    # Z

    .line 115
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 116
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->isMalformed([B)Z

    move-result v0

    if-nez v0, :cond_29

    .line 120
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_21

    .line 125
    if-eqz p2, :cond_17

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    goto :goto_18

    :cond_17
    move-object v0, p1

    :goto_18
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    .line 126
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->signBytesToSkip([B)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->start:I

    .line 127
    return-void

    .line 122
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enumerated must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "malformed enumerated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist createPrimitive([BZ)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
    .registers 6
    .param p0, "contents"    # [B
    .param p1, "clone"    # Z

    .line 196
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    .line 198
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>([BZ)V

    return-object v0

    .line 201
    :cond_a
    array-length v0, p0

    if-eqz v0, :cond_2e

    .line 205
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 207
    .local v0, "value":I
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->cache:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    array-length v1, v1

    if-lt v0, v1, :cond_1d

    .line 209
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>([BZ)V

    return-object v1

    .line 212
    :cond_1d
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->cache:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    aget-object v1, v1, v0

    .line 214
    .local v1, "possibleMatch":Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
    if-nez v1, :cond_2d

    .line 216
    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->cache:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>([BZ)V

    aput-object v3, v2, v0

    move-object v1, v3

    .line 219
    :cond_2d
    return-object v1

    .line 203
    .end local v0    # "value":I
    .end local v1    # "possibleMatch":Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ENUMERATED has zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
    .registers 3
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 66
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 34
    if-eqz p0, :cond_56

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    if-eqz v0, :cond_7

    goto :goto_56

    .line 39
    :cond_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_35

    .line 43
    :try_start_b
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    move-object v1, p0

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_17

    return-object v0

    .line 45
    :catch_17
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoding error in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_35
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

    .line 36
    :cond_56
    :goto_56
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    return-object v0
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 5
    .param p1, "o"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 177
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    if-nez v0, :cond_6

    .line 179
    const/4 v0, 0x0

    return v0

    .line 182
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 184
    .local v0, "other":Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    return v1
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

    .line 171
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    .line 172
    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 2

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method blacklist encodedLength(Z)I
    .registers 3
    .param p1, "withTag"    # Z

    .line 166
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
.end method

.method public blacklist getValue()Ljava/math/BigInteger;
    .registers 3

    .line 131
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public blacklist hasValue(I)Z
    .registers 5
    .param p1, "x"    # I

    .line 136
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->start:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-gt v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->start:I

    .line 137
    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValue([BII)I

    move-result v0

    if-ne v0, p1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 136
    :goto_17
    return v0
.end method

.method public blacklist hasValue(Ljava/math/BigInteger;)Z
    .registers 5
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 142
    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->start:I

    .line 144
    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValue([BII)I

    move-result v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1d

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 142
    :goto_1e
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public blacklist intValueExact()I
    .registers 5

    .line 150
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->start:I

    sub-int/2addr v0, v1

    .line 151
    .local v0, "count":I
    const/4 v1, 0x4

    if-gt v0, v1, :cond_13

    .line 156
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->start:I

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValue([BII)I

    move-result v1

    return v1

    .line 153
    :cond_13
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "ASN.1 Enumerated out of int range"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
