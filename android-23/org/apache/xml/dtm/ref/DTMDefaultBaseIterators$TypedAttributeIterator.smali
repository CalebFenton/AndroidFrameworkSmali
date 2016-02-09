.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedAttributeIterator"
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
    .line 1031
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    .line 1033
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;->_nodeType:I

    #@7
    .line 1031
    return-void
.end method


# virtual methods
.method public next()I
    .locals 2

    #@0
    .prologue
    .line 1068
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;->_currentNode:I

    #@2
    .line 1072
    .local v0, "node":I
    const/4 v1, -0x1

    #@3
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;->_currentNode:I

    #@5
    .line 1074
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;->returnNode(I)I

    #@8
    move-result v1

    #@9
    return v1
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 2
    .param p1, "node"    # I

    #@0
    .prologue
    .line 1048
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;->_isRestartable:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1050
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;->_startNode:I

    #@6
    .line 1052
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@8
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;->_nodeType:I

    #@a
    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getTypedAttribute(II)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;->_currentNode:I

    #@10
    .line 1054
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@13
    move-result-object v0

    #@14
    return-object v0

    #@15
    .line 1057
    :cond_0
    return-object p0
.end method
