.class abstract Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;
.super Lorg/apache/xml/dtm/DTMAxisTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "IndexedDTMAxisTraverser"
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

    .line 494
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMAxisTraverser;-><init>()V

    return-void
.end method

.method synthetic constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method protected abstract greylist axisHasBeenProcessed(I)Z
.end method

.method protected greylist getNextIndexed(III)I
    .registers 8

    .line 553
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0, p3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    move-result v0

    .line 554
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v1, v1, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v1, p3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalNameID(I)I

    move-result p3

    .line 558
    :goto_10
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, v0, p3, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->findElementFromIndex(III)I

    move-result v1

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v2, v1, :cond_22

    .line 562
    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->isAfterAxis(II)Z

    move-result p0

    if-eqz p0, :cond_21

    return v3

    :cond_21
    return v1

    .line 568
    :cond_22
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->axisHasBeenProcessed(I)Z

    move-result v1

    if-eqz v1, :cond_29

    return v3

    .line 571
    :cond_29
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    goto :goto_10
.end method

.method protected abstract greylist isAfterAxis(II)Z
.end method

.method protected final greylist isIndexed(I)Z
    .registers 3

    .line 509
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_indexing:Z

    if-eqz v0, :cond_10

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    .line 511
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result p0

    const/4 p1, 0x1

    if-ne p1, p0, :cond_10

    return p1

    :cond_10
    const/4 p0, 0x0

    return p0
.end method
