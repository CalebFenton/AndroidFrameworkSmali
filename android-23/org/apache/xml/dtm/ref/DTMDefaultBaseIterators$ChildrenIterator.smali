.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChildrenIterator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@0
    .prologue
    .line 287
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    return-void
.end method


# virtual methods
.method public next()I
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 327
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->_currentNode:I

    #@3
    if-eq v1, v2, :cond_0

    #@5
    .line 328
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->_currentNode:I

    #@7
    .line 329
    .local v0, "node":I
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@9
    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_nextsib(I)I

    #@c
    move-result v1

    #@d
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->_currentNode:I

    #@f
    .line 330
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@11
    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    #@14
    move-result v1

    #@15
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->returnNode(I)I

    #@18
    move-result v1

    #@19
    return v1

    #@1a
    .line 333
    .end local v0    # "node":I
    :cond_0
    return v2
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 2
    .param p1, "node"    # I

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 305
    if-nez p1, :cond_0

    #@3
    .line 306
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@5
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    #@8
    move-result p1

    #@9
    .line 307
    :cond_0
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->_isRestartable:Z

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 309
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->_startNode:I

    #@f
    .line 310
    if-ne p1, v0, :cond_1

    #@11
    :goto_0
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->_currentNode:I

    #@13
    .line 313
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 311
    :cond_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@1a
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@1c
    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeIdentity(I)I

    #@1f
    move-result v1

    #@20
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_firstch(I)I

    #@23
    move-result v0

    #@24
    goto :goto_0

    #@25
    .line 316
    :cond_2
    return-object p0
.end method
