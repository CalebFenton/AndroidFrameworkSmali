.class Ljava/io/ObjectInputStream$HandleTable;
.super Ljava/lang/Object;
.source "ObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandleTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectInputStream$HandleTable$HandleList;
    }
.end annotation


# static fields
.field private static final STATUS_EXCEPTION:B = 0x3t

.field private static final STATUS_OK:B = 0x1t

.field private static final STATUS_UNKNOWN:B = 0x2t


# instance fields
.field deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

.field entries:[Ljava/lang/Object;

.field lowDep:I

.field size:I

.field status:[B


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .line 3263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3256
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    #@6
    .line 3258
    const/4 v0, 0x0

    #@7
    iput v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    #@9
    .line 3264
    new-array v0, p1, [B

    #@b
    iput-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    #@d
    .line 3265
    new-array v0, p1, [Ljava/lang/Object;

    #@f
    iput-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    #@11
    .line 3266
    new-array v0, p1, [Ljava/io/ObjectInputStream$HandleTable$HandleList;

    #@13
    iput-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    #@15
    .line 3263
    return-void
.end method

.method private grow()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3467
    iget-object v4, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    #@3
    array-length v4, v4

    #@4
    shl-int/lit8 v4, v4, 0x1

    #@6
    add-int/lit8 v0, v4, 0x1

    #@8
    .line 3469
    .local v0, "newCapacity":I
    new-array v3, v0, [B

    #@a
    .line 3470
    .local v3, "newStatus":[B
    new-array v2, v0, [Ljava/lang/Object;

    #@c
    .line 3471
    .local v2, "newEntries":[Ljava/lang/Object;
    new-array v1, v0, [Ljava/io/ObjectInputStream$HandleTable$HandleList;

    #@e
    .line 3473
    .local v1, "newDeps":[Ljava/io/ObjectInputStream$HandleTable$HandleList;
    iget-object v4, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    #@10
    iget v5, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    #@12
    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@15
    .line 3474
    iget-object v4, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    #@17
    iget v5, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    #@19
    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1c
    .line 3475
    iget-object v4, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    #@1e
    iget v5, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    #@20
    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@23
    .line 3477
    iput-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    #@25
    .line 3478
    iput-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    #@27
    .line 3479
    iput-object v1, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    #@29
    .line 3466
    return-void
.end method


# virtual methods
.method assign(Ljava/lang/Object;)I
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3276
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    #@2
    iget-object v1, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    #@4
    array-length v1, v1

    #@5
    if-lt v0, v1, :cond_0

    #@7
    .line 3277
    invoke-direct {p0}, Ljava/io/ObjectInputStream$HandleTable;->grow()V

    #@a
    .line 3279
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    #@c
    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    #@e
    const/4 v2, 0x2

    #@f
    aput-byte v2, v0, v1

    #@11
    .line 3280
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    #@13
    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    #@15
    aput-object p1, v0, v1

    #@17
    .line 3281
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    #@19
    add-int/lit8 v1, v0, 0x1

    #@1b
    iput v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    #@1d
    return v0
.end method

.method clear()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 3449
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    #@4
    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    #@6
    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    #@9
    .line 3450
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    #@b
    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    #@d
    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    #@10
    .line 3451
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    #@12
    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    #@14
    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    #@17
    .line 3452
    const/4 v0, -0x1

    #@18
    iput v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    #@1a
    .line 3453
    iput v2, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    #@1c
    .line 3448
    return-void
.end method

.method finish(I)V
    .locals 4
    .param p1, "handle"    # I

    #@0
    .prologue
    .line 3372
    iget v2, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    #@2
    if-gez v2, :cond_0

    #@4
    .line 3374
    add-int/lit8 v0, p1, 0x1

    #@6
    .line 3385
    .local v0, "end":I
    :goto_0
    move v1, p1

    #@7
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    #@9
    .line 3386
    iget-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    #@b
    aget-byte v2, v2, v1

    #@d
    packed-switch v2, :pswitch_data_0

    #@10
    .line 3397
    new-instance v2, Ljava/lang/InternalError;

    #@12
    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    #@15
    throw v2

    #@16
    .line 3375
    .end local v0    # "end":I
    .end local v1    # "i":I
    :cond_0
    iget v2, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    #@18
    if-lt v2, p1, :cond_1

    #@1a
    .line 3377
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    #@1c
    .line 3378
    .restart local v0    # "end":I
    const/4 v2, -0x1

    #@1d
    iput v2, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    #@1f
    goto :goto_0

    #@20
    .line 3381
    .end local v0    # "end":I
    :cond_1
    return-void

    #@21
    .line 3388
    .restart local v0    # "end":I
    .restart local v1    # "i":I
    :pswitch_0
    iget-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    #@23
    const/4 v3, 0x1

    #@24
    aput-byte v3, v2, v1

    #@26
    .line 3389
    iget-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    #@28
    const/4 v3, 0x0

    #@29
    aput-object v3, v2, v1

    #@2b
    .line 3385
    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 3370
    :cond_2
    return-void

    #@2f
    .line 3386
    nop

    #@30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method lookupException(I)Ljava/lang/ClassNotFoundException;
    .locals 2
    .param p1, "handle"    # I

    #@0
    .prologue
    .line 3440
    const/4 v0, -0x1

    #@1
    if-eq p1, v0, :cond_0

    #@3
    .line 3441
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    #@5
    aget-byte v0, v0, p1

    #@7
    const/4 v1, 0x3

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 3442
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    #@c
    aget-object v0, v0, p1

    #@e
    check-cast v0, Ljava/lang/ClassNotFoundException;

    #@10
    .line 3440
    :goto_0
    return-object v0

    #@11
    .line 3442
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method lookupObject(I)Ljava/lang/Object;
    .locals 2
    .param p1, "handle"    # I

    #@0
    .prologue
    .line 3429
    const/4 v0, -0x1

    #@1
    if-eq p1, v0, :cond_0

    #@3
    .line 3430
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    #@5
    aget-byte v0, v0, p1

    #@7
    const/4 v1, 0x3

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 3431
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    #@c
    aget-object v0, v0, p1

    #@e
    .line 3429
    :goto_0
    return-object v0

    #@f
    .line 3431
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method markDependency(II)V
    .locals 2
    .param p1, "dependent"    # I
    .param p2, "target"    # I

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 3291
    if-eq p1, v0, :cond_0

    #@3
    if-ne p2, v0, :cond_1

    #@5
    .line 3292
    :cond_0
    return-void

    #@6
    .line 3294
    :cond_1
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    #@8
    aget-byte v0, v0, p1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 3330
    new-instance v0, Ljava/lang/InternalError;

    #@f
    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    #@12
    throw v0

    #@13
    .line 3297
    :pswitch_0
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    #@15
    aget-byte v0, v0, p2

    #@17
    packed-switch v0, :pswitch_data_1

    #@1a
    .line 3322
    new-instance v0, Ljava/lang/InternalError;

    #@1c
    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    #@1f
    throw v0

    #@20
    .line 3305
    :pswitch_1
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    #@22
    aget-object v0, v0, p2

    #@24
    check-cast v0, Ljava/lang/ClassNotFoundException;

    #@26
    .line 3304
    invoke-virtual {p0, p1, v0}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    #@29
    .line 3290
    :cond_2
    :goto_0
    :pswitch_2
    return-void

    #@2a
    .line 3310
    :pswitch_3
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    #@2c
    aget-object v0, v0, p2

    #@2e
    if-nez v0, :cond_3

    #@30
    .line 3311
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    #@32
    new-instance v1, Ljava/io/ObjectInputStream$HandleTable$HandleList;

    #@34
    invoke-direct {v1}, Ljava/io/ObjectInputStream$HandleTable$HandleList;-><init>()V

    #@37
    aput-object v1, v0, p2

    #@39
    .line 3313
    :cond_3
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    #@3b
    aget-object v0, v0, p2

    #@3d
    invoke-virtual {v0, p1}, Ljava/io/ObjectInputStream$HandleTable$HandleList;->add(I)V

    #@40
    .line 3316
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    #@42
    if-ltz v0, :cond_4

    #@44
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    #@46
    if-le v0, p2, :cond_2

    #@48
    .line 3317
    :cond_4
    iput p2, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    #@4a
    goto :goto_0

    #@4b
    .line 3294
    nop

    #@4c
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    #@54
    .line 3297
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method markException(ILjava/lang/ClassNotFoundException;)V
    .locals 6
    .param p1, "handle"    # I
    .param p2, "ex"    # Ljava/lang/ClassNotFoundException;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3341
    iget-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    #@3
    aget-byte v3, v3, p1

    #@5
    packed-switch v3, :pswitch_data_0

    #@8
    .line 3361
    new-instance v3, Ljava/lang/InternalError;

    #@a
    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    #@d
    throw v3

    #@e
    .line 3343
    :pswitch_0
    iget-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    #@10
    const/4 v4, 0x3

    #@11
    aput-byte v4, v3, p1

    #@13
    .line 3344
    iget-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    #@15
    aput-object p2, v3, p1

    #@17
    .line 3347
    iget-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    #@19
    aget-object v0, v3, p1

    #@1b
    .line 3348
    .local v0, "dlist":Ljava/io/ObjectInputStream$HandleTable$HandleList;
    if-eqz v0, :cond_1

    #@1d
    .line 3349
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$HandleTable$HandleList;->size()I

    #@20
    move-result v2

    #@21
    .line 3350
    .local v2, "ndeps":I
    const/4 v1, 0x0

    #@22
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@24
    .line 3351
    invoke-virtual {v0, v1}, Ljava/io/ObjectInputStream$HandleTable$HandleList;->get(I)I

    #@27
    move-result v3

    #@28
    invoke-virtual {p0, v3, p2}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    #@2b
    .line 3350
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 3353
    :cond_0
    iget-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    #@30
    aput-object v5, v3, p1

    #@32
    .line 3340
    .end local v0    # "dlist":Ljava/io/ObjectInputStream$HandleTable$HandleList;
    .end local v1    # "i":I
    .end local v2    # "ndeps":I
    :cond_1
    :pswitch_1
    return-void

    #@33
    .line 3341
    nop

    #@34
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setObject(ILjava/lang/Object;)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3409
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    #@2
    aget-byte v0, v0, p1

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 3419
    new-instance v0, Ljava/lang/InternalError;

    #@9
    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    #@c
    throw v0

    #@d
    .line 3412
    :pswitch_0
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    #@f
    aput-object p2, v0, p1

    #@11
    .line 3408
    :pswitch_1
    return-void

    #@12
    .line 3409
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method size()I
    .locals 1

    #@0
    .prologue
    .line 3460
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    #@2
    return v0
.end method
