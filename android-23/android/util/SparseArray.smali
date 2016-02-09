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
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

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
    sput-object v0, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    #@7
    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 64
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/16 v0, 0xa

    #@2
    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    #@5
    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 54
    iput-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    #@6
    .line 75
    if-nez p1, :cond_0

    #@8
    .line 76
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@a
    iput-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    #@c
    .line 77
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@e
    iput-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@10
    .line 82
    :goto_0
    iput v1, p0, Landroid/util/SparseArray;->mSize:I

    #@12
    .line 74
    return-void

    #@13
    .line 79
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@19
    .line 80
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@1b
    array-length v0, v0

    #@1c
    new-array v0, v0, [I

    #@1e
    iput-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    #@20
    goto :goto_0
.end method

.method private gc()V
    .locals 7

    #@0
    .prologue
    .line 187
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    #@2
    .line 188
    .local v2, "n":I
    const/4 v3, 0x0

    #@3
    .line 189
    .local v3, "o":I
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    #@5
    .line 190
    .local v1, "keys":[I
    iget-object v5, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@7
    .line 192
    .local v5, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@a
    .line 193
    aget-object v4, v5, v0

    #@c
    .line 195
    .local v4, "val":Ljava/lang/Object;
    sget-object v6, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    #@e
    if-eq v4, v6, :cond_1

    #@10
    .line 196
    if-eq v0, v3, :cond_0

    #@12
    .line 197
    aget v6, v1, v0

    #@14
    aput v6, v1, v3

    #@16
    .line 198
    aput-object v4, v5, v3

    #@18
    .line 199
    const/4 v6, 0x0

    #@19
    aput-object v6, v5, v0

    #@1b
    .line 202
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1d
    .line 192
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 206
    .end local v4    # "val":Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x0

    #@21
    iput-boolean v6, p0, Landroid/util/SparseArray;->mGarbage:Z

    #@23
    .line 207
    iput v3, p0, Landroid/util/SparseArray;->mSize:I

    #@25
    .line 184
    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .locals 2
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 362
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    #@6
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    aget v0, v0, v1

    #@c
    if-gt p1, v0, :cond_0

    #@e
    .line 363
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@11
    .line 364
    return-void

    #@12
    .line 367
    :cond_0
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    #@14
    if-eqz v0, :cond_1

    #@16
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    #@18
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    #@1a
    array-length v1, v1

    #@1b
    if-lt v0, v1, :cond_1

    #@1d
    .line 368
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    #@20
    .line 371
    :cond_1
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    #@22
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    #@24
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    #@2a
    .line 372
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@2c
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    #@2e
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@34
    .line 373
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    #@36
    add-int/lit8 v0, v0, 0x1

    #@38
    iput v0, p0, Landroid/util/SparseArray;->mSize:I

    #@3a
    .line 361
    return-void
.end method

.method public clear()V
    .locals 5

    #@0
    .prologue
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v4, 0x0

    #@1
    .line 346
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    #@3
    .line 347
    .local v1, "n":I
    iget-object v2, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@5
    .line 349
    .local v2, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@8
    .line 350
    const/4 v3, 0x0

    #@9
    aput-object v3, v2, v0

    #@b
    .line 349
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 353
    :cond_0
    iput v4, p0, Landroid/util/SparseArray;->mSize:I

    #@10
    .line 354
    iput-boolean v4, p0, Landroid/util/SparseArray;->mGarbage:Z

    #@12
    .line 345
    return-void
.end method

.method public clone()Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 88
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 90
    .local v1, "clone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4
    move-result-object v3

    #@5
    move-object v0, v3

    #@6
    check-cast v0, Landroid/util/SparseArray;

    #@8
    move-object v1, v0

    #@9
    .line 91
    .local v1, "clone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-object v3, p0, Landroid/util/SparseArray;->mKeys:[I

    #@b
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, [I

    #@11
    iput-object v3, v1, Landroid/util/SparseArray;->mKeys:[I

    #@13
    .line 92
    iget-object v3, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@15
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, [Ljava/lang/Object;

    #@1b
    iput-object v3, v1, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 96
    .end local v1    # "clone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
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
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public delete(I)V
    .locals 3
    .param p1, "key"    # I

    #@0
    .prologue
    .line 126
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    #@2
    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    #@4
    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    #@7
    move-result v0

    #@8
    .line 128
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@a
    .line 129
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@c
    aget-object v1, v1, v0

    #@e
    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    #@10
    if-eq v1, v2, :cond_0

    #@12
    .line 130
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@14
    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    #@16
    aput-object v2, v1, v0

    #@18
    .line 131
    const/4 v1, 0x1

    #@19
    iput-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    #@1b
    .line 125
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 104
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 113
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    #@2
    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    #@4
    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    #@7
    move-result v0

    #@8
    .line 115
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@a
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@c
    aget-object v1, v1, v0

    #@e
    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    #@10
    if-ne v1, v2, :cond_1

    #@12
    .line 116
    :cond_0
    return-object p2

    #@13
    .line 118
    :cond_1
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@15
    aget-object v1, v1, v0

    #@17
    return-object v1
.end method

.method public indexOfKey(I)I
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    .line 313
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 314
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    #@7
    .line 317
    :cond_0
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    #@9
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    #@b
    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

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
    .line 331
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 332
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    #@7
    .line 335
    :cond_0
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    #@a
    if-ge v0, v1, :cond_2

    #@c
    .line 336
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@e
    aget-object v1, v1, v0

    #@10
    if-ne v1, p1, :cond_1

    #@12
    .line 337
    return v0

    #@13
    .line 335
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 339
    :cond_2
    const/4 v1, -0x1

    #@17
    return v1
.end method

.method public keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 267
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 268
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    #@7
    .line 271
    :cond_0
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    #@9
    aget v0, v0, p1

    #@b
    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 218
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    #@2
    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    #@4
    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    #@7
    move-result v0

    #@8
    .line 220
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@a
    .line 221
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@c
    aput-object p2, v1, v0

    #@e
    .line 217
    :goto_0
    return-void

    #@f
    .line 223
    :cond_0
    not-int v0, v0

    #@10
    .line 225
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    #@12
    if-ge v0, v1, :cond_1

    #@14
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@16
    aget-object v1, v1, v0

    #@18
    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    #@1a
    if-ne v1, v2, :cond_1

    #@1c
    .line 226
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    #@1e
    aput p1, v1, v0

    #@20
    .line 227
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@22
    aput-object p2, v1, v0

    #@24
    .line 228
    return-void

    #@25
    .line 231
    :cond_1
    iget-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    #@27
    if-eqz v1, :cond_2

    #@29
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    #@2b
    iget-object v2, p0, Landroid/util/SparseArray;->mKeys:[I

    #@2d
    array-length v2, v2

    #@2e
    if-lt v1, v2, :cond_2

    #@30
    .line 232
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    #@33
    .line 235
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    #@35
    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    #@37
    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    #@3a
    move-result v1

    #@3b
    not-int v0, v1

    #@3c
    .line 238
    :cond_2
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    #@3e
    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    #@40
    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    #@43
    move-result-object v1

    #@44
    iput-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    #@46
    .line 239
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@48
    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    #@4a
    invoke-static {v1, v2, v0, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;

    #@4d
    move-result-object v1

    #@4e
    iput-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@50
    .line 240
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    #@52
    add-int/lit8 v1, v1, 0x1

    #@54
    iput v1, p0, Landroid/util/SparseArray;->mSize:I

    #@56
    goto :goto_0
.end method

.method public remove(I)V
    .locals 0
    .param p1, "key"    # I

    #@0
    .prologue
    .line 158
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    #@3
    .line 157
    return-void
.end method

.method public removeAt(I)V
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 165
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@2
    aget-object v0, v0, p1

    #@4
    sget-object v1, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 166
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@a
    sget-object v1, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    #@c
    aput-object v1, v0, p1

    #@e
    .line 167
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    #@11
    .line 164
    :cond_0
    return-void
.end method

.method public removeAtRange(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "size"    # I

    #@0
    .prologue
    .line 178
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    #@2
    add-int v3, p1, p2

    #@4
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v0

    #@8
    .line 179
    .local v0, "end":I
    move v1, p1

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@b
    .line 180
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    #@e
    .line 179
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 177
    :cond_0
    return-void
.end method

.method public removeReturnOld(I)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 141
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-object v2, p0, Landroid/util/SparseArray;->mKeys:[I

    #@2
    iget v3, p0, Landroid/util/SparseArray;->mSize:I

    #@4
    invoke-static {v2, v3, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    #@7
    move-result v0

    #@8
    .line 143
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@a
    .line 144
    iget-object v2, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@c
    aget-object v2, v2, v0

    #@e
    sget-object v3, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    #@10
    if-eq v2, v3, :cond_0

    #@12
    .line 145
    iget-object v2, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@14
    aget-object v1, v2, v0

    #@16
    .line 146
    .local v1, "old":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@18
    sget-object v3, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    #@1a
    aput-object v3, v2, v0

    #@1c
    .line 147
    const/4 v2, 0x1

    #@1d
    iput-boolean v2, p0, Landroid/util/SparseArray;->mGarbage:Z

    #@1f
    .line 148
    return-object v1

    #@20
    .line 151
    .end local v1    # "old":Ljava/lang/Object;, "TE;"
    :cond_0
    const/4 v2, 0x0

    #@21
    return-object v2
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
    .line 300
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 301
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    #@7
    .line 304
    :cond_0
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@9
    aput-object p2, v0, p1

    #@b
    .line 299
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 249
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 250
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    #@7
    .line 253
    :cond_0
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    #@9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 385
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    #@3
    move-result v4

    #@4
    if-gtz v4, :cond_0

    #@6
    .line 386
    const-string/jumbo v4, "{}"

    #@9
    return-object v4

    #@a
    .line 389
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    #@e
    mul-int/lit8 v4, v4, 0x1c

    #@10
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@13
    .line 390
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    #@15
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 391
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    #@1b
    if-ge v1, v4, :cond_3

    #@1d
    .line 392
    if-lez v1, :cond_1

    #@1f
    .line 393
    const-string/jumbo v4, ", "

    #@22
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 395
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@28
    move-result v2

    #@29
    .line 396
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    .line 397
    const/16 v4, 0x3d

    #@2e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 398
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    .line 399
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_2

    #@37
    .line 400
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    .line 391
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 402
    :cond_2
    const-string/jumbo v4, "(this Map)"

    #@40
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    goto :goto_1

    #@44
    .line 405
    .end local v2    # "key":I
    .end local v3    # "value":Ljava/lang/Object;
    :cond_3
    const/16 v4, 0x7d

    #@46
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@49
    .line 406
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    return-object v4
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
    .line 287
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 288
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    #@7
    .line 291
    :cond_0
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    #@9
    aget-object v0, v0, p1

    #@b
    return-object v0
.end method
