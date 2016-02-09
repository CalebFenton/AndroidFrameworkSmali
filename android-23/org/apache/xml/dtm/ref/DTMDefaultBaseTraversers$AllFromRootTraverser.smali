.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllFromRootTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@0
    .prologue
    .line 1467
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;)V

    #@6
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    #@3
    return-void
.end method


# virtual methods
.method public first(I)I
    .locals 1
    .param p1, "context"    # I

    #@0
    .prologue
    .line 1479
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getDocumentRoot(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public first(II)I
    .locals 2
    .param p1, "context"    # I
    .param p2, "expandedTypeID"    # I

    #@0
    .prologue
    .line 1492
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@4
    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getDocumentRoot(I)I

    #@7
    move-result v1

    #@8
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getExpandedTypeID(I)I

    #@b
    move-result v0

    #@c
    if-ne v0, p2, :cond_0

    #@e
    .end local p1    # "context":I
    :goto_0
    return p1

    #@f
    .line 1493
    .restart local p1    # "context":I
    :cond_0
    invoke-virtual {p0, p1, p1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->next(III)I

    #@12
    move-result p1

    #@13
    goto :goto_0
.end method

.method public next(II)I
    .locals 4
    .param p1, "context"    # I
    .param p2, "current"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 1507
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@3
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    #@6
    move-result v0

    #@7
    .line 1509
    .local v0, "subtreeRootIdent":I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@9
    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    #@c
    move-result v2

    #@d
    add-int/lit8 p2, v2, 0x1

    #@f
    .line 1512
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@11
    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_type(I)S

    #@14
    move-result v1

    #@15
    .line 1513
    .local v1, "type":I
    if-ne v1, v3, :cond_0

    #@17
    .line 1514
    return v3

    #@18
    .line 1516
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@1a
    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    #@1d
    move-result v2

    #@1e
    return v2
.end method

.method public next(III)I
    .locals 4
    .param p1, "context"    # I
    .param p2, "current"    # I
    .param p3, "expandedTypeID"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 1533
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@3
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    #@6
    move-result v1

    #@7
    .line 1535
    .local v1, "subtreeRootIdent":I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@9
    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    #@c
    move-result v2

    #@d
    add-int/lit8 p2, v2, 0x1

    #@f
    .line 1537
    :goto_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@11
    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_exptype(I)I

    #@14
    move-result v0

    #@15
    .line 1539
    .local v0, "exptype":I
    if-ne v0, v3, :cond_0

    #@17
    .line 1540
    return v3

    #@18
    .line 1542
    :cond_0
    if-eq v0, p3, :cond_1

    #@1a
    .line 1535
    add-int/lit8 p2, p2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1545
    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@1f
    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    #@22
    move-result v2

    #@23
    return v2
.end method
