.class final Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;
.super Landroid/icu/util/StringTrieBuilder$ValueNode;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DynamicBranchNode"
.end annotation


# instance fields
.field private chars:Ljava/lang/StringBuilder;

.field private equal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/icu/util/StringTrieBuilder$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 505
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$ValueNode;-><init>()V

    #@3
    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    #@a
    .line 589
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    #@11
    .line 505
    return-void
.end method

.method private find(C)I
    .locals 5
    .param p1, "c"    # C

    #@0
    .prologue
    .line 572
    const/4 v3, 0x0

    #@1
    .line 573
    .local v3, "start":I
    iget-object v4, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@6
    move-result v1

    #@7
    .line 574
    .local v1, "limit":I
    :goto_0
    if-ge v3, v1, :cond_2

    #@9
    .line 575
    add-int v4, v3, v1

    #@b
    div-int/lit8 v0, v4, 0x2

    #@d
    .line 576
    .local v0, "i":I
    iget-object v4, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    #@f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    #@12
    move-result v2

    #@13
    .line 577
    .local v2, "middleChar":C
    if-ge p1, v2, :cond_0

    #@15
    .line 578
    move v1, v0

    #@16
    goto :goto_0

    #@17
    .line 579
    :cond_0
    if-ne p1, v2, :cond_1

    #@19
    .line 580
    return v0

    #@1a
    .line 582
    :cond_1
    add-int/lit8 v3, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 585
    .end local v0    # "i":I
    .end local v2    # "middleChar":C
    :cond_2
    return v3
.end method

.method private register(Landroid/icu/util/StringTrieBuilder;II)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 9
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 547
    sub-int v1, p3, p2

    #@2
    .line 548
    .local v1, "length":I
    invoke-virtual {p1}, Landroid/icu/util/StringTrieBuilder;->getMaxBranchLinearSubNodeLength()I

    #@5
    move-result v5

    #@6
    if-le v1, v5, :cond_0

    #@8
    .line 550
    div-int/lit8 v5, v1, 0x2

    #@a
    add-int v3, p2, v5

    #@c
    .line 552
    .local v3, "middle":I
    new-instance v5, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;

    #@e
    .line 553
    iget-object v6, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    #@10
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    #@13
    move-result v6

    #@14
    .line 554
    invoke-direct {p0, p1, p2, v3}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->register(Landroid/icu/util/StringTrieBuilder;II)Landroid/icu/util/StringTrieBuilder$Node;

    #@17
    move-result-object v7

    #@18
    .line 555
    invoke-direct {p0, p1, v3, p3}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->register(Landroid/icu/util/StringTrieBuilder;II)Landroid/icu/util/StringTrieBuilder$Node;

    #@1b
    move-result-object v8

    #@1c
    .line 552
    invoke-direct {v5, v6, v7, v8}, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;-><init>(CLandroid/icu/util/StringTrieBuilder$Node;Landroid/icu/util/StringTrieBuilder$Node;)V

    #@1f
    .line 551
    invoke-static {p1, v5}, Landroid/icu/util/StringTrieBuilder;->-wrap0(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    #@22
    move-result-object v5

    #@23
    return-object v5

    #@24
    .line 557
    .end local v3    # "middle":I
    :cond_0
    new-instance v2, Landroid/icu/util/StringTrieBuilder$ListBranchNode;

    #@26
    invoke-direct {v2, v1}, Landroid/icu/util/StringTrieBuilder$ListBranchNode;-><init>(I)V

    #@29
    .line 559
    .local v2, "listNode":Landroid/icu/util/StringTrieBuilder$ListBranchNode;
    :cond_1
    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    #@2b
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    #@2e
    move-result v0

    #@2f
    .line 560
    .local v0, "c":C
    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v4

    #@35
    check-cast v4, Landroid/icu/util/StringTrieBuilder$Node;

    #@37
    .line 561
    .local v4, "node":Landroid/icu/util/StringTrieBuilder$Node;
    invoke-virtual {v4}, Landroid/icu/util/StringTrieBuilder$Node;->getClass()Ljava/lang/Class;

    #@3a
    move-result-object v5

    #@3b
    const-class v6, Landroid/icu/util/StringTrieBuilder$ValueNode;

    #@3d
    if-ne v5, v6, :cond_2

    #@3f
    .line 563
    check-cast v4, Landroid/icu/util/StringTrieBuilder$ValueNode;

    #@41
    .end local v4    # "node":Landroid/icu/util/StringTrieBuilder$Node;
    iget v5, v4, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    #@43
    invoke-virtual {v2, v0, v5}, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->add(II)V

    #@46
    .line 567
    :goto_0
    add-int/lit8 p2, p2, 0x1

    #@48
    if-lt p2, p3, :cond_1

    #@4a
    .line 568
    invoke-static {p1, v2}, Landroid/icu/util/StringTrieBuilder;->-wrap0(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    #@4d
    move-result-object v5

    #@4e
    return-object v5

    #@4f
    .line 565
    .restart local v4    # "node":Landroid/icu/util/StringTrieBuilder$Node;
    :cond_2
    invoke-virtual {v4, p1}, Landroid/icu/util/StringTrieBuilder$Node;->register(Landroid/icu/util/StringTrieBuilder;)Landroid/icu/util/StringTrieBuilder$Node;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v2, v0, v5}, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->add(ILandroid/icu/util/StringTrieBuilder$Node;)V

    #@56
    goto :goto_0
.end method


# virtual methods
.method public add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 5
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "sValue"    # I

    #@0
    .prologue
    .line 514
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v3

    #@4
    if-ne p3, v3, :cond_1

    #@6
    .line 515
    iget-boolean v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->hasValue:Z

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 516
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v4, "Duplicate string."

    #@f
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v3

    #@13
    .line 518
    :cond_0
    invoke-virtual {p0, p4}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->setValue(I)V

    #@16
    .line 519
    return-object p0

    #@17
    .line 522
    :cond_1
    add-int/lit8 v2, p3, 0x1

    #@19
    .end local p3    # "start":I
    .local v2, "start":I
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    #@1c
    move-result v0

    #@1d
    .line 523
    .local v0, "c":C
    invoke-direct {p0, v0}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->find(C)I

    #@20
    move-result v1

    #@21
    .line 524
    .local v1, "i":I
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@26
    move-result v3

    #@27
    if-ge v1, v3, :cond_2

    #@29
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    #@2b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    #@2e
    move-result v3

    #@2f
    if-ne v0, v3, :cond_2

    #@31
    .line 525
    iget-object v4, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    #@33
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v3

    #@39
    check-cast v3, Landroid/icu/util/StringTrieBuilder$Node;

    #@3b
    invoke-virtual {v3, p1, p2, v2, p4}, Landroid/icu/util/StringTrieBuilder$Node;->add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@42
    .line 530
    :goto_0
    return-object p0

    #@43
    .line 527
    :cond_2
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    #@45
    invoke-virtual {v3, v1, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@48
    .line 528
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    #@4a
    invoke-static {p1, p2, v2, p4}, Landroid/icu/util/StringTrieBuilder;->-wrap1(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@51
    goto :goto_0
.end method

.method public add(CLandroid/icu/util/StringTrieBuilder$Node;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "node"    # Landroid/icu/util/StringTrieBuilder$Node;

    #@0
    .prologue
    .line 508
    invoke-direct {p0, p1}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->find(C)I

    #@3
    move-result v0

    #@4
    .line 509
    .local v0, "i":I
    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    #@6
    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@9
    .line 510
    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@e
    .line 507
    return-void
.end method

.method public register(Landroid/icu/util/StringTrieBuilder;)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 5
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;

    #@0
    .prologue
    .line 534
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@5
    move-result v3

    #@6
    const/4 v4, 0x0

    #@7
    invoke-direct {p0, p1, v4, v3}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->register(Landroid/icu/util/StringTrieBuilder;II)Landroid/icu/util/StringTrieBuilder$Node;

    #@a
    move-result-object v2

    #@b
    .line 535
    .local v2, "subNode":Landroid/icu/util/StringTrieBuilder$Node;
    new-instance v0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;

    #@d
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    #@f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@12
    move-result v3

    #@13
    invoke-direct {v0, v3, v2}, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;-><init>(ILandroid/icu/util/StringTrieBuilder$Node;)V

    #@16
    .line 536
    .local v0, "head":Landroid/icu/util/StringTrieBuilder$BranchHeadNode;
    move-object v1, v0

    #@17
    .line 537
    .local v1, "result":Landroid/icu/util/StringTrieBuilder$Node;
    iget-boolean v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->hasValue:Z

    #@19
    if-eqz v3, :cond_0

    #@1b
    .line 538
    invoke-virtual {p1}, Landroid/icu/util/StringTrieBuilder;->matchNodesCanHaveValues()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_1

    #@21
    .line 539
    iget v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->value:I

    #@23
    invoke-virtual {v0, v3}, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->setValue(I)V

    #@26
    .line 544
    :cond_0
    :goto_0
    invoke-static {p1, v1}, Landroid/icu/util/StringTrieBuilder;->-wrap0(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    #@29
    move-result-object v3

    #@2a
    return-object v3

    #@2b
    .line 541
    :cond_1
    new-instance v1, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;

    #@2d
    .end local v1    # "result":Landroid/icu/util/StringTrieBuilder$Node;
    iget v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->value:I

    #@2f
    invoke-static {p1, v0}, Landroid/icu/util/StringTrieBuilder;->-wrap0(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    #@32
    move-result-object v4

    #@33
    invoke-direct {v1, v3, v4}, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;-><init>(ILandroid/icu/util/StringTrieBuilder$Node;)V

    #@36
    .restart local v1    # "result":Landroid/icu/util/StringTrieBuilder$Node;
    goto :goto_0
.end method
