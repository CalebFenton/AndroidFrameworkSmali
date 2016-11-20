.class Ljava/io/ObjectOutputStream$HandleTable;
.super Ljava/lang/Object;
.source "ObjectOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandleTable"
.end annotation


# instance fields
.field private final loadFactor:F

.field private next:[I

.field private objs:[Ljava/lang/Object;

.field private size:I

.field private spine:[I

.field private threshold:I


# direct methods
.method constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    #@0
    .prologue
    .line 2332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2333
    iput p2, p0, Ljava/io/ObjectOutputStream$HandleTable;->loadFactor:F

    #@5
    .line 2334
    new-array v0, p1, [I

    #@7
    iput-object v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    #@9
    .line 2335
    new-array v0, p1, [I

    #@b
    iput-object v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->next:[I

    #@d
    .line 2336
    new-array v0, p1, [Ljava/lang/Object;

    #@f
    iput-object v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->objs:[Ljava/lang/Object;

    #@11
    .line 2337
    int-to-float v0, p1

    #@12
    mul-float/2addr v0, p2

    #@13
    float-to-int v0, v0

    #@14
    iput v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->threshold:I

    #@16
    .line 2338
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$HandleTable;->clear()V

    #@19
    .line 2332
    return-void
.end method

.method private growEntries()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2417
    iget-object v3, p0, Ljava/io/ObjectOutputStream$HandleTable;->next:[I

    #@3
    array-length v3, v3

    #@4
    shl-int/lit8 v3, v3, 0x1

    #@6
    add-int/lit8 v0, v3, 0x1

    #@8
    .line 2418
    .local v0, "newLength":I
    new-array v1, v0, [I

    #@a
    .line 2419
    .local v1, "newNext":[I
    iget-object v3, p0, Ljava/io/ObjectOutputStream$HandleTable;->next:[I

    #@c
    iget v4, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    #@e
    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@11
    .line 2420
    iput-object v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->next:[I

    #@13
    .line 2422
    new-array v2, v0, [Ljava/lang/Object;

    #@15
    .line 2423
    .local v2, "newObjs":[Ljava/lang/Object;
    iget-object v3, p0, Ljava/io/ObjectOutputStream$HandleTable;->objs:[Ljava/lang/Object;

    #@17
    iget v4, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    #@19
    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1c
    .line 2424
    iput-object v2, p0, Ljava/io/ObjectOutputStream$HandleTable;->objs:[Ljava/lang/Object;

    #@1e
    .line 2416
    return-void
.end method

.method private growSpine()V
    .locals 3

    #@0
    .prologue
    .line 2405
    iget-object v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    #@2
    array-length v1, v1

    #@3
    shl-int/lit8 v1, v1, 0x1

    #@5
    add-int/lit8 v1, v1, 0x1

    #@7
    new-array v1, v1, [I

    #@9
    iput-object v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    #@b
    .line 2406
    iget-object v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    #@d
    array-length v1, v1

    #@e
    int-to-float v1, v1

    #@f
    iget v2, p0, Ljava/io/ObjectOutputStream$HandleTable;->loadFactor:F

    #@11
    mul-float/2addr v1, v2

    #@12
    float-to-int v1, v1

    #@13
    iput v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->threshold:I

    #@15
    .line 2407
    iget-object v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    #@17
    const/4 v2, -0x1

    #@18
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    #@1b
    .line 2408
    const/4 v0, 0x0

    #@1c
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    #@1e
    if-ge v0, v1, :cond_0

    #@20
    .line 2409
    iget-object v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->objs:[Ljava/lang/Object;

    #@22
    aget-object v1, v1, v0

    #@24
    invoke-direct {p0, v1, v0}, Ljava/io/ObjectOutputStream$HandleTable;->insert(Ljava/lang/Object;I)V

    #@27
    .line 2408
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 2404
    :cond_0
    return-void
.end method

.method private hash(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2431
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    const v1, 0x7fffffff

    #@7
    and-int/2addr v0, v1

    #@8
    return v0
.end method

.method private insert(Ljava/lang/Object;I)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "handle"    # I

    #@0
    .prologue
    .line 2394
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream$HandleTable;->hash(Ljava/lang/Object;)I

    #@3
    move-result v1

    #@4
    iget-object v2, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    #@6
    array-length v2, v2

    #@7
    rem-int v0, v1, v2

    #@9
    .line 2395
    .local v0, "index":I
    iget-object v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->objs:[Ljava/lang/Object;

    #@b
    aput-object p1, v1, p2

    #@d
    .line 2396
    iget-object v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->next:[I

    #@f
    iget-object v2, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    #@11
    aget v2, v2, v0

    #@13
    aput v2, v1, p2

    #@15
    .line 2397
    iget-object v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    #@17
    aput p2, v1, v0

    #@19
    .line 2393
    return-void
.end method


# virtual methods
.method assign(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2346
    iget v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    #@2
    iget-object v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->next:[I

    #@4
    array-length v1, v1

    #@5
    if-lt v0, v1, :cond_0

    #@7
    .line 2347
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$HandleTable;->growEntries()V

    #@a
    .line 2349
    :cond_0
    iget v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    #@c
    iget v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->threshold:I

    #@e
    if-lt v0, v1, :cond_1

    #@10
    .line 2350
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$HandleTable;->growSpine()V

    #@13
    .line 2352
    :cond_1
    iget v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    #@15
    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream$HandleTable;->insert(Ljava/lang/Object;I)V

    #@18
    .line 2353
    iget v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    #@1a
    add-int/lit8 v1, v0, 0x1

    #@1c
    iput v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    #@1e
    return v0
.end method

.method clear()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2377
    iget-object v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    #@3
    const/4 v1, -0x1

    #@4
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    #@7
    .line 2378
    iget-object v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->objs:[Ljava/lang/Object;

    #@9
    iget v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    #@b
    const/4 v2, 0x0

    #@c
    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    #@f
    .line 2379
    iput v3, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    #@11
    .line 2376
    return-void
.end method

.method lookup(Ljava/lang/Object;)I
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 2361
    iget v2, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    #@3
    if-nez v2, :cond_0

    #@5
    .line 2362
    return v4

    #@6
    .line 2364
    :cond_0
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream$HandleTable;->hash(Ljava/lang/Object;)I

    #@9
    move-result v2

    #@a
    iget-object v3, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    #@c
    array-length v3, v3

    #@d
    rem-int v1, v2, v3

    #@f
    .line 2365
    .local v1, "index":I
    iget-object v2, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    #@11
    aget v0, v2, v1

    #@13
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@15
    .line 2366
    iget-object v2, p0, Ljava/io/ObjectOutputStream$HandleTable;->objs:[Ljava/lang/Object;

    #@17
    aget-object v2, v2, v0

    #@19
    if-ne v2, p1, :cond_1

    #@1b
    .line 2367
    return v0

    #@1c
    .line 2365
    :cond_1
    iget-object v2, p0, Ljava/io/ObjectOutputStream$HandleTable;->next:[I

    #@1e
    aget v0, v2, v0

    #@20
    goto :goto_0

    #@21
    .line 2370
    :cond_2
    return v4
.end method

.method size()I
    .locals 1

    #@0
    .prologue
    .line 2386
    iget v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    #@2
    return v0
.end method
