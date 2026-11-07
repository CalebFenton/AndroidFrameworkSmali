.class public Lcom/android/org/bouncycastle/asn1/BEROctetString;
.super Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
.source "BEROctetString.java"


# instance fields
.field private final blacklist elements:[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

.field private final blacklist segmentLimit:I


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 3

    const/16 v0, 0x3e8

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([BI)V

    return-void
.end method

.method public constructor blacklist <init>([BI)V
    .registers 4

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;I)V

    return-void
.end method

.method private constructor blacklist <init>([B[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;I)V
    .registers 4

    .line 107
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    .line 108
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 109
    iput p3, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 3

    const/16 v0, 0x3e8

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;I)V

    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;I)V
    .registers 4

    .line 102
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->flattenOctetStrings([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)[B

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;I)V

    return-void
.end method

.method static blacklist flattenOctetStrings([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)[B
    .registers 8

    .line 34
    array-length v0, p0

    if-eqz v0, :cond_2d

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_28

    move v1, v2

    move v3, v1

    :goto_9
    if-ge v1, v0, :cond_14

    .line 46
    aget-object v4, p0, v1

    iget-object v4, v4, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 49
    :cond_14
    new-array v1, v3, [B

    move v3, v2

    move v4, v3

    :goto_18
    if-ge v3, v0, :cond_27

    .line 52
    aget-object v5, p0, v3

    iget-object v5, v5, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    .line 53
    array-length v6, v5

    invoke-static {v5, v2, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_27
    return-object v1

    .line 40
    :cond_28
    aget-object p0, p0, v2

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    return-object p0

    .line 38
    :cond_2d
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->EMPTY_OCTETS:[B

    return-object p0
.end method


# virtual methods
.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 7

    const/16 v0, 0x24

    .line 146
    invoke-virtual {p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    const/16 p2, 0x80

    .line 147
    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 149
    iget-object p2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    const/4 v0, 0x0

    if-eqz p2, :cond_13

    .line 151
    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitives([Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    goto :goto_29

    :cond_13
    move p2, v0

    .line 156
    :goto_14
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    array-length v2, v1

    if-ge p2, v2, :cond_29

    .line 158
    array-length v1, v1

    sub-int/2addr v1, p2

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x1

    .line 159
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {p1, v2, v3, p2, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z[BII)V

    add-int/2addr p2, v1

    goto :goto_14

    .line 164
    :cond_29
    :goto_29
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 165
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method blacklist encodedLength(Z)I
    .registers 6

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    goto :goto_5

    :cond_4
    const/4 p1, 0x3

    .line 122
    :goto_5
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    .line 124
    :goto_b
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    array-length v3, v2

    if-ge v0, v3, :cond_1a

    .line 126
    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v2

    add-int/2addr p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1a
    return p1

    .line 131
    :cond_1b
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    array-length v0, v0

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    div-int/2addr v0, v2

    .line 132
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->encodedLength(ZI)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr p1, v2

    .line 134
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    array-length v2, v2

    iget p0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    mul-int/2addr v0, p0

    sub-int/2addr v2, v0

    if-lez v2, :cond_35

    .line 137
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->encodedLength(ZI)I

    move-result p0

    add-int/2addr p1, p0

    :cond_35
    return p1
.end method
