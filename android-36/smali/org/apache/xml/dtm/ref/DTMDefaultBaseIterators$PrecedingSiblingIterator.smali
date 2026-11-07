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
.field protected greylist _startNodeID:I

.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1081
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    return-void
.end method


# virtual methods
.method public greylist isReverse()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist next()I
    .registers 4

    .line 1153
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->_startNodeID:I

    const/4 v2, -0x1

    if-eq v0, v1, :cond_1d

    if-ne v0, v2, :cond_a

    goto :goto_1d

    .line 1160
    :cond_a
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1162
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    :cond_1d
    :goto_1d
    return v2
.end method

.method public greylist setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 5

    if-nez p1, :cond_8

    .line 1111
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    .line 1112
    :cond_8
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_50

    .line 1114
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    .line 1115
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->_startNodeID:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_20

    .line 1119
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1120
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    .line 1123
    :cond_20
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget-object v2, v1, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v1

    const/4 v2, 0x2

    if-eq v2, v1, :cond_4a

    const/16 v2, 0xd

    if-ne v2, v1, :cond_34

    goto :goto_4a

    .line 1132
    :cond_34
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    if-eq v0, v1, :cond_47

    .line 1134
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result p1

    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    goto :goto_4c

    .line 1136
    :cond_47
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    goto :goto_4c

    .line 1127
    :cond_4a
    :goto_4a
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1139
    :goto_4c
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_50
    return-object p0
.end method
