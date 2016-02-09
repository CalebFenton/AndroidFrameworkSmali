.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FollowingTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@0
    .prologue
    .line 830
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;)V

    #@6
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    #@3
    return-void
.end method


# virtual methods
.method public first(I)I
    .locals 4
    .param p1, "context"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 843
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@3
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    #@6
    move-result p1

    #@7
    .line 846
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@9
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_type(I)S

    #@c
    move-result v1

    #@d
    .line 848
    .local v1, "type":I
    const/4 v2, 0x2

    #@e
    if-eq v2, v1, :cond_0

    #@10
    const/16 v2, 0xd

    #@12
    if-ne v2, v1, :cond_1

    #@14
    .line 850
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@16
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_parent(I)I

    #@19
    move-result p1

    #@1a
    .line 851
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@1c
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_firstch(I)I

    #@1f
    move-result v0

    #@20
    .line 853
    .local v0, "first":I
    if-eq v3, v0, :cond_1

    #@22
    .line 854
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@24
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    #@27
    move-result v2

    #@28
    return v2

    #@29
    .line 859
    .end local v0    # "first":I
    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2b
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_nextsib(I)I

    #@2e
    move-result v0

    #@2f
    .line 861
    .restart local v0    # "first":I
    if-ne v3, v0, :cond_2

    #@31
    .line 862
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@33
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_parent(I)I

    #@36
    move-result p1

    #@37
    .line 864
    :cond_2
    if-ne v3, v0, :cond_3

    #@39
    if-ne v3, p1, :cond_1

    #@3b
    .line 866
    :cond_3
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@3d
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    #@40
    move-result v2

    #@41
    return v2
.end method

.method public first(II)I
    .locals 4
    .param p1, "context"    # I
    .param p2, "expandedTypeID"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 883
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@3
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getNodeType(I)S

    #@6
    move-result v1

    #@7
    .line 885
    .local v1, "type":I
    const/4 v2, 0x2

    #@8
    if-eq v2, v1, :cond_0

    #@a
    const/16 v2, 0xd

    #@c
    if-ne v2, v1, :cond_2

    #@e
    .line 887
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@10
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getParent(I)I

    #@13
    move-result p1

    #@14
    .line 888
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@16
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getFirstChild(I)I

    #@19
    move-result v0

    #@1a
    .line 890
    .local v0, "first":I
    if-eq v3, v0, :cond_2

    #@1c
    .line 892
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@1e
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getExpandedTypeID(I)I

    #@21
    move-result v2

    #@22
    if-ne v2, p2, :cond_1

    #@24
    .line 893
    return v0

    #@25
    .line 895
    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->next(III)I

    #@28
    move-result v2

    #@29
    return v2

    #@2a
    .line 901
    .end local v0    # "first":I
    :cond_2
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2c
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getNextSibling(I)I

    #@2f
    move-result v0

    #@30
    .line 903
    .restart local v0    # "first":I
    if-ne v3, v0, :cond_4

    #@32
    .line 904
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@34
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getParent(I)I

    #@37
    move-result p1

    #@38
    .line 913
    if-ne v3, v0, :cond_3

    #@3a
    if-ne v3, p1, :cond_2

    #@3c
    .line 915
    :cond_3
    return v0

    #@3d
    .line 907
    :cond_4
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@3f
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getExpandedTypeID(I)I

    #@42
    move-result v2

    #@43
    if-ne v2, p2, :cond_5

    #@45
    .line 908
    return v0

    #@46
    .line 910
    :cond_5
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->next(III)I

    #@49
    move-result v2

    #@4a
    return v2
.end method

.method public next(II)I
    .locals 3
    .param p1, "context"    # I
    .param p2, "current"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 929
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@3
    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    #@6
    move-result p2

    #@7
    .line 933
    :cond_0
    add-int/lit8 p2, p2, 0x1

    #@9
    .line 936
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@b
    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_type(I)S

    #@e
    move-result v0

    #@f
    .line 938
    .local v0, "type":I
    if-ne v2, v0, :cond_1

    #@11
    .line 939
    return v2

    #@12
    .line 941
    :cond_1
    const/4 v1, 0x2

    #@13
    if-eq v1, v0, :cond_0

    #@15
    const/16 v1, 0xd

    #@17
    if-eq v1, v0, :cond_0

    #@19
    .line 944
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@1b
    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    #@1e
    move-result v1

    #@1f
    return v1
.end method

.method public next(III)I
    .locals 3
    .param p1, "context"    # I
    .param p2, "current"    # I
    .param p3, "expandedTypeID"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 961
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@3
    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    #@6
    move-result p2

    #@7
    .line 965
    :cond_0
    add-int/lit8 p2, p2, 0x1

    #@9
    .line 967
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@b
    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_exptype(I)I

    #@e
    move-result v0

    #@f
    .line 969
    .local v0, "etype":I
    if-ne v2, v0, :cond_1

    #@11
    .line 970
    return v2

    #@12
    .line 972
    :cond_1
    if-ne v0, p3, :cond_0

    #@14
    .line 975
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@16
    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    #@19
    move-result v1

    #@1a
    return v1
.end method
