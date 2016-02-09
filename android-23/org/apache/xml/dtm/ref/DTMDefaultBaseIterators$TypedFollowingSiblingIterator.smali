.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedFollowingSiblingIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 920
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    .line 922
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->_nodeType:I

    #@7
    .line 920
    return-void
.end method


# virtual methods
.method public next()I
    .locals 6

    #@0
    .prologue
    const/16 v5, 0xe

    #@2
    const/4 v3, -0x1

    #@3
    .line 932
    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->_currentNode:I

    #@5
    if-ne v4, v3, :cond_0

    #@7
    .line 933
    return v3

    #@8
    .line 936
    :cond_0
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->_currentNode:I

    #@a
    .line 938
    .local v1, "node":I
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->_nodeType:I

    #@c
    .line 940
    .local v2, "nodeType":I
    if-lt v2, v5, :cond_3

    #@e
    .line 942
    :cond_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@10
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_nextsib(I)I

    #@13
    move-result v1

    #@14
    .line 943
    if-eq v1, v3, :cond_2

    #@16
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@18
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_exptype(I)I

    #@1b
    move-result v4

    #@1c
    if-ne v4, v2, :cond_1

    #@1e
    .line 957
    :cond_2
    :goto_0
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->_currentNode:I

    #@20
    .line 959
    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->_currentNode:I

    #@22
    if-ne v4, v3, :cond_5

    #@24
    :goto_1
    return v3

    #@25
    .line 945
    :cond_3
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@27
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_nextsib(I)I

    #@2a
    move-result v1

    #@2b
    if-eq v1, v3, :cond_2

    #@2d
    .line 946
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2f
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_exptype(I)I

    #@32
    move-result v0

    #@33
    .line 947
    .local v0, "eType":I
    if-ge v0, v5, :cond_4

    #@35
    .line 948
    if-ne v0, v2, :cond_3

    #@37
    goto :goto_0

    #@38
    .line 951
    :cond_4
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@3a
    iget-object v4, v4, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@3c
    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    #@3f
    move-result v4

    #@40
    if-ne v4, v2, :cond_3

    #@42
    goto :goto_0

    #@43
    .line 961
    .end local v0    # "eType":I
    :cond_5
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@45
    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->_currentNode:I

    #@47
    invoke-virtual {v3, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    #@4a
    move-result v3

    #@4b
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->returnNode(I)I

    #@4e
    move-result v3

    #@4f
    goto :goto_1
.end method
