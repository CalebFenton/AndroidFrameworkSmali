.class final Landroid/net/connectivity/com/google/protobuf/IntArrayList;
.super Landroid/net/connectivity/com/google/protobuf/AbstractProtobufList;
.source "IntArrayList.java"

# interfaces
.implements Landroid/net/connectivity/com/google/protobuf/Internal$IntList;
.implements Ljava/util/RandomAccess;
.implements Landroid/net/connectivity/com/google/protobuf/PrimitiveNonBoxingCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/connectivity/com/google/protobuf/AbstractProtobufList<",
        "Ljava/lang/Integer;",
        ">;",
        "Landroid/net/connectivity/com/google/protobuf/Internal$IntList;",
        "Ljava/util/RandomAccess;",
        "Landroid/net/connectivity/com/google/protobuf/PrimitiveNonBoxingCollection;"
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_LIST:Landroid/net/connectivity/com/google/protobuf/IntArrayList;


# instance fields
.field private blacklist array:[I

.field private blacklist size:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 48
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-direct {v0, v2, v1}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;-><init>([II)V

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->EMPTY_LIST:Landroid/net/connectivity/com/google/protobuf/IntArrayList;

    .line 50
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->EMPTY_LIST:Landroid/net/connectivity/com/google/protobuf/IntArrayList;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->makeImmutable()V

    .line 51
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 3

    .line 68
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;-><init>([II)V

    .line 69
    return-void
.end method

.method private constructor blacklist <init>([II)V
    .registers 3
    .param p1, "other"    # [I
    .param p2, "size"    # I

    .line 74
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/AbstractProtobufList;-><init>()V

    .line 75
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    .line 76
    iput p2, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    .line 77
    return-void
.end method

.method private blacklist addInt(II)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "element"    # I

    .line 210
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->ensureIsMutable()V

    .line 211
    if-ltz p1, :cond_4a

    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    if-gt p1, v0, :cond_4a

    .line 215
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1d

    .line 217
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_39

    .line 220
    :cond_1d
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 221
    .local v0, "length":I
    new-array v1, v0, [I

    .line 224
    .local v1, "newArray":[I
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    iput-object v1, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    .line 231
    .end local v0    # "length":I
    .end local v1    # "newArray":[I
    :goto_39
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    aput p2, v0, p1

    .line 232
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    .line 233
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->modCount:I

    .line 234
    return-void

    .line 212
    :cond_4a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist emptyList()Landroid/net/connectivity/com/google/protobuf/IntArrayList;
    .registers 1

    .line 54
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->EMPTY_LIST:Landroid/net/connectivity/com/google/protobuf/IntArrayList;

    return-object v0
.end method

.method private blacklist ensureIndexInRange(I)V
    .registers 4
    .param p1, "index"    # I

    .line 289
    if-ltz p1, :cond_7

    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    if-ge p1, v0, :cond_7

    .line 292
    return-void

    .line 290
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist add(ILjava/lang/Integer;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Integer;

    .line 189
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->addInt(II)V

    .line 190
    return-void
.end method

.method public bridge synthetic whitelist test-api add(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 45
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->add(ILjava/lang/Integer;)V

    return-void
.end method

.method public blacklist add(Ljava/lang/Integer;)Z
    .registers 3
    .param p1, "element"    # Ljava/lang/Integer;

    .line 183
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->addInt(I)V

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic whitelist test-api add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 45
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->add(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 238
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->ensureIsMutable()V

    .line 240
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    instance-of v0, p1, Landroid/net/connectivity/com/google/protobuf/IntArrayList;

    if-nez v0, :cond_f

    .line 244
    invoke-super {p0, p1}, Landroid/net/connectivity/com/google/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 247
    :cond_f
    move-object v0, p1

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;

    .line 248
    .local v0, "list":Landroid/net/connectivity/com/google/protobuf/IntArrayList;
    iget v1, v0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    const/4 v2, 0x0

    if-nez v1, :cond_18

    .line 249
    return v2

    .line 252
    :cond_18
    const v1, 0x7fffffff

    iget v3, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    sub-int/2addr v1, v3

    .line 253
    .local v1, "overflow":I
    iget v3, v0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    if-lt v1, v3, :cond_48

    .line 258
    iget v3, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    iget v4, v0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    add-int/2addr v3, v4

    .line 259
    .local v3, "newSize":I
    iget-object v4, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    array-length v4, v4

    if-le v3, v4, :cond_34

    .line 260
    iget-object v4, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    iput-object v4, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    .line 263
    :cond_34
    iget-object v4, v0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    iget-object v5, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    iget v6, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    iget v7, v0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    invoke-static {v4, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    iput v3, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    .line 265
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->modCount:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->modCount:I

    .line 266
    return v4

    .line 255
    .end local v3    # "newSize":I
    :cond_48
    new-instance v2, Ljava/lang/OutOfMemoryError;

    invoke-direct {v2}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v2
.end method

.method public blacklist addInt(I)V
    .registers 7
    .param p1, "element"    # I

    .line 195
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->ensureIsMutable()V

    .line 196
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1e

    .line 198
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 199
    .local v0, "length":I
    new-array v1, v0, [I

    .line 201
    .local v1, "newArray":[I
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    iget v3, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iput-object v1, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    .line 205
    .end local v0    # "length":I
    .end local v1    # "newArray":[I
    :cond_1e
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    aput p1, v0, v1

    .line 206
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "element"    # Ljava/lang/Object;

    .line 159
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 93
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 94
    return v0

    .line 96
    :cond_4
    instance-of v1, p1, Landroid/net/connectivity/com/google/protobuf/IntArrayList;

    if-nez v1, :cond_d

    .line 97
    invoke-super {p0, p1}, Landroid/net/connectivity/com/google/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 99
    :cond_d
    move-object v1, p1

    check-cast v1, Landroid/net/connectivity/com/google/protobuf/IntArrayList;

    .line 100
    .local v1, "other":Landroid/net/connectivity/com/google/protobuf/IntArrayList;
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    iget v3, v1, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_18

    .line 101
    return v4

    .line 104
    :cond_18
    iget-object v2, v1, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    .line 105
    .local v2, "arr":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    iget v5, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    if-ge v3, v5, :cond_2b

    .line 106
    iget-object v5, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    aget v5, v5, v3

    aget v6, v2, v3

    if-eq v5, v6, :cond_28

    .line 107
    return v4

    .line 105
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 111
    .end local v3    # "i":I
    :cond_2b
    return v0
.end method

.method public blacklist get(I)Ljava/lang/Integer;
    .registers 3
    .param p1, "index"    # I

    .line 133
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api get(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->get(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getInt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 138
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->ensureIndexInRange(I)V

    .line 139
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 116
    const/4 v0, 0x1

    .line 117
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    if-ge v1, v2, :cond_11

    .line 118
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    aget v3, v3, v1

    add-int v0, v2, v3

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 120
    .end local v1    # "i":I
    :cond_11
    return v0
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 7
    .param p1, "element"    # Ljava/lang/Object;

    .line 144
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 145
    return v1

    .line 147
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 148
    .local v0, "unboxedElement":I
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size()I

    move-result v2

    .line 149
    .local v2, "numElems":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v2, :cond_1e

    .line 150
    iget-object v4, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    aget v4, v4, v3

    if-ne v4, v0, :cond_1b

    .line 151
    return v3

    .line 149
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 154
    .end local v3    # "i":I
    :cond_1e
    return v1
.end method

.method public blacklist mutableCopyWithCapacity(I)Landroid/net/connectivity/com/google/protobuf/Internal$IntList;
    .registers 5
    .param p1, "capacity"    # I

    .line 125
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    if-lt p1, v0, :cond_12

    .line 128
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;-><init>([II)V

    return-object v0

    .line 126
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic blacklist mutableCopyWithCapacity(I)Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->mutableCopyWithCapacity(I)Landroid/net/connectivity/com/google/protobuf/Internal$IntList;

    move-result-object p1

    return-object p1
.end method

.method public blacklist remove(I)Ljava/lang/Integer;
    .registers 7
    .param p1, "index"    # I

    .line 271
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->ensureIsMutable()V

    .line 272
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->ensureIndexInRange(I)V

    .line 273
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    aget v0, v0, p1

    .line 274
    .local v0, "value":I
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_1e

    .line 275
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    iget v4, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    :cond_1e
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    .line 278
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->modCount:I

    .line 279
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic whitelist test-api remove(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->remove(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist test-api removeRange(II)V
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 81
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->ensureIsMutable()V

    .line 82
    if-lt p2, p1, :cond_1d

    .line 86
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    .line 88
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->modCount:I

    .line 89
    return-void

    .line 83
    :cond_1d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "toIndex < fromIndex"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist set(ILjava/lang/Integer;)Ljava/lang/Integer;
    .registers 4
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Integer;

    .line 169
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->setInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 45
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->set(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setInt(II)I
    .registers 5
    .param p1, "index"    # I
    .param p2, "element"    # I

    .line 174
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->ensureIsMutable()V

    .line 175
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->ensureIndexInRange(I)V

    .line 176
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    aget v0, v0, p1

    .line 177
    .local v0, "previousValue":I
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->array:[I

    aput p2, v1, p1

    .line 178
    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 164
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->size:I

    return v0
.end method
