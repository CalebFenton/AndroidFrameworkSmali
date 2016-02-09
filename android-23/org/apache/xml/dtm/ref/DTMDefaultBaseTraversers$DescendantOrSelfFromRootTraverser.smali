.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescendantOrSelfFromRootTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@0
    .prologue
    .line 1604
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;)V

    #@6
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    #@3
    return-void
.end method


# virtual methods
.method public first(I)I
    .locals 1
    .param p1, "context"    # I

    #@0
    .prologue
    .line 1640
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getDocumentRoot(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public first(II)I
    .locals 5
    .param p1, "context"    # I
    .param p2, "expandedTypeID"    # I

    #@0
    .prologue
    .line 1659
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;->isIndexed(I)Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 1661
    const/4 v1, 0x0

    #@7
    .line 1662
    .local v1, "identity":I
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;->getFirstPotential(I)I

    #@a
    move-result v0

    #@b
    .line 1664
    .local v0, "firstPotential":I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@d
    invoke-virtual {p0, v1, v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;->getNextIndexed(III)I

    #@10
    move-result v4

    #@11
    invoke-virtual {v3, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    #@14
    move-result v3

    #@15
    return v3

    #@16
    .line 1667
    .end local v0    # "firstPotential":I
    .end local v1    # "identity":I
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;->first(I)I

    #@19
    move-result v2

    #@1a
    .line 1668
    .local v2, "root":I
    invoke-virtual {p0, v2, v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;->next(III)I

    #@1d
    move-result v3

    #@1e
    return v3
.end method

.method protected getFirstPotential(I)I
    .locals 0
    .param p1, "identity"    # I

    #@0
    .prologue
    .line 1617
    return p1
.end method

.method protected getSubtreeRoot(I)I
    .locals 2
    .param p1, "handle"    # I

    #@0
    .prologue
    .line 1628
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@4
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getDocument()I

    #@7
    move-result v1

    #@8
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    #@b
    move-result v0

    #@c
    return v0
.end method
