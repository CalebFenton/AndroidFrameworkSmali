.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
.super Ljava/lang/Object;
.source "ASN1EncodableVector.java"


# static fields
.field private static final blacklist DEFAULT_CAPACITY:I = 0xa

.field static final blacklist EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;


# instance fields
.field private blacklist copyOnWrite:Z

.field private blacklist elementCount:I

.field private blacklist elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 10
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 20
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 21
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "initialCapacity"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-ltz p1, :cond_14

    .line 30
    if-nez p1, :cond_a

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    goto :goto_c

    :cond_a
    new-array v0, p1, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    :goto_c
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    .line 32
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    .line 33
    return-void

    .line 27
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'initialCapacity\' must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist cloneElements([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .param p0, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 174
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    goto :goto_d

    :cond_7
    invoke-virtual {p0}, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    :goto_d
    return-object v0
.end method

.method private blacklist doAddAll([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Ljava/lang/String;)V
    .registers 10
    .param p1, "others"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .param p2, "nullMsg"    # Ljava/lang/String;

    .line 75
    array-length v0, p1

    .line 76
    .local v0, "otherElementCount":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_5

    .line 78
    return-void

    .line 81
    :cond_5
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v2, v2

    .line 82
    .local v2, "capacity":I
    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    add-int/2addr v3, v0

    .line 83
    .local v3, "minCapacity":I
    if-le v3, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    iget-boolean v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    or-int/2addr v1, v4

    if-eqz v1, :cond_17

    .line 85
    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->reallocate(I)V

    .line 88
    :cond_17
    const/4 v1, 0x0

    .line 91
    .local v1, "i":I
    :cond_18
    aget-object v4, p1, v1

    .line 92
    .local v4, "otherElement":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v4, :cond_2a

    .line 97
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget v6, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    add-int/2addr v6, v1

    aput-object v4, v5, v6

    .line 99
    .end local v4    # "otherElement":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_18

    .line 101
    iput v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    .line 102
    return-void

    .line 94
    .restart local v4    # "otherElement":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_2a
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private blacklist reallocate(I)V
    .registers 8
    .param p1, "minCapacity"    # I

    .line 162
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 163
    .local v0, "oldCapacity":I
    shr-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 165
    .local v1, "newCapacity":I
    new-array v2, v1, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 166
    .local v2, "copy":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 169
    iput-boolean v5, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    .line 170
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 6
    .param p1, "element"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 37
    if-eqz p1, :cond_1e

    .line 42
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 43
    .local v0, "capacity":I
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 44
    .local v1, "minCapacity":I
    if-le v1, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    iget-boolean v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    or-int/2addr v2, v3

    if-eqz v2, :cond_15

    .line 46
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->reallocate(I)V

    .line 49
    :cond_15
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    aput-object p1, v2, v3

    .line 50
    iput v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    .line 51
    return-void

    .line 39
    .end local v0    # "capacity":I
    .end local v1    # "minCapacity":I
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'element\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 4
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 65
    if-eqz p1, :cond_a

    .line 70
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    const-string v1, "\'other\' elements cannot be null"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->doAddAll([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Ljava/lang/String;)V

    .line 71
    return-void

    .line 67
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'other\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addAll([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "others"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 55
    if-eqz p1, :cond_8

    .line 60
    const-string v0, "\'others\' elements cannot be null"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->doAddAll([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Ljava/lang/String;)V

    .line 61
    return-void

    .line 57
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'others\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist copyElements()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5

    .line 132
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    if-nez v0, :cond_7

    .line 134
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0

    .line 137
    :cond_7
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 138
    .local v0, "copy":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    return-object v0
.end method

.method public blacklist get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5
    .param p1, "i"    # I

    .line 112
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    if-ge p1, v0, :cond_9

    .line 117
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v0, v0, p1

    return-object v0

    .line 114
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist size()I
    .registers 2

    .line 127
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    return v0
.end method

.method blacklist takeElements()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5

    .line 144
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    if-nez v0, :cond_7

    .line 146
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0

    .line 149
    :cond_7
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    if-ne v0, v1, :cond_14

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    .line 152
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0

    .line 155
    :cond_14
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 156
    .local v0, "copy":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    return-object v0
.end method
