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

    .line 1604
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V

    return-void
.end method

.method synthetic constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public greylist first(I)I
    .registers 2

    .line 1640
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocumentRoot(I)I

    move-result p0

    return p0
.end method

.method public greylist first(II)I
    .registers 5

    .line 1659
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->isIndexed(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p1, 0x0

    .line 1662
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;->getFirstPotential(I)I

    move-result v0

    .line 1664
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->getNextIndexed(III)I

    move-result p0

    invoke-virtual {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    .line 1667
    :cond_16
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;->first(I)I

    move-result p1

    .line 1668
    invoke-virtual {p0, p1, p1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->next(III)I

    move-result p0

    return p0
.end method

.method protected greylist getFirstPotential(I)I
    .registers 2

    .line 0
    return p1
.end method

.method protected greylist getSubtreeRoot(I)I
    .registers 2

    .line 1628
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p0

    return p0
.end method
