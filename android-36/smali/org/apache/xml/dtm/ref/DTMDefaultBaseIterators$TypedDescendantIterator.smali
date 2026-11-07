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
.field private final greylist _nodeType:I

.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .registers 3
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

    .line 1935
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 1936
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public greylist next()I
    .registers 5

    .line 1949
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return v1

    .line 1953
    :cond_6
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 1958
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v2

    if-eq v1, v2, :cond_34

    .line 1960
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->isDescendant(I)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_34

    .line 1965
    :cond_19
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->_nodeType:I

    if-eq v2, v3, :cond_27

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v2

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->_nodeType:I

    if-ne v2, v3, :cond_8

    .line 1967
    :cond_27
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1968
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    .line 1961
    :cond_34
    :goto_34
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    return v1
.end method
