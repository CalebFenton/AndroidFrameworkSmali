.class public Landroid/util/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

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
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 53
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@7
    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 64
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    const/16 v0, 0xa

    #@2
    invoke-direct {p0, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    #@5
    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 54
    iput-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    #@6
    .line 75
    if-nez p1, :cond_0

    #@8
    .line 76
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    #@a
    iput-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    #@c
    .line 77
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@e
    iput-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@10
    .line 82
    :goto_0
    iput v1, p0, Landroid/util/LongSparseArray;->mSize:I

    #@12
    .line 74
    return-void

    #@13
    .line 79
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    #@19
    .line 80
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@1f
    goto :goto_0
.end method

.method private gc()V
    .locals 8

    #@0
    .prologue
    .line 156
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    #@2
    .line 157
    .local v2, "n":I
    const/4 v3, 0x0

    #@3
    .line 158
    .local v3, "o":I
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    #@5
    .line 159
    .local v1, "keys":[J
    iget-object v5, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@7
    .line 161
    .local v5, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@a
    .line 162
    aget-object v4, v5, v0

    #@c
    .line 164
    .local v4, "val":Ljava/lang/Object;
    sget-object v6, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@e
    if-eq v4, v6, :cond_1

    #@10
    .line 165
    if-eq v0, v3, :cond_0

    #@12
    .line 166
    aget-wide v6, v1, v0

    #@14
    aput-wide v6, v1, v3

    #@16
    .line 167
    aput-object v4, v5, v3

    #@18
    .line 168
    const/4 v6, 0x0

    #@19
    aput-object v6, v5, v0

    #@1b
    .line 171
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1d
    .line 161
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 175
    .end local v4    # "val":Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x0

    #@21
    iput-boolean v6, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    #@23
    .line 176
    iput v3, p0, Landroid/util/LongSparseArray;->mSize:I

    #@25
    .line 153
    return-void
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .locals 3
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 329
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    #@6
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    aget-wide v0, v0, v1

    #@c
    cmp-long v0, p1, v0

    #@e
    if-gtz v0, :cond_0

    #@10
    .line 330
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@13
    .line 331
    return-void

    #@14
    .line 334
    :cond_0
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    #@16
    if-eqz v0, :cond_1

    #@18
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    #@1a
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    #@1c
    array-length v1, v1

    #@1d
    if-lt v0, v1, :cond_1

    #@1f
    .line 335
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    #@22
    .line 338
    :cond_1
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    #@24
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    #@26
    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([JIJ)[J

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    #@2c
    .line 339
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@2e
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    #@30
    invoke-static {v0, v1, p3}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    iput-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@36
    .line 340
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    #@38
    add-int/lit8 v0, v0, 0x1

    #@3a
    iput v0, p0, Landroid/util/LongSparseArray;->mSize:I

    #@3c
    .line 328
    return-void
.end method

.method public clear()V
    .locals 5

    #@0
    .prologue
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    const/4 v4, 0x0

    #@1
    .line 313
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    #@3
    .line 314
    .local v1, "n":I
    iget-object v2, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@5
    .line 316
    .local v2, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@8
    .line 317
    const/4 v3, 0x0

    #@9
    aput-object v3, v2, v0

    #@b
    .line 316
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 320
    :cond_0
    iput v4, p0, Landroid/util/LongSparseArray;->mSize:I

    #@10
    .line 321
    iput-boolean v4, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    #@12
    .line 312
    return-void
.end method

.method public clone()Landroid/util/LongSparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 88
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 90
    .local v1, "clone":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4
    move-result-object v3

    #@5
    move-object v0, v3

    #@6
    check-cast v0, Landroid/util/LongSparseArray;

    #@8
    move-object v1, v0

    #@9
    .line 91
    .local v1, "clone":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    iget-object v3, p0, Landroid/util/LongSparseArray;->mKeys:[J

    #@b
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, [J

    #@11
    iput-object v3, v1, Landroid/util/LongSparseArray;->mKeys:[J

    #@13
    .line 92
    iget-object v3, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@15
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, [Ljava/lang/Object;

    #@1b
    iput-object v3, v1, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 96
    .end local v1    # "clone":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    :goto_0
    return-object v1

    #@1e
    .line 93
    :catch_0
    move-exception v2

    #@1f
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
    .line 87
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public delete(J)V
    .locals 3
    .param p1, "key"    # J

    #@0
    .prologue
    .line 126
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    #@2
    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    #@4
    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    #@7
    move-result v0

    #@8
    .line 128
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@a
    .line 129
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@c
    aget-object v1, v1, v0

    #@e
    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@10
    if-eq v1, v2, :cond_0

    #@12
    .line 130
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@14
    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@16
    aput-object v2, v1, v0

    #@18
    .line 131
    const/4 v1, 0x1

    #@19
    iput-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    #@1b
    .line 125
    :cond_0
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 104
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 113
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    .local p3, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    #@2
    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    #@4
    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    #@7
    move-result v0

    #@8
    .line 115
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@a
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@c
    aget-object v1, v1, v0

    #@e
    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@10
    if-ne v1, v2, :cond_1

    #@12
    .line 116
    :cond_0
    return-object p3

    #@13
    .line 118
    :cond_1
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@15
    aget-object v1, v1, v0

    #@17
    return-object v1
.end method

.method public indexOfKey(J)I
    .locals 3
    .param p1, "key"    # J

    #@0
    .prologue
    .line 282
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 283
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    #@7
    .line 286
    :cond_0
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    #@9
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    #@b
    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 298
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 299
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    #@7
    .line 302
    :cond_0
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    #@a
    if-ge v0, v1, :cond_2

    #@c
    .line 303
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@e
    aget-object v1, v1, v0

    #@10
    if-ne v1, p1, :cond_1

    #@12
    .line 304
    return v0

    #@13
    .line 302
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 306
    :cond_2
    const/4 v1, -0x1

    #@17
    return v1
.end method

.method public keyAt(I)J
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 236
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 237
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    #@7
    .line 240
    :cond_0
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    #@9
    aget-wide v0, v0, p1

    #@b
    return-wide v0
.end method

.method public put(JLjava/lang/Object;)V
    .locals 3
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 187
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    #@2
    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    #@4
    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    #@7
    move-result v0

    #@8
    .line 189
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@a
    .line 190
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@c
    aput-object p3, v1, v0

    #@e
    .line 186
    :goto_0
    return-void

    #@f
    .line 192
    :cond_0
    not-int v0, v0

    #@10
    .line 194
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    #@12
    if-ge v0, v1, :cond_1

    #@14
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@16
    aget-object v1, v1, v0

    #@18
    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@1a
    if-ne v1, v2, :cond_1

    #@1c
    .line 195
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    #@1e
    aput-wide p1, v1, v0

    #@20
    .line 196
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@22
    aput-object p3, v1, v0

    #@24
    .line 197
    return-void

    #@25
    .line 200
    :cond_1
    iget-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    #@27
    if-eqz v1, :cond_2

    #@29
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    #@2b
    iget-object v2, p0, Landroid/util/LongSparseArray;->mKeys:[J

    #@2d
    array-length v2, v2

    #@2e
    if-lt v1, v2, :cond_2

    #@30
    .line 201
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    #@33
    .line 204
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    #@35
    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    #@37
    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    #@3a
    move-result v1

    #@3b
    not-int v0, v1

    #@3c
    .line 207
    :cond_2
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    #@3e
    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    #@40
    invoke-static {v1, v2, v0, p1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([JIIJ)[J

    #@43
    move-result-object v1

    #@44
    iput-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    #@46
    .line 208
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@48
    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    #@4a
    invoke-static {v1, v2, v0, p3}, Lcom/android/internal/util/GrowingArrayUtils;->insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;

    #@4d
    move-result-object v1

    #@4e
    iput-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@50
    .line 209
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    #@52
    add-int/lit8 v1, v1, 0x1

    #@54
    iput v1, p0, Landroid/util/LongSparseArray;->mSize:I

    #@56
    goto :goto_0
.end method

.method public remove(J)V
    .locals 1
    .param p1, "key"    # J

    #@0
    .prologue
    .line 140
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    #@3
    .line 139
    return-void
.end method

.method public removeAt(I)V
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 147
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@2
    aget-object v0, v0, p1

    #@4
    sget-object v1, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 148
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@a
    sget-object v1, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@c
    aput-object v1, v0, p1

    #@e
    .line 149
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    #@11
    .line 146
    :cond_0
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 269
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 270
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    #@7
    .line 273
    :cond_0
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@9
    aput-object p2, v0, p1

    #@b
    .line 268
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 218
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 219
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    #@7
    .line 222
    :cond_0
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    #@9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 352
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    #@3
    move-result v5

    #@4
    if-gtz v5, :cond_0

    #@6
    .line 353
    const-string/jumbo v5, "{}"

    #@9
    return-object v5

    #@a
    .line 356
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    iget v5, p0, Landroid/util/LongSparseArray;->mSize:I

    #@e
    mul-int/lit8 v5, v5, 0x1c

    #@10
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@13
    .line 357
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v5, 0x7b

    #@15
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 358
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    iget v5, p0, Landroid/util/LongSparseArray;->mSize:I

    #@1b
    if-ge v1, v5, :cond_3

    #@1d
    .line 359
    if-lez v1, :cond_1

    #@1f
    .line 360
    const-string/jumbo v5, ", "

    #@22
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 362
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    #@28
    move-result-wide v2

    #@29
    .line 363
    .local v2, "key":J
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2c
    .line 364
    const/16 v5, 0x3d

    #@2e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 365
    invoke-virtual {p0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@34
    move-result-object v4

    #@35
    .line 366
    .local v4, "value":Ljava/lang/Object;
    if-eq v4, p0, :cond_2

    #@37
    .line 367
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    .line 358
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 369
    :cond_2
    const-string/jumbo v5, "(this Map)"

    #@40
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    goto :goto_1

    #@44
    .line 372
    .end local v2    # "key":J
    .end local v4    # "value":Ljava/lang/Object;
    :cond_3
    const/16 v5, 0x7d

    #@46
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@49
    .line 373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    return-object v5
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 256
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 257
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    #@7
    .line 260
    :cond_0
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@9
    aget-object v0, v0, p1

    #@b
    return-object v0
.end method
