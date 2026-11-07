.class public Landroid/text/AutoGrowArray$FloatArray;
.super Ljava/lang/Object;
.source "AutoGrowArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/AutoGrowArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatArray"
.end annotation


# instance fields
.field private greylist-max-o mSize:I

.field private greylist-max-o mValues:[F


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 279
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$FloatArray;-><init>(I)V

    .line 280
    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    if-nez p1, :cond_a

    .line 287
    sget-object v0, Llibcore/util/EmptyArray;->FLOAT:[F

    iput-object v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    goto :goto_10

    .line 289
    :cond_a
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedFloatArray(I)[F

    move-result-object v0

    iput-object v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    .line 291
    :goto_10
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    .line 292
    return-void
.end method

.method private greylist-max-o ensureCapacity(I)V
    .registers 8
    .param p1, "count"    # I

    .line 317
    iget v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    add-int/2addr v0, p1

    .line 318
    .local v0, "requestedSize":I
    iget-object v1, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    array-length v1, v1

    if-lt v0, v1, :cond_1c

    .line 319
    iget v1, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    invoke-static {v1, v0}, Landroid/text/AutoGrowArray;->-$$Nest$smcomputeNewCapacity(II)I

    move-result v1

    .line 320
    .local v1, "newCapacity":I
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedFloatArray(I)[F

    move-result-object v2

    .line 321
    .local v2, "newValues":[F
    iget-object v3, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    iget v4, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    iput-object v2, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    .line 324
    .end local v1    # "newCapacity":I
    .end local v2    # "newValues":[F
    :cond_1c
    return-void
.end method


# virtual methods
.method public greylist-max-o append(F)V
    .registers 5
    .param p1, "value"    # F

    .line 309
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$FloatArray;->ensureCapacity(I)V

    .line 310
    iget-object v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    iget v1, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    aput p1, v0, v1

    .line 311
    return-void
.end method

.method public greylist-max-o clear()V
    .registers 2

    .line 330
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    .line 331
    return-void
.end method

.method public greylist-max-o clearWithReleasingLargeArray()V
    .registers 3

    .line 338
    invoke-virtual {p0}, Landroid/text/AutoGrowArray$FloatArray;->clear()V

    .line 339
    iget-object v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    array-length v0, v0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_e

    .line 340
    sget-object v0, Llibcore/util/EmptyArray;->FLOAT:[F

    iput-object v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    .line 342
    :cond_e
    return-void
.end method

.method public greylist-max-o get(I)F
    .registers 3
    .param p1, "index"    # I

    .line 348
    iget-object v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    aget v0, v0, p1

    return v0
.end method

.method public greylist-max-o getRawArray()[F
    .registers 2

    .line 372
    iget-object v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    return-object v0
.end method

.method public greylist-max-o resize(I)V
    .registers 3
    .param p1, "newSize"    # I

    .line 299
    iget-object v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    array-length v0, v0

    if-le p1, v0, :cond_c

    .line 300
    iget v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$FloatArray;->ensureCapacity(I)V

    .line 302
    :cond_c
    iput p1, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    .line 303
    return-void
.end method

.method public greylist-max-o set(IF)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 355
    iget-object v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    aput p2, v0, p1

    .line 356
    return-void
.end method

.method public greylist-max-o size()I
    .registers 2

    .line 362
    iget v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    return v0
.end method
