.class Lcom/android/server/content/SyncManager$PrintTable;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrintTable"
.end annotation


# instance fields
.field private final mCols:I

.field private mTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "cols"    # I

    #@0
    .prologue
    .line 3429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3426
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    #@9
    .line 3430
    iput p1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    #@b
    .line 3429
    return-void
.end method

.method private printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "formats"    # [Ljava/lang/String;
    .param p3, "row"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3476
    const/4 v0, 0x0

    #@2
    .local v0, "j":I
    array-length v1, p3

    #@3
    .local v1, "rowLength":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@5
    .line 3477
    aget-object v2, p2, v0

    #@7
    const/4 v3, 0x1

    #@8
    new-array v3, v3, [Ljava/lang/Object;

    #@a
    aget-object v4, p3, v0

    #@c
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    aput-object v4, v3, v5

    #@12
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    new-array v3, v5, [Ljava/lang/Object;

    #@18
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@1b
    .line 3478
    const-string/jumbo v2, "  "

    #@1e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21
    .line 3476
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 3480
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@27
    .line 3475
    return-void
.end method


# virtual methods
.method public getNumRows()I
    .locals 1

    #@0
    .prologue
    .line 3484
    iget-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method varargs set(II[Ljava/lang/Object;)V
    .locals 6
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 3434
    array-length v3, p3

    #@1
    add-int/2addr v3, p2

    #@2
    iget v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    #@4
    if-le v3, v4, :cond_0

    #@6
    .line 3435
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@8
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v5, "Table only has "

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    iget v5, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    .line 3436
    const-string/jumbo v5, " columns. can\'t set "

    #@1d
    .line 3435
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    .line 3436
    array-length v5, p3

    #@22
    .line 3435
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    .line 3436
    const-string/jumbo v5, " at column "

    #@29
    .line 3435
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@38
    throw v3

    #@39
    .line 3438
    :cond_0
    iget-object v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@3e
    move-result v0

    #@3f
    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_2

    #@41
    .line 3439
    iget v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    #@43
    new-array v2, v3, [Ljava/lang/Object;

    #@45
    .line 3440
    .local v2, "list":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    #@47
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4a
    .line 3441
    const/4 v1, 0x0

    #@4b
    .local v1, "j":I
    :goto_1
    iget v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    #@4d
    if-ge v1, v3, :cond_1

    #@4f
    .line 3442
    const-string/jumbo v3, ""

    #@52
    aput-object v3, v2, v1

    #@54
    .line 3441
    add-int/lit8 v1, v1, 0x1

    #@56
    goto :goto_1

    #@57
    .line 3438
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 3445
    .end local v1    # "j":I
    .end local v2    # "list":[Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    #@5c
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5f
    move-result-object v3

    #@60
    array-length v4, p3

    #@61
    const/4 v5, 0x0

    #@62
    invoke-static {p3, v5, v3, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@65
    .line 3433
    return-void
.end method

.method writeTo(Ljava/io/PrintWriter;)V
    .locals 13
    .param p1, "out"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 3449
    iget v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    #@3
    new-array v1, v9, [Ljava/lang/String;

    #@5
    .line 3450
    .local v1, "formats":[Ljava/lang/String;
    const/4 v8, 0x0

    #@6
    .line 3451
    .local v8, "totalLength":I
    const/4 v0, 0x0

    #@7
    .local v0, "col":I
    :goto_0
    iget v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    #@9
    if-ge v0, v9, :cond_2

    #@b
    .line 3452
    const/4 v5, 0x0

    #@c
    .line 3453
    .local v5, "maxLength":I
    iget-object v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    #@e
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v7

    #@12
    .local v7, "row$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v9

    #@16
    if-eqz v9, :cond_1

    #@18
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v6

    #@1c
    check-cast v6, [Ljava/lang/Object;

    #@1e
    .line 3454
    .local v6, "row":[Ljava/lang/Object;
    aget-object v9, v6, v0

    #@20
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@23
    move-result-object v9

    #@24
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@27
    move-result v3

    #@28
    .line 3455
    .local v3, "length":I
    if-le v3, v5, :cond_0

    #@2a
    .line 3456
    move v5, v3

    #@2b
    goto :goto_1

    #@2c
    .line 3459
    .end local v3    # "length":I
    .end local v6    # "row":[Ljava/lang/Object;
    :cond_1
    add-int/2addr v8, v5

    #@2d
    .line 3460
    const-string/jumbo v9, "%%-%ds"

    #@30
    const/4 v10, 0x1

    #@31
    new-array v10, v10, [Ljava/lang/Object;

    #@33
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v11

    #@37
    aput-object v11, v10, v12

    #@39
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3c
    move-result-object v9

    #@3d
    aput-object v9, v1, v0

    #@3f
    .line 3451
    add-int/lit8 v0, v0, 0x1

    #@41
    goto :goto_0

    #@42
    .line 3462
    .end local v5    # "maxLength":I
    .end local v7    # "row$iterator":Ljava/util/Iterator;
    :cond_2
    iget v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    #@44
    add-int/lit8 v9, v9, -0x1

    #@46
    const-string/jumbo v10, "%s"

    #@49
    aput-object v10, v1, v9

    #@4b
    .line 3463
    iget-object v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    #@4d
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@50
    move-result-object v9

    #@51
    check-cast v9, [Ljava/lang/Object;

    #@53
    invoke-direct {p0, p1, v1, v9}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    #@56
    .line 3464
    iget v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    #@58
    add-int/lit8 v9, v9, -0x1

    #@5a
    mul-int/lit8 v9, v9, 0x2

    #@5c
    add-int/2addr v8, v9

    #@5d
    .line 3465
    const/4 v2, 0x0

    #@5e
    .local v2, "i":I
    :goto_2
    if-ge v2, v8, :cond_3

    #@60
    .line 3466
    const-string/jumbo v9, "-"

    #@63
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66
    .line 3465
    add-int/lit8 v2, v2, 0x1

    #@68
    goto :goto_2

    #@69
    .line 3468
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@6c
    .line 3469
    const/4 v2, 0x1

    #@6d
    iget-object v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    #@6f
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@72
    move-result v4

    #@73
    .local v4, "mTableSize":I
    :goto_3
    if-ge v2, v4, :cond_4

    #@75
    .line 3470
    iget-object v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    #@77
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7a
    move-result-object v6

    #@7b
    check-cast v6, [Ljava/lang/Object;

    #@7d
    .line 3471
    .restart local v6    # "row":[Ljava/lang/Object;
    invoke-direct {p0, p1, v1, v6}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    #@80
    .line 3469
    add-int/lit8 v2, v2, 0x1

    #@82
    goto :goto_3

    #@83
    .line 3448
    .end local v6    # "row":[Ljava/lang/Object;
    :cond_4
    return-void
.end method
