.class public Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.super Ljava/lang/Object;
.source "SparseMappingTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/SparseMappingTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Table"
.end annotation


# instance fields
.field private mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

.field private mSequence:I

.field private mSize:I

.field private mTable:[I


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .locals 1
    .param p1, "parent"    # Lcom/android/internal/app/procstats/SparseMappingTable;

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSequence:I

    #@6
    .line 77
    iput-object p1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@8
    .line 78
    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get2(Lcom/android/internal/app/procstats/SparseMappingTable;)I

    #@b
    move-result v0

    #@c
    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSequence:I

    #@e
    .line 76
    return-void
.end method

.method private assertConsistency()V
    .locals 0

    #@0
    .prologue
    .line 365
    return-void
.end method

.method private binarySearch(B)I
    .locals 5
    .param p1, "id"    # B

    #@0
    .prologue
    .line 399
    const/4 v1, 0x0

    #@1
    .line 400
    .local v1, "lo":I
    iget v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    #@3
    add-int/lit8 v0, v4, -0x1

    #@5
    .line 402
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_2

    #@7
    .line 403
    add-int v4, v1, v0

    #@9
    ushr-int/lit8 v2, v4, 0x1

    #@b
    .line 404
    .local v2, "mid":I
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    #@d
    aget v4, v4, v2

    #@f
    shr-int/lit8 v4, v4, 0x0

    #@11
    and-int/lit16 v4, v4, 0xff

    #@13
    int-to-byte v3, v4

    #@14
    .line 406
    .local v3, "midId":B
    if-ge v3, p1, :cond_0

    #@16
    .line 407
    add-int/lit8 v1, v2, 0x1

    #@18
    goto :goto_0

    #@19
    .line 408
    :cond_0
    if-le v3, p1, :cond_1

    #@1b
    .line 409
    add-int/lit8 v0, v2, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 411
    :cond_1
    return v2

    #@1f
    .line 414
    .end local v2    # "mid":I
    .end local v3    # "midId":B
    :cond_2
    not-int v4, v1

    #@20
    return v4
.end method

.method private validateKeys(Z)Z
    .locals 10
    .param p1, "log"    # Z

    #@0
    .prologue
    .line 423
    iget-object v7, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@2
    invoke-static {v7}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get0(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    #@5
    move-result-object v5

    #@6
    .line 424
    .local v5, "longs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[J>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v6

    #@a
    .line 426
    .local v6, "longsSize":I
    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    #@c
    .line 427
    .local v0, "N":I
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@f
    .line 428
    iget-object v7, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    #@11
    aget v4, v7, v2

    #@13
    .line 429
    .local v4, "key":I
    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    #@16
    move-result v1

    #@17
    .line 430
    .local v1, "arrayIndex":I
    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    #@1a
    move-result v3

    #@1b
    .line 431
    .local v3, "index":I
    if-ge v1, v6, :cond_0

    #@1d
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v7

    #@21
    check-cast v7, [J

    #@23
    array-length v7, v7

    #@24
    if-lt v3, v7, :cond_2

    #@26
    .line 432
    :cond_0
    if-eqz p1, :cond_1

    #@28
    .line 433
    const-string/jumbo v7, "SparseMappingTable"

    #@2b
    new-instance v8, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v9, "Invalid stats at index "

    #@33
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v8

    #@37
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v8

    #@3b
    const-string/jumbo v9, " -- "

    #@3e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v8

    #@42
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->dumpInternalState()Ljava/lang/String;

    #@45
    move-result-object v9

    #@46
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v8

    #@4a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v8

    #@4e
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 435
    :cond_1
    const/4 v7, 0x0

    #@52
    return v7

    #@53
    .line 427
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@55
    goto :goto_0

    #@56
    .line 439
    .end local v1    # "arrayIndex":I
    .end local v3    # "index":I
    .end local v4    # "key":I
    :cond_3
    const/4 v7, 0x1

    #@57
    return v7
.end method


# virtual methods
.method public copyFrom(Lcom/android/internal/app/procstats/SparseMappingTable$Table;I)V
    .locals 9
    .param p1, "copyFrom"    # Lcom/android/internal/app/procstats/SparseMappingTable$Table;
    .param p2, "valueCount"    # I

    #@0
    .prologue
    .line 88
    const/4 v7, 0x0

    #@1
    iput-object v7, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    #@3
    .line 89
    const/4 v7, 0x0

    #@4
    iput v7, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    #@6
    .line 91
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyCount()I

    #@9
    move-result v0

    #@a
    .line 92
    .local v0, "N":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@d
    .line 93
    invoke-virtual {p1, v1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyAt(I)I

    #@10
    move-result v5

    #@11
    .line 94
    .local v5, "theirKey":I
    iget-object v7, p1, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@13
    invoke-static {v7}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get0(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    #@16
    move-result-object v7

    #@17
    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    #@1a
    move-result v8

    #@1b
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v6

    #@1f
    check-cast v6, [J

    #@21
    .line 96
    .local v6, "theirLongs":[J
    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    #@24
    move-result v2

    #@25
    .line 98
    .local v2, "id":B
    invoke-virtual {p0, v2, p2}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getOrAddKey(BI)I

    #@28
    move-result v3

    #@29
    .line 99
    .local v3, "myKey":I
    iget-object v7, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@2b
    invoke-static {v7}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get0(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    #@2e
    move-result-object v7

    #@2f
    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    #@32
    move-result v8

    #@33
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v4

    #@37
    check-cast v4, [J

    #@39
    .line 101
    .local v4, "myLongs":[J
    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    #@3c
    move-result v7

    #@3d
    .line 102
    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    #@40
    move-result v8

    #@41
    .line 101
    invoke-static {v6, v7, v4, v8, p2}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@44
    .line 92
    add-int/lit8 v1, v1, 0x1

    #@46
    goto :goto_0

    #@47
    .line 87
    .end local v2    # "id":B
    .end local v3    # "myKey":I
    .end local v4    # "myLongs":[J
    .end local v5    # "theirKey":I
    .end local v6    # "theirLongs":[J
    :cond_0
    return-void
.end method

.method public dumpInternalState()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 444
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "SparseMappingTable.Table{mSequence="

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 445
    iget v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSequence:I

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    .line 446
    const-string/jumbo v4, " mParent.mSequence="

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 447
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@18
    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get2(Lcom/android/internal/app/procstats/SparseMappingTable;)I

    #@1b
    move-result v4

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    .line 448
    const-string/jumbo v4, " mParent.mLongs.size()="

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 449
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@27
    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get0(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@2e
    move-result v4

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    .line 450
    const-string/jumbo v4, " mSize="

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 451
    iget v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    #@3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    .line 452
    const-string/jumbo v4, " mTable="

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 453
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    #@45
    if-nez v4, :cond_0

    #@47
    .line 454
    const-string/jumbo v4, "null"

    #@4a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 472
    :goto_0
    const-string/jumbo v4, " clazz="

    #@50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    .line 473
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getClass()Ljava/lang/Class;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    .line 474
    const/16 v4, 0x7d

    #@60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@63
    .line 476
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    return-object v4

    #@68
    .line 456
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    #@6a
    array-length v0, v4

    #@6b
    .line 457
    .local v0, "N":I
    const/16 v4, 0x5b

    #@6d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@70
    .line 458
    const/4 v1, 0x0

    #@71
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    #@73
    .line 459
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    #@75
    aget v2, v4, v1

    #@77
    .line 460
    .local v2, "key":I
    const-string/jumbo v4, "0x"

    #@7a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    .line 461
    shr-int/lit8 v4, v2, 0x0

    #@7f
    and-int/lit16 v4, v4, 0xff

    #@81
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@84
    move-result-object v4

    #@85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    .line 462
    const-string/jumbo v4, "/0x"

    #@8b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    .line 463
    shr-int/lit8 v4, v2, 0x8

    #@90
    and-int/lit16 v4, v4, 0xff

    #@92
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@95
    move-result-object v4

    #@96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    .line 464
    const-string/jumbo v4, "/0x"

    #@9c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    .line 465
    shr-int/lit8 v4, v2, 0x10

    #@a1
    const v5, 0xffff

    #@a4
    and-int/2addr v4, v5

    #@a5
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@a8
    move-result-object v4

    #@a9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    .line 466
    add-int/lit8 v4, v0, -0x1

    #@ae
    if-eq v1, v4, :cond_1

    #@b0
    .line 467
    const-string/jumbo v4, ", "

    #@b3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    .line 458
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@b8
    goto :goto_1

    #@b9
    .line 470
    .end local v2    # "key":I
    :cond_2
    const/16 v4, 0x5d

    #@bb
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@be
    goto :goto_0
.end method

.method public getArrayForKey(I)[J
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->assertConsistency()V

    #@3
    .line 250
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@5
    invoke-static {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get0(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    #@8
    move-result-object v0

    #@9
    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    #@c
    move-result v1

    #@d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, [J

    #@13
    return-object v0
.end method

.method public getKey(B)I
    .locals 2
    .param p1, "id"    # B

    #@0
    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->assertConsistency()V

    #@3
    .line 165
    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->binarySearch(B)I

    #@6
    move-result v0

    #@7
    .line 166
    .local v0, "idx":I
    if-ltz v0, :cond_0

    #@9
    .line 167
    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    #@b
    aget v1, v1, v0

    #@d
    return v1

    #@e
    .line 169
    :cond_0
    const/4 v1, -0x1

    #@f
    return v1
.end method

.method public getKeyAt(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public getKeyCount()I
    .locals 1

    #@0
    .prologue
    .line 352
    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    #@2
    return v0
.end method

.method public getOrAddKey(BI)I
    .locals 8
    .param p1, "id"    # B
    .param p2, "count"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 119
    invoke-direct {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->assertConsistency()V

    #@4
    .line 121
    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->binarySearch(B)I

    #@7
    move-result v1

    #@8
    .line 122
    .local v1, "idx":I
    if-ltz v1, :cond_0

    #@a
    .line 124
    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    #@c
    aget v5, v5, v1

    #@e
    return v5

    #@f
    .line 129
    :cond_0
    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@11
    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get0(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    #@14
    move-result-object v3

    #@15
    .line 130
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[J>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v5

    #@19
    add-int/lit8 v4, v5, -0x1

    #@1b
    .line 131
    .local v4, "whichArray":I
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, [J

    #@21
    .line 132
    .local v0, "array":[J
    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@23
    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get1(Lcom/android/internal/app/procstats/SparseMappingTable;)I

    #@26
    move-result v5

    #@27
    add-int/2addr v5, p2

    #@28
    array-length v6, v0

    #@29
    if-le v5, v6, :cond_1

    #@2b
    .line 134
    const/16 v5, 0x1000

    #@2d
    new-array v0, v5, [J

    #@2f
    .line 135
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@32
    .line 136
    add-int/lit8 v4, v4, 0x1

    #@34
    .line 137
    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@36
    invoke-static {v5, v7}, Lcom/android/internal/app/procstats/SparseMappingTable;->-set0(Lcom/android/internal/app/procstats/SparseMappingTable;I)I

    #@39
    .line 142
    :cond_1
    shl-int/lit8 v5, v4, 0x8

    #@3b
    .line 143
    iget-object v6, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@3d
    invoke-static {v6}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get1(Lcom/android/internal/app/procstats/SparseMappingTable;)I

    #@40
    move-result v6

    #@41
    shl-int/lit8 v6, v6, 0x10

    #@43
    .line 142
    or-int/2addr v5, v6

    #@44
    .line 144
    shl-int/lit8 v6, p1, 0x0

    #@46
    .line 142
    or-int v2, v5, v6

    #@48
    .line 146
    .local v2, "key":I
    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@4a
    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get1(Lcom/android/internal/app/procstats/SparseMappingTable;)I

    #@4d
    move-result v6

    #@4e
    add-int/2addr v6, p2

    #@4f
    invoke-static {v5, v6}, Lcom/android/internal/app/procstats/SparseMappingTable;->-set0(Lcom/android/internal/app/procstats/SparseMappingTable;I)I

    #@52
    .line 149
    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    #@54
    if-eqz v5, :cond_2

    #@56
    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    #@58
    .line 150
    :goto_0
    iget v6, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    #@5a
    not-int v7, v1

    #@5b
    .line 149
    invoke-static {v5, v6, v7, v2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    #@5e
    move-result-object v5

    #@5f
    iput-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    #@61
    .line 151
    iget v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    #@63
    add-int/lit8 v5, v5, 0x1

    #@65
    iput v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    #@67
    .line 153
    return v2

    #@68
    .line 149
    :cond_2
    sget-object v5, Llibcore/util/EmptyArray;->INT:[I

    #@6a
    goto :goto_0
.end method

.method public getValue(I)J
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    .line 180
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    #@4
    move-result-wide v0

    #@5
    return-wide v0
.end method

.method public getValue(II)J
    .locals 4
    .param p1, "key"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    .line 194
    invoke-direct {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->assertConsistency()V

    #@3
    .line 197
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@5
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get0(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    #@8
    move-result-object v2

    #@9
    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    #@c
    move-result v3

    #@d
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, [J

    #@13
    .line 198
    .local v0, "array":[J
    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    #@16
    move-result v2

    #@17
    add-int/2addr v2, p2

    #@18
    aget-wide v2, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    return-wide v2

    #@1b
    .line 199
    .end local v0    # "array":[J
    :catch_0
    move-exception v1

    #@1c
    .line 200
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "key=0x"

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    .line 201
    const-string/jumbo v3, " index="

    #@33
    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    .line 201
    const-string/jumbo v3, " -- "

    #@3e
    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    .line 201
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->dumpInternalState()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    invoke-static {v2, v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->-wrap1(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@51
    .line 202
    const-wide/16 v2, 0x0

    #@53
    return-wide v2
.end method

.method public getValueForId(B)J
    .locals 2
    .param p1, "id"    # B

    #@0
    .prologue
    .line 213
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValueForId(BI)J

    #@4
    move-result-wide v0

    #@5
    return-wide v0
.end method

.method public getValueForId(BI)J
    .locals 8
    .param p1, "id"    # B
    .param p2, "index"    # I

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 225
    invoke-direct {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->assertConsistency()V

    #@5
    .line 227
    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->binarySearch(B)I

    #@8
    move-result v2

    #@9
    .line 228
    .local v2, "idx":I
    if-ltz v2, :cond_0

    #@b
    .line 229
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    #@d
    aget v3, v4, v2

    #@f
    .line 231
    .local v3, "key":I
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@11
    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get0(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    #@14
    move-result-object v4

    #@15
    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    #@18
    move-result v5

    #@19
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, [J

    #@1f
    .line 232
    .local v0, "array":[J
    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    #@22
    move-result v4

    #@23
    add-int/2addr v4, p2

    #@24
    aget-wide v4, v0, v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    return-wide v4

    #@27
    .line 233
    .end local v0    # "array":[J
    :catch_0
    move-exception v1

    #@28
    .line 234
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v5, "id=0x"

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    const-string/jumbo v5, " idx="

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    .line 235
    const-string/jumbo v5, " key=0x"

    #@4a
    .line 234
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    .line 235
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    .line 234
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    .line 235
    const-string/jumbo v5, " index="

    #@59
    .line 234
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    .line 236
    const-string/jumbo v5, " -- "

    #@64
    .line 234
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v4

    #@68
    .line 236
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->dumpInternalState()Ljava/lang/String;

    #@6b
    move-result-object v5

    #@6c
    .line 234
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v4

    #@74
    invoke-static {v4, v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->-wrap1(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@77
    .line 237
    return-wide v6

    #@78
    .line 240
    .end local v1    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "key":I
    :cond_0
    return-wide v6
.end method

.method public readFromParcel(Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v1

    #@7
    iput v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSequence:I

    #@9
    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v1

    #@d
    iput v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    #@f
    .line 328
    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 329
    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    #@15
    new-array v1, v1, [I

    #@17
    iput-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    #@19
    .line 330
    const/4 v0, 0x0

    #@1a
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    #@1c
    if-ge v0, v1, :cond_1

    #@1e
    .line 331
    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    #@20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v2

    #@24
    aput v2, v1, v0

    #@26
    .line 330
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 334
    .end local v0    # "i":I
    :cond_0
    iput-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    #@2b
    .line 338
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->validateKeys(Z)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_2

    #@31
    .line 339
    return v4

    #@32
    .line 342
    :cond_2
    iput v3, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    #@34
    .line 343
    iput-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    #@36
    .line 344
    return v3
.end method

.method public resetTable()V
    .locals 1

    #@0
    .prologue
    .line 299
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    #@3
    .line 300
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    #@6
    .line 305
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@8
    invoke-static {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get2(Lcom/android/internal/app/procstats/SparseMappingTable;)I

    #@b
    move-result v0

    #@c
    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSequence:I

    #@e
    .line 297
    return-void
.end method

.method public setValue(IIJ)V
    .locals 5
    .param p1, "key"    # I
    .param p2, "index"    # I
    .param p3, "value"    # J

    #@0
    .prologue
    .line 272
    invoke-direct {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->assertConsistency()V

    #@3
    .line 274
    const-wide/16 v2, 0x0

    #@5
    cmp-long v2, p3, v2

    #@7
    if-gez v2, :cond_0

    #@9
    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "can\'t store negative values key=0x"

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 276
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    .line 277
    const-string/jumbo v3, " index="

    #@20
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    .line 277
    const-string/jumbo v3, " value="

    #@2b
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    .line 278
    const-string/jumbo v3, " -- "

    #@36
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    .line 278
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->dumpInternalState()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->-wrap0(Ljava/lang/String;)V

    #@49
    .line 279
    return-void

    #@4a
    .line 283
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@4c
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->-get0(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    #@4f
    move-result-object v2

    #@50
    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    #@53
    move-result v3

    #@54
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@57
    move-result-object v0

    #@58
    check-cast v0, [J

    #@5a
    .line 284
    .local v0, "array":[J
    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    #@5d
    move-result v2

    #@5e
    add-int/2addr v2, p2

    #@5f
    aput-wide p3, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@61
    .line 271
    return-void

    #@62
    .line 285
    .end local v0    # "array":[J
    :catch_0
    move-exception v1

    #@63
    .line 286
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v3, "key=0x"

    #@6b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@72
    move-result-object v3

    #@73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v2

    #@77
    .line 287
    const-string/jumbo v3, " index="

    #@7a
    .line 286
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v2

    #@7e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@81
    move-result-object v2

    #@82
    .line 287
    const-string/jumbo v3, " value="

    #@85
    .line 286
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v2

    #@89
    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v2

    #@8d
    .line 288
    const-string/jumbo v3, " -- "

    #@90
    .line 286
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v2

    #@94
    .line 288
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->dumpInternalState()Ljava/lang/String;

    #@97
    move-result-object v3

    #@98
    .line 286
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v2

    #@9c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v2

    #@a0
    invoke-static {v2, v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->-wrap1(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a3
    .line 289
    return-void
.end method

.method public setValue(IJ)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 260
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->setValue(IIJ)V

    #@4
    .line 259
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 313
    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSequence:I

    #@2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 314
    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    #@7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 315
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    #@d
    if-ge v0, v1, :cond_0

    #@f
    .line 316
    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    #@11
    aget v1, v1, v0

    #@13
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 315
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 312
    :cond_0
    return-void
.end method
