.class final Landroid/icu/util/StringTrieBuilder$SplitBranchNode;
.super Landroid/icu/util/StringTrieBuilder$BranchNode;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SplitBranchNode"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

.field private lessThan:Landroid/icu/util/StringTrieBuilder$Node;

.field private unit:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->-assertionsDisabled:Z

    #@b
    .line 715
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(CLandroid/icu/util/StringTrieBuilder$Node;Landroid/icu/util/StringTrieBuilder$Node;)V
    .locals 2
    .param p1, "middleUnit"    # C
    .param p2, "lessThanNode"    # Landroid/icu/util/StringTrieBuilder$Node;
    .param p3, "greaterOrEqualNode"    # Landroid/icu/util/StringTrieBuilder$Node;

    #@0
    .prologue
    .line 716
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$BranchNode;-><init>()V

    #@3
    .line 717
    const v0, 0xc555549

    #@6
    add-int/2addr v0, p1

    #@7
    mul-int/lit8 v0, v0, 0x25

    #@9
    .line 718
    invoke-virtual {p2}, Landroid/icu/util/StringTrieBuilder$Node;->hashCode()I

    #@c
    move-result v1

    #@d
    .line 717
    add-int/2addr v0, v1

    #@e
    mul-int/lit8 v0, v0, 0x25

    #@10
    .line 718
    invoke-virtual {p3}, Landroid/icu/util/StringTrieBuilder$Node;->hashCode()I

    #@13
    move-result v1

    #@14
    .line 717
    add-int/2addr v0, v1

    #@15
    iput v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->hash:I

    #@17
    .line 719
    iput-char p1, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->unit:C

    #@19
    .line 720
    iput-object p2, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    #@1b
    .line 721
    iput-object p3, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

    #@1d
    .line 716
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 725
    if-ne p0, p1, :cond_0

    #@4
    .line 726
    return v1

    #@5
    .line 728
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/util/StringTrieBuilder$BranchNode;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v3

    #@9
    if-nez v3, :cond_1

    #@b
    .line 729
    return v2

    #@c
    :cond_1
    move-object v0, p1

    #@d
    .line 731
    check-cast v0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;

    #@f
    .line 732
    .local v0, "o":Landroid/icu/util/StringTrieBuilder$SplitBranchNode;
    iget-char v3, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->unit:C

    #@11
    iget-char v4, v0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->unit:C

    #@13
    if-ne v3, v4, :cond_2

    #@15
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    #@17
    iget-object v4, v0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    #@19
    if-ne v3, v4, :cond_2

    #@1b
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

    #@1d
    iget-object v4, v0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

    #@1f
    if-ne v3, v4, :cond_2

    #@21
    :goto_0
    return v1

    #@22
    :cond_2
    move v1, v2

    #@23
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 736
    invoke-super {p0}, Landroid/icu/util/StringTrieBuilder$BranchNode;->hashCode()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public markRightEdgesFirst(I)I
    .locals 2
    .param p1, "edgeNumber"    # I

    #@0
    .prologue
    .line 740
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->offset:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 741
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->firstEdgeNumber:I

    #@6
    .line 742
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

    #@8
    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    #@b
    move-result p1

    #@c
    .line 743
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    #@e
    add-int/lit8 v1, p1, -0x1

    #@10
    invoke-virtual {v0, v1}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    #@13
    move-result p1

    #@14
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->offset:I

    #@16
    .line 745
    :cond_0
    return p1
.end method

.method public write(Landroid/icu/util/StringTrieBuilder;)V
    .locals 4
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 750
    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    #@3
    iget v2, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->firstEdgeNumber:I

    #@5
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

    #@7
    invoke-virtual {v3}, Landroid/icu/util/StringTrieBuilder$Node;->getOffset()I

    #@a
    move-result v3

    #@b
    invoke-virtual {v1, v2, v3, p1}, Landroid/icu/util/StringTrieBuilder$Node;->writeUnlessInsideRightEdge(IILandroid/icu/util/StringTrieBuilder;)V

    #@e
    .line 752
    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

    #@10
    invoke-virtual {v1, p1}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    #@13
    .line 754
    sget-boolean v1, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->-assertionsDisabled:Z

    #@15
    if-nez v1, :cond_1

    #@17
    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    #@19
    invoke-virtual {v1}, Landroid/icu/util/StringTrieBuilder$Node;->getOffset()I

    #@1c
    move-result v1

    #@1d
    if-lez v1, :cond_0

    #@1f
    const/4 v0, 0x1

    #@20
    :cond_0
    if-nez v0, :cond_1

    #@22
    new-instance v0, Ljava/lang/AssertionError;

    #@24
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@27
    throw v0

    #@28
    .line 755
    :cond_1
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    #@2a
    invoke-virtual {v0}, Landroid/icu/util/StringTrieBuilder$Node;->getOffset()I

    #@2d
    move-result v0

    #@2e
    invoke-virtual {p1, v0}, Landroid/icu/util/StringTrieBuilder;->writeDeltaTo(I)I

    #@31
    .line 756
    iget-char v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->unit:C

    #@33
    invoke-virtual {p1, v0}, Landroid/icu/util/StringTrieBuilder;->write(I)I

    #@36
    move-result v0

    #@37
    iput v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->offset:I

    #@39
    .line 748
    return-void
.end method
