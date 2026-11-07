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
.field private static final blacklist INITIAL_CAPACITY:I = 0x28


# instance fields
.field private blacklist buffer:[J

.field blacklist length:I


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    .line 81
    const/16 v0, 0x28

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    .line 35
    return-void
.end method


# virtual methods
.method blacklist append(J)V
    .registers 6
    .param p1, "ce"    # J

    .line 38
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    const/16 v1, 0x28

    if-lt v0, v1, :cond_a

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    .line 41
    :cond_a
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    aput-wide p1, v0, v1

    .line 42
    return-void
.end method

.method blacklist appendUnsafe(J)V
    .registers 6
    .param p1, "ce"    # J

    .line 45
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    aput-wide p1, v0, v1

    .line 46
    return-void
.end method

.method blacklist ensureAppendCapacity(I)V
    .registers 7
    .param p1, "appCap"    # I

    .line 49
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    array-length v0, v0

    .line 50
    .local v0, "capacity":I
    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/2addr v1, p1

    if-gt v1, v0, :cond_9

    return-void

    .line 52
    :cond_9
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_10

    .line 53
    mul-int/lit8 v0, v0, 0x4

    goto :goto_12

    .line 55
    :cond_10
    mul-int/lit8 v0, v0, 0x2

    .line 57
    :goto_12
    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/2addr v1, p1

    if-lt v0, v1, :cond_9

    .line 58
    new-array v1, v0, [J

    .line 59
    .local v1, "newBuffer":[J
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    iget v3, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iput-object v1, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    .line 61
    return-void
.end method

.method blacklist get(I)J
    .registers 4
    .param p1, "i"    # I

    .line 75
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method blacklist getCEs()[J
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    return-object v0
.end method

.method blacklist incLength()V
    .registers 4

    .line 66
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    const/16 v1, 0x28

    const/4 v2, 0x1

    if-lt v0, v1, :cond_a

    .line 67
    invoke-virtual {p0, v2}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    .line 69
    :cond_a
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    .line 70
    return-void
.end method

.method blacklist set(IJ)J
    .registers 5
    .param p1, "i"    # I
    .param p2, "ce"    # J

    .line 73
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    aput-wide p2, v0, p1

    return-wide p2
.end method
