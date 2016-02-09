.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AttributeIterator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@0
    .prologue
    .line 968
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    return-void
.end method


# virtual methods
.method public next()I
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 1005
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->_currentNode:I

    #@3
    .line 1007
    .local v0, "node":I
    if-eq v0, v1, :cond_0

    #@5
    .line 1008
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@7
    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getNextAttributeIdentity(I)I

    #@a
    move-result v1

    #@b
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->_currentNode:I

    #@d
    .line 1009
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@f
    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    #@12
    move-result v1

    #@13
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->returnNode(I)I

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 1012
    :cond_0
    return v1
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 2
    .param p1, "node"    # I

    #@0
    .prologue
    .line 984
    if-nez p1, :cond_0

    #@2
    .line 985
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@4
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    #@7
    move-result p1

    #@8
    .line 986
    :cond_0
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->_isRestartable:Z

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 988
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->_startNode:I

    #@e
    .line 989
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@10
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@12
    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeIdentity(I)I

    #@15
    move-result v1

    #@16
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getFirstAttributeIdentity(I)I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->_currentNode:I

    #@1c
    .line 991
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@1f
    move-result-object v0

    #@20
    return-object v0

    #@21
    .line 994
    :cond_1
    return-object p0
.end method
