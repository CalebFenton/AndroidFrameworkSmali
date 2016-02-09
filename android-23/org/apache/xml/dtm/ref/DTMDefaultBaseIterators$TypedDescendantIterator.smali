.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedDescendantIterator"
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
    .line 1934
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    .line 1936
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->_nodeType:I

    #@7
    .line 1934
    return-void
.end method


# virtual methods
.method public next()I
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 1949
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->_startNode:I

    #@3
    if-ne v2, v4, :cond_0

    #@5
    .line 1950
    return v4

    #@6
    .line 1953
    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->_currentNode:I

    #@8
    .line 1957
    .local v0, "node":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@a
    .line 1958
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@c
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_type(I)S

    #@f
    move-result v1

    #@10
    .line 1960
    .local v1, "type":I
    if-eq v4, v1, :cond_3

    #@12
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->isDescendant(I)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_3

    #@18
    .line 1965
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->_nodeType:I

    #@1a
    if-eq v1, v2, :cond_2

    #@1c
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@1e
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_exptype(I)I

    #@21
    move-result v2

    #@22
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->_nodeType:I

    #@24
    if-ne v2, v3, :cond_1

    #@26
    .line 1967
    :cond_2
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->_currentNode:I

    #@28
    .line 1968
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2a
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    #@2d
    move-result v2

    #@2e
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->returnNode(I)I

    #@31
    move-result v2

    #@32
    return v2

    #@33
    .line 1961
    :cond_3
    iput v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->_currentNode:I

    #@35
    .line 1962
    return v4
.end method
