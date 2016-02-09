.class public Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NamespaceIterator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@0
    .prologue
    .line 590
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2
    .line 593
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    .line 590
    return-void
.end method


# virtual methods
.method public next()I
    .locals 4

    #@0
    .prologue
    .line 628
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->_currentNode:I

    #@2
    .line 630
    .local v0, "node":I
    const/4 v1, -0x1

    #@3
    if-eq v1, v0, :cond_0

    #@5
    .line 631
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@7
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->_startNode:I

    #@9
    const/4 v3, 0x1

    #@a
    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getNextNamespaceNode(IIZ)I

    #@d
    move-result v1

    #@e
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->_currentNode:I

    #@10
    .line 633
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->returnNode(I)I

    #@13
    move-result v1

    #@14
    return v1
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 2
    .param p1, "node"    # I

    #@0
    .prologue
    .line 607
    if-nez p1, :cond_0

    #@2
    .line 608
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@4
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    #@7
    move-result p1

    #@8
    .line 609
    :cond_0
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->_isRestartable:Z

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 611
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->_startNode:I

    #@e
    .line 612
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@10
    const/4 v1, 0x1

    #@11
    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getFirstNamespaceNode(IZ)I

    #@14
    move-result v0

    #@15
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->_currentNode:I

    #@17
    .line 614
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    .line 617
    :cond_1
    return-object p0
.end method
