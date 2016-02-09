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
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@0
    .prologue
    .line 494
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMAxisTraverser;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    #@3
    return-void
.end method


# virtual methods
.method protected abstract axisHasBeenProcessed(I)Z
.end method

.method protected getNextIndexed(III)I
    .locals 5
    .param p1, "axisRoot"    # I
    .param p2, "nextPotential"    # I
    .param p3, "expandedTypeID"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 553
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@3
    iget-object v3, v3, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@5
    invoke-virtual {v3, p3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    #@8
    move-result v2

    #@9
    .line 554
    .local v2, "nsIndex":I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@b
    iget-object v3, v3, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@d
    invoke-virtual {v3, p3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalNameID(I)I

    #@10
    move-result v0

    #@11
    .line 558
    .local v0, "lnIndex":I
    :goto_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@13
    invoke-virtual {v3, v2, v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->findElementFromIndex(III)I

    #@16
    move-result v1

    #@17
    .line 560
    .local v1, "next":I
    const/4 v3, -0x2

    #@18
    if-eq v3, v1, :cond_1

    #@1a
    .line 562
    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->isAfterAxis(II)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 563
    return v4

    #@21
    .line 566
    :cond_0
    return v1

    #@22
    .line 568
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->axisHasBeenProcessed(I)Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_2

    #@28
    .line 574
    return v4

    #@29
    .line 571
    :cond_2
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2b
    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->nextNode()Z

    #@2e
    goto :goto_0
.end method

.method protected abstract isAfterAxis(II)Z
.end method

.method protected final isIndexed(I)Z
    .locals 3
    .param p1, "expandedTypeID"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 509
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@4
    iget-boolean v2, v2, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_indexing:Z

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 511
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@a
    iget-object v2, v2, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@c
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    #@f
    move-result v2

    #@10
    .line 510
    if-ne v0, v2, :cond_0

    #@12
    .line 509
    :goto_0
    return v0

    #@13
    :cond_0
    move v0, v1

    #@14
    .line 510
    goto :goto_0

    #@15
    :cond_1
    move v0, v1

    #@16
    .line 509
    goto :goto_0
.end method
