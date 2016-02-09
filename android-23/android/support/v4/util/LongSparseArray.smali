.class public Landroid/support/v4/util/LongSparseArray;
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
    .line 44
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@7
    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 55
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    const/16 v0, 0xa

    #@2
    invoke-direct {p0, v0}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    #@5
    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 45
    iput-boolean v1, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@6
    .line 66
    if-nez p1, :cond_0

    #@8
    .line 67
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_LONGS:[J

    #@a
    iput-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@c
    .line 68
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    #@e
    iput-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@10
    .line 74
    :goto_0
    iput v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@12
    .line 65
    return-void

    #@13
    .line 70
    :cond_0
    invoke-static {p1}, Landroid/support/v4/util/ContainerHelpers;->idealLongArraySize(I)I

    #@16
    move-result p1

    #@17
    .line 71
    new-array v0, p1, [J

    #@19
    iput-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@1b
    .line 72
    new-array v0, p1, [Ljava/lang/Object;

    #@1d
    iput-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@1f
    goto :goto_0
.end method

.method private gc()V
    .locals 8

    #@0
    .prologue
    .line 148
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@2
    .line 149
    .local v2, "n":I
    const/4 v3, 0x0

    #@3
    .line 150
    .local v3, "o":I
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@5
    .line 151
    .local v1, "keys":[J
    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@7
    .line 153
    .local v5, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@a
    .line 154
    aget-object v4, v5, v0

    #@c
    .line 156
    .local v4, "val":Ljava/lang/Object;
    sget-object v6, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@e
    if-eq v4, v6, :cond_1

    #@10
    .line 157
    if-eq v0, v3, :cond_0

    #@12
    .line 158
    aget-wide v6, v1, v0

    #@14
    aput-wide v6, v1, v3

    #@16
    .line 159
    aput-object v4, v5, v3

    #@18
    .line 160
    const/4 v6, 0x0

    #@19
    aput-object v6, v5, v0

    #@1b
    .line 163
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1d
    .line 153
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 167
    .end local v4    # "val":Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x0

    #@21
    iput-boolean v6, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@23
    .line 168
    iput v3, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@25
    .line 145
    return-void
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .locals 7
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    #@1
    .line 330
    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@3
    if-eqz v4, :cond_0

    #@5
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@7
    iget v5, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@9
    add-int/lit8 v5, v5, -0x1

    #@b
    aget-wide v4, v4, v5

    #@d
    cmp-long v4, p1, v4

    #@f
    if-gtz v4, :cond_0

    #@11
    .line 331
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@14
    .line 332
    return-void

    #@15
    .line 335
    :cond_0
    iget-boolean v4, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@17
    if-eqz v4, :cond_1

    #@19
    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@1b
    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@1d
    array-length v5, v5

    #@1e
    if-lt v4, v5, :cond_1

    #@20
    .line 336
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    #@23
    .line 339
    :cond_1
    iget v3, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@25
    .line 340
    .local v3, "pos":I
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@27
    array-length v4, v4

    #@28
    if-lt v3, v4, :cond_2

    #@2a
    .line 341
    add-int/lit8 v4, v3, 0x1

    #@2c
    invoke-static {v4}, Landroid/support/v4/util/ContainerHelpers;->idealLongArraySize(I)I

    #@2f
    move-result v0

    #@30
    .line 343
    .local v0, "n":I
    new-array v1, v0, [J

    #@32
    .line 344
    .local v1, "nkeys":[J
    new-array v2, v0, [Ljava/lang/Object;

    #@34
    .line 347
    .local v2, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@36
    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@38
    array-length v5, v5

    #@39
    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3c
    .line 348
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@3e
    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@40
    array-length v5, v5

    #@41
    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@44
    .line 350
    iput-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@46
    .line 351
    iput-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@48
    .line 354
    .end local v0    # "n":I
    .end local v1    # "nkeys":[J
    .end local v2    # "nvalues":[Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@4a
    aput-wide p1, v4, v3

    #@4c
    .line 355
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@4e
    aput-object p3, v4, v3

    #@50
    .line 356
    add-int/lit8 v4, v3, 0x1

    #@52
    iput v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@54
    .line 329
    return-void
.end method

.method public clear()V
    .locals 5

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    const/4 v4, 0x0

    #@1
    .line 314
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@3
    .line 315
    .local v1, "n":I
    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@5
    .line 317
    .local v2, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@8
    .line 318
    const/4 v3, 0x0

    #@9
    aput-object v3, v2, v0

    #@b
    .line 317
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 321
    :cond_0
    iput v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@10
    .line 322
    iput-boolean v4, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@12
    .line 313
    return-void
.end method

.method public clone()Landroid/support/v4/util/LongSparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/LongSparseArray",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 80
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 82
    .local v1, "clone":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4
    move-result-object v3

    #@5
    move-object v0, v3

    #@6
    check-cast v0, Landroid/support/v4/util/LongSparseArray;

    #@8
    move-object v1, v0

    #@9
    .line 83
    .local v1, "clone":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@b
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, [J

    #@11
    iput-object v3, v1, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@13
    .line 84
    iget-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@15
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, [Ljava/lang/Object;

    #@1b
    iput-object v3, v1, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 88
    .end local v1    # "clone":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    :goto_0
    return-object v1

    #@1e
    .line 85
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
    .line 79
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/support/v4/util/LongSparseArray;->clone()Landroid/support/v4/util/LongSparseArray;

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
    .line 118
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@2
    iget v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@4
    invoke-static {v1, v2, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    #@7
    move-result v0

    #@8
    .line 120
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@a
    .line 121
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@c
    aget-object v1, v1, v0

    #@e
    sget-object v2, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@10
    if-eq v1, v2, :cond_0

    #@12
    .line 122
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@14
    sget-object v2, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@16
    aput-object v2, v1, v0

    #@18
    .line 123
    const/4 v1, 0x1

    #@19
    iput-boolean v1, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@1b
    .line 117
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
    .line 96
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

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
    .line 105
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    .local p3, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@2
    iget v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@4
    invoke-static {v1, v2, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    #@7
    move-result v0

    #@8
    .line 107
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@a
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@c
    aget-object v1, v1, v0

    #@e
    sget-object v2, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@10
    if-ne v1, v2, :cond_1

    #@12
    .line 108
    :cond_0
    return-object p3

    #@13
    .line 110
    :cond_1
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

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
    .line 283
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 284
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    #@7
    .line 287
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@9
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@b
    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

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
    .line 299
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v1, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 300
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    #@7
    .line 303
    :cond_0
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@a
    if-ge v0, v1, :cond_2

    #@c
    .line 304
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@e
    aget-object v1, v1, v0

    #@10
    if-ne v1, p1, :cond_1

    #@12
    .line 305
    return v0

    #@13
    .line 303
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 307
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
    .line 243
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 244
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    #@7
    .line 247
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@9
    aget-wide v0, v0, p1

    #@b
    return-wide v0
.end method

.method public put(JLjava/lang/Object;)V
    .locals 9
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    #@1
    .line 179
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@3
    iget v5, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@5
    invoke-static {v4, v5, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    #@8
    move-result v0

    #@9
    .line 181
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@b
    .line 182
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@d
    aput-object p3, v4, v0

    #@f
    .line 178
    :goto_0
    return-void

    #@10
    .line 184
    :cond_0
    not-int v0, v0

    #@11
    .line 186
    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@13
    if-ge v0, v4, :cond_1

    #@15
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@17
    aget-object v4, v4, v0

    #@19
    sget-object v5, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@1b
    if-ne v4, v5, :cond_1

    #@1d
    .line 187
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@1f
    aput-wide p1, v4, v0

    #@21
    .line 188
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@23
    aput-object p3, v4, v0

    #@25
    .line 189
    return-void

    #@26
    .line 192
    :cond_1
    iget-boolean v4, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@28
    if-eqz v4, :cond_2

    #@2a
    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@2c
    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@2e
    array-length v5, v5

    #@2f
    if-lt v4, v5, :cond_2

    #@31
    .line 193
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    #@34
    .line 196
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@36
    iget v5, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@38
    invoke-static {v4, v5, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    #@3b
    move-result v4

    #@3c
    not-int v0, v4

    #@3d
    .line 199
    :cond_2
    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@3f
    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@41
    array-length v5, v5

    #@42
    if-lt v4, v5, :cond_3

    #@44
    .line 200
    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@46
    add-int/lit8 v4, v4, 0x1

    #@48
    invoke-static {v4}, Landroid/support/v4/util/ContainerHelpers;->idealLongArraySize(I)I

    #@4b
    move-result v1

    #@4c
    .line 202
    .local v1, "n":I
    new-array v2, v1, [J

    #@4e
    .line 203
    .local v2, "nkeys":[J
    new-array v3, v1, [Ljava/lang/Object;

    #@50
    .line 206
    .local v3, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@52
    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@54
    array-length v5, v5

    #@55
    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@58
    .line 207
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@5a
    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@5c
    array-length v5, v5

    #@5d
    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@60
    .line 209
    iput-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@62
    .line 210
    iput-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@64
    .line 213
    .end local v1    # "n":I
    .end local v2    # "nkeys":[J
    .end local v3    # "nvalues":[Ljava/lang/Object;
    :cond_3
    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@66
    sub-int/2addr v4, v0

    #@67
    if-eqz v4, :cond_4

    #@69
    .line 215
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@6b
    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@6d
    add-int/lit8 v6, v0, 0x1

    #@6f
    iget v7, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@71
    sub-int/2addr v7, v0

    #@72
    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@75
    .line 216
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@77
    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@79
    add-int/lit8 v6, v0, 0x1

    #@7b
    iget v7, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@7d
    sub-int/2addr v7, v0

    #@7e
    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@81
    .line 219
    :cond_4
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    #@83
    aput-wide p1, v4, v0

    #@85
    .line 220
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@87
    aput-object p3, v4, v0

    #@89
    .line 221
    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@8b
    add-int/lit8 v4, v4, 0x1

    #@8d
    iput v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@8f
    goto :goto_0
.end method

.method public remove(J)V
    .locals 1
    .param p1, "key"    # J

    #@0
    .prologue
    .line 132
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    #@3
    .line 131
    return-void
.end method

.method public removeAt(I)V
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 139
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@2
    aget-object v0, v0, p1

    #@4
    sget-object v1, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 140
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@a
    sget-object v1, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    #@c
    aput-object v1, v0, p1

    #@e
    .line 141
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@11
    .line 138
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
    .line 270
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 271
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    #@7
    .line 274
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@9
    aput-object p2, v0, p1

    #@b
    .line 269
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 230
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 231
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    #@7
    .line 234
    :cond_0
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 368
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/support/v4/util/LongSparseArray;->size()I

    #@3
    move-result v5

    #@4
    if-gtz v5, :cond_0

    #@6
    .line 369
    const-string/jumbo v5, "{}"

    #@9
    return-object v5

    #@a
    .line 372
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    iget v5, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@e
    mul-int/lit8 v5, v5, 0x1c

    #@10
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@13
    .line 373
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v5, 0x7b

    #@15
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 374
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    iget v5, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    #@1b
    if-ge v1, v5, :cond_3

    #@1d
    .line 375
    if-lez v1, :cond_1

    #@1f
    .line 376
    const-string/jumbo v5, ", "

    #@22
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 378
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    #@28
    move-result-wide v2

    #@29
    .line 379
    .local v2, "key":J
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2c
    .line 380
    const/16 v5, 0x3d

    #@2e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 381
    invoke-virtual {p0, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@34
    move-result-object v4

    #@35
    .line 382
    .local v4, "value":Ljava/lang/Object;
    if-eq v4, p0, :cond_2

    #@37
    .line 383
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    .line 374
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 385
    :cond_2
    const-string/jumbo v5, "(this Map)"

    #@40
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    goto :goto_1

    #@44
    .line 388
    .end local v2    # "key":J
    .end local v4    # "value":Ljava/lang/Object;
    :cond_3
    const/16 v5, 0x7d

    #@46
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@49
    .line 389
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
    .line 257
    .local p0, "this":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 258
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    #@7
    .line 261
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    #@9
    aget-object v0, v0, p1

    #@b
    return-object v0
.end method
