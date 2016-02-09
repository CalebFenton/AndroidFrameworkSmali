.class public final Landroid/icu/impl/coll/UVector32;
.super Ljava/lang/Object;
.source "UVector32.java"


# instance fields
.field private buffer:[I

.field private length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    const/16 v0, 0x20

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    #@9
    .line 45
    const/4 v0, 0x0

    #@a
    iput v0, p0, Landroid/icu/impl/coll/UVector32;->length:I

    #@c
    .line 16
    return-void
.end method

.method private ensureAppendCapacity()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 37
    iget v2, p0, Landroid/icu/impl/coll/UVector32;->length:I

    #@3
    iget-object v3, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    #@5
    array-length v3, v3

    #@6
    if-lt v2, v3, :cond_0

    #@8
    .line 38
    iget-object v2, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    #@a
    array-length v2, v2

    #@b
    const v3, 0xffff

    #@e
    if-gt v2, v3, :cond_1

    #@10
    iget-object v2, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    #@12
    array-length v2, v2

    #@13
    mul-int/lit8 v1, v2, 0x4

    #@15
    .line 39
    .local v1, "newCapacity":I
    :goto_0
    new-array v0, v1, [I

    #@17
    .line 40
    .local v0, "newBuffer":[I
    iget-object v2, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    #@19
    iget v3, p0, Landroid/icu/impl/coll/UVector32;->length:I

    #@1b
    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@1e
    .line 41
    iput-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    #@20
    .line 36
    .end local v0    # "newBuffer":[I
    .end local v1    # "newCapacity":I
    :cond_0
    return-void

    #@21
    .line 38
    :cond_1
    iget-object v2, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    #@23
    array-length v2, v2

    #@24
    mul-int/lit8 v1, v2, 0x2

    #@26
    .restart local v1    # "newCapacity":I
    goto :goto_0
.end method


# virtual methods
.method public addElement(I)V
    .locals 3
    .param p1, "e"    # I

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Landroid/icu/impl/coll/UVector32;->ensureAppendCapacity()V

    #@3
    .line 23
    iget-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    #@5
    iget v1, p0, Landroid/icu/impl/coll/UVector32;->length:I

    #@7
    add-int/lit8 v2, v1, 0x1

    #@9
    iput v2, p0, Landroid/icu/impl/coll/UVector32;->length:I

    #@b
    aput p1, v0, v1

    #@d
    .line 21
    return-void
.end method

.method public elementAti(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 19
    iget-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public getBuffer()[I
    .locals 1

    #@0
    .prologue
    .line 20
    iget-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    #@2
    return-object v0
.end method

.method public insertElementAt(II)V
    .locals 4
    .param p1, "elem"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Landroid/icu/impl/coll/UVector32;->ensureAppendCapacity()V

    #@3
    .line 28
    iget-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    #@5
    iget-object v1, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    #@7
    add-int/lit8 v2, p2, 0x1

    #@9
    iget v3, p0, Landroid/icu/impl/coll/UVector32;->length:I

    #@b
    sub-int/2addr v3, p2

    #@c
    invoke-static {v0, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@f
    .line 29
    iget-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    #@11
    aput p1, v0, p2

    #@13
    .line 30
    iget v0, p0, Landroid/icu/impl/coll/UVector32;->length:I

    #@15
    add-int/lit8 v0, v0, 0x1

    #@17
    iput v0, p0, Landroid/icu/impl/coll/UVector32;->length:I

    #@19
    .line 26
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 17
    iget v1, p0, Landroid/icu/impl/coll/UVector32;->length:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public removeAllElements()V
    .locals 1

    #@0
    .prologue
    .line 33
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/icu/impl/coll/UVector32;->length:I

    #@3
    .line 32
    return-void
.end method

.method public setElementAt(II)V
    .locals 1
    .param p1, "elem"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    .line 25
    iget-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    #@2
    aput p1, v0, p2

    #@4
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 18
    iget v0, p0, Landroid/icu/impl/coll/UVector32;->length:I

    #@2
    return v0
.end method
