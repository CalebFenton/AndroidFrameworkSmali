.class public final Landroid/renderscript/ScriptGroup$Builder;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mKernelCount:I

.field private mLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/renderscript/ScriptGroup$ConnectLine;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/renderscript/ScriptGroup$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 531
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    #@a
    .line 532
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    #@11
    .line 542
    iput-object p1, p0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@13
    .line 541
    return-void
.end method

.method private findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;
    .locals 4
    .param p1, "k"    # Landroid/renderscript/Script$KernelID;

    #@0
    .prologue
    .line 624
    const/4 v0, 0x0

    #@1
    .local v0, "ct":I
    :goto_0
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v3

    #@7
    if-ge v0, v3, :cond_2

    #@9
    .line 625
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/renderscript/ScriptGroup$Node;

    #@11
    .line 626
    .local v2, "n":Landroid/renderscript/ScriptGroup$Node;
    const/4 v1, 0x0

    #@12
    .local v1, "ct2":I
    :goto_1
    iget-object v3, v2, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v3

    #@18
    if-ge v1, v3, :cond_1

    #@1a
    .line 627
    iget-object v3, v2, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    if-ne p1, v3, :cond_0

    #@22
    .line 628
    return-object v2

    #@23
    .line 626
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_1

    #@26
    .line 624
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 632
    .end local v1    # "ct2":I
    .end local v2    # "n":Landroid/renderscript/ScriptGroup$Node;
    :cond_2
    const/4 v3, 0x0

    #@2a
    return-object v3
.end method

.method private findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;
    .locals 2
    .param p1, "s"    # Landroid/renderscript/Script;

    #@0
    .prologue
    .line 615
    const/4 v0, 0x0

    #@1
    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 616
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    #@11
    iget-object v1, v1, Landroid/renderscript/ScriptGroup$Node;->mScript:Landroid/renderscript/Script;

    #@13
    if-ne p1, v1, :cond_0

    #@15
    .line 617
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    #@1d
    return-object v1

    #@1e
    .line 615
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 620
    :cond_1
    const/4 v1, 0x0

    #@22
    return-object v1
.end method

.method private mergeDAGs(II)V
    .locals 2
    .param p1, "valueUsed"    # I
    .param p2, "valueKilled"    # I

    #@0
    .prologue
    .line 568
    const/4 v0, 0x0

    #@1
    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 569
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    #@11
    iget v1, v1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    #@13
    if-ne v1, p2, :cond_0

    #@15
    .line 570
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    #@1d
    iput p1, v1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    #@1f
    .line 568
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 567
    :cond_1
    return-void
.end method

.method private validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V
    .locals 5
    .param p1, "target"    # Landroid/renderscript/ScriptGroup$Node;
    .param p2, "original"    # Landroid/renderscript/ScriptGroup$Node;

    #@0
    .prologue
    .line 548
    const/4 v1, 0x0

    #@1
    .local v1, "ct":I
    :goto_0
    iget-object v3, p1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v3

    #@7
    if-ge v1, v3, :cond_4

    #@9
    .line 549
    iget-object v3, p1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/renderscript/ScriptGroup$ConnectLine;

    #@11
    .line 550
    .local v0, "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 551
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    #@17
    iget-object v3, v3, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    #@19
    invoke-direct {p0, v3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    #@1c
    move-result-object v2

    #@1d
    .line 552
    .local v2, "tn":Landroid/renderscript/ScriptGroup$Node;
    invoke-virtual {v2, p2}, Landroid/renderscript/ScriptGroup$Node;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 553
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    #@25
    const-string/jumbo v4, "Loops in group not allowed."

    #@28
    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v3

    #@2c
    .line 555
    :cond_0
    invoke-direct {p0, v2, p2}, Landroid/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V

    #@2f
    .line 557
    .end local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    :cond_1
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    #@31
    if-eqz v3, :cond_3

    #@33
    .line 558
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    #@35
    iget-object v3, v3, Landroid/renderscript/Script$FieldID;->mScript:Landroid/renderscript/Script;

    #@37
    invoke-direct {p0, v3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    #@3a
    move-result-object v2

    #@3b
    .line 559
    .restart local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    invoke-virtual {v2, p2}, Landroid/renderscript/ScriptGroup$Node;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v3

    #@3f
    if-eqz v3, :cond_2

    #@41
    .line 560
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    #@43
    const-string/jumbo v4, "Loops in group not allowed."

    #@46
    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@49
    throw v3

    #@4a
    .line 562
    :cond_2
    invoke-direct {p0, v2, p2}, Landroid/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V

    #@4d
    .line 548
    .end local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 547
    .end local v0    # "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    :cond_4
    return-void
.end method

.method private validateDAG()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 596
    const/4 v0, 0x0

    #@2
    .local v0, "ct":I
    :goto_0
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v4

    #@8
    if-ge v0, v4, :cond_2

    #@a
    .line 597
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroid/renderscript/ScriptGroup$Node;

    #@12
    .line 598
    .local v3, "n":Landroid/renderscript/ScriptGroup$Node;
    iget-object v4, v3, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v4

    #@18
    if-nez v4, :cond_1

    #@1a
    .line 599
    iget-object v4, v3, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v4

    #@20
    if-nez v4, :cond_0

    #@22
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@27
    move-result v4

    #@28
    const/4 v5, 0x1

    #@29
    if-le v4, v5, :cond_0

    #@2b
    .line 600
    const-string/jumbo v2, "Groups cannot contain unconnected scripts"

    #@2e
    .line 601
    .local v2, "msg":Ljava/lang/String;
    new-instance v4, Landroid/renderscript/RSInvalidStateException;

    #@30
    invoke-direct {v4, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@33
    throw v4

    #@34
    .line 603
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v0, 0x1

    #@36
    invoke-direct {p0, v3, v4}, Landroid/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroid/renderscript/ScriptGroup$Node;I)V

    #@39
    .line 596
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 606
    .end local v3    # "n":Landroid/renderscript/ScriptGroup$Node;
    :cond_2
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v4

    #@42
    check-cast v4, Landroid/renderscript/ScriptGroup$Node;

    #@44
    iget v1, v4, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    #@46
    .line 607
    .local v1, "dagNumber":I
    const/4 v0, 0x0

    #@47
    :goto_1
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    #@49
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@4c
    move-result v4

    #@4d
    if-ge v0, v4, :cond_4

    #@4f
    .line 608
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    #@51
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@54
    move-result-object v4

    #@55
    check-cast v4, Landroid/renderscript/ScriptGroup$Node;

    #@57
    iget v4, v4, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    #@59
    if-eq v4, v1, :cond_3

    #@5b
    .line 609
    new-instance v4, Landroid/renderscript/RSInvalidStateException;

    #@5d
    const-string/jumbo v5, "Multiple DAGs in group not allowed."

    #@60
    invoke-direct {v4, v5}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@63
    throw v4

    #@64
    .line 607
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@66
    goto :goto_1

    #@67
    .line 595
    :cond_4
    return-void
.end method

.method private validateDAGRecurse(Landroid/renderscript/ScriptGroup$Node;I)V
    .locals 4
    .param p1, "n"    # Landroid/renderscript/ScriptGroup$Node;
    .param p2, "dagNumber"    # I

    #@0
    .prologue
    .line 576
    iget v3, p1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    #@2
    if-eqz v3, :cond_0

    #@4
    iget v3, p1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    #@6
    if-eq v3, p2, :cond_0

    #@8
    .line 577
    iget v3, p1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    #@a
    invoke-direct {p0, v3, p2}, Landroid/renderscript/ScriptGroup$Builder;->mergeDAGs(II)V

    #@d
    .line 578
    return-void

    #@e
    .line 581
    :cond_0
    iput p2, p1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    #@10
    .line 582
    const/4 v1, 0x0

    #@11
    .local v1, "ct":I
    :goto_0
    iget-object v3, p1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v3

    #@17
    if-ge v1, v3, :cond_3

    #@19
    .line 583
    iget-object v3, p1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/renderscript/ScriptGroup$ConnectLine;

    #@21
    .line 584
    .local v0, "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    #@23
    if-eqz v3, :cond_1

    #@25
    .line 585
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    #@27
    iget-object v3, v3, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    #@29
    invoke-direct {p0, v3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    #@2c
    move-result-object v2

    #@2d
    .line 586
    .local v2, "tn":Landroid/renderscript/ScriptGroup$Node;
    invoke-direct {p0, v2, p2}, Landroid/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroid/renderscript/ScriptGroup$Node;I)V

    #@30
    .line 588
    .end local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    :cond_1
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    #@32
    if-eqz v3, :cond_2

    #@34
    .line 589
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    #@36
    iget-object v3, v3, Landroid/renderscript/Script$FieldID;->mScript:Landroid/renderscript/Script;

    #@38
    invoke-direct {p0, v3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    #@3b
    move-result-object v2

    #@3c
    .line 590
    .restart local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    invoke-direct {p0, v2, p2}, Landroid/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroid/renderscript/ScriptGroup$Node;I)V

    #@3f
    .line 582
    .end local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@41
    goto :goto_0

    #@42
    .line 574
    .end local v0    # "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    :cond_3
    return-void
.end method


# virtual methods
.method public addConnection(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$FieldID;)Landroid/renderscript/ScriptGroup$Builder;
    .locals 5
    .param p1, "t"    # Landroid/renderscript/Type;
    .param p2, "from"    # Landroid/renderscript/Script$KernelID;
    .param p3, "to"    # Landroid/renderscript/Script$FieldID;

    #@0
    .prologue
    .line 680
    invoke-direct {p0, p2}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;

    #@3
    move-result-object v1

    #@4
    .line 681
    .local v1, "nf":Landroid/renderscript/ScriptGroup$Node;
    if-nez v1, :cond_0

    #@6
    .line 682
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    #@8
    const-string/jumbo v4, "From script not found."

    #@b
    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 685
    :cond_0
    iget-object v3, p3, Landroid/renderscript/Script$FieldID;->mScript:Landroid/renderscript/Script;

    #@11
    invoke-direct {p0, v3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    #@14
    move-result-object v2

    #@15
    .line 686
    .local v2, "nt":Landroid/renderscript/ScriptGroup$Node;
    if-nez v2, :cond_1

    #@17
    .line 687
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    #@19
    const-string/jumbo v4, "To script not found."

    #@1c
    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v3

    #@20
    .line 690
    :cond_1
    new-instance v0, Landroid/renderscript/ScriptGroup$ConnectLine;

    #@22
    invoke-direct {v0, p1, p2, p3}, Landroid/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$FieldID;)V

    #@25
    .line 691
    .local v0, "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    #@27
    new-instance v4, Landroid/renderscript/ScriptGroup$ConnectLine;

    #@29
    invoke-direct {v4, p1, p2, p3}, Landroid/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$FieldID;)V

    #@2c
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2f
    .line 693
    iget-object v3, v1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@34
    .line 694
    iget-object v3, v2, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@39
    .line 696
    invoke-direct {p0, v1, v1}, Landroid/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V

    #@3c
    .line 697
    return-object p0
.end method

.method public addConnection(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Builder;
    .locals 5
    .param p1, "t"    # Landroid/renderscript/Type;
    .param p2, "from"    # Landroid/renderscript/Script$KernelID;
    .param p3, "to"    # Landroid/renderscript/Script$KernelID;

    #@0
    .prologue
    .line 715
    invoke-direct {p0, p2}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;

    #@3
    move-result-object v1

    #@4
    .line 716
    .local v1, "nf":Landroid/renderscript/ScriptGroup$Node;
    if-nez v1, :cond_0

    #@6
    .line 717
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    #@8
    const-string/jumbo v4, "From script not found."

    #@b
    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 720
    :cond_0
    invoke-direct {p0, p3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;

    #@12
    move-result-object v2

    #@13
    .line 721
    .local v2, "nt":Landroid/renderscript/ScriptGroup$Node;
    if-nez v2, :cond_1

    #@15
    .line 722
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    #@17
    const-string/jumbo v4, "To script not found."

    #@1a
    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v3

    #@1e
    .line 725
    :cond_1
    new-instance v0, Landroid/renderscript/ScriptGroup$ConnectLine;

    #@20
    invoke-direct {v0, p1, p2, p3}, Landroid/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$KernelID;)V

    #@23
    .line 726
    .local v0, "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    #@25
    new-instance v4, Landroid/renderscript/ScriptGroup$ConnectLine;

    #@27
    invoke-direct {v4, p1, p2, p3}, Landroid/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$KernelID;)V

    #@2a
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d
    .line 728
    iget-object v3, v1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@32
    .line 729
    iget-object v3, v2, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    .line 731
    invoke-direct {p0, v1, v1}, Landroid/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V

    #@3a
    .line 732
    return-object p0
.end method

.method public addKernel(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Builder;
    .locals 3
    .param p1, "k"    # Landroid/renderscript/Script$KernelID;

    #@0
    .prologue
    .line 644
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 645
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    #@a
    .line 646
    const-string/jumbo v2, "Kernels may not be added once connections exist."

    #@d
    .line 645
    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 650
    :cond_0
    invoke-direct {p0, p1}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;

    #@14
    move-result-object v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 651
    return-object p0

    #@18
    .line 654
    :cond_1
    iget v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mKernelCount:I

    #@1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    iput v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mKernelCount:I

    #@1e
    .line 655
    iget-object v1, p1, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    #@20
    invoke-direct {p0, v1}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    #@23
    move-result-object v0

    #@24
    .line 656
    .local v0, "n":Landroid/renderscript/ScriptGroup$Node;
    if-nez v0, :cond_2

    #@26
    .line 658
    new-instance v0, Landroid/renderscript/ScriptGroup$Node;

    #@28
    .end local v0    # "n":Landroid/renderscript/ScriptGroup$Node;
    iget-object v1, p1, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    #@2a
    invoke-direct {v0, v1}, Landroid/renderscript/ScriptGroup$Node;-><init>(Landroid/renderscript/Script;)V

    #@2d
    .line 659
    .restart local v0    # "n":Landroid/renderscript/ScriptGroup$Node;
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@32
    .line 661
    :cond_2
    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    .line 662
    return-object p0
.end method

.method public create()Landroid/renderscript/ScriptGroup;
    .locals 26

    #@0
    .prologue
    .line 745
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 746
    new-instance v2, Landroid/renderscript/RSInvalidStateException;

    #@c
    const-string/jumbo v23, "Empty script groups are not allowed"

    #@f
    move-object/from16 v0, v23

    #@11
    invoke-direct {v2, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v2

    #@15
    .line 750
    :cond_0
    const/4 v9, 0x0

    #@16
    .local v9, "ct":I
    :goto_0
    move-object/from16 v0, p0

    #@18
    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v2

    #@1e
    if-ge v9, v2, :cond_1

    #@20
    .line 751
    move-object/from16 v0, p0

    #@22
    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/renderscript/ScriptGroup$Node;

    #@2a
    const/16 v23, 0x0

    #@2c
    move/from16 v0, v23

    #@2e
    iput v0, v2, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    #@30
    .line 750
    add-int/lit8 v9, v9, 0x1

    #@32
    goto :goto_0

    #@33
    .line 753
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/renderscript/ScriptGroup$Builder;->validateDAG()V

    #@36
    .line 755
    new-instance v18, Ljava/util/ArrayList;

    #@38
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    #@3b
    .line 756
    .local v18, "inputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/renderscript/ScriptGroup$IO;>;"
    new-instance v21, Ljava/util/ArrayList;

    #@3d
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    #@40
    .line 758
    .local v21, "outputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/renderscript/ScriptGroup$IO;>;"
    move-object/from16 v0, p0

    #@42
    iget v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mKernelCount:I

    #@44
    new-array v3, v2, [J

    #@46
    .line 759
    .local v3, "kernels":[J
    const/16 v16, 0x0

    #@48
    .line 760
    .local v16, "idx":I
    const/4 v9, 0x0

    #@49
    :goto_1
    move-object/from16 v0, p0

    #@4b
    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    #@4d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@50
    move-result v2

    #@51
    if-ge v9, v2, :cond_9

    #@53
    .line 761
    move-object/from16 v0, p0

    #@55
    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    #@57
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5a
    move-result-object v20

    #@5b
    check-cast v20, Landroid/renderscript/ScriptGroup$Node;

    #@5d
    .line 762
    .local v20, "n":Landroid/renderscript/ScriptGroup$Node;
    const/4 v10, 0x0

    #@5e
    .local v10, "ct2":I
    :goto_2
    move-object/from16 v0, v20

    #@60
    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    #@62
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@65
    move-result v2

    #@66
    if-ge v10, v2, :cond_8

    #@68
    .line 763
    move-object/from16 v0, v20

    #@6a
    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    #@6c
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6f
    move-result-object v19

    #@70
    check-cast v19, Landroid/renderscript/Script$KernelID;

    #@72
    .line 764
    .local v19, "kid":Landroid/renderscript/Script$KernelID;
    add-int/lit8 v17, v16, 0x1

    #@74
    .end local v16    # "idx":I
    .local v17, "idx":I
    move-object/from16 v0, p0

    #@76
    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@78
    move-object/from16 v0, v19

    #@7a
    invoke-virtual {v0, v2}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    #@7d
    move-result-wide v24

    #@7e
    aput-wide v24, v3, v16

    #@80
    .line 766
    const/4 v12, 0x0

    #@81
    .line 767
    .local v12, "hasInput":Z
    const/4 v13, 0x0

    #@82
    .line 768
    .local v13, "hasOutput":Z
    const/4 v11, 0x0

    #@83
    .local v11, "ct3":I
    :goto_3
    move-object/from16 v0, v20

    #@85
    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    #@87
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@8a
    move-result v2

    #@8b
    if-ge v11, v2, :cond_3

    #@8d
    .line 769
    move-object/from16 v0, v20

    #@8f
    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    #@91
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@94
    move-result-object v2

    #@95
    check-cast v2, Landroid/renderscript/ScriptGroup$ConnectLine;

    #@97
    iget-object v2, v2, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    #@99
    move-object/from16 v0, v19

    #@9b
    if-ne v2, v0, :cond_2

    #@9d
    .line 770
    const/4 v12, 0x1

    #@9e
    .line 768
    :cond_2
    add-int/lit8 v11, v11, 0x1

    #@a0
    goto :goto_3

    #@a1
    .line 773
    :cond_3
    const/4 v11, 0x0

    #@a2
    :goto_4
    move-object/from16 v0, v20

    #@a4
    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    #@a6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a9
    move-result v2

    #@aa
    if-ge v11, v2, :cond_5

    #@ac
    .line 774
    move-object/from16 v0, v20

    #@ae
    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    #@b0
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b3
    move-result-object v2

    #@b4
    check-cast v2, Landroid/renderscript/ScriptGroup$ConnectLine;

    #@b6
    iget-object v2, v2, Landroid/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/renderscript/Script$KernelID;

    #@b8
    move-object/from16 v0, v19

    #@ba
    if-ne v2, v0, :cond_4

    #@bc
    .line 775
    const/4 v13, 0x1

    #@bd
    .line 773
    :cond_4
    add-int/lit8 v11, v11, 0x1

    #@bf
    goto :goto_4

    #@c0
    .line 778
    :cond_5
    if-nez v12, :cond_6

    #@c2
    .line 779
    new-instance v2, Landroid/renderscript/ScriptGroup$IO;

    #@c4
    move-object/from16 v0, v19

    #@c6
    invoke-direct {v2, v0}, Landroid/renderscript/ScriptGroup$IO;-><init>(Landroid/renderscript/Script$KernelID;)V

    #@c9
    move-object/from16 v0, v18

    #@cb
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ce
    .line 781
    :cond_6
    if-nez v13, :cond_7

    #@d0
    .line 782
    new-instance v2, Landroid/renderscript/ScriptGroup$IO;

    #@d2
    move-object/from16 v0, v19

    #@d4
    invoke-direct {v2, v0}, Landroid/renderscript/ScriptGroup$IO;-><init>(Landroid/renderscript/Script$KernelID;)V

    #@d7
    move-object/from16 v0, v21

    #@d9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@dc
    .line 762
    :cond_7
    add-int/lit8 v10, v10, 0x1

    #@de
    move/from16 v16, v17

    #@e0
    .end local v17    # "idx":I
    .restart local v16    # "idx":I
    goto/16 :goto_2

    #@e2
    .line 760
    .end local v11    # "ct3":I
    .end local v12    # "hasInput":Z
    .end local v13    # "hasOutput":Z
    .end local v19    # "kid":Landroid/renderscript/Script$KernelID;
    :cond_8
    add-int/lit8 v9, v9, 0x1

    #@e4
    goto/16 :goto_1

    #@e6
    .line 787
    .end local v10    # "ct2":I
    .end local v20    # "n":Landroid/renderscript/ScriptGroup$Node;
    :cond_9
    move-object/from16 v0, p0

    #@e8
    iget v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mKernelCount:I

    #@ea
    move/from16 v0, v16

    #@ec
    if-eq v0, v2, :cond_a

    #@ee
    .line 788
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@f0
    const-string/jumbo v23, "Count mismatch, should not happen."

    #@f3
    move-object/from16 v0, v23

    #@f5
    invoke-direct {v2, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@f8
    throw v2

    #@f9
    .line 791
    :cond_a
    move-object/from16 v0, p0

    #@fb
    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    #@fd
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@100
    move-result v2

    #@101
    new-array v4, v2, [J

    #@103
    .line 792
    .local v4, "src":[J
    move-object/from16 v0, p0

    #@105
    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    #@107
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@10a
    move-result v2

    #@10b
    new-array v5, v2, [J

    #@10d
    .line 793
    .local v5, "dstk":[J
    move-object/from16 v0, p0

    #@10f
    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    #@111
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@114
    move-result v2

    #@115
    new-array v6, v2, [J

    #@117
    .line 794
    .local v6, "dstf":[J
    move-object/from16 v0, p0

    #@119
    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    #@11b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@11e
    move-result v2

    #@11f
    new-array v7, v2, [J

    #@121
    .line 796
    .local v7, "types":[J
    const/4 v9, 0x0

    #@122
    :goto_5
    move-object/from16 v0, p0

    #@124
    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    #@126
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@129
    move-result v2

    #@12a
    if-ge v9, v2, :cond_d

    #@12c
    .line 797
    move-object/from16 v0, p0

    #@12e
    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    #@130
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@133
    move-result-object v8

    #@134
    check-cast v8, Landroid/renderscript/ScriptGroup$ConnectLine;

    #@136
    .line 798
    .local v8, "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v2, v8, Landroid/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/renderscript/Script$KernelID;

    #@138
    move-object/from16 v0, p0

    #@13a
    iget-object v0, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@13c
    move-object/from16 v23, v0

    #@13e
    move-object/from16 v0, v23

    #@140
    invoke-virtual {v2, v0}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    #@143
    move-result-wide v24

    #@144
    aput-wide v24, v4, v9

    #@146
    .line 799
    iget-object v2, v8, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    #@148
    if-eqz v2, :cond_b

    #@14a
    .line 800
    iget-object v2, v8, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    #@14c
    move-object/from16 v0, p0

    #@14e
    iget-object v0, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@150
    move-object/from16 v23, v0

    #@152
    move-object/from16 v0, v23

    #@154
    invoke-virtual {v2, v0}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    #@157
    move-result-wide v24

    #@158
    aput-wide v24, v5, v9

    #@15a
    .line 802
    :cond_b
    iget-object v2, v8, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    #@15c
    if-eqz v2, :cond_c

    #@15e
    .line 803
    iget-object v2, v8, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    #@160
    move-object/from16 v0, p0

    #@162
    iget-object v0, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@164
    move-object/from16 v23, v0

    #@166
    move-object/from16 v0, v23

    #@168
    invoke-virtual {v2, v0}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)J

    #@16b
    move-result-wide v24

    #@16c
    aput-wide v24, v6, v9

    #@16e
    .line 805
    :cond_c
    iget-object v2, v8, Landroid/renderscript/ScriptGroup$ConnectLine;->mAllocationType:Landroid/renderscript/Type;

    #@170
    move-object/from16 v0, p0

    #@172
    iget-object v0, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@174
    move-object/from16 v23, v0

    #@176
    move-object/from16 v0, v23

    #@178
    invoke-virtual {v2, v0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    #@17b
    move-result-wide v24

    #@17c
    aput-wide v24, v7, v9

    #@17e
    .line 796
    add-int/lit8 v9, v9, 0x1

    #@180
    goto :goto_5

    #@181
    .line 808
    .end local v8    # "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    :cond_d
    move-object/from16 v0, p0

    #@183
    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@185
    invoke-virtual/range {v2 .. v7}, Landroid/renderscript/RenderScript;->nScriptGroupCreate([J[J[J[J[J)J

    #@188
    move-result-wide v14

    #@189
    .line 809
    .local v14, "id":J
    const-wide/16 v24, 0x0

    #@18b
    cmp-long v2, v14, v24

    #@18d
    if-nez v2, :cond_e

    #@18f
    .line 810
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@191
    const-string/jumbo v23, "Object creation error, should not happen."

    #@194
    move-object/from16 v0, v23

    #@196
    invoke-direct {v2, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@199
    throw v2

    #@19a
    .line 813
    :cond_e
    new-instance v22, Landroid/renderscript/ScriptGroup;

    #@19c
    move-object/from16 v0, p0

    #@19e
    iget-object v2, v0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@1a0
    move-object/from16 v0, v22

    #@1a2
    invoke-direct {v0, v14, v15, v2}, Landroid/renderscript/ScriptGroup;-><init>(JLandroid/renderscript/RenderScript;)V

    #@1a5
    .line 814
    .local v22, "sg":Landroid/renderscript/ScriptGroup;
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    #@1a8
    move-result v2

    #@1a9
    new-array v2, v2, [Landroid/renderscript/ScriptGroup$IO;

    #@1ab
    move-object/from16 v0, v22

    #@1ad
    iput-object v2, v0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    #@1af
    .line 815
    const/4 v9, 0x0

    #@1b0
    :goto_6
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    #@1b3
    move-result v2

    #@1b4
    if-ge v9, v2, :cond_f

    #@1b6
    .line 816
    move-object/from16 v0, v22

    #@1b8
    iget-object v0, v0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    #@1ba
    move-object/from16 v23, v0

    #@1bc
    move-object/from16 v0, v21

    #@1be
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c1
    move-result-object v2

    #@1c2
    check-cast v2, Landroid/renderscript/ScriptGroup$IO;

    #@1c4
    aput-object v2, v23, v9

    #@1c6
    .line 815
    add-int/lit8 v9, v9, 0x1

    #@1c8
    goto :goto_6

    #@1c9
    .line 819
    :cond_f
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    #@1cc
    move-result v2

    #@1cd
    new-array v2, v2, [Landroid/renderscript/ScriptGroup$IO;

    #@1cf
    move-object/from16 v0, v22

    #@1d1
    iput-object v2, v0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    #@1d3
    .line 820
    const/4 v9, 0x0

    #@1d4
    :goto_7
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    #@1d7
    move-result v2

    #@1d8
    if-ge v9, v2, :cond_10

    #@1da
    .line 821
    move-object/from16 v0, v22

    #@1dc
    iget-object v0, v0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    #@1de
    move-object/from16 v23, v0

    #@1e0
    move-object/from16 v0, v18

    #@1e2
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e5
    move-result-object v2

    #@1e6
    check-cast v2, Landroid/renderscript/ScriptGroup$IO;

    #@1e8
    aput-object v2, v23, v9

    #@1ea
    .line 820
    add-int/lit8 v9, v9, 0x1

    #@1ec
    goto :goto_7

    #@1ed
    .line 824
    :cond_10
    return-object v22
.end method
