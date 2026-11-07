.class final Lcom/android/framework/protobuf/BooleanArrayList;
.super Lcom/android/framework/protobuf/AbstractProtobufList;
.source "BooleanArrayList.java"

# interfaces
.implements Lcom/android/framework/protobuf/Internal$BooleanList;
.implements Ljava/util/RandomAccess;
.implements Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/AbstractProtobufList<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/android/framework/protobuf/Internal$BooleanList;",
        "Ljava/util/RandomAccess;",
        "Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;"
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_LIST:Lcom/android/framework/protobuf/BooleanArrayList;


# instance fields
.field private blacklist array:[Z

.field private blacklist size:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 48
    new-instance v0, Lcom/android/framework/protobuf/BooleanArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [Z

    invoke-direct {v0, v2, v1}, Lcom/android/framework/protobuf/BooleanArrayList;-><init>([ZI)V

    sput-object v0, Lcom/android/framework/protobuf/BooleanArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/BooleanArrayList;

    .line 50
    sget-object v0, Lcom/android/framework/protobuf/BooleanArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/BooleanArrayList;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/BooleanArrayList;->makeImmutable()V

    .line 51
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 3

    .line 68
    const/16 v0, 0xa

    new-array v0, v0, [Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/framework/protobuf/BooleanArrayList;-><init>([ZI)V

    .line 69
    return-void
.end method

.method private constructor blacklist <init>([ZI)V
    .registers 3
    .param p1, "other"    # [Z
    .param p2, "size"    # I

    .line 75
    invoke-direct {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    .line 77
    iput p2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    .line 78
    return-void
.end method

.method private blacklist addBoolean(IZ)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "element"    # Z

    .line 211
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 212
    if-ltz p1, :cond_4a

    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    if-gt p1, v0, :cond_4a

    .line 216
    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    iget-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1d

    .line 218
    iget-object v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iget-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_39

    .line 221
    :cond_1d
    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 222
    .local v0, "length":I
    new-array v1, v0, [Z

    .line 225
    .local v1, "newArray":[Z
    iget-object v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    iget-object v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iput-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    .line 232
    .end local v0    # "length":I
    .end local v1    # "newArray":[Z
    :goto_39
    iget-object v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    aput-boolean p2, v0, p1

    .line 233
    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    .line 234
    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->modCount:I

    .line 235
    return-void

    .line 213
    :cond_4a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist emptyList()Lcom/android/framework/protobuf/BooleanArrayList;
    .registers 1

    .line 54
    sget-object v0, Lcom/android/framework/protobuf/BooleanArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/BooleanArrayList;

    return-object v0
.end method

.method private blacklist ensureIndexInRange(I)V
    .registers 4
    .param p1, "index"    # I

    .line 290
    if-ltz p1, :cond_7

    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    if-ge p1, v0, :cond_7

    .line 293
    return-void

    .line 291
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 296
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

    iget v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist add(ILjava/lang/Boolean;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Boolean;

    .line 190
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(IZ)V

    .line 191
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
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BooleanArrayList;->add(ILjava/lang/Boolean;)V

    return-void
.end method

.method public blacklist add(Ljava/lang/Boolean;)Z
    .registers 3
    .param p1, "element"    # Ljava/lang/Boolean;

    .line 184
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 185
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
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->add(Ljava/lang/Boolean;)Z

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
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 239
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 241
    invoke-static {p1}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    instance-of v0, p1, Lcom/android/framework/protobuf/BooleanArrayList;

    if-nez v0, :cond_f

    .line 245
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 248
    :cond_f
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/BooleanArrayList;

    .line 249
    .local v0, "list":Lcom/android/framework/protobuf/BooleanArrayList;
    iget v1, v0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    const/4 v2, 0x0

    if-nez v1, :cond_18

    .line 250
    return v2

    .line 253
    :cond_18
    const v1, 0x7fffffff

    iget v3, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v1, v3

    .line 254
    .local v1, "overflow":I
    iget v3, v0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    if-lt v1, v3, :cond_48

    .line 259
    iget v3, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    iget v4, v0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    add-int/2addr v3, v4

    .line 260
    .local v3, "newSize":I
    iget-object v4, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    array-length v4, v4

    if-le v3, v4, :cond_34

    .line 261
    iget-object v4, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v4

    iput-object v4, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    .line 264
    :cond_34
    iget-object v4, v0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iget-object v5, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iget v6, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    iget v7, v0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    invoke-static {v4, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    iput v3, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    .line 266
    iget v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->modCount:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->modCount:I

    .line 267
    return v4

    .line 256
    .end local v3    # "newSize":I
    :cond_48
    new-instance v2, Ljava/lang/OutOfMemoryError;

    invoke-direct {v2}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v2
.end method

.method public blacklist addBoolean(Z)V
    .registers 7
    .param p1, "element"    # Z

    .line 196
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 197
    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    iget-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    array-length v1, v1

    if-ne v0, v1, :cond_1e

    .line 199
    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 200
    .local v0, "length":I
    new-array v1, v0, [Z

    .line 202
    .local v1, "newArray":[Z
    iget-object v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iget v3, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    iput-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    .line 206
    .end local v0    # "length":I
    .end local v1    # "newArray":[Z
    :cond_1e
    iget-object v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iget v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    aput-boolean p1, v0, v1

    .line 207
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "element"    # Ljava/lang/Object;

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->indexOf(Ljava/lang/Object;)I

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

    .line 94
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 95
    return v0

    .line 97
    :cond_4
    instance-of v1, p1, Lcom/android/framework/protobuf/BooleanArrayList;

    if-nez v1, :cond_d

    .line 98
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 100
    :cond_d
    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/BooleanArrayList;

    .line 101
    .local v1, "other":Lcom/android/framework/protobuf/BooleanArrayList;
    iget v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    iget v3, v1, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_18

    .line 102
    return v4

    .line 105
    :cond_18
    iget-object v2, v1, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    .line 106
    .local v2, "arr":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    iget v5, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    if-ge v3, v5, :cond_2b

    .line 107
    iget-object v5, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v5, v5, v3

    aget-boolean v6, v2, v3

    if-eq v5, v6, :cond_28

    .line 108
    return v4

    .line 106
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 112
    .end local v3    # "i":I
    :cond_2b
    return v0
.end method

.method public blacklist get(I)Ljava/lang/Boolean;
    .registers 3
    .param p1, "index"    # I

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->get(I)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getBoolean(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIndexInRange(I)V

    .line 140
    iget-object v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 117
    const/4 v0, 0x1

    .line 118
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    if-ge v1, v2, :cond_15

    .line 119
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v3, v3, v1

    invoke-static {v3}, Lcom/android/framework/protobuf/Internal;->hashBoolean(Z)I

    move-result v3

    add-int v0, v2, v3

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 121
    .end local v1    # "i":I
    :cond_15
    return v0
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 7
    .param p1, "element"    # Ljava/lang/Object;

    .line 145
    instance-of v0, p1, Ljava/lang/Boolean;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 146
    return v1

    .line 148
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 149
    .local v0, "unboxedElement":Z
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BooleanArrayList;->size()I

    move-result v2

    .line 150
    .local v2, "numElems":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v2, :cond_1e

    .line 151
    iget-object v4, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v4, v4, v3

    if-ne v4, v0, :cond_1b

    .line 152
    return v3

    .line 150
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 155
    .end local v3    # "i":I
    :cond_1e
    return v1
.end method

.method public blacklist mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$BooleanList;
    .registers 5
    .param p1, "capacity"    # I

    .line 126
    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    if-lt p1, v0, :cond_12

    .line 129
    new-instance v0, Lcom/android/framework/protobuf/BooleanArrayList;

    iget-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    iget v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/BooleanArrayList;-><init>([ZI)V

    return-object v0

    .line 127
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic blacklist mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;
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
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$BooleanList;

    move-result-object p1

    return-object p1
.end method

.method public blacklist remove(I)Ljava/lang/Boolean;
    .registers 7
    .param p1, "index"    # I

    .line 272
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 273
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIndexInRange(I)V

    .line 274
    iget-object v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v0, v0, p1

    .line 275
    .local v0, "value":Z
    iget v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_1e

    .line 276
    iget-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iget v4, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    :cond_1e
    iget v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    .line 279
    iget v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->modCount:I

    .line 280
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->remove(I)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist test-api removeRange(II)V
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 82
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 83
    if-lt p2, p1, :cond_1d

    .line 87
    iget-object v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iget-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iget v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    .line 89
    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->modCount:I

    .line 90
    return-void

    .line 84
    :cond_1d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "toIndex < fromIndex"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist set(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Boolean;

    .line 170
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BooleanArrayList;->setBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BooleanArrayList;->set(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setBoolean(IZ)Z
    .registers 5
    .param p1, "index"    # I
    .param p2, "element"    # Z

    .line 175
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 176
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIndexInRange(I)V

    .line 177
    iget-object v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v0, v0, p1

    .line 178
    .local v0, "previousValue":Z
    iget-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    aput-boolean p2, v1, p1

    .line 179
    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 165
    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    return v0
.end method
