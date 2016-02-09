.class public Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypedRootIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
    .param p2, "nodeType"    # I

    #@0
    .prologue
    .line 754
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2
    .line 756
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    .line 757
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->_nodeType:I

    #@7
    .line 754
    return-void
.end method


# virtual methods
.method public next()I
    .locals 7

    #@0
    .prologue
    const/16 v6, 0xe

    #@2
    const/4 v5, -0x1

    #@3
    .line 767
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->_startNode:I

    #@5
    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->_currentNode:I

    #@7
    if-ne v3, v4, :cond_0

    #@9
    .line 768
    return v5

    #@a
    .line 770
    :cond_0
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->_nodeType:I

    #@c
    .line 771
    .local v2, "nodeType":I
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->_startNode:I

    #@e
    .line 772
    .local v1, "node":I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@10
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getExpandedTypeID(I)I

    #@13
    move-result v0

    #@14
    .line 774
    .local v0, "expType":I
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->_currentNode:I

    #@16
    .line 776
    if-lt v2, v6, :cond_1

    #@18
    .line 777
    if-ne v2, v0, :cond_3

    #@1a
    .line 778
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->returnNode(I)I

    #@1d
    move-result v3

    #@1e
    return v3

    #@1f
    .line 781
    :cond_1
    if-ge v0, v6, :cond_2

    #@21
    .line 782
    if-ne v0, v2, :cond_3

    #@23
    .line 783
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->returnNode(I)I

    #@26
    move-result v3

    #@27
    return v3

    #@28
    .line 786
    :cond_2
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2a
    iget-object v3, v3, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@2c
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    #@2f
    move-result v3

    #@30
    if-ne v3, v2, :cond_3

    #@32
    .line 787
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->returnNode(I)I

    #@35
    move-result v3

    #@36
    return v3

    #@37
    .line 792
    :cond_3
    return v5
.end method
