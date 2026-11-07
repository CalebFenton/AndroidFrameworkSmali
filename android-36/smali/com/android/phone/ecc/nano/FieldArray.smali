.class public final Lcom/android/phone/ecc/nano/FieldArray;
.super Ljava/lang/Object;
.source "FieldArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final blacklist DELETED:Lcom/android/phone/ecc/nano/FieldData;


# instance fields
.field private blacklist mData:[Lcom/android/phone/ecc/nano/FieldData;

.field private blacklist mFieldNumbers:[I

.field private blacklist mGarbage:Z

.field private blacklist mSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Lcom/android/phone/ecc/nano/FieldData;

    invoke-direct {v0}, Lcom/android/phone/ecc/nano/FieldData;-><init>()V

    sput-object v0, Lcom/android/phone/ecc/nano/FieldArray;->DELETED:Lcom/android/phone/ecc/nano/FieldData;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    const/16 v0, 0xa

    .line 55
    invoke-direct {p0, v0}, Lcom/android/phone/ecc/nano/FieldArray;-><init>(I)V

    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/phone/ecc/nano/FieldArray;->mGarbage:Z

    .line 64
    invoke-direct {p0, p1}, Lcom/android/phone/ecc/nano/FieldArray;->idealIntArraySize(I)I

    move-result p1

    .line 65
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/android/phone/ecc/nano/FieldArray;->mFieldNumbers:[I

    .line 66
    new-array p1, p1, [Lcom/android/phone/ecc/nano/FieldData;

    iput-object p1, p0, Lcom/android/phone/ecc/nano/FieldArray;->mData:[Lcom/android/phone/ecc/nano/FieldData;

    .line 67
    iput v0, p0, Lcom/android/phone/ecc/nano/FieldArray;->mSize:I

    return-void
.end method

.method private blacklist arrayEquals([I[II)Z
    .registers 7

    const/4 p0, 0x0

    move v0, p0

    :goto_2
    if-ge v0, p3, :cond_e

    .line 261
    aget v1, p1, v0

    aget v2, p2, v0

    if-eq v1, v2, :cond_b

    return p0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist arrayEquals([Lcom/android/phone/ecc/nano/FieldData;[Lcom/android/phone/ecc/nano/FieldData;I)Z
    .registers 7

    const/4 p0, 0x0

    move v0, p0

    :goto_2
    if-ge v0, p3, :cond_12

    .line 270
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/android/phone/ecc/nano/FieldData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return p0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist binarySearch(I)I
    .registers 6

    .line 242
    iget v0, p0, Lcom/android/phone/ecc/nano/FieldArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_5
    if-gt v1, v0, :cond_1c

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 246
    iget-object v3, p0, Lcom/android/phone/ecc/nano/FieldArray;->mFieldNumbers:[I

    aget v3, v3, v2

    if-ge v3, p1, :cond_15

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_5

    :cond_15
    if-le v3, p1, :cond_1b

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_5

    :cond_1b
    return v2

    :cond_1c
    not-int p0, v1

    return p0
.end method

.method private blacklist gc()V
    .registers 9

    .line 97
    iget v0, p0, Lcom/android/phone/ecc/nano/FieldArray;->mSize:I

    .line 99
    iget-object v1, p0, Lcom/android/phone/ecc/nano/FieldArray;->mFieldNumbers:[I

    .line 100
    iget-object v2, p0, Lcom/android/phone/ecc/nano/FieldArray;->mData:[Lcom/android/phone/ecc/nano/FieldData;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_9
    if-ge v4, v0, :cond_21

    .line 103
    aget-object v6, v2, v4

    .line 105
    sget-object v7, Lcom/android/phone/ecc/nano/FieldArray;->DELETED:Lcom/android/phone/ecc/nano/FieldData;

    if-eq v6, v7, :cond_1e

    if-eq v4, v5, :cond_1c

    .line 107
    aget v7, v1, v4

    aput v7, v1, v5

    .line 108
    aput-object v6, v2, v5

    const/4 v6, 0x0

    .line 109
    aput-object v6, v2, v4

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 116
    :cond_21
    iput-boolean v3, p0, Lcom/android/phone/ecc/nano/FieldArray;->mGarbage:Z

    .line 117
    iput v5, p0, Lcom/android/phone/ecc/nano/FieldArray;->mSize:I

    return-void
.end method

.method private blacklist idealByteArraySize(I)I
    .registers 3

    .line 0
    const/4 p0, 0x4

    :goto_1
    const/16 v0, 0x20

    if-ge p0, v0, :cond_f

    const/4 v0, 0x1

    shl-int/2addr v0, p0

    add-int/lit8 v0, v0, -0xc

    if-gt p1, v0, :cond_c

    return v0

    :cond_c
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_f
    return p1
.end method

.method private blacklist idealIntArraySize(I)I
    .registers 2

    mul-int/lit8 p1, p1, 0x4

    .line 229
    invoke-direct {p0, p1}, Lcom/android/phone/ecc/nano/FieldArray;->idealByteArraySize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    return p0
.end method


# virtual methods
.method public final blacklist clone()Lcom/android/phone/ecc/nano/FieldArray;
    .registers 6

    .line 280
    invoke-virtual {p0}, Lcom/android/phone/ecc/nano/FieldArray;->size()I

    move-result v0

    .line 281
    new-instance v1, Lcom/android/phone/ecc/nano/FieldArray;

    invoke-direct {v1, v0}, Lcom/android/phone/ecc/nano/FieldArray;-><init>(I)V

    .line 282
    iget-object v2, p0, Lcom/android/phone/ecc/nano/FieldArray;->mFieldNumbers:[I

    iget-object v3, v1, Lcom/android/phone/ecc/nano/FieldArray;->mFieldNumbers:[I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_11
    if-ge v4, v0, :cond_24

    .line 284
    iget-object v2, p0, Lcom/android/phone/ecc/nano/FieldArray;->mData:[Lcom/android/phone/ecc/nano/FieldData;

    aget-object v2, v2, v4

    if-eqz v2, :cond_21

    .line 285
    iget-object v3, v1, Lcom/android/phone/ecc/nano/FieldArray;->mData:[Lcom/android/phone/ecc/nano/FieldData;

    invoke-virtual {v2}, Lcom/android/phone/ecc/nano/FieldData;->clone()Lcom/android/phone/ecc/nano/FieldData;

    move-result-object v2

    aput-object v2, v3, v4

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 288
    :cond_24
    iput v0, v1, Lcom/android/phone/ecc/nano/FieldArray;->mSize:I

    return-object v1
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/android/phone/ecc/nano/FieldArray;->clone()Lcom/android/phone/ecc/nano/FieldArray;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 203
    :cond_4
    instance-of v1, p1, Lcom/android/phone/ecc/nano/FieldArray;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 207
    :cond_a
    check-cast p1, Lcom/android/phone/ecc/nano/FieldArray;

    .line 208
    invoke-virtual {p0}, Lcom/android/phone/ecc/nano/FieldArray;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/FieldArray;->size()I

    move-result v3

    if-eq v1, v3, :cond_17

    return v2

    .line 211
    :cond_17
    iget-object v1, p0, Lcom/android/phone/ecc/nano/FieldArray;->mFieldNumbers:[I

    iget-object v3, p1, Lcom/android/phone/ecc/nano/FieldArray;->mFieldNumbers:[I

    iget v4, p0, Lcom/android/phone/ecc/nano/FieldArray;->mSize:I

    invoke-direct {p0, v1, v3, v4}, Lcom/android/phone/ecc/nano/FieldArray;->arrayEquals([I[II)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/phone/ecc/nano/FieldArray;->mData:[Lcom/android/phone/ecc/nano/FieldData;

    iget-object p1, p1, Lcom/android/phone/ecc/nano/FieldArray;->mData:[Lcom/android/phone/ecc/nano/FieldData;

    iget v3, p0, Lcom/android/phone/ecc/nano/FieldArray;->mSize:I

    .line 212
    invoke-direct {p0, v1, p1, v3}, Lcom/android/phone/ecc/nano/FieldArray;->arrayEquals([Lcom/android/phone/ecc/nano/FieldData;[Lcom/android/phone/ecc/nano/FieldData;I)Z

    move-result p0

    if-eqz p0, :cond_30

    return v0

    :cond_30
    return v2
.end method

.method blacklist get(I)Lcom/android/phone/ecc/nano/FieldData;
    .registers 2

    .line 75
    invoke-direct {p0, p1}, Lcom/android/phone/ecc/nano/FieldArray;->binarySearch(I)I

    move-result p1

    if-ltz p1, :cond_10

    .line 77
    iget-object p0, p0, Lcom/android/phone/ecc/nano/FieldArray;->mData:[Lcom/android/phone/ecc/nano/FieldData;

    aget-object p0, p0, p1

    sget-object p1, Lcom/android/phone/ecc/nano/FieldArray;->DELETED:Lcom/android/phone/ecc/nano/FieldData;

    if-ne p0, p1, :cond_f

    goto :goto_10

    :cond_f
    return-object p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 217
    iget-boolean v0, p0, Lcom/android/phone/ecc/nano/FieldArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 218
    invoke-direct {p0}, Lcom/android/phone/ecc/nano/FieldArray;->gc()V

    :cond_7
    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 221
    :goto_a
    iget v2, p0, Lcom/android/phone/ecc/nano/FieldArray;->mSize:I

    if-ge v1, v2, :cond_23

    mul-int/lit8 v0, v0, 0x1f

    .line 222
    iget-object v2, p0, Lcom/android/phone/ecc/nano/FieldArray;->mFieldNumbers:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 223
    iget-object v2, p0, Lcom/android/phone/ecc/nano/FieldArray;->mData:[Lcom/android/phone/ecc/nano/FieldData;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/phone/ecc/nano/FieldData;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_23
    return v0
.end method

.method blacklist put(ILcom/android/phone/ecc/nano/FieldData;)V
    .registers 9

    .line 125
    invoke-direct {p0, p1}, Lcom/android/phone/ecc/nano/FieldArray;->binarySearch(I)I

    move-result v0

    if-ltz v0, :cond_b

    .line 128
    iget-object p0, p0, Lcom/android/phone/ecc/nano/FieldArray;->mData:[Lcom/android/phone/ecc/nano/FieldData;

    aput-object p2, p0, v0

    return-void

    :cond_b
    not-int v0, v0

    .line 132
    iget v1, p0, Lcom/android/phone/ecc/nano/FieldArray;->mSize:I

    if-ge v0, v1, :cond_1f

    iget-object v2, p0, Lcom/android/phone/ecc/nano/FieldArray;->mData:[Lcom/android/phone/ecc/nano/FieldData;

    aget-object v3, v2, v0

    sget-object v4, Lcom/android/phone/ecc/nano/FieldArray;->DELETED:Lcom/android/phone/ecc/nano/FieldData;

    if-ne v3, v4, :cond_1f

    .line 133
    iget-object p0, p0, Lcom/android/phone/ecc/nano/FieldArray;->mFieldNumbers:[I

    aput p1, p0, v0

    .line 134
    aput-object p2, v2, v0

    return-void

    .line 138
    :cond_1f
    iget-boolean v2, p0, Lcom/android/phone/ecc/nano/FieldArray;->mGarbage:Z

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/phone/ecc/nano/FieldArray;->mFieldNumbers:[I

    array-length v2, v2

    if-lt v1, v2, :cond_30

    .line 139
    invoke-direct {p0}, Lcom/android/phone/ecc/nano/FieldArray;->gc()V

    .line 142
    invoke-direct {p0, p1}, Lcom/android/phone/ecc/nano/FieldArray;->binarySearch(I)I

    move-result v0

    not-int v0, v0

    .line 145
    :cond_30
    iget v1, p0, Lcom/android/phone/ecc/nano/FieldArray;->mSize:I

    iget-object v2, p0, Lcom/android/phone/ecc/nano/FieldArray;->mFieldNumbers:[I

    array-length v2, v2

    if-lt v1, v2, :cond_52

    add-int/lit8 v1, v1, 0x1

    .line 146
    invoke-direct {p0, v1}, Lcom/android/phone/ecc/nano/FieldArray;->idealIntArraySize(I)I

    move-result v1

    .line 148
    new-array v2, v1, [I

    .line 149
    new-array v1, v1, [Lcom/android/phone/ecc/nano/FieldData;

    .line 151
    iget-object v3, p0, Lcom/android/phone/ecc/nano/FieldArray;->mFieldNumbers:[I

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget-object v3, p0, Lcom/android/phone/ecc/nano/FieldArray;->mData:[Lcom/android/phone/ecc/nano/FieldData;

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iput-object v2, p0, Lcom/android/phone/ecc/nano/FieldArray;->mFieldNumbers:[I

    .line 155
    iput-object v1, p0, Lcom/android/phone/ecc/nano/FieldArray;->mData:[Lcom/android/phone/ecc/nano/FieldData;

    .line 158
    :cond_52
    iget v1, p0, Lcom/android/phone/ecc/nano/FieldArray;->mSize:I

    sub-int v2, v1, v0

    if-eqz v2, :cond_68

    .line 159
    iget-object v2, p0, Lcom/android/phone/ecc/nano/FieldArray;->mFieldNumbers:[I

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget-object v1, p0, Lcom/android/phone/ecc/nano/FieldArray;->mData:[Lcom/android/phone/ecc/nano/FieldData;

    iget v2, p0, Lcom/android/phone/ecc/nano/FieldArray;->mSize:I

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    :cond_68
    iget-object v1, p0, Lcom/android/phone/ecc/nano/FieldArray;->mFieldNumbers:[I

    aput p1, v1, v0

    .line 164
    iget-object p1, p0, Lcom/android/phone/ecc/nano/FieldArray;->mData:[Lcom/android/phone/ecc/nano/FieldData;

    aput-object p2, p1, v0

    .line 165
    iget p1, p0, Lcom/android/phone/ecc/nano/FieldArray;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/phone/ecc/nano/FieldArray;->mSize:I

    return-void
.end method

.method blacklist size()I
    .registers 2

    .line 174
    iget-boolean v0, p0, Lcom/android/phone/ecc/nano/FieldArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 175
    invoke-direct {p0}, Lcom/android/phone/ecc/nano/FieldArray;->gc()V

    .line 178
    :cond_7
    iget p0, p0, Lcom/android/phone/ecc/nano/FieldArray;->mSize:I

    return p0
.end method
