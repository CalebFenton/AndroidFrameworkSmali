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
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

.field private greylist-max-o lessThan:Landroid/icu/util/StringTrieBuilder$Node;

.field private greylist-max-o unit:C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 716
    const-class v0, Landroid/icu/util/StringTrieBuilder;

    return-void
.end method

.method public constructor greylist-max-o <init>(CLandroid/icu/util/StringTrieBuilder$Node;Landroid/icu/util/StringTrieBuilder$Node;)V
    .registers 6
    .param p1, "middleUnit"    # C
    .param p2, "lessThanNode"    # Landroid/icu/util/StringTrieBuilder$Node;
    .param p3, "greaterOrEqualNode"    # Landroid/icu/util/StringTrieBuilder$Node;

    .line 717
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$BranchNode;-><init>()V

    .line 718
    const v0, 0xc555549

    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x25

    .line 719
    invoke-virtual {p2}, Landroid/icu/util/StringTrieBuilder$Node;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p3}, Landroid/icu/util/StringTrieBuilder$Node;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->hash:I

    .line 720
    iput-char p1, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->unit:C

    .line 721
    iput-object p2, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    .line 722
    iput-object p3, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

    .line 723
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 726
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 727
    return v0

    .line 729
    :cond_4
    invoke-super {p0, p1}, Landroid/icu/util/StringTrieBuilder$BranchNode;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 730
    return v2

    .line 732
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;

    .line 733
    .local v1, "o":Landroid/icu/util/StringTrieBuilder$SplitBranchNode;
    iget-char v3, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->unit:C

    iget-char v4, v1, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->unit:C

    if-ne v3, v4, :cond_22

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    iget-object v4, v1, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    if-ne v3, v4, :cond_22

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

    iget-object v4, v1, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

    if-ne v3, v4, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 737
    invoke-super {p0}, Landroid/icu/util/StringTrieBuilder$BranchNode;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist-max-o markRightEdgesFirst(I)I
    .registers 4
    .param p1, "edgeNumber"    # I

    .line 741
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->offset:I

    if-nez v0, :cond_17

    .line 742
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->firstEdgeNumber:I

    .line 743
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    move-result p1

    .line 744
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    move-result v0

    move p1, v0

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->offset:I

    .line 746
    :cond_17
    return p1
.end method

.method public greylist-max-o write(Landroid/icu/util/StringTrieBuilder;)V
    .registers 5
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;

    .line 751
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->firstEdgeNumber:I

    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v2}, Landroid/icu/util/StringTrieBuilder$Node;->getOffset()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/icu/util/StringTrieBuilder$Node;->writeUnlessInsideRightEdge(IILandroid/icu/util/StringTrieBuilder;)V

    .line 753
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    .line 755
    nop

    .line 756
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0}, Landroid/icu/util/StringTrieBuilder$Node;->getOffset()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/icu/util/StringTrieBuilder;->writeDeltaTo(I)I

    .line 757
    iget-char v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->unit:C

    invoke-virtual {p1, v0}, Landroid/icu/util/StringTrieBuilder;->write(I)I

    move-result v0

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->offset:I

    .line 758
    return-void
.end method
