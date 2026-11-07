.class public final Landroid/icu/impl/coll/UVector32;
.super Ljava/lang/Object;
.source "UVector32.java"


# instance fields
.field private blacklist buffer:[I

.field private blacklist length:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/UVector32;->length:I

    .line 22
    return-void
.end method

.method private blacklist ensureAppendCapacity()V
    .registers 6

    .line 43
    iget v0, p0, Landroid/icu/impl/coll/UVector32;->length:I

    iget-object v1, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    array-length v1, v1

    if-lt v0, v1, :cond_26

    .line 44
    iget-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    array-length v0, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_15

    iget-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    goto :goto_1a

    :cond_15
    iget-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 45
    .local v0, "newCapacity":I
    :goto_1a
    new-array v1, v0, [I

    .line 46
    .local v1, "newBuffer":[I
    iget-object v2, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    iget v3, p0, Landroid/icu/impl/coll/UVector32;->length:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iput-object v1, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    .line 49
    .end local v0    # "newCapacity":I
    .end local v1    # "newBuffer":[I
    :cond_26
    return-void
.end method


# virtual methods
.method public blacklist addElement(I)V
    .registers 5
    .param p1, "e"    # I

    .line 28
    invoke-direct {p0}, Landroid/icu/impl/coll/UVector32;->ensureAppendCapacity()V

    .line 29
    iget-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    iget v1, p0, Landroid/icu/impl/coll/UVector32;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/UVector32;->length:I

    aput p1, v0, v1

    .line 30
    return-void
.end method

.method public blacklist elementAti(I)I
    .registers 3
    .param p1, "i"    # I

    .line 25
    iget-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    aget v0, v0, p1

    return v0
.end method

.method public blacklist getBuffer()[I
    .registers 2

    .line 26
    iget-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    return-object v0
.end method

.method public blacklist insertElementAt(II)V
    .registers 7
    .param p1, "elem"    # I
    .param p2, "index"    # I

    .line 33
    invoke-direct {p0}, Landroid/icu/impl/coll/UVector32;->ensureAppendCapacity()V

    .line 34
    iget-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    iget-object v1, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    add-int/lit8 v2, p2, 0x1

    iget v3, p0, Landroid/icu/impl/coll/UVector32;->length:I

    sub-int/2addr v3, p2

    invoke-static {v0, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iget-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    aput p1, v0, p2

    .line 36
    iget v0, p0, Landroid/icu/impl/coll/UVector32;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/coll/UVector32;->length:I

    .line 37
    return-void
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 23
    iget v0, p0, Landroid/icu/impl/coll/UVector32;->length:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist removeAllElements()V
    .registers 2

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/UVector32;->length:I

    .line 40
    return-void
.end method

.method public blacklist setElementAt(II)V
    .registers 4
    .param p1, "elem"    # I
    .param p2, "index"    # I

    .line 31
    iget-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    aput p1, v0, p2

    return-void
.end method

.method public blacklist size()I
    .registers 2

    .line 24
    iget v0, p0, Landroid/icu/impl/coll/UVector32;->length:I

    return v0
.end method
