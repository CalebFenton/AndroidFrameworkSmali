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
.field private _isConstant:Z

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .locals 2
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@0
    .prologue
    .line 2044
    const/high16 v0, -0x80000000

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;IZ)V

    #@6
    .line 2042
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
    .param p2, "node"    # I

    #@0
    .prologue
    .line 2055
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;IZ)V

    #@4
    .line 2053
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;IZ)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
    .param p2, "node"    # I
    .param p3, "constant"    # Z

    #@0
    .prologue
    .line 2065
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    .line 2067
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_startNode:I

    #@7
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_currentNode:I

    #@9
    .line 2068
    iput-boolean p3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_isConstant:Z

    #@b
    .line 2065
    return-void
.end method


# virtual methods
.method public next()I
    .locals 2

    #@0
    .prologue
    .line 2137
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_currentNode:I

    #@2
    .line 2139
    .local v0, "result":I
    const/4 v1, -0x1

    #@3
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_currentNode:I

    #@5
    .line 2141
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->returnNode(I)I

    #@8
    move-result v1

    #@9
    return v1
.end method

.method public reset()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 2

    #@0
    .prologue
    .line 2109
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_isConstant:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2111
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_startNode:I

    #@6
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_currentNode:I

    #@8
    .line 2113
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 2117
    :cond_0
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_isRestartable:Z

    #@f
    .line 2119
    .local v0, "temp":Z
    const/4 v1, 0x1

    #@10
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_isRestartable:Z

    #@12
    .line 2121
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_startNode:I

    #@14
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    #@17
    .line 2123
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_isRestartable:Z

    #@19
    .line 2126
    return-object p0
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1
    .param p1, "node"    # I

    #@0
    .prologue
    .line 2082
    if-nez p1, :cond_0

    #@2
    .line 2083
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@4
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    #@7
    move-result p1

    #@8
    .line 2084
    :cond_0
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_isConstant:Z

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 2086
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_startNode:I

    #@e
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_currentNode:I

    #@10
    .line 2088
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@13
    move-result-object v0

    #@14
    return-object v0

    #@15
    .line 2090
    :cond_1
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_isRestartable:Z

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 2092
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_startNode:I

    #@1b
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->_currentNode:I

    #@1d
    .line 2094
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@20
    move-result-object v0

    #@21
    return-object v0

    #@22
    .line 2097
    :cond_2
    return-object p0
.end method
