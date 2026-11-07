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
.field private final greylist _nsType:I

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

    .line 813
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    .line 815
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 817
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;->_nsType:I

    return-void
.end method


# virtual methods
.method public greylist next()I
    .registers 5

    .line 852
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_10

    .line 855
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNamespaceNode(IIZ)I

    move-result v1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 857
    :cond_10
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0
.end method

.method public greylist setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 4

    if-nez p1, :cond_8

    .line 832
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    .line 833
    :cond_8
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_1b

    .line 835
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    .line 836
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getFirstNamespaceNode(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 838
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_1b
    return-object p0
.end method
