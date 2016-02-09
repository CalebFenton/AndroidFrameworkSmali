.class public Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrecedingSiblingIterator"
.end annotation


# instance fields
.field protected _startNodeID:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@0
    .prologue
    .line 1081
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    return-void
.end method


# virtual methods
.method public isReverse()Z
    .locals 1

    #@0
    .prologue
    .line 1096
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public next()I
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 1153
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->_currentNode:I

    #@3
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->_startNodeID:I

    #@5
    if-eq v1, v2, :cond_0

    #@7
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->_currentNode:I

    #@9
    if-ne v1, v3, :cond_1

    #@b
    .line 1155
    :cond_0
    return v3

    #@c
    .line 1159
    :cond_1
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->_currentNode:I

    #@e
    .line 1160
    .local v0, "node":I
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@10
    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_nextsib(I)I

    #@13
    move-result v1

    #@14
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->_currentNode:I

    #@16
    .line 1162
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@18
    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    #@1b
    move-result v1

    #@1c
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->returnNode(I)I

    #@1f
    move-result v1

    #@20
    return v1
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 4
    .param p1, "node"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 1110
    if-nez p1, :cond_0

    #@3
    .line 1111
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@5
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    #@8
    move-result p1

    #@9
    .line 1112
    :cond_0
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->_isRestartable:Z

    #@b
    if-eqz v1, :cond_5

    #@d
    .line 1114
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->_startNode:I

    #@f
    .line 1115
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@11
    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeIdentity(I)I

    #@14
    move-result p1

    #@15
    .end local p1    # "node":I
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->_startNodeID:I

    #@17
    .line 1117
    .restart local p1    # "node":I
    if-ne p1, v3, :cond_1

    #@19
    .line 1119
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->_currentNode:I

    #@1b
    .line 1120
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@1e
    move-result-object v1

    #@1f
    return-object v1

    #@20
    .line 1123
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@22
    iget-object v1, v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@24
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@26
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_exptype(I)I

    #@29
    move-result v2

    #@2a
    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    #@2d
    move-result v0

    #@2e
    .line 1124
    .local v0, "type":I
    const/4 v1, 0x2

    #@2f
    if-eq v1, v0, :cond_2

    #@31
    .line 1125
    const/16 v1, 0xd

    #@33
    if-ne v1, v0, :cond_3

    #@35
    .line 1127
    :cond_2
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->_currentNode:I

    #@37
    .line 1139
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@3a
    move-result-object v1

    #@3b
    return-object v1

    #@3c
    .line 1132
    :cond_3
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@3e
    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_parent(I)I

    #@41
    move-result v1

    #@42
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->_currentNode:I

    #@44
    .line 1133
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->_currentNode:I

    #@46
    if-eq v3, v1, :cond_4

    #@48
    .line 1134
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@4a
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->_currentNode:I

    #@4c
    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_firstch(I)I

    #@4f
    move-result v1

    #@50
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->_currentNode:I

    #@52
    goto :goto_0

    #@53
    .line 1136
    :cond_4
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->_currentNode:I

    #@55
    goto :goto_0

    #@56
    .line 1142
    .end local v0    # "type":I
    :cond_5
    return-object p0
.end method
