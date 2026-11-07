.class public Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;
.super Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
.source "DERGeneralizedTime.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>([B)V

    return-void
.end method

.method private blacklist getDERTime()[B
    .registers 6

    .line 47
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->contents:[B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v0, v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_8b

    .line 49
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasMinutes()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    .line 51
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->contents:[B

    array-length v2, v0

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 53
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    const-string v0, "0000Z"

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->contents:[B

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    .line 58
    :cond_2f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasSeconds()Z

    move-result v0

    if-nez v0, :cond_52

    .line 60
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->contents:[B

    array-length v2, v0

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    .line 62
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    const-string v0, "00Z"

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->contents:[B

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    .line 67
    :cond_52
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasFractionalSeconds()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 69
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->contents:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    :goto_5d
    if-lez v0, :cond_6a

    .line 70
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->contents:[B

    aget-byte v3, v3, v0

    const/16 v4, 0x30

    if-ne v3, v4, :cond_6a

    add-int/lit8 v0, v0, -0x1

    goto :goto_5d

    .line 75
    :cond_6a
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->contents:[B

    aget-byte v3, p0, v0

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_7c

    add-int/lit8 v3, v0, 0x1

    .line 77
    new-array v3, v3, [B

    .line 79
    invoke-static {p0, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    aput-byte v2, v3, v0

    return-object v3

    :cond_7c
    add-int/lit8 v3, v0, 0x2

    .line 86
    new-array v3, v3, [B

    add-int/lit8 v0, v0, 0x1

    .line 88
    invoke-static {p0, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    aput-byte v2, v3, v0

    return-object v3

    .line 96
    :cond_88
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->contents:[B

    return-object p0

    :cond_8b
    return-object v0
.end method


# virtual methods
.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 4

    const/16 v0, 0x18

    .line 112
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;->getDERTime()[B

    move-result-object p0

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    return-void
.end method

.method blacklist encodedLength(Z)I
    .registers 2

    .line 107
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;->getDERTime()[B

    move-result-object p0

    array-length p0, p0

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p0

    return p0
.end method

.method blacklist toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 0
    return-object p0
.end method

.method blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 0
    return-object p0
.end method
