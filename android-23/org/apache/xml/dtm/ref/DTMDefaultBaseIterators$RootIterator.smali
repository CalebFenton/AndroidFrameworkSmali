.class public Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RootIterator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@0
    .prologue
    .line 695
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2
    .line 698
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    .line 695
    return-void
.end method


# virtual methods
.method public next()I
    .locals 2

    #@0
    .prologue
    .line 730
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;->_startNode:I

    #@2
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;->_currentNode:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 731
    const/4 v0, -0x1

    #@7
    return v0

    #@8
    .line 733
    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;->_startNode:I

    #@a
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;->_currentNode:I

    #@c
    .line 735
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;->_startNode:I

    #@e
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;->returnNode(I)I

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1
    .param p1, "node"    # I

    #@0
    .prologue
    .line 712
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;->_isRestartable:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 714
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@6
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocumentRoot(I)I

    #@9
    move-result v0

    #@a
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;->_startNode:I

    #@c
    .line 715
    const/4 v0, -0x1

    #@d
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;->_currentNode:I

    #@f
    .line 717
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 720
    :cond_0
    return-object p0
.end method
