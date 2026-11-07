.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;
.super Lorg/apache/xml/dtm/DTMAxisTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildTraverser"
.end annotation


# instance fields
.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 330
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMAxisTraverser;-><init>()V

    return-void
.end method

.method synthetic constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public greylist first(I)I
    .registers 2

    .line 410
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getFirstChild(I)I

    move-result p0

    return p0
.end method

.method public greylist first(II)I
    .registers 4

    .line 431
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 433
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->getNextIndexed(III)I

    move-result p1

    .line 436
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method

.method protected greylist getNextIndexed(III)I
    .registers 8

    .line 349
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0, p3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    move-result v0

    .line 350
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v1, v1, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v1, p3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalNameID(I)I

    move-result p3

    .line 354
    :cond_10
    :goto_10
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, v0, p3, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->findElementFromIndex(III)I

    move-result v1

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v2, v1, :cond_38

    .line 358
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object p2, p2, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p2, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p2

    if-ne p2, p1, :cond_25

    return v1

    :cond_25
    if-ge p2, p1, :cond_28

    return v3

    .line 376
    :cond_28
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v2, v2, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v2, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p2

    if-ge p2, p1, :cond_33

    return v3

    :cond_33
    if-gt p2, p1, :cond_28

    add-int/lit8 p2, v1, 0x1

    goto :goto_10

    .line 387
    :cond_38
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    .line 389
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v1, v1, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    if-eq v1, v2, :cond_10

    return v3
.end method

.method public greylist next(II)I
    .registers 3

    .line 462
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextSibling(I)I

    move-result p0

    return p0
.end method

.method public greylist next(III)I
    .registers 4

    .line 478
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result p1

    :goto_a
    const/4 p2, -0x1

    if-eq p2, p1, :cond_25

    .line 482
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object p2, p2, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p2, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p2

    if-ne p2, p3, :cond_1e

    .line 483
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    .line 480
    :cond_1e
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result p1

    goto :goto_a

    :cond_25
    return p2
.end method
