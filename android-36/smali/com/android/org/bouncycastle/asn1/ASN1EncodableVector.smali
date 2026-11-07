.class public Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
.super Ljava/lang/Object;
.source "ASN1EncodableVector.java"


# static fields
.field static final blacklist EMPTY_ELEMENTS:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# instance fields
.field private blacklist copyOnWrite:Z

.field private blacklist elementCount:I

.field private blacklist elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 10
    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    const/16 v0, 0xa

    .line 21
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_14

    if-nez p1, :cond_a

    .line 31
    sget-object p1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    goto :goto_c

    :cond_a
    new-array p1, p1, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    :goto_c
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    .line 33
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    return-void

    .line 28
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'initialCapacity\' must not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static blacklist cloneElements([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3

    .line 176
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object p0

    :cond_7
    invoke-virtual {p0}, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method private blacklist doAddAll([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Ljava/lang/String;)V
    .registers 9

    .line 77
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_5

    return-void

    .line 83
    :cond_5
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v2, v2

    .line 84
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    add-int/2addr v3, v0

    const/4 v4, 0x0

    if-le v3, v2, :cond_f

    goto :goto_10

    :cond_f
    move v1, v4

    .line 85
    :goto_10
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    or-int/2addr v1, v2

    if-eqz v1, :cond_18

    .line 87
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->reallocate(I)V

    .line 93
    :cond_18
    aget-object v1, p1, v4

    if-eqz v1, :cond_2a

    .line 99
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    iget v5, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    add-int/2addr v5, v4

    aput-object v1, v2, v5

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v0, :cond_18

    .line 103
    iput v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    return-void

    .line 96
    :cond_2a
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist reallocate(I)V
    .registers 5

    .line 164
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    shr-int/lit8 v1, p1, 0x1

    add-int/2addr p1, v1

    .line 165
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 167
    new-array p1, p1, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 168
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 171
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    return-void
.end method


# virtual methods
.method public greylist add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5

    if-eqz p1, :cond_1e

    .line 44
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 45
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-le v1, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    .line 46
    :goto_d
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    or-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 48
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->reallocate(I)V

    .line 51
    :cond_15
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    aput-object p1, v0, v2

    .line 52
    iput v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    return-void

    .line 41
    :cond_1e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'element\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist addAll(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 3

    if-eqz p1, :cond_a

    .line 72
    iget-object p1, p1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    const-string v0, "\'other\' elements cannot be null"

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->doAddAll([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Ljava/lang/String;)V

    return-void

    .line 69
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'other\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist addAll([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 62
    const-string v0, "\'others\' elements cannot be null"

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->doAddAll([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Ljava/lang/String;)V

    return-void

    .line 59
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'others\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method blacklist copyElements()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 4

    .line 134
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    if-nez v0, :cond_7

    .line 136
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object p0

    .line 139
    :cond_7
    new-array v1, v0, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 140
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public blacklist get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 4

    .line 114
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    if-ge p1, v0, :cond_9

    .line 119
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object p0, p0, p1

    return-object p0

    .line 116
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist size()I
    .registers 1

    .line 129
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    return p0
.end method

.method blacklist takeElements()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 4

    .line 146
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    if-nez v0, :cond_7

    .line 148
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object p0

    .line 151
    :cond_7
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v2, v1

    if-ne v2, v0, :cond_10

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    return-object v1

    .line 157
    :cond_10
    new-array p0, v0, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    .line 158
    invoke-static {v1, v2, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method
