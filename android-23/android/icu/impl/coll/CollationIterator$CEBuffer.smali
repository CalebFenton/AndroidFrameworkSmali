.class final Landroid/icu/impl/coll/CollationIterator$CEBuffer;
.super Ljava/lang/Object;
.source "CollationIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CEBuffer"
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0x28


# instance fields
.field private buffer:[J

.field length:I


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@6
    .line 77
    const/16 v0, 0x28

    #@8
    new-array v0, v0, [J

    #@a
    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    #@c
    .line 31
    return-void
.end method


# virtual methods
.method append(J)V
    .locals 3
    .param p1, "ce"    # J

    #@0
    .prologue
    .line 34
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@2
    const/16 v1, 0x28

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 35
    const/4 v0, 0x1

    #@7
    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    #@a
    .line 37
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    #@c
    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@e
    add-int/lit8 v2, v1, 0x1

    #@10
    iput v2, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@12
    aput-wide p1, v0, v1

    #@14
    .line 33
    return-void
.end method

.method appendUnsafe(J)V
    .locals 3
    .param p1, "ce"    # J

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    #@2
    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@4
    add-int/lit8 v2, v1, 0x1

    #@6
    iput v2, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@8
    aput-wide p1, v0, v1

    #@a
    .line 40
    return-void
.end method

.method ensureAppendCapacity(I)V
    .locals 5
    .param p1, "appCap"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 45
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    #@3
    array-length v0, v2

    #@4
    .line 46
    .local v0, "capacity":I
    iget v2, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@6
    add-int/2addr v2, p1

    #@7
    if-gt v2, v0, :cond_0

    #@9
    return-void

    #@a
    .line 48
    :cond_0
    const/16 v2, 0x3e8

    #@c
    if-ge v0, v2, :cond_1

    #@e
    .line 49
    mul-int/lit8 v0, v0, 0x4

    #@10
    .line 53
    :goto_0
    iget v2, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@12
    add-int/2addr v2, p1

    #@13
    if-lt v0, v2, :cond_0

    #@15
    .line 54
    new-array v1, v0, [J

    #@17
    .line 55
    .local v1, "newBuffer":[J
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    #@19
    iget v3, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@1b
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@1e
    .line 56
    iput-object v1, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    #@20
    .line 44
    return-void

    #@21
    .line 51
    .end local v1    # "newBuffer":[J
    :cond_1
    mul-int/lit8 v0, v0, 0x2

    #@23
    goto :goto_0
.end method

.method get(I)J
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    #@2
    aget-wide v0, v0, p1

    #@4
    return-wide v0
.end method

.method getCEs()[J
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    #@2
    return-object v0
.end method

.method incLength()V
    .locals 2

    #@0
    .prologue
    .line 62
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@2
    const/16 v1, 0x28

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 63
    const/4 v0, 0x1

    #@7
    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    #@a
    .line 65
    :cond_0
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@c
    add-int/lit8 v0, v0, 0x1

    #@e
    iput v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@10
    .line 59
    return-void
.end method

.method set(IJ)J
    .locals 2
    .param p1, "i"    # I
    .param p2, "ce"    # J

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    #@2
    aput-wide p2, v0, p1

    #@4
    return-wide p2
.end method
