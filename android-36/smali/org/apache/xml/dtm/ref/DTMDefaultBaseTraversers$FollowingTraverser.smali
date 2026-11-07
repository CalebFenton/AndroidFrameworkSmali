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
.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 830
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V

    return-void
.end method

.method synthetic constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public greylist first(I)I
    .registers 5

    .line 843
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 846
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v1, v0, :cond_14

    const/16 v1, 0xd

    if-ne v1, v0, :cond_29

    .line 850
    :cond_14
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result p1

    .line 851
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v0

    if-eq v2, v0, :cond_29

    .line 854
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    .line 859
    :cond_29
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v0

    if-ne v2, v0, :cond_37

    .line 862
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result p1

    :cond_37
    if-ne v2, v0, :cond_3b

    if-ne v2, p1, :cond_29

    .line 866
    :cond_3b
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method

.method public greylist first(II)I
    .registers 6

    .line 883
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v1, v0, :cond_e

    const/16 v1, 0xd

    if-ne v1, v0, :cond_2a

    .line 887
    :cond_e
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getParent(I)I

    move-result p1

    .line 888
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getFirstChild(I)I

    move-result v0

    if-eq v2, v0, :cond_2a

    .line 892
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v1

    if-ne v1, p2, :cond_25

    return v0

    .line 895
    :cond_25
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->next(III)I

    move-result p0

    return p0

    .line 901
    :cond_2a
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextSibling(I)I

    move-result v0

    if-ne v2, v0, :cond_3d

    .line 904
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getParent(I)I

    move-result p1

    if-ne v2, v0, :cond_45

    if-ne v2, p1, :cond_2a

    goto :goto_45

    .line 907
    :cond_3d
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v1

    if-ne v1, p2, :cond_46

    :cond_45
    :goto_45
    return v0

    .line 910
    :cond_46
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->next(III)I

    move-result p0

    return p0
.end method

.method public greylist next(II)I
    .registers 4

    .line 929
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    :cond_6
    :goto_6
    add-int/lit8 p1, p1, 0x1

    .line 936
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result p2

    const/4 v0, -0x1

    if-ne v0, p2, :cond_12

    return v0

    :cond_12
    const/4 v0, 0x2

    if-eq v0, p2, :cond_6

    const/16 v0, 0xd

    if-ne v0, p2, :cond_1a

    goto :goto_6

    .line 944
    :cond_1a
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method

.method public greylist next(III)I
    .registers 5

    .line 961
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    :goto_6
    add-int/lit8 p1, p1, 0x1

    .line 967
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result p2

    const/4 v0, -0x1

    if-ne v0, p2, :cond_12

    return v0

    :cond_12
    if-eq p2, p3, :cond_15

    goto :goto_6

    .line 975
    :cond_15
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method
