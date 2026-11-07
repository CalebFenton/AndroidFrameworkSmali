.class public final Lcom/android/framework/protobuf/nano/FieldArray;
.super Ljava/lang/Object;
.source "FieldArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final blacklist DELETED:Lcom/android/framework/protobuf/nano/FieldData;


# instance fields
.field private blacklist mData:[Lcom/android/framework/protobuf/nano/FieldData;

.field private blacklist mFieldNumbers:[I

.field private blacklist mGarbage:Z

.field private blacklist mSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Lcom/android/framework/protobuf/nano/FieldData;

    invoke-direct {v0}, Lcom/android/framework/protobuf/nano/FieldData;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/nano/FieldArray;->DELETED:Lcom/android/framework/protobuf/nano/FieldData;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 55
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/nano/FieldArray;-><init>(I)V

    .line 56
    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 4
    .param p1, "initialCapacity"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    .line 64
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/FieldArray;->idealIntArraySize(I)I

    move-result p1

    .line 65
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    .line 66
    new-array v1, p1, [Lcom/android/framework/protobuf/nano/FieldData;

    iput-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    .line 67
    iput v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    .line 68
    return-void
.end method

.method private blacklist arrayEquals([I[II)Z
    .registers 7
    .param p1, "a"    # [I
    .param p2, "b"    # [I
    .param p3, "size"    # I

    .line 260
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_e

    .line 261
    aget v1, p1, v0

    aget v2, p2, v0

    if-eq v1, v2, :cond_b

    .line 262
    const/4 v1, 0x0

    return v1

    .line 260
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 265
    .end local v0    # "i":I
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist arrayEquals([Lcom/android/framework/protobuf/nano/FieldData;[Lcom/android/framework/protobuf/nano/FieldData;I)Z
    .registers 7
    .param p1, "a"    # [Lcom/android/framework/protobuf/nano/FieldData;
    .param p2, "b"    # [Lcom/android/framework/protobuf/nano/FieldData;
    .param p3, "size"    # I

    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_12

    .line 270
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/android/framework/protobuf/nano/FieldData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 271
    const/4 v1, 0x0

    return v1

    .line 269
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 274
    .end local v0    # "i":I
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist binarySearch(I)I
    .registers 6
    .param p1, "value"    # I

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "lo":I
    iget v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    .line 244
    .local v1, "hi":I
    :goto_5
    if-gt v0, v1, :cond_1a

    .line 245
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 246
    .local v2, "mid":I
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aget v3, v3, v2

    .line 248
    .local v3, "midVal":I
    if-ge v3, p1, :cond_14

    .line 249
    add-int/lit8 v0, v2, 0x1

    goto :goto_18

    .line 250
    :cond_14
    if-le v3, p1, :cond_19

    .line 251
    add-int/lit8 v1, v2, -0x1

    .line 255
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :goto_18
    goto :goto_5

    .line 253
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":I
    :cond_19
    return v2

    .line 256
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_1a
    not-int v2, v0

    return v2
.end method

.method private blacklist gc()V
    .registers 8

    .line 97
    iget v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    .line 98
    .local v0, "n":I
    const/4 v1, 0x0

    .line 99
    .local v1, "o":I
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    .line 100
    .local v2, "keys":[I
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    .line 102
    .local v3, "values":[Lcom/android/framework/protobuf/nano/FieldData;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    if-ge v4, v0, :cond_20

    .line 103
    aget-object v5, v3, v4

    .line 105
    .local v5, "val":Lcom/android/framework/protobuf/nano/FieldData;
    sget-object v6, Lcom/android/framework/protobuf/nano/FieldArray;->DELETED:Lcom/android/framework/protobuf/nano/FieldData;

    if-eq v5, v6, :cond_1d

    .line 106
    if-eq v4, v1, :cond_1b

    .line 107
    aget v6, v2, v4

    aput v6, v2, v1

    .line 108
    aput-object v5, v3, v1

    .line 109
    const/4 v6, 0x0

    aput-object v6, v3, v4

    .line 112
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    .line 102
    .end local v5    # "val":Lcom/android/framework/protobuf/nano/FieldData;
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 116
    .end local v4    # "i":I
    :cond_20
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    .line 117
    iput v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    .line 118
    return-void
.end method

.method private blacklist idealByteArraySize(I)I
    .registers 5
    .param p1, "need"    # I

    .line 233
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x20

    if-ge v0, v1, :cond_13

    .line 234
    const/4 v1, 0x1

    shl-int v2, v1, v0

    add-int/lit8 v2, v2, -0xc

    if-gt p1, v2, :cond_10

    .line 235
    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, -0xc

    return v1

    .line 233
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 237
    .end local v0    # "i":I
    :cond_13
    return p1
.end method

.method private blacklist idealIntArraySize(I)I
    .registers 3
    .param p1, "need"    # I

    .line 229
    mul-int/lit8 v0, p1, 0x4

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/nano/FieldArray;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public final blacklist clone()Lcom/android/framework/protobuf/nano/FieldArray;
    .registers 6

    .line 280
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    move-result v0

    .line 281
    .local v0, "size":I
    new-instance v1, Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-direct {v1, v0}, Lcom/android/framework/protobuf/nano/FieldArray;-><init>(I)V

    .line 282
    .local v1, "clone":Lcom/android/framework/protobuf/nano/FieldArray;
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    invoke-static {v2, v3, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_29

    .line 284
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aget-object v3, v3, v2

    if-eqz v3, :cond_26

    .line 285
    iget-object v3, v1, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/framework/protobuf/nano/FieldData;->clone()Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v4

    aput-object v4, v3, v2

    .line 283
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 288
    .end local v2    # "i":I
    :cond_29
    iput v0, v1, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    .line 289
    return-object v1
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->clone()Lcom/android/framework/protobuf/nano/FieldArray;

    move-result-object v0

    return-object v0
.end method

.method blacklist dataAt(I)Lcom/android/framework/protobuf/nano/FieldData;
    .registers 3
    .param p1, "index"    # I

    .line 191
    iget-boolean v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 192
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->gc()V

    .line 195
    :cond_7
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 200
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 201
    return v0

    .line 203
    :cond_4
    instance-of v1, p1, Lcom/android/framework/protobuf/nano/FieldArray;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 204
    return v2

    .line 207
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/nano/FieldArray;

    .line 208
    .local v1, "other":Lcom/android/framework/protobuf/nano/FieldArray;
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    move-result v4

    if-eq v3, v4, :cond_18

    .line 209
    return v2

    .line 211
    :cond_18
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v4, v1, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/framework/protobuf/nano/FieldArray;->arrayEquals([I[II)Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    iget-object v4, v1, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    iget v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    .line 212
    invoke-direct {p0, v3, v4, v5}, Lcom/android/framework/protobuf/nano/FieldArray;->arrayEquals([Lcom/android/framework/protobuf/nano/FieldData;[Lcom/android/framework/protobuf/nano/FieldData;I)Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_32

    :cond_31
    move v0, v2

    .line 211
    :goto_32
    return v0
.end method

.method blacklist get(I)Lcom/android/framework/protobuf/nano/FieldData;
    .registers 5
    .param p1, "fieldNumber"    # I

    .line 75
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v0

    .line 77
    .local v0, "i":I
    if-ltz v0, :cond_14

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/framework/protobuf/nano/FieldArray;->DELETED:Lcom/android/framework/protobuf/nano/FieldData;

    if-ne v1, v2, :cond_f

    goto :goto_14

    .line 80
    :cond_f
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aget-object v1, v1, v0

    return-object v1

    .line 78
    :cond_14
    :goto_14
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 217
    iget-boolean v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 218
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->gc()V

    .line 220
    :cond_7
    const/16 v0, 0x11

    .line 221
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget v2, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    if-ge v1, v2, :cond_23

    .line 222
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    .line 223
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/framework/protobuf/nano/FieldData;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 221
    .end local v2    # "result":I
    .restart local v0    # "result":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 225
    .end local v1    # "i":I
    :cond_23
    return v0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 182
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method blacklist put(ILcom/android/framework/protobuf/nano/FieldData;)V
    .registers 10
    .param p1, "fieldNumber"    # I
    .param p2, "data"    # Lcom/android/framework/protobuf/nano/FieldData;

    .line 125
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v0

    .line 127
    .local v0, "i":I
    if-ltz v0, :cond_c

    .line 128
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aput-object p2, v1, v0

    goto/16 :goto_88

    .line 130
    :cond_c
    not-int v0, v0

    .line 132
    iget v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    if-ge v0, v1, :cond_22

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/framework/protobuf/nano/FieldArray;->DELETED:Lcom/android/framework/protobuf/nano/FieldData;

    if-ne v1, v2, :cond_22

    .line 133
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aput p1, v1, v0

    .line 134
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aput-object p2, v1, v0

    .line 135
    return-void

    .line 138
    :cond_22
    iget-boolean v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v1, :cond_35

    iget v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    array-length v2, v2

    if-lt v1, v2, :cond_35

    .line 139
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->gc()V

    .line 142
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v1

    not-int v0, v1

    .line 145
    :cond_35
    iget v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    array-length v2, v2

    if-lt v1, v2, :cond_5d

    .line 146
    iget v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/nano/FieldArray;->idealIntArraySize(I)I

    move-result v1

    .line 148
    .local v1, "n":I
    new-array v2, v1, [I

    .line 149
    .local v2, "nkeys":[I
    new-array v3, v1, [Lcom/android/framework/protobuf/nano/FieldData;

    .line 151
    .local v3, "nvalues":[Lcom/android/framework/protobuf/nano/FieldData;
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    array-length v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    iget-object v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iput-object v2, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    .line 155
    iput-object v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    .line 158
    .end local v1    # "n":I
    .end local v2    # "nkeys":[I
    .end local v3    # "nvalues":[Lcom/android/framework/protobuf/nano/FieldData;
    :cond_5d
    iget v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_7a

    .line 159
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    :cond_7a
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aput p1, v1, v0

    .line 164
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aput-object p2, v1, v0

    .line 165
    iget v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    .line 167
    :goto_88
    return-void
.end method

.method blacklist remove(I)V
    .registers 5
    .param p1, "fieldNumber"    # I

    .line 88
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v0

    .line 90
    .local v0, "i":I
    if-ltz v0, :cond_17

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/framework/protobuf/nano/FieldArray;->DELETED:Lcom/android/framework/protobuf/nano/FieldData;

    if-eq v1, v2, :cond_17

    .line 91
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    sget-object v2, Lcom/android/framework/protobuf/nano/FieldArray;->DELETED:Lcom/android/framework/protobuf/nano/FieldData;

    aput-object v2, v1, v0

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    .line 94
    :cond_17
    return-void
.end method

.method blacklist size()I
    .registers 2

    .line 174
    iget-boolean v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 175
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->gc()V

    .line 178
    :cond_7
    iget v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    return v0
.end method
