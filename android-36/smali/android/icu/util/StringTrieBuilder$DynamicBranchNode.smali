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
.field private greylist-max-o chars:Ljava/lang/StringBuilder;

.field private greylist-max-o equal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/icu/util/StringTrieBuilder$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 506
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$ValueNode;-><init>()V

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    .line 590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    .line 506
    return-void
.end method

.method private greylist-max-o find(C)I
    .registers 6
    .param p1, "c"    # C

    .line 573
    const/4 v0, 0x0

    .line 574
    .local v0, "start":I
    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 575
    .local v1, "limit":I
    :goto_7
    if-ge v0, v1, :cond_1d

    .line 576
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 577
    .local v2, "i":I
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 578
    .local v3, "middleChar":C
    if-ge p1, v3, :cond_17

    .line 579
    move v1, v2

    goto :goto_1c

    .line 580
    :cond_17
    if-ne p1, v3, :cond_1a

    .line 581
    return v2

    .line 583
    :cond_1a
    add-int/lit8 v0, v2, 0x1

    .line 585
    .end local v2    # "i":I
    .end local v3    # "middleChar":C
    :goto_1c
    goto :goto_7

    .line 586
    :cond_1d
    return v0
.end method

.method private greylist-max-o register(Landroid/icu/util/StringTrieBuilder;II)Landroid/icu/util/StringTrieBuilder$Node;
    .registers 10
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    .line 548
    sub-int v0, p3, p2

    .line 549
    .local v0, "length":I
    invoke-virtual {p1}, Landroid/icu/util/StringTrieBuilder;->getMaxBranchLinearSubNodeLength()I

    move-result v1

    if-le v0, v1, :cond_23

    .line 551
    div-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p2

    .line 552
    .local v1, "middle":I
    new-instance v2, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 555
    invoke-direct {p0, p1, p2, v1}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->register(Landroid/icu/util/StringTrieBuilder;II)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v4

    .line 556
    invoke-direct {p0, p1, v1, p3}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->register(Landroid/icu/util/StringTrieBuilder;II)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;-><init>(CLandroid/icu/util/StringTrieBuilder$Node;Landroid/icu/util/StringTrieBuilder$Node;)V

    .line 552
    invoke-static {p1, v2}, Landroid/icu/util/StringTrieBuilder;->-$$Nest$mregisterNode(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v2

    return-object v2

    .line 558
    .end local v1    # "middle":I
    :cond_23
    new-instance v1, Landroid/icu/util/StringTrieBuilder$ListBranchNode;

    invoke-direct {v1, v0}, Landroid/icu/util/StringTrieBuilder$ListBranchNode;-><init>(I)V

    .line 560
    .local v1, "listNode":Landroid/icu/util/StringTrieBuilder$ListBranchNode;
    :cond_28
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 561
    .local v2, "c":C
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/StringTrieBuilder$Node;

    .line 562
    .local v3, "node":Landroid/icu/util/StringTrieBuilder$Node;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Landroid/icu/util/StringTrieBuilder$ValueNode;

    if-ne v4, v5, :cond_47

    .line 564
    move-object v4, v3

    check-cast v4, Landroid/icu/util/StringTrieBuilder$ValueNode;

    iget v4, v4, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    invoke-virtual {v1, v2, v4}, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->add(II)V

    goto :goto_4e

    .line 566
    :cond_47
    invoke-virtual {v3, p1}, Landroid/icu/util/StringTrieBuilder$Node;->register(Landroid/icu/util/StringTrieBuilder;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->add(ILandroid/icu/util/StringTrieBuilder$Node;)V

    .line 568
    .end local v2    # "c":C
    .end local v3    # "node":Landroid/icu/util/StringTrieBuilder$Node;
    :goto_4e
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_28

    .line 569
    invoke-static {p1, v1}, Landroid/icu/util/StringTrieBuilder;->-$$Nest$mregisterNode(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public greylist-max-o add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;
    .registers 9
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "sValue"    # I

    .line 515
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_16

    .line 516
    iget-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->hasValue:Z

    if-nez v0, :cond_e

    .line 519
    invoke-virtual {p0, p4}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->setValue(I)V

    .line 520
    return-object p0

    .line 517
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duplicate string."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_16
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "start":I
    .local v0, "start":I
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    .line 524
    .local p3, "c":C
    invoke-direct {p0, p3}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->find(C)I

    move-result v1

    .line 525
    .local v1, "i":I
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_42

    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne p3, v2, :cond_42

    .line 526
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v3, p1, p2, v0, p4}, Landroid/icu/util/StringTrieBuilder$Node;->add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    .line 528
    :cond_42
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1, p3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 529
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    invoke-static {p1, p2, v0, p4}, Landroid/icu/util/StringTrieBuilder;->-$$Nest$mcreateSuffixNode(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 531
    :goto_50
    return-object p0
.end method

.method public greylist-max-o add(CLandroid/icu/util/StringTrieBuilder$Node;)V
    .registers 5
    .param p1, "c"    # C
    .param p2, "node"    # Landroid/icu/util/StringTrieBuilder$Node;

    .line 509
    invoke-direct {p0, p1}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->find(C)I

    move-result v0

    .line 510
    .local v0, "i":I
    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 511
    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 512
    return-void
.end method

.method public greylist-max-o register(Landroid/icu/util/StringTrieBuilder;)Landroid/icu/util/StringTrieBuilder$Node;
    .registers 8
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;

    .line 535
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->register(Landroid/icu/util/StringTrieBuilder;II)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v0

    .line 536
    .local v0, "subNode":Landroid/icu/util/StringTrieBuilder$Node;
    new-instance v1, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;

    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-direct {v1, v2, v0}, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;-><init>(ILandroid/icu/util/StringTrieBuilder$Node;)V

    .line 537
    .local v1, "head":Landroid/icu/util/StringTrieBuilder$BranchHeadNode;
    move-object v2, v1

    .line 538
    .local v2, "result":Landroid/icu/util/StringTrieBuilder$Node;
    iget-boolean v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->hasValue:Z

    if-eqz v3, :cond_33

    .line 539
    invoke-virtual {p1}, Landroid/icu/util/StringTrieBuilder;->matchNodesCanHaveValues()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 540
    iget v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->value:I

    invoke-virtual {v1, v3}, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->setValue(I)V

    goto :goto_33

    .line 542
    :cond_27
    new-instance v3, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;

    iget v4, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->value:I

    invoke-static {p1, v1}, Landroid/icu/util/StringTrieBuilder;->-$$Nest$mregisterNode(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;-><init>(ILandroid/icu/util/StringTrieBuilder$Node;)V

    move-object v2, v3

    .line 545
    :cond_33
    :goto_33
    invoke-static {p1, v2}, Landroid/icu/util/StringTrieBuilder;->-$$Nest$mregisterNode(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v3

    return-object v3
.end method
