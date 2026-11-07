.class final Landroid/icu/util/StringTrieBuilder$BranchHeadNode;
.super Landroid/icu/util/StringTrieBuilder$ValueNode;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BranchHeadNode"
.end annotation


# instance fields
.field private greylist-max-o length:I

.field private greylist-max-o next:Landroid/icu/util/StringTrieBuilder$Node;


# direct methods
.method public constructor greylist-max-o <init>(ILandroid/icu/util/StringTrieBuilder$Node;)V
    .registers 3
    .param p1, "len"    # I
    .param p2, "subNode"    # Landroid/icu/util/StringTrieBuilder$Node;

    .line 767
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$ValueNode;-><init>()V

    .line 768
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    .line 769
    iput-object p2, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    .line 770
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 777
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 778
    return v0

    .line 780
    :cond_4
    invoke-super {p0, p1}, Landroid/icu/util/StringTrieBuilder$ValueNode;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 781
    return v2

    .line 783
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;

    .line 784
    .local v1, "o":Landroid/icu/util/StringTrieBuilder$BranchHeadNode;
    iget v3, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    iget v4, v1, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    if-ne v3, v4, :cond_1c

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    iget-object v4, v1, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    if-ne v3, v4, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 773
    const v0, 0xeccccbe

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0}, Landroid/icu/util/StringTrieBuilder$Node;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public greylist-max-o markRightEdgesFirst(I)I
    .registers 3
    .param p1, "edgeNumber"    # I

    .line 788
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->offset:I

    if-nez v0, :cond_d

    .line 789
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    move-result v0

    move p1, v0

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->offset:I

    .line 791
    :cond_d
    return p1
.end method

.method public greylist-max-o write(Landroid/icu/util/StringTrieBuilder;)V
    .registers 5
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;

    .line 795
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    .line 796
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    invoke-virtual {p1}, Landroid/icu/util/StringTrieBuilder;->getMinLinearMatch()I

    move-result v1

    if-gt v0, v1, :cond_1c

    .line 797
    iget-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->hasValue:Z

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->value:I

    iget v2, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/icu/util/StringTrieBuilder;->writeValueAndType(ZII)I

    move-result v0

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->offset:I

    goto :goto_2e

    .line 799
    :cond_1c
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/icu/util/StringTrieBuilder;->write(I)I

    .line 800
    iget-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->hasValue:Z

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->value:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/icu/util/StringTrieBuilder;->writeValueAndType(ZII)I

    move-result v0

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->offset:I

    .line 802
    :goto_2e
    return-void
.end method
