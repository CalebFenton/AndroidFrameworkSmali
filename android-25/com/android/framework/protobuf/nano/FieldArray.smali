.class public final Lcom/android/framework/protobuf/nano/FieldArray;
.super Ljava/lang/Object;
.source "FieldArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DELETED:Lcom/android/framework/protobuf/nano/FieldData;


# instance fields
.field private mData:[Lcom/android/framework/protobuf/nano/FieldData;

.field private mFieldNumbers:[I

.field private mGarbage:Z

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 44
    new-instance v0, Lcom/android/framework/protobuf/nano/FieldData;

    #@2
    invoke-direct {v0}, Lcom/android/framework/protobuf/nano/FieldData;-><init>()V

    #@5
    sput-object v0, Lcom/android/framework/protobuf/nano/FieldArray;->DELETED:Lcom/android/framework/protobuf/nano/FieldData;

    #@7
    .line 43
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 55
    const/16 v0, 0xa

    #@2
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/nano/FieldArray;-><init>(I)V

    #@5
    .line 54
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 45
    iput-boolean v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    #@6
    .line 64
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/FieldArray;->idealIntArraySize(I)I

    #@9
    move-result p1

    #@a
    .line 65
    new-array v0, p1, [I

    #@c
    iput-object v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    #@e
    .line 66
    new-array v0, p1, [Lcom/android/framework/protobuf/nano/FieldData;

    #@10
    iput-object v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    #@12
    .line 67
    iput v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    #@14
    .line 63
    return-void
.end method

.method private arrayEquals([I[II)Z
    .locals 3
    .param p1, "a"    # [I
    .param p2, "b"    # [I
    .param p3, "size"    # I

    #@0
    .prologue
    .line 260
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    #@3
    .line 261
    aget v1, p1, v0

    #@5
    aget v2, p2, v0

    #@7
    if-eq v1, v2, :cond_0

    #@9
    .line 262
    const/4 v1, 0x0

    #@a
    return v1

    #@b
    .line 260
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 265
    :cond_1
    const/4 v1, 0x1

    #@f
    return v1
.end method

.method private arrayEquals([Lcom/android/framework/protobuf/nano/FieldData;[Lcom/android/framework/protobuf/nano/FieldData;I)Z
    .locals 3
    .param p1, "a"    # [Lcom/android/framework/protobuf/nano/FieldData;
    .param p2, "b"    # [Lcom/android/framework/protobuf/nano/FieldData;
    .param p3, "size"    # I

    #@0
    .prologue
    .line 269
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    #@3
    .line 270
    aget-object v1, p1, v0

    #@5
    aget-object v2, p2, v0

    #@7
    invoke-virtual {v1, v2}, Lcom/android/framework/protobuf/nano/FieldData;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 271
    const/4 v1, 0x0

    #@e
    return v1

    #@f
    .line 269
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 274
    :cond_1
    const/4 v1, 0x1

    #@13
    return v1
.end method

.method private binarySearch(I)I
    .locals 5
    .param p1, "value"    # I

    #@0
    .prologue
    .line 241
    const/4 v1, 0x0

    #@1
    .line 242
    .local v1, "lo":I
    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    #@3
    add-int/lit8 v0, v4, -0x1

    #@5
    .line 244
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_2

    #@7
    .line 245
    add-int v4, v1, v0

    #@9
    ushr-int/lit8 v2, v4, 0x1

    #@b
    .line 246
    .local v2, "mid":I
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    #@d
    aget v3, v4, v2

    #@f
    .line 248
    .local v3, "midVal":I
    if-ge v3, p1, :cond_0

    #@11
    .line 249
    add-int/lit8 v1, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 250
    :cond_0
    if-le v3, p1, :cond_1

    #@16
    .line 251
    add-int/lit8 v0, v2, -0x1

    #@18
    goto :goto_0

    #@19
    .line 253
    :cond_1
    return v2

    #@1a
    .line 256
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_2
    not-int v4, v1

    #@1b
    return v4
.end method

.method private gc()V
    .locals 7

    #@0
    .prologue
    .line 97
    iget v2, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    #@2
    .line 98
    .local v2, "n":I
    const/4 v3, 0x0

    #@3
    .line 99
    .local v3, "o":I
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    #@5
    .line 100
    .local v1, "keys":[I
    iget-object v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    #@7
    .line 102
    .local v5, "values":[Lcom/android/framework/protobuf/nano/FieldData;
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@a
    .line 103
    aget-object v4, v5, v0

    #@c
    .line 105
    .local v4, "val":Lcom/android/framework/protobuf/nano/FieldData;
    sget-object v6, Lcom/android/framework/protobuf/nano/FieldArray;->DELETED:Lcom/android/framework/protobuf/nano/FieldData;

    #@e
    if-eq v4, v6, :cond_1

    #@10
    .line 106
    if-eq v0, v3, :cond_0

    #@12
    .line 107
    aget v6, v1, v0

    #@14
    aput v6, v1, v3

    #@16
    .line 108
    aput-object v4, v5, v3

    #@18
    .line 109
    const/4 v6, 0x0

    #@19
    aput-object v6, v5, v0

    #@1b
    .line 112
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1d
    .line 102
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 116
    .end local v4    # "val":Lcom/android/framework/protobuf/nano/FieldData;
    :cond_2
    const/4 v6, 0x0

    #@21
    iput-boolean v6, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    #@23
    .line 117
    iput v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    #@25
    .line 96
    return-void
.end method

.method private idealByteArraySize(I)I
    .locals 3
    .param p1, "need"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 233
    const/4 v0, 0x4

    #@2
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x20

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 234
    shl-int v1, v2, v0

    #@8
    add-int/lit8 v1, v1, -0xc

    #@a
    if-gt p1, v1, :cond_0

    #@c
    .line 235
    shl-int v1, v2, v0

    #@e
    add-int/lit8 v1, v1, -0xc

    #@10
    return v1

    #@11
    .line 233
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 237
    :cond_1
    return p1
.end method

.method private idealIntArraySize(I)I
    .locals 1
    .param p1, "need"    # I

    #@0
    .prologue
    .line 229
    mul-int/lit8 v0, p1, 0x4

    #@2
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/nano/FieldArray;->idealByteArraySize(I)I

    #@5
    move-result v0

    #@6
    div-int/lit8 v0, v0, 0x4

    #@8
    return v0
.end method


# virtual methods
.method public final clone()Lcom/android/framework/protobuf/nano/FieldArray;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 280
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    #@4
    move-result v2

    #@5
    .line 281
    .local v2, "size":I
    new-instance v0, Lcom/android/framework/protobuf/nano/FieldArray;

    #@7
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/nano/FieldArray;-><init>(I)V

    #@a
    .line 282
    .local v0, "clone":Lcom/android/framework/protobuf/nano/FieldArray;
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    #@c
    iget-object v4, v0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    #@e
    invoke-static {v3, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@11
    .line 283
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@14
    .line 284
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    #@16
    aget-object v3, v3, v1

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 285
    iget-object v3, v0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    #@1c
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    #@1e
    aget-object v4, v4, v1

    #@20
    invoke-virtual {v4}, Lcom/android/framework/protobuf/nano/FieldData;->clone()Lcom/android/framework/protobuf/nano/FieldData;

    #@23
    move-result-object v4

    #@24
    aput-object v4, v3, v1

    #@26
    .line 283
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 288
    :cond_1
    iput v2, v0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    #@2b
    .line 289
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->clone()Lcom/android/framework/protobuf/nano/FieldArray;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method dataAt(I)Lcom/android/framework/protobuf/nano/FieldData;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 192
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->gc()V

    #@7
    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    #@9
    aget-object v0, v0, p1

    #@b
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 200
    if-ne p1, p0, :cond_0

    #@3
    .line 201
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 203
    :cond_0
    instance-of v2, p1, Lcom/android/framework/protobuf/nano/FieldArray;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 204
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 207
    nop

    #@c
    nop

    #@d
    .line 208
    .local v0, "other":Lcom/android/framework/protobuf/nano/FieldArray;
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    #@10
    move-result v2

    #@11
    invoke-virtual {v0}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    #@14
    move-result v3

    #@15
    if-eq v2, v3, :cond_2

    #@17
    .line 209
    return v1

    #@18
    .line 211
    :cond_2
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    #@1a
    iget-object v3, v0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    #@1c
    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    #@1e
    invoke-direct {p0, v2, v3, v4}, Lcom/android/framework/protobuf/nano/FieldArray;->arrayEquals([I[II)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_3

    #@24
    .line 212
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    #@26
    iget-object v2, v0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    #@28
    iget v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    #@2a
    invoke-direct {p0, v1, v2, v3}, Lcom/android/framework/protobuf/nano/FieldArray;->arrayEquals([Lcom/android/framework/protobuf/nano/FieldData;[Lcom/android/framework/protobuf/nano/FieldData;I)Z

    #@2d
    move-result v1

    #@2e
    .line 211
    :cond_3
    return v1
.end method

.method get(I)Lcom/android/framework/protobuf/nano/FieldData;
    .locals 3
    .param p1, "fieldNumber"    # I

    #@0
    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/FieldArray;->binarySearch(I)I

    #@3
    move-result v0

    #@4
    .line 77
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@6
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    #@8
    aget-object v1, v1, v0

    #@a
    sget-object v2, Lcom/android/framework/protobuf/nano/FieldArray;->DELETED:Lcom/android/framework/protobuf/nano/FieldData;

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 78
    :cond_0
    const/4 v1, 0x0

    #@f
    return-object v1

    #@10
    .line 80
    :cond_1
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    #@12
    aget-object v1, v1, v0

    #@14
    return-object v1
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 217
    iget-boolean v2, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 218
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->gc()V

    #@7
    .line 220
    :cond_0
    const/16 v1, 0x11

    #@9
    .line 221
    .local v1, "result":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    #@c
    if-ge v0, v2, :cond_1

    #@e
    .line 222
    mul-int/lit8 v2, v1, 0x1f

    #@10
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    #@12
    aget v3, v3, v0

    #@14
    add-int v1, v2, v3

    #@16
    .line 223
    mul-int/lit8 v2, v1, 0x1f

    #@18
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    #@1a
    aget-object v3, v3, v0

    #@1c
    invoke-virtual {v3}, Lcom/android/framework/protobuf/nano/FieldData;->hashCode()I

    #@1f
    move-result v3

    #@20
    add-int v1, v2, v3

    #@22
    .line 221
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 225
    :cond_1
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 182
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method put(ILcom/android/framework/protobuf/nano/FieldData;)V
    .locals 8
    .param p1, "fieldNumber"    # I
    .param p2, "data"    # Lcom/android/framework/protobuf/nano/FieldData;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 125
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/FieldArray;->binarySearch(I)I

    #@4
    move-result v0

    #@5
    .line 127
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@7
    .line 128
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    #@9
    aput-object p2, v4, v0

    #@b
    .line 124
    :goto_0
    return-void

    #@c
    .line 130
    :cond_0
    not-int v0, v0

    #@d
    .line 132
    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    #@f
    if-ge v0, v4, :cond_1

    #@11
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    #@13
    aget-object v4, v4, v0

    #@15
    sget-object v5, Lcom/android/framework/protobuf/nano/FieldArray;->DELETED:Lcom/android/framework/protobuf/nano/FieldData;

    #@17
    if-ne v4, v5, :cond_1

    #@19
    .line 133
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    #@1b
    aput p1, v4, v0

    #@1d
    .line 134
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    #@1f
    aput-object p2, v4, v0

    #@21
    .line 135
    return-void

    #@22
    .line 138
    :cond_1
    iget-boolean v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    #@24
    if-eqz v4, :cond_2

    #@26
    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    #@28
    iget-object v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    #@2a
    array-length v5, v5

    #@2b
    if-lt v4, v5, :cond_2

    #@2d
    .line 139
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->gc()V

    #@30
    .line 142
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/FieldArray;->binarySearch(I)I

    #@33
    move-result v4

    #@34
    not-int v0, v4

    #@35
    .line 145
    :cond_2
    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    #@37
    iget-object v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    #@39
    array-length v5, v5

    #@3a
    if-lt v4, v5, :cond_3

    #@3c
    .line 146
    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    #@3e
    add-int/lit8 v4, v4, 0x1

    #@40
    invoke-direct {p0, v4}, Lcom/android/framework/protobuf/nano/FieldArray;->idealIntArraySize(I)I

    #@43
    move-result v1

    #@44
    .line 148
    .local v1, "n":I
    new-array v2, v1, [I

    #@46
    .line 149
    .local v2, "nkeys":[I
    new-array v3, v1, [Lcom/android/framework/protobuf/nano/FieldData;

    #@48
    .line 151
    .local v3, "nvalues":[Lcom/android/framework/protobuf/nano/FieldData;
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    #@4a
    iget-object v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    #@4c
    array-length v5, v5

    #@4d
    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@50
    .line 152
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    #@52
    iget-object v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    #@54
    array-length v5, v5

    #@55
    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@58
    .line 154
    iput-object v2, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    #@5a
    .line 155
    iput-object v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    #@5c
    .line 158
    .end local v1    # "n":I
    .end local v2    # "nkeys":[I
    .end local v3    # "nvalues":[Lcom/android/framework/protobuf/nano/FieldData;
    :cond_3
    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    #@5e
    sub-int/2addr v4, v0

    #@5f
    if-eqz v4, :cond_4

    #@61
    .line 159
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    #@63
    iget-object v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    #@65
    add-int/lit8 v6, v0, 0x1

    #@67
    iget v7, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    #@69
    sub-int/2addr v7, v0

    #@6a
    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@6d
    .line 160
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    #@6f
    iget-object v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    #@71
    add-int/lit8 v6, v0, 0x1

    #@73
    iget v7, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    #@75
    sub-int/2addr v7, v0

    #@76
    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@79
    .line 163
    :cond_4
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    #@7b
    aput p1, v4, v0

    #@7d
    .line 164
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    #@7f
    aput-object p2, v4, v0

    #@81
    .line 165
    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    #@83
    add-int/lit8 v4, v4, 0x1

    #@85
    iput v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    #@87
    goto :goto_0
.end method

.method remove(I)V
    .locals 3
    .param p1, "fieldNumber"    # I

    #@0
    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/FieldArray;->binarySearch(I)I

    #@3
    move-result v0

    #@4
    .line 90
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@6
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    #@8
    aget-object v1, v1, v0

    #@a
    sget-object v2, Lcom/android/framework/protobuf/nano/FieldArray;->DELETED:Lcom/android/framework/protobuf/nano/FieldData;

    #@c
    if-eq v1, v2, :cond_0

    #@e
    .line 91
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    #@10
    sget-object v2, Lcom/android/framework/protobuf/nano/FieldArray;->DELETED:Lcom/android/framework/protobuf/nano/FieldData;

    #@12
    aput-object v2, v1, v0

    #@14
    .line 92
    const/4 v1, 0x1

    #@15
    iput-boolean v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    #@17
    .line 87
    :cond_0
    return-void
.end method

.method size()I
    .locals 1

    #@0
    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 175
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->gc()V

    #@7
    .line 178
    :cond_0
    iget v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    #@9
    return v0
.end method
