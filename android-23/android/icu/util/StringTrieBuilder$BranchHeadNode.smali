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
.field private length:I

.field private next:Landroid/icu/util/StringTrieBuilder$Node;


# direct methods
.method public constructor <init>(ILandroid/icu/util/StringTrieBuilder$Node;)V
    .locals 0
    .param p1, "len"    # I
    .param p2, "subNode"    # Landroid/icu/util/StringTrieBuilder$Node;

    #@0
    .prologue
    .line 766
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$ValueNode;-><init>()V

    #@3
    .line 767
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    #@5
    .line 768
    iput-object p2, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@7
    .line 766
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
    .line 776
    if-ne p0, p1, :cond_0

    #@4
    .line 777
    return v1

    #@5
    .line 779
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/util/StringTrieBuilder$ValueNode;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v3

    #@9
    if-nez v3, :cond_1

    #@b
    .line 780
    return v2

    #@c
    :cond_1
    move-object v0, p1

    #@d
    .line 782
    check-cast v0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;

    #@f
    .line 783
    .local v0, "o":Landroid/icu/util/StringTrieBuilder$BranchHeadNode;
    iget v3, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    #@11
    iget v4, v0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    #@13
    if-ne v3, v4, :cond_2

    #@15
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@17
    iget-object v4, v0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@19
    if-ne v3, v4, :cond_2

    #@1b
    :goto_0
    return v1

    #@1c
    :cond_2
    move v1, v2

    #@1d
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 772
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    #@2
    const v1, 0xeccccbe

    #@5
    add-int/2addr v0, v1

    #@6
    mul-int/lit8 v0, v0, 0x25

    #@8
    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@a
    invoke-virtual {v1}, Landroid/icu/util/StringTrieBuilder$Node;->hashCode()I

    #@d
    move-result v1

    #@e
    add-int/2addr v0, v1

    #@f
    return v0
.end method

.method public markRightEdgesFirst(I)I
    .locals 1
    .param p1, "edgeNumber"    # I

    #@0
    .prologue
    .line 787
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->offset:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 788
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@6
    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    #@9
    move-result p1

    #@a
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->offset:I

    #@c
    .line 790
    :cond_0
    return p1
.end method

.method public write(Landroid/icu/util/StringTrieBuilder;)V
    .locals 3
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;

    #@0
    .prologue
    .line 794
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    #@5
    .line 795
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    #@7
    invoke-virtual {p1}, Landroid/icu/util/StringTrieBuilder;->getMinLinearMatch()I

    #@a
    move-result v1

    #@b
    if-gt v0, v1, :cond_0

    #@d
    .line 796
    iget-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->hasValue:Z

    #@f
    iget v1, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->value:I

    #@11
    iget v2, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    #@13
    add-int/lit8 v2, v2, -0x1

    #@15
    invoke-virtual {p1, v0, v1, v2}, Landroid/icu/util/StringTrieBuilder;->writeValueAndType(ZII)I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->offset:I

    #@1b
    .line 793
    :goto_0
    return-void

    #@1c
    .line 798
    :cond_0
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    #@1e
    add-int/lit8 v0, v0, -0x1

    #@20
    invoke-virtual {p1, v0}, Landroid/icu/util/StringTrieBuilder;->write(I)I

    #@23
    .line 799
    iget-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->hasValue:Z

    #@25
    iget v1, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->value:I

    #@27
    const/4 v2, 0x0

    #@28
    invoke-virtual {p1, v0, v1, v2}, Landroid/icu/util/StringTrieBuilder;->writeValueAndType(ZII)I

    #@2b
    move-result v0

    #@2c
    iput v0, p0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;->offset:I

    #@2e
    goto :goto_0
.end method
