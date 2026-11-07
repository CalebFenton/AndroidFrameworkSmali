.class public Landroid/util/SparseArray;
.super Ljava/lang/Object;
.source "SparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o DELETED:Ljava/lang/Object;


# instance fields
.field private greylist-max-o mGarbage:Z

.field private greylist-max-p mKeys:[I

.field private greylist-max-p mSize:I

.field private greylist-max-p mValues:[Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 73
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 74
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 4
    .param p1, "initialCapacity"    # I

    .line 83
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 84
    if-nez p1, :cond_11

    .line 85
    sget-object v1, Landroid/util/EmptyArray;->INT:[I

    iput-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 86
    sget-object v1, Landroid/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    goto :goto_1e

    .line 88
    :cond_11
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 89
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 91
    :goto_1e
    iput v0, p0, Landroid/util/SparseArray;->mSize:I

    .line 92
    return-void
.end method

.method private greylist-max-o gc()V
    .registers 8

    .line 220
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    .line 221
    .local v0, "n":I
    const/4 v1, 0x0

    .line 222
    .local v1, "o":I
    iget-object v2, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 223
    .local v2, "keys":[I
    iget-object v3, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 225
    .local v3, "values":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    if-ge v4, v0, :cond_20

    .line 226
    aget-object v5, v3, v4

    .line 228
    .local v5, "val":Ljava/lang/Object;
    sget-object v6, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v5, v6, :cond_1d

    .line 229
    if-eq v4, v1, :cond_1b

    .line 230
    aget v6, v2, v4

    aput v6, v2, v1

    .line 231
    aput-object v5, v3, v1

    .line 232
    const/4 v6, 0x0

    aput-object v6, v3, v4

    .line 235
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    .line 225
    .end local v5    # "val":Ljava/lang/Object;
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 239
    .end local v4    # "i":I
    :cond_20
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 240
    iput v1, p0, Landroid/util/SparseArray;->mSize:I

    .line 243
    return-void
.end method


# virtual methods
.method public whitelist append(ILjava/lang/Object;)V
    .registers 5
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 464
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p1, v0, :cond_12

    .line 465
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 466
    return-void

    .line 469
    :cond_12
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_20

    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_20

    .line 470
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 473
    :cond_20
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 474
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 475
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/SparseArray;->mSize:I

    .line 476
    return-void
.end method

.method public whitelist clear()V
    .registers 5

    .line 448
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    .line 449
    .local v0, "n":I
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 451
    .local v1, "values":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_d

    .line 452
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 451
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 455
    .end local v2    # "i":I
    :cond_d
    const/4 v2, 0x0

    iput v2, p0, Landroid/util/SparseArray;->mSize:I

    .line 456
    iput-boolean v2, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 457
    return-void
.end method

.method public whitelist clone()Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "TE;>;"
        }
    .end annotation

    .line 97
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v0, 0x0

    .line 99
    .local v0, "clone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    move-object v0, v1

    .line 100
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/util/SparseArray;->mKeys:[I

    .line 101
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1c} :catch_1d

    .line 104
    goto :goto_1e

    .line 102
    :catch_1d
    move-exception v1

    .line 105
    :goto_1e
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 57
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public whitelist contains(I)Z
    .registers 3
    .param p1, "key"    # I

    .line 116
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist contentEquals(Landroid/util/SparseArray;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "*>;)Z"
        }
    .end annotation

    .line 518
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p1, "other":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 519
    return v0

    .line 522
    :cond_4
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 523
    .local v1, "size":I
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eq v1, v2, :cond_f

    .line 524
    return v0

    .line 528
    :cond_f
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_10
    if-ge v2, v1, :cond_2f

    .line 529
    iget-object v3, p0, Landroid/util/SparseArray;->mKeys:[I

    aget v3, v3, v2

    iget-object v4, p1, Landroid/util/SparseArray;->mKeys:[I

    aget v4, v4, v2

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v3, v3, v2

    iget-object v4, p1, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v2

    .line 530
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_2e

    .line 528
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 531
    :cond_2e
    :goto_2e
    return v0

    .line 535
    .end local v2    # "index":I
    :cond_2f
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist contentHashCode()I
    .registers 8

    .line 546
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v0, 0x0

    .line 547
    .local v0, "hash":I
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 549
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_6
    if-ge v2, v1, :cond_1d

    .line 550
    iget-object v3, p0, Landroid/util/SparseArray;->mKeys:[I

    aget v3, v3, v2

    .line 551
    .local v3, "key":I
    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v2

    .line 552
    .local v4, "value":Ljava/lang/Object;, "TE;"
    mul-int/lit8 v5, v0, 0x1f

    add-int/2addr v5, v3

    .line 553
    .end local v0    # "hash":I
    .local v5, "hash":I
    mul-int/lit8 v0, v5, 0x1f

    invoke-static {v4}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v0, v6

    .line 549
    .end local v3    # "key":I
    .end local v4    # "value":Ljava/lang/Object;, "TE;"
    .end local v5    # "hash":I
    .restart local v0    # "hash":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 555
    .end local v2    # "index":I
    :cond_1d
    return v0
.end method

.method public whitelist delete(I)V
    .registers 5
    .param p1, "key"    # I

    .line 146
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 148
    .local v0, "i":I
    if-ltz v0, :cond_1b

    .line 149
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_1b

    .line 150
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 154
    :cond_1b
    return-void
.end method

.method public whitelist get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 124
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist get(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 133
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 135
    .local v0, "i":I
    if-ltz v0, :cond_18

    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_13

    goto :goto_18

    .line 138
    :cond_13
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1

    .line 136
    :cond_18
    :goto_18
    return-object p2
.end method

.method public whitelist indexOfKey(I)I
    .registers 4
    .param p1, "key"    # I

    .line 384
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 385
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 388
    :cond_7
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public whitelist indexOfValue(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 402
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 403
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 406
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v1, :cond_16

    .line 407
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_13

    .line 408
    return v0

    .line 406
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 412
    .end local v0    # "i":I
    :cond_16
    const/4 v0, -0x1

    return v0
.end method

.method public greylist-max-o indexOfValueByValue(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 426
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 427
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 430
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v1, :cond_23

    .line 431
    if-nez p1, :cond_15

    .line 432
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_20

    .line 433
    return v0

    .line 436
    :cond_15
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 437
    return v0

    .line 430
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 441
    .end local v0    # "i":I
    :cond_23
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist keyAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 313
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 316
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 318
    :cond_f
    :goto_f
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_16

    .line 319
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 322
    :cond_16
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist put(ILjava/lang/Object;)V
    .registers 6
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 259
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 261
    .local v0, "i":I
    if-ltz v0, :cond_f

    .line 262
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_56

    .line 264
    :cond_f
    not-int v0, v0

    .line 266
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_25

    .line 267
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    aput p1, v1, v0

    .line 268
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 269
    return-void

    .line 272
    :cond_25
    iget-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v1, :cond_3c

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    iget-object v2, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3c

    .line 273
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 276
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v1

    not-int v0, v1

    .line 279
    :cond_3c
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 280
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, v0, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 281
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/SparseArray;->mSize:I

    .line 283
    :goto_56
    return-void
.end method

.method public whitelist remove(I)V
    .registers 2
    .param p1, "key"    # I

    .line 178
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 179
    return-void
.end method

.method public whitelist removeAt(I)V
    .registers 4
    .param p1, "index"    # I

    .line 190
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 193
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 195
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_20

    .line 196
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 199
    :cond_20
    return-void
.end method

.method public whitelist removeAtRange(II)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "size"    # I

    .line 211
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 212
    .local v0, "end":I
    move v1, p1

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_11

    .line 213
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 215
    .end local v1    # "i":I
    :cond_11
    return-void
.end method

.method public greylist-max-o removeReturnOld(I)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 161
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 163
    .local v0, "i":I
    if-ltz v0, :cond_20

    .line 164
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_20

    .line 165
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 166
    .local v1, "old":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    sget-object v3, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    aput-object v3, v2, v0

    .line 167
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 168
    return-object v1

    .line 171
    .end local v1    # "old":Ljava/lang/Object;, "TE;"
    :cond_20
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist set(ILjava/lang/Object;)V
    .registers 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 250
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 251
    return-void
.end method

.method public whitelist setValueAt(ILjava/lang/Object;)V
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 366
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 369
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 371
    :cond_f
    :goto_f
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_16

    .line 372
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 375
    :cond_16
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 376
    return-void
.end method

.method public whitelist size()I
    .registers 2

    .line 290
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 291
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 294
    :cond_7
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 487
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_a

    .line 488
    const-string/jumbo v0, "{}"

    return-object v0

    .line 491
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 492
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 493
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v1, v2, :cond_42

    .line 494
    if-lez v1, :cond_24

    .line 495
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    :cond_24
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 498
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 499
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 501
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_3a

    .line 502
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 504
    :cond_3a
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .end local v2    # "key":I
    .end local v3    # "value":Ljava/lang/Object;
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 507
    .end local v1    # "i":I
    :cond_42
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist valueAt(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 343
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 346
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 348
    :cond_f
    :goto_f
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_16

    .line 349
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 352
    :cond_16
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
