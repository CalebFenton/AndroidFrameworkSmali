.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NamespaceAttributeIterator"
.end annotation


# instance fields
.field private final _nsType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
    .param p2, "nsType"    # I

    #@0
    .prologue
    .line 812
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2
    .line 815
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    .line 817
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;->_nsType:I

    #@7
    .line 812
    return-void
.end method


# virtual methods
.method public next()I
    .locals 4

    #@0
    .prologue
    .line 852
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;->_currentNode:I

    #@2
    .line 854
    .local v0, "node":I
    const/4 v1, -0x1

    #@3
    if-eq v1, v0, :cond_0

    #@5
    .line 855
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@7
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;->_startNode:I

    #@9
    const/4 v3, 0x0

    #@a
    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getNextNamespaceNode(IIZ)I

    #@d
    move-result v1

    #@e
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;->_currentNode:I

    #@10
    .line 857
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;->returnNode(I)I

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
    const/4 v1, 0x0

    #@1
    .line 831
    if-nez p1, :cond_0

    #@3
    .line 832
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@5
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    #@8
    move-result p1

    #@9
    .line 833
    :cond_0
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;->_isRestartable:Z

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 835
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;->_startNode:I

    #@f
    .line 836
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@11
    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getFirstNamespaceNode(IZ)I

    #@14
    move-result v0

    #@15
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;->_currentNode:I

    #@17
    .line 838
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    .line 841
    :cond_1
    return-object p0
.end method
