.class public Landroid/content/UndoManager;
.super Ljava/lang/Object;
.source "UndoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/UndoManager$UndoState;
    }
.end annotation


# static fields
.field public static final MERGE_MODE_ANY:I = 0x2

.field public static final MERGE_MODE_NONE:I = 0x0

.field public static final MERGE_MODE_UNIQUE:I = 0x1


# instance fields
.field private mCommitId:I

.field private mHistorySize:I

.field private mInUndo:Z

.field private mMerged:Z

.field private mNextSavedIdx:I

.field private final mOwners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/UndoOwner;",
            ">;"
        }
    .end annotation
.end field

.field private final mRedos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UndoManager$UndoState;",
            ">;"
        }
    .end annotation
.end field

.field private mStateOwners:[Landroid/content/UndoOwner;

.field private mStateSeq:I

.field private final mUndos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UndoManager$UndoState;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateCount:I

.field private mWorking:Landroid/content/UndoManager$UndoState;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    #@6
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    #@9
    .line 58
    iput-object v0, p0, Landroid/content/UndoManager;->mOwners:Landroid/util/ArrayMap;

    #@b
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v0, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    #@12
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    #@14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@17
    iput-object v0, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    #@19
    .line 63
    const/16 v0, 0x14

    #@1b
    iput v0, p0, Landroid/content/UndoManager;->mHistorySize:I

    #@1d
    .line 65
    iput v1, p0, Landroid/content/UndoManager;->mCommitId:I

    #@1f
    .line 56
    return-void
.end method

.method private createWorkingState()V
    .locals 3

    #@0
    .prologue
    .line 423
    new-instance v0, Landroid/content/UndoManager$UndoState;

    #@2
    iget v1, p0, Landroid/content/UndoManager;->mCommitId:I

    #@4
    add-int/lit8 v2, v1, 0x1

    #@6
    iput v2, p0, Landroid/content/UndoManager;->mCommitId:I

    #@8
    invoke-direct {v0, p0, v1}, Landroid/content/UndoManager$UndoState;-><init>(Landroid/content/UndoManager;I)V

    #@b
    iput-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@d
    .line 424
    iget v0, p0, Landroid/content/UndoManager;->mCommitId:I

    #@f
    if-gez v0, :cond_0

    #@11
    .line 425
    const/4 v0, 0x1

    #@12
    iput v0, p0, Landroid/content/UndoManager;->mCommitId:I

    #@14
    .line 422
    :cond_0
    return-void
.end method

.method private pushWorkingState()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 581
    iget-object v1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    add-int/lit8 v0, v1, 0x1

    #@9
    .line 583
    .local v0, "N":I
    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@b
    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->hasData()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_2

    #@11
    .line 584
    iget-object v1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    #@13
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@18
    .line 585
    const/4 v1, -0x1

    #@19
    invoke-virtual {p0, v3, v1}, Landroid/content/UndoManager;->forgetRedos([Landroid/content/UndoOwner;I)I

    #@1c
    .line 586
    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@1e
    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->commit()V

    #@21
    .line 587
    const/4 v1, 0x2

    #@22
    if-lt v0, v1, :cond_0

    #@24
    .line 591
    iget-object v1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    #@26
    add-int/lit8 v2, v0, -0x2

    #@28
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Landroid/content/UndoManager$UndoState;

    #@2e
    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->makeExecuted()V

    #@31
    .line 596
    :cond_0
    :goto_0
    iput-object v3, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@33
    .line 598
    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    #@35
    if-ltz v1, :cond_1

    #@37
    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    #@39
    if-le v0, v1, :cond_1

    #@3b
    .line 599
    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    #@3d
    sub-int v1, v0, v1

    #@3f
    invoke-virtual {p0, v3, v1}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    #@42
    .line 580
    :cond_1
    return-void

    #@43
    .line 594
    :cond_2
    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@45
    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->destroy()V

    #@48
    goto :goto_0
.end method


# virtual methods
.method public addOperation(Landroid/content/UndoOperation;I)V
    .locals 4
    .param p2, "mergeMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/UndoOperation",
            "<*>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "op":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<*>;"
    const/4 v3, 0x0

    #@1
    .line 544
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 545
    new-instance v2, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v3, "Must be called during an update"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 547
    :cond_0
    invoke-virtual {p1}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    #@11
    move-result-object v0

    #@12
    .line 548
    .local v0, "owner":Landroid/content/UndoOwner;
    iget-object v2, v0, Landroid/content/UndoOwner;->mManager:Landroid/content/UndoManager;

    #@14
    if-eq v2, p0, :cond_1

    #@16
    .line 549
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@18
    .line 550
    const-string/jumbo v3, "Given operation\'s owner is not in this undo manager."

    #@1b
    .line 549
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v2

    #@1f
    .line 552
    :cond_1
    if-eqz p2, :cond_2

    #@21
    iget-boolean v2, p0, Landroid/content/UndoManager;->mMerged:Z

    #@23
    if-eqz v2, :cond_3

    #@25
    .line 562
    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@27
    invoke-virtual {v2, p1}, Landroid/content/UndoManager$UndoState;->addOperation(Landroid/content/UndoOperation;)V

    #@2a
    .line 543
    return-void

    #@2b
    .line 552
    :cond_3
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@2d
    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->hasData()Z

    #@30
    move-result v2

    #@31
    if-nez v2, :cond_2

    #@33
    .line 553
    invoke-virtual {p0, v3}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    #@36
    move-result-object v1

    #@37
    .line 554
    .local v1, "state":Landroid/content/UndoManager$UndoState;
    if-eqz v1, :cond_2

    #@39
    const/4 v2, 0x2

    #@3a
    if-eq p2, v2, :cond_4

    #@3c
    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->hasMultipleOwners()Z

    #@3f
    move-result v2

    #@40
    if-nez v2, :cond_2

    #@42
    .line 555
    :cond_4
    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->canMerge()Z

    #@45
    move-result v2

    #@46
    .line 554
    if-eqz v2, :cond_2

    #@48
    .line 555
    invoke-virtual {p1}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v1, v2}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    #@4f
    move-result v2

    #@50
    .line 554
    if-eqz v2, :cond_2

    #@52
    .line 556
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@54
    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->destroy()V

    #@57
    .line 557
    iput-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@59
    .line 558
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    #@5b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5e
    .line 559
    const/4 v2, 0x1

    #@5f
    iput-boolean v2, p0, Landroid/content/UndoManager;->mMerged:Z

    #@61
    goto :goto_0
.end method

.method public beginUpdate(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 409
    iget-boolean v0, p0, Landroid/content/UndoManager;->mInUndo:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 410
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Can\'t being update while performing undo/redo"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 412
    :cond_0
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    #@10
    if-gtz v0, :cond_1

    #@12
    .line 413
    invoke-direct {p0}, Landroid/content/UndoManager;->createWorkingState()V

    #@15
    .line 414
    iput-boolean v1, p0, Landroid/content/UndoManager;->mMerged:Z

    #@17
    .line 415
    iput v1, p0, Landroid/content/UndoManager;->mUpdateCount:I

    #@19
    .line 418
    :cond_1
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@1b
    invoke-virtual {v0, p1}, Landroid/content/UndoManager$UndoState;->updateLabel(Ljava/lang/CharSequence;)V

    #@1e
    .line 419
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    #@20
    add-int/lit8 v0, v0, 0x1

    #@22
    iput v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    #@24
    .line 408
    return-void
.end method

.method public commitState(Landroid/content/UndoOwner;)I
    .locals 5
    .param p1, "owner"    # Landroid/content/UndoOwner;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 618
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@4
    if-eqz v2, :cond_1

    #@6
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@8
    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->hasData()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 619
    if-eqz p1, :cond_0

    #@10
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@12
    invoke-virtual {v2, p1}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_3

    #@18
    .line 620
    :cond_0
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@1a
    invoke-virtual {v2, v4}, Landroid/content/UndoManager$UndoState;->setCanMerge(Z)Z

    #@1d
    .line 621
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@1f
    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->getCommitId()I

    #@22
    move-result v0

    #@23
    .line 622
    .local v0, "commitId":I
    invoke-direct {p0}, Landroid/content/UndoManager;->pushWorkingState()V

    #@26
    .line 623
    invoke-direct {p0}, Landroid/content/UndoManager;->createWorkingState()V

    #@29
    .line 624
    const/4 v2, 0x1

    #@2a
    iput-boolean v2, p0, Landroid/content/UndoManager;->mMerged:Z

    #@2c
    .line 625
    return v0

    #@2d
    .line 628
    .end local v0    # "commitId":I
    :cond_1
    invoke-virtual {p0, v3}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    #@30
    move-result-object v1

    #@31
    .line 629
    .local v1, "state":Landroid/content/UndoManager$UndoState;
    if-eqz v1, :cond_3

    #@33
    if-eqz p1, :cond_2

    #@35
    invoke-virtual {v1, p1}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_3

    #@3b
    .line 630
    :cond_2
    invoke-virtual {v1, v4}, Landroid/content/UndoManager$UndoState;->setCanMerge(Z)Z

    #@3e
    .line 631
    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->getCommitId()I

    #@41
    move-result v2

    #@42
    return v2

    #@43
    .line 634
    .end local v1    # "state":Landroid/content/UndoManager$UndoState;
    :cond_3
    const/4 v2, -0x1

    #@44
    return v2
.end method

.method public countRedos([Landroid/content/UndoOwner;)I
    .locals 3
    .param p1, "owners"    # [Landroid/content/UndoOwner;

    #@0
    .prologue
    .line 370
    if-nez p1, :cond_0

    #@2
    .line 371
    iget-object v2, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 374
    :cond_0
    const/4 v0, 0x0

    #@a
    .line 375
    .local v0, "count":I
    const/4 v1, 0x0

    #@b
    .line 376
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    #@d
    invoke-virtual {p0, v2, p1, v1}, Landroid/content/UndoManager;->findNextState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    #@10
    move-result v1

    #@11
    if-ltz v1, :cond_1

    #@13
    .line 377
    add-int/lit8 v0, v0, 0x1

    #@15
    .line 378
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 380
    :cond_1
    return v0
.end method

.method public countUndos([Landroid/content/UndoOwner;)I
    .locals 3
    .param p1, "owners"    # [Landroid/content/UndoOwner;

    #@0
    .prologue
    .line 351
    if-nez p1, :cond_0

    #@2
    .line 352
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 355
    :cond_0
    const/4 v0, 0x0

    #@a
    .line 356
    .local v0, "count":I
    const/4 v1, 0x0

    #@b
    .line 357
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    #@d
    invoke-virtual {p0, v2, p1, v1}, Landroid/content/UndoManager;->findNextState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    #@10
    move-result v1

    #@11
    if-ltz v1, :cond_1

    #@13
    .line 358
    add-int/lit8 v0, v0, 0x1

    #@15
    .line 359
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 361
    :cond_1
    return v0
.end method

.method public endUpdate()V
    .locals 2

    #@0
    .prologue
    .line 570
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 571
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Must be called during an update"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 573
    :cond_0
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    #@f
    add-int/lit8 v0, v0, -0x1

    #@11
    iput v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    #@13
    .line 575
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    #@15
    if-nez v0, :cond_1

    #@17
    .line 576
    invoke-direct {p0}, Landroid/content/UndoManager;->pushWorkingState()V

    #@1a
    .line 569
    :cond_1
    return-void
.end method

.method findNextState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I
    .locals 4
    .param p2, "owners"    # [Landroid/content/UndoOwner;
    .param p3, "from"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UndoManager$UndoState;",
            ">;[",
            "Landroid/content/UndoOwner;",
            "I)I"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UndoManager$UndoState;>;"
    const/4 v3, -0x1

    #@1
    .line 715
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@4
    move-result v0

    #@5
    .line 717
    .local v0, "N":I
    if-gez p3, :cond_0

    #@7
    .line 718
    const/4 p3, 0x0

    #@8
    .line 720
    :cond_0
    if-lt p3, v0, :cond_1

    #@a
    .line 721
    return v3

    #@b
    .line 723
    :cond_1
    if-nez p2, :cond_3

    #@d
    .line 724
    return p3

    #@e
    .line 732
    .local v1, "state":Landroid/content/UndoManager$UndoState;
    :cond_2
    add-int/lit8 p3, p3, 0x1

    #@10
    .line 727
    .end local v1    # "state":Landroid/content/UndoManager$UndoState;
    :cond_3
    if-ge p3, v0, :cond_4

    #@12
    .line 728
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/content/UndoManager$UndoState;

    #@18
    .line 729
    .restart local v1    # "state":Landroid/content/UndoManager$UndoState;
    invoke-virtual {p0, v1, p2}, Landroid/content/UndoManager;->matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 730
    return p3

    #@1f
    .line 735
    .end local v1    # "state":Landroid/content/UndoManager$UndoState;
    :cond_4
    return v3
.end method

.method findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I
    .locals 4
    .param p2, "owners"    # [Landroid/content/UndoOwner;
    .param p3, "from"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UndoManager$UndoState;",
            ">;[",
            "Landroid/content/UndoOwner;",
            "I)I"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UndoManager$UndoState;>;"
    const/4 v3, -0x1

    #@1
    .line 691
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@4
    move-result v0

    #@5
    .line 693
    .local v0, "N":I
    if-ne p3, v3, :cond_0

    #@7
    .line 694
    add-int/lit8 p3, v0, -0x1

    #@9
    .line 696
    :cond_0
    if-lt p3, v0, :cond_1

    #@b
    .line 697
    return v3

    #@c
    .line 699
    :cond_1
    if-nez p2, :cond_3

    #@e
    .line 700
    return p3

    #@f
    .line 708
    .local v1, "state":Landroid/content/UndoManager$UndoState;
    :cond_2
    add-int/lit8 p3, p3, -0x1

    #@11
    .line 703
    .end local v1    # "state":Landroid/content/UndoManager$UndoState;
    :cond_3
    if-ltz p3, :cond_4

    #@13
    .line 704
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/content/UndoManager$UndoState;

    #@19
    .line 705
    .restart local v1    # "state":Landroid/content/UndoManager$UndoState;
    invoke-virtual {p0, v1, p2}, Landroid/content/UndoManager;->matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_2

    #@1f
    .line 706
    return p3

    #@20
    .line 711
    .end local v1    # "state":Landroid/content/UndoManager$UndoState;
    :cond_4
    return v3
.end method

.method public forgetRedos([Landroid/content/UndoOwner;I)I
    .locals 4
    .param p1, "owners"    # [Landroid/content/UndoOwner;
    .param p2, "count"    # I

    #@0
    .prologue
    .line 325
    if-gez p2, :cond_0

    #@2
    .line 326
    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@7
    move-result p2

    #@8
    .line 329
    :cond_0
    const/4 v1, 0x0

    #@9
    .line 330
    .local v1, "removed":I
    const/4 v0, 0x0

    #@a
    .line 331
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v3

    #@10
    if-ge v0, v3, :cond_2

    #@12
    if-ge v1, p2, :cond_2

    #@14
    .line 332
    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/content/UndoManager$UndoState;

    #@1c
    .line 333
    .local v2, "state":Landroid/content/UndoManager$UndoState;
    if-lez p2, :cond_1

    #@1e
    invoke-virtual {p0, v2, p1}, Landroid/content/UndoManager;->matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_1

    #@24
    .line 334
    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->destroy()V

    #@27
    .line 335
    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2c
    .line 336
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 338
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 342
    .end local v2    # "state":Landroid/content/UndoManager$UndoState;
    :cond_2
    return v1
.end method

.method public forgetUndos([Landroid/content/UndoOwner;I)I
    .locals 4
    .param p1, "owners"    # [Landroid/content/UndoOwner;
    .param p2, "count"    # I

    #@0
    .prologue
    .line 304
    if-gez p2, :cond_0

    #@2
    .line 305
    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@7
    move-result p2

    #@8
    .line 308
    :cond_0
    const/4 v1, 0x0

    #@9
    .line 309
    .local v1, "removed":I
    const/4 v0, 0x0

    #@a
    .line 310
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v3

    #@10
    if-ge v0, v3, :cond_2

    #@12
    if-ge v1, p2, :cond_2

    #@14
    .line 311
    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/content/UndoManager$UndoState;

    #@1c
    .line 312
    .local v2, "state":Landroid/content/UndoManager$UndoState;
    if-lez p2, :cond_1

    #@1e
    invoke-virtual {p0, v2, p1}, Landroid/content/UndoManager;->matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_1

    #@24
    .line 313
    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->destroy()V

    #@27
    .line 314
    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2c
    .line 315
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 317
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 321
    .end local v2    # "state":Landroid/content/UndoManager$UndoState;
    :cond_2
    return v1
.end method

.method public getHistorySize()I
    .locals 1

    #@0
    .prologue
    .line 222
    iget v0, p0, Landroid/content/UndoManager;->mHistorySize:I

    #@2
    return v0
.end method

.method public getLastOperation(I)Landroid/content/UndoOperation;
    .locals 1
    .param p1, "mergeMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/UndoOperation",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 486
    invoke-virtual {p0, v0, v0, p1}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getLastOperation(Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;
    .locals 1
    .param p1, "owner"    # Landroid/content/UndoOwner;
    .param p2, "mergeMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/UndoOwner;",
            "I)",
            "Landroid/content/UndoOperation",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 499
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;
    .locals 4
    .param p2, "owner"    # Landroid/content/UndoOwner;
    .param p3, "mergeMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/UndoOperation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/UndoOwner;",
            "I)TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    #@1
    .line 516
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 517
    new-instance v2, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v3, "Must be called during an update"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 519
    :cond_0
    if-eqz p3, :cond_1

    #@10
    iget-boolean v2, p0, Landroid/content/UndoManager;->mMerged:Z

    #@12
    if-eqz v2, :cond_2

    #@14
    .line 534
    :cond_1
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@16
    invoke-virtual {v2, p1, p2}, Landroid/content/UndoManager$UndoState;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;)Landroid/content/UndoOperation;

    #@19
    move-result-object v2

    #@1a
    return-object v2

    #@1b
    .line 519
    :cond_2
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@1d
    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->hasData()Z

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_1

    #@23
    .line 520
    invoke-virtual {p0, v3}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    #@26
    move-result-object v1

    #@27
    .line 522
    .local v1, "state":Landroid/content/UndoManager$UndoState;
    if-eqz v1, :cond_1

    #@29
    const/4 v2, 0x2

    #@2a
    if-eq p3, v2, :cond_3

    #@2c
    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->hasMultipleOwners()Z

    #@2f
    move-result v2

    #@30
    if-nez v2, :cond_1

    #@32
    .line 523
    :cond_3
    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->canMerge()Z

    #@35
    move-result v2

    #@36
    .line 522
    if-eqz v2, :cond_1

    #@38
    .line 523
    invoke-virtual {v1, p1, p2}, Landroid/content/UndoManager$UndoState;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;)Landroid/content/UndoOperation;

    #@3b
    move-result-object v0

    #@3c
    .local v0, "last":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<*>;"
    if-eqz v0, :cond_1

    #@3e
    .line 524
    invoke-virtual {v0}, Landroid/content/UndoOperation;->allowMerge()Z

    #@41
    move-result v2

    #@42
    if-eqz v2, :cond_1

    #@44
    .line 525
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@46
    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->destroy()V

    #@49
    .line 526
    iput-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@4b
    .line 527
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    #@4d
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@50
    .line 528
    const/4 v2, 0x1

    #@51
    iput-boolean v2, p0, Landroid/content/UndoManager;->mMerged:Z

    #@53
    .line 529
    return-object v0
.end method

.method public getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 90
    if-nez p1, :cond_0

    #@2
    .line 91
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "tag can\'t be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 93
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 94
    new-instance v1, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v2, "data can\'t be null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 96
    :cond_1
    iget-object v1, p0, Landroid/content/UndoManager;->mOwners:Landroid/util/ArrayMap;

    #@18
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/content/UndoOwner;

    #@1e
    .line 97
    .local v0, "owner":Landroid/content/UndoOwner;
    if-eqz v0, :cond_4

    #@20
    .line 98
    iget-object v1, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    #@22
    if-eq v1, p2, :cond_3

    #@24
    .line 99
    iget-object v1, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    #@26
    if-eqz v1, :cond_2

    #@28
    .line 100
    new-instance v1, Ljava/lang/IllegalStateException;

    #@2a
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v3, "Owner "

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    const-string/jumbo v3, " already exists with data "

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    .line 101
    iget-object v3, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    #@43
    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    .line 101
    const-string/jumbo v3, " but giving different data "

    #@4a
    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@59
    throw v1

    #@5a
    .line 103
    :cond_2
    iput-object p2, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    #@5c
    .line 105
    :cond_3
    return-object v0

    #@5d
    .line 108
    :cond_4
    new-instance v0, Landroid/content/UndoOwner;

    #@5f
    .end local v0    # "owner":Landroid/content/UndoOwner;
    invoke-direct {v0, p1, p0}, Landroid/content/UndoOwner;-><init>(Ljava/lang/String;Landroid/content/UndoManager;)V

    #@62
    .line 109
    .restart local v0    # "owner":Landroid/content/UndoOwner;
    iput-object p2, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    #@64
    .line 110
    iget-object v1, p0, Landroid/content/UndoManager;->mOwners:Landroid/util/ArrayMap;

    #@66
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@69
    .line 111
    return-object v0
.end method

.method public getRedoLabel([Landroid/content/UndoOwner;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "owners"    # [Landroid/content/UndoOwner;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 399
    invoke-virtual {p0, p1}, Landroid/content/UndoManager;->getTopRedo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    #@4
    move-result-object v0

    #@5
    .line 400
    .local v0, "state":Landroid/content/UndoManager$UndoState;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Landroid/content/UndoManager$UndoState;->getLabel()Ljava/lang/CharSequence;

    #@a
    move-result-object v1

    #@b
    :cond_0
    return-object v1
.end method

.method getTopRedo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;
    .locals 4
    .param p1, "owners"    # [Landroid/content/UndoOwner;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 671
    iget-object v2, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    if-gtz v2, :cond_0

    #@9
    .line 672
    return-object v1

    #@a
    .line 674
    :cond_0
    iget-object v2, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    #@c
    const/4 v3, -0x1

    #@d
    invoke-virtual {p0, v2, p1, v3}, Landroid/content/UndoManager;->findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    #@10
    move-result v0

    #@11
    .line 675
    .local v0, "i":I
    if-ltz v0, :cond_1

    #@13
    iget-object v1, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Landroid/content/UndoManager$UndoState;

    #@1b
    :cond_1
    return-object v1
.end method

.method getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;
    .locals 4
    .param p1, "owners"    # [Landroid/content/UndoOwner;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 663
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    if-gtz v2, :cond_0

    #@9
    .line 664
    return-object v1

    #@a
    .line 666
    :cond_0
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    #@c
    const/4 v3, -0x1

    #@d
    invoke-virtual {p0, v2, p1, v3}, Landroid/content/UndoManager;->findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    #@10
    move-result v0

    #@11
    .line 667
    .local v0, "i":I
    if-ltz v0, :cond_1

    #@13
    iget-object v1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Landroid/content/UndoManager$UndoState;

    #@1b
    :cond_1
    return-object v1
.end method

.method public getUndoLabel([Landroid/content/UndoOwner;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "owners"    # [Landroid/content/UndoOwner;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 389
    invoke-virtual {p0, p1}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    #@4
    move-result-object v0

    #@5
    .line 390
    .local v0, "state":Landroid/content/UndoManager$UndoState;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Landroid/content/UndoManager$UndoState;->getLabel()Ljava/lang/CharSequence;

    #@a
    move-result-object v1

    #@b
    :cond_0
    return-object v1
.end method

.method public getUpdateNestingLevel()I
    .locals 1

    #@0
    .prologue
    .line 463
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    #@2
    return v0
.end method

.method public hasOperation(Landroid/content/UndoOwner;)Z
    .locals 2
    .param p1, "owner"    # Landroid/content/UndoOwner;

    #@0
    .prologue
    .line 475
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Must be called during an update"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 478
    :cond_0
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@f
    invoke-virtual {v0, p1}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public isInUndo()Z
    .locals 1

    #@0
    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/content/UndoManager;->mInUndo:Z

    #@2
    return v0
.end method

.method public isInUpdate()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 433
    iget v1, p0, Landroid/content/UndoManager;->mUpdateCount:I

    #@3
    if-lez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z
    .locals 3
    .param p1, "state"    # Landroid/content/UndoManager$UndoState;
    .param p2, "owners"    # [Landroid/content/UndoOwner;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 679
    if-nez p2, :cond_0

    #@3
    .line 680
    return v2

    #@4
    .line 682
    :cond_0
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    array-length v1, p2

    #@6
    if-ge v0, v1, :cond_2

    #@8
    .line 683
    aget-object v1, p2, v0

    #@a
    invoke-virtual {p1, v1}, Landroid/content/UndoManager$UndoState;->matchOwner(Landroid/content/UndoOwner;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 684
    return v2

    #@11
    .line 682
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 687
    :cond_2
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public redo([Landroid/content/UndoOwner;I)I
    .locals 5
    .param p1, "owners"    # [Landroid/content/UndoOwner;
    .param p2, "count"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 272
    iget-object v3, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 273
    new-instance v3, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v4, "Can\'t be called during an update"

    #@a
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3

    #@e
    .line 276
    :cond_0
    const/4 v1, 0x0

    #@f
    .line 277
    .local v1, "num":I
    const/4 v0, -0x1

    #@10
    .line 279
    .local v0, "i":I
    const/4 v3, 0x1

    #@11
    iput-boolean v3, p0, Landroid/content/UndoManager;->mInUndo:Z

    #@13
    .line 281
    :goto_0
    if-lez p2, :cond_1

    #@15
    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    #@17
    invoke-virtual {p0, v3, p1, v0}, Landroid/content/UndoManager;->findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    #@1a
    move-result v0

    #@1b
    if-ltz v0, :cond_1

    #@1d
    .line 282
    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Landroid/content/UndoManager$UndoState;

    #@25
    .line 283
    .local v2, "state":Landroid/content/UndoManager$UndoState;
    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->redo()V

    #@28
    .line 284
    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d
    .line 285
    add-int/lit8 p2, p2, -0x1

    #@2f
    .line 286
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_0

    #@32
    .line 289
    .end local v2    # "state":Landroid/content/UndoManager$UndoState;
    :cond_1
    iput-boolean v4, p0, Landroid/content/UndoManager;->mInUndo:Z

    #@34
    .line 291
    return v1
.end method

.method removeOwner(Landroid/content/UndoOwner;)V
    .locals 0
    .param p1, "owner"    # Landroid/content/UndoOwner;

    #@0
    .prologue
    .line 114
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 175
    iget v2, p0, Landroid/content/UndoManager;->mUpdateCount:I

    #@5
    if-lez v2, :cond_0

    #@7
    .line 176
    new-instance v2, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v3, "Can\'t save state while updating"

    #@c
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 178
    :cond_0
    invoke-virtual {p0, v5, v4}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    #@13
    .line 179
    invoke-virtual {p0, v5, v4}, Landroid/content/UndoManager;->forgetRedos([Landroid/content/UndoOwner;I)I

    #@16
    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v2

    #@1a
    iput v2, p0, Landroid/content/UndoManager;->mHistorySize:I

    #@1c
    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v2

    #@20
    new-array v2, v2, [Landroid/content/UndoOwner;

    #@22
    iput-object v2, p0, Landroid/content/UndoManager;->mStateOwners:[Landroid/content/UndoOwner;

    #@24
    .line 184
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v0

    #@28
    .local v0, "stype":I
    if-eqz v0, :cond_2

    #@2a
    .line 185
    new-instance v1, Landroid/content/UndoManager$UndoState;

    #@2c
    invoke-direct {v1, p0, p1, p2}, Landroid/content/UndoManager$UndoState;-><init>(Landroid/content/UndoManager;Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #@2f
    .line 186
    .local v1, "ustate":Landroid/content/UndoManager$UndoState;
    const/4 v2, 0x1

    #@30
    if-ne v0, v2, :cond_1

    #@32
    .line 187
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@37
    goto :goto_0

    #@38
    .line 189
    :cond_1
    iget-object v2, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    #@3a
    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@3d
    goto :goto_0

    #@3e
    .line 174
    .end local v1    # "ustate":Landroid/content/UndoManager$UndoState;
    :cond_2
    return-void
.end method

.method restoreOwner(Landroid/os/Parcel;)Landroid/content/UndoOwner;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 196
    .local v0, "idx":I
    iget-object v4, p0, Landroid/content/UndoManager;->mStateOwners:[Landroid/content/UndoOwner;

    #@6
    aget-object v2, v4, v0

    #@8
    .line 197
    .local v2, "owner":Landroid/content/UndoOwner;
    if-nez v2, :cond_0

    #@a
    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    .line 199
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v1

    #@12
    .line 200
    .local v1, "opCount":I
    new-instance v2, Landroid/content/UndoOwner;

    #@14
    .end local v2    # "owner":Landroid/content/UndoOwner;
    invoke-direct {v2, v3, p0}, Landroid/content/UndoOwner;-><init>(Ljava/lang/String;Landroid/content/UndoManager;)V

    #@17
    .line 201
    .restart local v2    # "owner":Landroid/content/UndoOwner;
    iput v1, v2, Landroid/content/UndoOwner;->mOpCount:I

    #@19
    .line 202
    iget-object v4, p0, Landroid/content/UndoManager;->mStateOwners:[Landroid/content/UndoOwner;

    #@1b
    aput-object v2, v4, v0

    #@1d
    .line 203
    iget-object v4, p0, Landroid/content/UndoManager;->mOwners:Landroid/util/ArrayMap;

    #@1f
    invoke-virtual {v4, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 205
    .end local v1    # "opCount":I
    .end local v3    # "tag":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public saveInstanceState(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 126
    iget v1, p0, Landroid/content/UndoManager;->mUpdateCount:I

    #@3
    if-lez v1, :cond_0

    #@5
    .line 127
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v2, "Can\'t save state while updating"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 129
    :cond_0
    iget v1, p0, Landroid/content/UndoManager;->mStateSeq:I

    #@10
    add-int/lit8 v1, v1, 0x1

    #@12
    iput v1, p0, Landroid/content/UndoManager;->mStateSeq:I

    #@14
    .line 130
    iget v1, p0, Landroid/content/UndoManager;->mStateSeq:I

    #@16
    if-gtz v1, :cond_1

    #@18
    .line 131
    iput v2, p0, Landroid/content/UndoManager;->mStateSeq:I

    #@1a
    .line 133
    :cond_1
    iput v2, p0, Landroid/content/UndoManager;->mNextSavedIdx:I

    #@1c
    .line 134
    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    #@1e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 135
    iget-object v1, p0, Landroid/content/UndoManager;->mOwners:Landroid/util/ArrayMap;

    #@23
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@26
    move-result v1

    #@27
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 138
    iget-object v1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v0

    #@30
    .line 139
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_2

    #@32
    .line 140
    const/4 v1, 0x1

    #@33
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@36
    .line 141
    add-int/lit8 v0, v0, -0x1

    #@38
    .line 142
    iget-object v1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    #@3a
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3d
    move-result-object v1

    #@3e
    check-cast v1, Landroid/content/UndoManager$UndoState;

    #@40
    invoke-virtual {v1, p1}, Landroid/content/UndoManager$UndoState;->writeToParcel(Landroid/os/Parcel;)V

    #@43
    goto :goto_0

    #@44
    .line 144
    :cond_2
    iget-object v1, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@49
    move-result v0

    #@4a
    .line 145
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4d
    .line 146
    :goto_1
    if-lez v0, :cond_3

    #@4f
    .line 147
    const/4 v1, 0x2

    #@50
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@53
    .line 148
    add-int/lit8 v0, v0, -0x1

    #@55
    .line 149
    iget-object v1, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    #@57
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5a
    move-result-object v1

    #@5b
    check-cast v1, Landroid/content/UndoManager$UndoState;

    #@5d
    invoke-virtual {v1, p1}, Landroid/content/UndoManager$UndoState;->writeToParcel(Landroid/os/Parcel;)V

    #@60
    goto :goto_1

    #@61
    .line 151
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@64
    .line 125
    return-void
.end method

.method saveOwner(Landroid/content/UndoOwner;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "owner"    # Landroid/content/UndoOwner;
    .param p2, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 155
    iget v0, p1, Landroid/content/UndoOwner;->mStateSeq:I

    #@2
    iget v1, p0, Landroid/content/UndoManager;->mStateSeq:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 156
    iget v0, p1, Landroid/content/UndoOwner;->mSavedIdx:I

    #@8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 154
    :goto_0
    return-void

    #@c
    .line 158
    :cond_0
    iget v0, p0, Landroid/content/UndoManager;->mStateSeq:I

    #@e
    iput v0, p1, Landroid/content/UndoOwner;->mStateSeq:I

    #@10
    .line 159
    iget v0, p0, Landroid/content/UndoManager;->mNextSavedIdx:I

    #@12
    iput v0, p1, Landroid/content/UndoOwner;->mSavedIdx:I

    #@14
    .line 160
    iget v0, p1, Landroid/content/UndoOwner;->mSavedIdx:I

    #@16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 161
    iget-object v0, p1, Landroid/content/UndoOwner;->mTag:Ljava/lang/String;

    #@1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 162
    iget v0, p1, Landroid/content/UndoOwner;->mOpCount:I

    #@20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 163
    iget v0, p0, Landroid/content/UndoManager;->mNextSavedIdx:I

    #@25
    add-int/lit8 v0, v0, 0x1

    #@27
    iput v0, p0, Landroid/content/UndoManager;->mNextSavedIdx:I

    #@29
    goto :goto_0
.end method

.method public setHistorySize(I)V
    .locals 3
    .param p1, "size"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 212
    iput p1, p0, Landroid/content/UndoManager;->mHistorySize:I

    #@3
    .line 213
    iget v0, p0, Landroid/content/UndoManager;->mHistorySize:I

    #@5
    if-ltz v0, :cond_0

    #@7
    invoke-virtual {p0, v2}, Landroid/content/UndoManager;->countUndos([Landroid/content/UndoOwner;)I

    #@a
    move-result v0

    #@b
    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    #@d
    if-le v0, v1, :cond_0

    #@f
    .line 214
    invoke-virtual {p0, v2}, Landroid/content/UndoManager;->countUndos([Landroid/content/UndoOwner;)I

    #@12
    move-result v0

    #@13
    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    #@15
    sub-int/2addr v0, v1

    #@16
    invoke-virtual {p0, v2, v0}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    #@19
    .line 211
    :cond_0
    return-void
.end method

.method public setUndoLabel(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 441
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 442
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Must be called during an update"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 444
    :cond_0
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@f
    invoke-virtual {v0, p1}, Landroid/content/UndoManager$UndoState;->setLabel(Ljava/lang/CharSequence;)V

    #@12
    .line 440
    return-void
.end method

.method public suggestUndoLabel(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 452
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 453
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Must be called during an update"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 455
    :cond_0
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@f
    invoke-virtual {v0, p1}, Landroid/content/UndoManager$UndoState;->updateLabel(Ljava/lang/CharSequence;)V

    #@12
    .line 451
    return-void
.end method

.method public uncommitState(ILandroid/content/UndoOwner;)Z
    .locals 4
    .param p1, "commitId"    # I
    .param p2, "owner"    # Landroid/content/UndoOwner;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 647
    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@4
    if-eqz v1, :cond_1

    #@6
    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@8
    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->getCommitId()I

    #@b
    move-result v1

    #@c
    if-ne v1, p1, :cond_1

    #@e
    .line 648
    if-eqz p2, :cond_0

    #@10
    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@12
    invoke-virtual {v1, p2}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_3

    #@18
    .line 649
    :cond_0
    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@1a
    invoke-virtual {v1, v3}, Landroid/content/UndoManager$UndoState;->setCanMerge(Z)Z

    #@1d
    move-result v1

    #@1e
    return v1

    #@1f
    .line 652
    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    #@22
    move-result-object v0

    #@23
    .line 653
    .local v0, "state":Landroid/content/UndoManager$UndoState;
    if-eqz v0, :cond_3

    #@25
    if-eqz p2, :cond_2

    #@27
    invoke-virtual {v0, p2}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_3

    #@2d
    .line 654
    :cond_2
    invoke-virtual {v0}, Landroid/content/UndoManager$UndoState;->getCommitId()I

    #@30
    move-result v1

    #@31
    if-ne v1, p1, :cond_3

    #@33
    .line 655
    invoke-virtual {v0, v3}, Landroid/content/UndoManager$UndoState;->setCanMerge(Z)Z

    #@36
    move-result v1

    #@37
    return v1

    #@38
    .line 659
    .end local v0    # "state":Landroid/content/UndoManager$UndoState;
    :cond_3
    const/4 v1, 0x0

    #@39
    return v1
.end method

.method public undo([Landroid/content/UndoOwner;I)I
    .locals 7
    .param p1, "owners"    # [Landroid/content/UndoOwner;
    .param p2, "count"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 235
    iget-object v4, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 236
    new-instance v4, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v5, "Can\'t be called during an update"

    #@b
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v4

    #@f
    .line 239
    :cond_0
    const/4 v1, 0x0

    #@10
    .line 240
    .local v1, "num":I
    const/4 v0, -0x1

    #@11
    .line 242
    .local v0, "i":I
    const/4 v4, 0x1

    #@12
    iput-boolean v4, p0, Landroid/content/UndoManager;->mInUndo:Z

    #@14
    .line 244
    invoke-virtual {p0, v6}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    #@17
    move-result-object v3

    #@18
    .line 245
    .local v3, "us":Landroid/content/UndoManager$UndoState;
    if-eqz v3, :cond_1

    #@1a
    .line 246
    invoke-virtual {v3}, Landroid/content/UndoManager$UndoState;->makeExecuted()V

    #@1d
    .line 249
    :cond_1
    :goto_0
    if-lez p2, :cond_2

    #@1f
    iget-object v4, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    #@21
    invoke-virtual {p0, v4, p1, v0}, Landroid/content/UndoManager;->findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    #@24
    move-result v0

    #@25
    if-ltz v0, :cond_2

    #@27
    .line 250
    iget-object v4, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, Landroid/content/UndoManager$UndoState;

    #@2f
    .line 251
    .local v2, "state":Landroid/content/UndoManager$UndoState;
    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->undo()V

    #@32
    .line 252
    iget-object v4, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    .line 253
    add-int/lit8 p2, p2, -0x1

    #@39
    .line 254
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 257
    .end local v2    # "state":Landroid/content/UndoManager$UndoState;
    :cond_2
    iput-boolean v5, p0, Landroid/content/UndoManager;->mInUndo:Z

    #@3e
    .line 259
    return v1
.end method
