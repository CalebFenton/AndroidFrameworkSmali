.class public Landroid/provider/internal/aconfig/storage/android/util/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final blacklist MIN_CAPACITY_INCREMENT:I = 0xc


# instance fields
.field private blacklist mSize:I

.field private blacklist mValues:[J


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;-><init>(I)V

    .line 55
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-nez p1, :cond_a

    .line 62
    sget-object v0, Landroid/provider/internal/aconfig/storage/android/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mValues:[J

    goto :goto_10

    .line 64
    :cond_a
    invoke-static {p1}, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    iput-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mValues:[J

    .line 66
    :goto_10
    const/4 v0, 0x0

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    .line 67
    return-void
.end method

.method private constructor blacklist <init>([JI)V
    .registers 6
    .param p1, "array"    # [J
    .param p2, "size"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mValues:[J

    .line 46
    array-length v0, p1

    const-string v1, "size"

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v1}, Landroid/provider/internal/aconfig/storage/com/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    .line 47
    return-void
.end method

.method public static blacklist elementsEqual(Landroid/provider/internal/aconfig/storage/android/util/LongArray;Landroid/provider/internal/aconfig/storage/android/util/LongArray;)Z
    .registers 9
    .param p0, "a"    # Landroid/provider/internal/aconfig/storage/android/util/LongArray;
    .param p1, "b"    # Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    .line 231
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_24

    if-nez p1, :cond_7

    goto :goto_24

    .line 232
    :cond_7
    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    iget v3, p1, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    if-eq v2, v3, :cond_e

    return v1

    .line 233
    :cond_e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    if-ge v2, v3, :cond_23

    .line 234
    invoke-virtual {p0, v2}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->get(I)J

    move-result-wide v3

    invoke-virtual {p1, v2}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->get(I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_20

    .line 235
    return v1

    .line 233
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 238
    .end local v2    # "i":I
    :cond_23
    return v0

    .line 231
    :cond_24
    :goto_24
    if-ne p0, p1, :cond_27

    goto :goto_28

    :cond_27
    move v0, v1

    :goto_28
    return v0
.end method

.method private blacklist ensureCapacity(I)V
    .registers 9
    .param p1, "count"    # I

    .line 141
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    .line 142
    .local v0, "currentSize":I
    add-int v1, v0, p1

    .line 143
    .local v1, "minCapacity":I
    iget-object v2, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mValues:[J

    array-length v2, v2

    if-lt v1, v2, :cond_23

    .line 144
    const/4 v2, 0x6

    if-ge v0, v2, :cond_f

    .line 145
    const/16 v2, 0xc

    goto :goto_11

    :cond_f
    shr-int/lit8 v2, v0, 0x1

    :goto_11
    add-int/2addr v2, v0

    .line 146
    .local v2, "targetCap":I
    if-le v2, v1, :cond_16

    move v3, v2

    goto :goto_17

    :cond_16
    move v3, v1

    .line 147
    .local v3, "newCapacity":I
    :goto_17
    invoke-static {v3}, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v4

    .line 148
    .local v4, "newValues":[J
    iget-object v5, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mValues:[J

    const/4 v6, 0x0

    invoke-static {v5, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iput-object v4, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mValues:[J

    .line 151
    .end local v2    # "targetCap":I
    .end local v3    # "newCapacity":I
    .end local v4    # "newValues":[J
    :cond_23
    return-void
.end method

.method public static blacklist fromArray([JI)Landroid/provider/internal/aconfig/storage/android/util/LongArray;
    .registers 3
    .param p0, "array"    # [J
    .param p1, "size"    # I

    .line 80
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    invoke-static {v0}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->wrap([J)Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist wrap([J)Landroid/provider/internal/aconfig/storage/android/util/LongArray;
    .registers 3
    .param p0, "array"    # [J

    .line 73
    new-instance v0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;-><init>([JI)V

    return-object v0
.end method


# virtual methods
.method public blacklist add(IJ)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 113
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->ensureCapacity(I)V

    .line 114
    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    sub-int/2addr v1, p1

    .line 115
    .local v1, "rightSegment":I
    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    .line 116
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    invoke-static {v0, p1}, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->checkBounds(II)V

    .line 118
    if-eqz v1, :cond_1c

    .line 120
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mValues:[J

    iget-object v2, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mValues:[J

    add-int/lit8 v3, p1, 0x1

    invoke-static {v0, p1, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    :cond_1c
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mValues:[J

    aput-wide p2, v0, p1

    .line 124
    return-void
.end method

.method public blacklist add(J)V
    .registers 4
    .param p1, "value"    # J

    .line 102
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->add(IJ)V

    .line 103
    return-void
.end method

.method public blacklist addAll(Landroid/provider/internal/aconfig/storage/android/util/LongArray;)V
    .registers 7
    .param p1, "values"    # Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    .line 130
    iget v0, p1, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    .line 131
    .local v0, "count":I
    invoke-direct {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->ensureCapacity(I)V

    .line 133
    iget-object v1, p1, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mValues:[J

    iget-object v2, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mValues:[J

    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    .line 135
    return-void
.end method

.method public blacklist clear()V
    .registers 2

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    .line 158
    return-void
.end method

.method public blacklist clone()Landroid/provider/internal/aconfig/storage/android/util/LongArray;
    .registers 3

    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, "clone":Landroid/provider/internal/aconfig/storage/android/util/LongArray;
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    move-object v0, v1

    .line 165
    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mValues:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mValues:[J
    :try_end_12
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_12} :catch_13

    .line 168
    goto :goto_14

    .line 166
    :catch_13
    move-exception v1

    .line 169
    :goto_14
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->clone()Landroid/provider/internal/aconfig/storage/android/util/LongArray;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get(I)J
    .registers 4
    .param p1, "index"    # I

    .line 177
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    invoke-static {v0, p1}, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->checkBounds(II)V

    .line 178
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mValues:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public blacklist indexOf(J)I
    .registers 7
    .param p1, "value"    # J

    .line 194
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    .line 195
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_11

    .line 196
    iget-object v2, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mValues:[J

    aget-wide v2, v2, v1

    cmp-long v2, v2, p1

    if-nez v2, :cond_e

    .line 197
    return v1

    .line 195
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 200
    .end local v1    # "i":I
    :cond_11
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist remove(I)V
    .registers 6
    .param p1, "index"    # I

    .line 207
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    invoke-static {v0, p1}, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->checkBounds(II)V

    .line 208
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mValues:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mValues:[J

    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    .line 210
    return-void
.end method

.method public blacklist resize(I)V
    .registers 6
    .param p1, "newSize"    # I

    .line 89
    invoke-static {p1}, Landroid/provider/internal/aconfig/storage/com/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 90
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mValues:[J

    array-length v0, v0

    if-gt p1, v0, :cond_13

    .line 91
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mValues:[J

    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mValues:[J

    array-length v1, v1

    const-wide/16 v2, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    goto :goto_1a

    .line 93
    :cond_13
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->ensureCapacity(I)V

    .line 95
    :goto_1a
    iput p1, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    .line 96
    return-void
.end method

.method public blacklist set(IJ)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 185
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    invoke-static {v0, p1}, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->checkBounds(II)V

    .line 186
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mValues:[J

    aput-wide p2, v0, p1

    .line 187
    return-void
.end method

.method public blacklist size()I
    .registers 2

    .line 217
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    return v0
.end method

.method public blacklist toArray()[J
    .registers 3

    .line 224
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mValues:[J

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/LongArray;->mSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method
