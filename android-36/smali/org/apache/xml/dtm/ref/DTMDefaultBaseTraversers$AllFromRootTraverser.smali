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

    .line 1467
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V

    return-void
.end method

.method synthetic constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public greylist first(I)I
    .registers 2

    .line 1479
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocumentRoot(I)I

    move-result p0

    return p0
.end method

.method public greylist first(II)I
    .registers 5

    .line 1492
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocumentRoot(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v0

    if-ne v0, p2, :cond_d

    return p1

    .line 1493
    :cond_d
    invoke-virtual {p0, p1, p1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->next(III)I

    move-result p0

    return p0
.end method

.method public greylist next(II)I
    .registers 4

    .line 1507
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    .line 1509
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 1512
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_17

    return v0

    .line 1516
    :cond_17
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method

.method public greylist next(III)I
    .registers 5

    .line 1533
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    .line 1535
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    :goto_b
    add-int/lit8 p1, p1, 0x1

    .line 1537
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_17

    return v0

    :cond_17
    if-eq p2, p3, :cond_1a

    goto :goto_b

    .line 1545
    :cond_1a
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method
