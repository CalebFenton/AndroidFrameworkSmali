.class public Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
.source "DERGeneralizedTime.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "time"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Date;)V
    .registers 2
    .param p1, "time"    # Ljava/util/Date;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    .line 38
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 2
    .param p1, "time"    # [B

    .line 32
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>([B)V

    .line 33
    return-void
.end method

.method private blacklist getDERTime()[B
    .registers 7

    .line 47
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_9b

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->hasMinutes()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_35

    .line 51
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 53
    .local v0, "derTime":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    const-string v1, "0000Z"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x5

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    return-object v0

    .line 58
    .end local v0    # "derTime":[B
    :cond_35
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->hasSeconds()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 60
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 62
    .restart local v0    # "derTime":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    const-string v1, "00Z"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x3

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    return-object v0

    .line 67
    .end local v0    # "derTime":[B
    :cond_5c
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->hasFractionalSeconds()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 69
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    .line 70
    .local v0, "ind":I
    :goto_67
    if-lez v0, :cond_74

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    aget-byte v3, v3, v0

    const/16 v4, 0x30

    if-ne v3, v4, :cond_74

    .line 72
    add-int/lit8 v0, v0, -0x1

    goto :goto_67

    .line 75
    :cond_74
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    aget-byte v3, v3, v0

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_88

    .line 77
    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [B

    .line 79
    .local v3, "derTime":[B
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    aput-byte v1, v3, v0

    .line 82
    return-object v3

    .line 86
    .end local v3    # "derTime":[B
    :cond_88
    add-int/lit8 v3, v0, 0x2

    new-array v3, v3, [B

    .line 88
    .restart local v3    # "derTime":[B
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    add-int/lit8 v5, v0, 0x1

    invoke-static {v4, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    add-int/lit8 v2, v0, 0x1

    aput-byte v1, v3, v2

    .line 91
    return-object v3

    .line 96
    .end local v0    # "ind":I
    .end local v3    # "derTime":[B
    :cond_98
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    return-object v0

    .line 101
    :cond_9b
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    return-object v0
.end method


# virtual methods
.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 5
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    const/16 v0, 0x18

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->getDERTime()[B

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    .line 113
    return-void
.end method

.method blacklist encodedLength(Z)I
    .registers 3
    .param p1, "withTag"    # Z

    .line 107
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;->getDERTime()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
.end method

.method blacklist toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 117
    return-object p0
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 122
    return-object p0
.end method
