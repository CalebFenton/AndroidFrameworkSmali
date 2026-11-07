.class public Lcom/android/org/bouncycastle/asn1/BERBitString;
.super Lcom/android/org/bouncycastle/asn1/ASN1BitString;
.source "BERBitString.java"


# instance fields
.field private final blacklist elements:[Lcom/android/org/bouncycastle/asn1/ASN1BitString;

.field private final blacklist segmentLimit:I


# direct methods
.method public constructor blacklist <init>([BI)V
    .registers 4

    const/16 v0, 0x3e8

    .line 81
    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/BERBitString;-><init>([BII)V

    return-void
.end method

.method public constructor blacklist <init>([BII)V
    .registers 4

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    .line 88
    iput p3, p0, Lcom/android/org/bouncycastle/asn1/BERBitString;->segmentLimit:I

    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/ASN1BitString;)V
    .registers 3

    const/16 v0, 0x3e8

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/BERBitString;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1BitString;I)V

    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/ASN1BitString;I)V
    .registers 5

    .line 103
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/BERBitString;->flattenBitStrings([Lcom/android/org/bouncycastle/asn1/ASN1BitString;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;-><init>([BZ)V

    .line 104
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    .line 105
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/BERBitString;->segmentLimit:I

    return-void
.end method

.method static blacklist flattenBitStrings([Lcom/android/org/bouncycastle/asn1/ASN1BitString;)[B
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 22
    array-length v2, p0

    if-eqz v2, :cond_43

    if-eq v2, v1, :cond_3e

    add-int/lit8 v3, v2, -0x1

    move v4, v0

    move v5, v4

    :goto_b
    if-ge v4, v3, :cond_22

    .line 35
    aget-object v6, p0, v4

    iget-object v6, v6, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 36
    aget-byte v7, v6, v0

    if-nez v7, :cond_1a

    .line 41
    array-length v6, v6

    sub-int/2addr v6, v1

    add-int/2addr v5, v6

    add-int/2addr v4, v1

    goto :goto_b

    .line 38
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "only the last nested bitstring can have padding"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_22
    aget-object v3, p0, v3

    iget-object v3, v3, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 46
    aget-byte v4, v3, v0

    .line 47
    array-length v3, v3

    add-int/2addr v5, v3

    .line 49
    new-array v3, v5, [B

    .line 50
    aput-byte v4, v3, v0

    move v4, v1

    :goto_2f
    if-ge v0, v2, :cond_3d

    .line 55
    aget-object v5, p0, v0

    iget-object v5, v5, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 56
    array-length v6, v5

    sub-int/2addr v6, v1

    .line 57
    invoke-static {v5, v1, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    add-int/2addr v0, v1

    goto :goto_2f

    :cond_3d
    return-object v3

    .line 29
    :cond_3e
    aget-object p0, p0, v0

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    return-object p0

    .line 27
    :cond_43
    new-array p0, v1, [B

    aput-byte v0, p0, v0

    return-object p0
.end method


# virtual methods
.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 15

    .line 155
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERBitString;->encodeConstructed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 157
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v0, p0

    invoke-static {p1, p2, p0, v1, v0}, Lcom/android/org/bouncycastle/asn1/DLBitString;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z[BII)V

    return-void

    :cond_e
    const/16 v0, 0x23

    .line 161
    invoke-virtual {p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    const/16 p2, 0x80

    .line 162
    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 164
    iget-object p2, p0, Lcom/android/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    if-eqz p2, :cond_21

    .line 166
    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitives([Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    :goto_1f
    move-object v3, p1

    goto :goto_4b

    .line 168
    :cond_21
    iget-object p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v0, p2

    const/4 v2, 0x2

    if-ge v0, v2, :cond_28

    goto :goto_1f

    .line 174
    :cond_28
    aget-byte v5, p2, v1

    .line 175
    array-length p2, p2

    add-int/lit8 v0, p2, -0x1

    .line 177
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BERBitString;->segmentLimit:I

    add-int/lit8 v11, v2, -0x1

    :goto_31
    if-le v0, v11, :cond_41

    .line 181
    iget-object v9, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    sub-int v10, p2, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v6, p1

    invoke-static/range {v6 .. v11}, Lcom/android/org/bouncycastle/asn1/DLBitString;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;ZB[BII)V

    move-object v3, v6

    sub-int/2addr v0, v11

    move-object p1, v3

    goto :goto_31

    :cond_41
    move-object v3, p1

    .line 185
    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    sub-int v7, p2, v0

    const/4 v4, 0x1

    move v8, v0

    invoke-static/range {v3 .. v8}, Lcom/android/org/bouncycastle/asn1/DLBitString;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;ZB[BII)V

    .line 188
    :goto_4b
    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 189
    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v0, v0

    iget p0, p0, Lcom/android/org/bouncycastle/asn1/BERBitString;->segmentLimit:I

    if-le v0, p0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x1

    return p0
.end method

.method blacklist encodedLength(Z)I
    .registers 6

    .line 123
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERBitString;->encodeConstructed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 125
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/DLBitString;->encodedLength(ZI)I

    move-result p0

    return p0

    :cond_e
    if-eqz p1, :cond_12

    const/4 p1, 0x4

    goto :goto_13

    :cond_12
    const/4 p1, 0x3

    .line 130
    :goto_13
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    .line 132
    :goto_19
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    array-length v3, v2

    if-ge v0, v3, :cond_28

    .line 134
    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v2

    add-int/2addr p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_28
    return p1

    .line 137
    :cond_29
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_30

    return p1

    .line 143
    :cond_30
    array-length v0, v0

    sub-int/2addr v0, v3

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BERBitString;->segmentLimit:I

    add-int/lit8 v3, v2, -0x1

    div-int/2addr v0, v3

    .line 144
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/asn1/DLBitString;->encodedLength(ZI)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr p1, v2

    .line 146
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v2, v2

    iget p0, p0, Lcom/android/org/bouncycastle/asn1/BERBitString;->segmentLimit:I

    sub-int/2addr p0, v1

    mul-int/2addr v0, p0

    sub-int/2addr v2, v0

    .line 147
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/asn1/DLBitString;->encodedLength(ZI)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method
