.class public Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SingletonIterator"
.end annotation


# instance fields
.field private greylist _isConstant:Z

.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 2044
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;IZ)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 2055
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;IZ)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2066
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 2067
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 2068
    iput-boolean p3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_isConstant:Z

    return-void
.end method


# virtual methods
.method public greylist next()I
    .registers 3

    .line 2137
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    const/4 v1, -0x1

    .line 2139
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 2141
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0
.end method

.method public greylist reset()Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 3

    .line 2109
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_isConstant:Z

    if-eqz v0, :cond_d

    .line 2111
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 2113
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    .line 2117
    :cond_d
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    const/4 v1, 0x1

    .line 2119
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    .line 2121
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 2123
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    return-object p0
.end method

.method public greylist setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 3

    if-nez p1, :cond_8

    .line 2083
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    .line 2084
    :cond_8
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_isConstant:Z

    if-eqz v0, :cond_15

    .line 2086
    iget p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 2088
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    .line 2090
    :cond_15
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_21

    .line 2092
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 2094
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_21
    return-object p0
.end method
