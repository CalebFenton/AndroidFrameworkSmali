.class public Landroid/util/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final MIN_CAPACITY_INCREMENT:I = 0xc


# instance fields
.field private mSize:I

.field private mValues:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 37
    const/16 v0, 0xa

    #@2
    invoke-direct {p0, v0}, Landroid/util/LongArray;-><init>(I)V

    #@5
    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 44
    if-nez p1, :cond_0

    #@6
    .line 45
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    #@8
    iput-object v0, p0, Landroid/util/LongArray;->mValues:[J

    #@a
    .line 49
    :goto_0
    iput v1, p0, Landroid/util/LongArray;->mSize:I

    #@c
    .line 43
    return-void

    #@d
    .line 47
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/util/LongArray;->mValues:[J

    #@13
    goto :goto_0
.end method

.method private ensureCapacity(I)V
    .locals 7
    .param p1, "count"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 94
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    #@3
    .line 95
    .local v0, "currentSize":I
    add-int v1, v0, p1

    #@5
    .line 96
    .local v1, "minCapacity":I
    iget-object v5, p0, Landroid/util/LongArray;->mValues:[J

    #@7
    array-length v5, v5

    #@8
    if-lt v1, v5, :cond_0

    #@a
    .line 97
    const/4 v5, 0x6

    #@b
    if-ge v0, v5, :cond_1

    #@d
    .line 98
    const/16 v5, 0xc

    #@f
    .line 97
    :goto_0
    add-int v4, v0, v5

    #@11
    .line 99
    .local v4, "targetCap":I
    if-le v4, v1, :cond_2

    #@13
    move v2, v4

    #@14
    .line 100
    .local v2, "newCapacity":I
    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    #@17
    move-result-object v3

    #@18
    .line 101
    .local v3, "newValues":[J
    iget-object v5, p0, Landroid/util/LongArray;->mValues:[J

    #@1a
    invoke-static {v5, v6, v3, v6, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@1d
    .line 102
    iput-object v3, p0, Landroid/util/LongArray;->mValues:[J

    #@1f
    .line 93
    .end local v2    # "newCapacity":I
    .end local v3    # "newValues":[J
    .end local v4    # "targetCap":I
    :cond_0
    return-void

    #@20
    .line 98
    :cond_1
    shr-int/lit8 v5, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 99
    .restart local v4    # "targetCap":I
    :cond_2
    move v2, v1

    #@24
    .restart local v2    # "newCapacity":I
    goto :goto_1
.end method


# virtual methods
.method public add(IJ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 65
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@b
    throw v0

    #@c
    .line 69
    :cond_1
    const/4 v0, 0x1

    #@d
    invoke-direct {p0, v0}, Landroid/util/LongArray;->ensureCapacity(I)V

    #@10
    .line 71
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    #@12
    sub-int/2addr v0, p1

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 72
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    #@17
    iget-object v1, p0, Landroid/util/LongArray;->mValues:[J

    #@19
    add-int/lit8 v2, p1, 0x1

    #@1b
    iget v3, p0, Landroid/util/LongArray;->mSize:I

    #@1d
    sub-int/2addr v3, p1

    #@1e
    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@21
    .line 75
    :cond_2
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    #@23
    aput-wide p2, v0, p1

    #@25
    .line 76
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    #@27
    add-int/lit8 v0, v0, 0x1

    #@29
    iput v0, p0, Landroid/util/LongArray;->mSize:I

    #@2b
    .line 64
    return-void
.end method

.method public add(J)V
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 56
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    #@2
    invoke-virtual {p0, v0, p1, p2}, Landroid/util/LongArray;->add(IJ)V

    #@5
    .line 55
    return-void
.end method

.method public addAll(Landroid/util/LongArray;)V
    .locals 5
    .param p1, "values"    # Landroid/util/LongArray;

    #@0
    .prologue
    .line 83
    iget v0, p1, Landroid/util/LongArray;->mSize:I

    #@2
    .line 84
    .local v0, "count":I
    invoke-direct {p0, v0}, Landroid/util/LongArray;->ensureCapacity(I)V

    #@5
    .line 86
    iget-object v1, p1, Landroid/util/LongArray;->mValues:[J

    #@7
    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    #@9
    iget v3, p0, Landroid/util/LongArray;->mSize:I

    #@b
    const/4 v4, 0x0

    #@c
    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@f
    .line 87
    iget v1, p0, Landroid/util/LongArray;->mSize:I

    #@11
    add-int/2addr v1, v0

    #@12
    iput v1, p0, Landroid/util/LongArray;->mSize:I

    #@14
    .line 82
    return-void
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 110
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/util/LongArray;->mSize:I

    #@3
    .line 109
    return-void
.end method

.method public clone()Landroid/util/LongArray;
    .locals 4

    #@0
    .prologue
    .line 115
    const/4 v1, 0x0

    #@1
    .line 117
    .local v1, "clone":Landroid/util/LongArray;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4
    move-result-object v3

    #@5
    move-object v0, v3

    #@6
    check-cast v0, Landroid/util/LongArray;

    #@8
    move-object v1, v0

    #@9
    .line 118
    .local v1, "clone":Landroid/util/LongArray;
    iget-object v3, p0, Landroid/util/LongArray;->mValues:[J

    #@b
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, [J

    #@11
    iput-object v3, v1, Landroid/util/LongArray;->mValues:[J
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 122
    .end local v1    # "clone":Landroid/util/LongArray;
    :goto_0
    return-object v1

    #@14
    .line 119
    :catch_0
    move-exception v2

    #@15
    .local v2, "cnse":Ljava/lang/CloneNotSupportedException;
    goto :goto_0
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
    .line 114
    invoke-virtual {p0}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get(I)J
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 129
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    .line 130
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    iget v1, p0, Landroid/util/LongArray;->mSize:I

    #@8
    invoke-direct {v0, v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    #@b
    throw v0

    #@c
    .line 132
    :cond_0
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    #@e
    aget-wide v0, v0, p1

    #@10
    return-wide v0
.end method

.method public indexOf(J)I
    .locals 5
    .param p1, "value"    # J

    #@0
    .prologue
    .line 140
    iget v1, p0, Landroid/util/LongArray;->mSize:I

    #@2
    .line 141
    .local v1, "n":I
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@5
    .line 142
    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    #@7
    aget-wide v2, v2, v0

    #@9
    cmp-long v2, v2, p1

    #@b
    if-nez v2, :cond_0

    #@d
    .line 143
    return v0

    #@e
    .line 141
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 146
    :cond_1
    const/4 v2, -0x1

    #@12
    return v2
.end method

.method public remove(I)V
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 153
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    .line 154
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    iget v1, p0, Landroid/util/LongArray;->mSize:I

    #@8
    invoke-direct {v0, v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    #@b
    throw v0

    #@c
    .line 156
    :cond_0
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    #@e
    add-int/lit8 v1, p1, 0x1

    #@10
    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    #@12
    iget v3, p0, Landroid/util/LongArray;->mSize:I

    #@14
    sub-int/2addr v3, p1

    #@15
    add-int/lit8 v3, v3, -0x1

    #@17
    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@1a
    .line 157
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    #@1c
    add-int/lit8 v0, v0, -0x1

    #@1e
    iput v0, p0, Landroid/util/LongArray;->mSize:I

    #@20
    .line 152
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 164
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    #@2
    return v0
.end method
