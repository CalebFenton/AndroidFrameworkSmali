.class public final Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChildrenIterator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@0
    .prologue
    .line 71
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

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
    .line 111
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;->_currentNode:I

    #@3
    if-eq v1, v2, :cond_0

    #@5
    .line 112
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;->_currentNode:I

    #@7
    .line 113
    .local v0, "node":I
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@9
    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    #@c
    move-result v1

    #@d
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;->_currentNode:I

    #@f
    .line 114
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@11
    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@14
    move-result v1

    #@15
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;->returnNode(I)I

    #@18
    move-result v1

    #@19
    return v1

    #@1a
    .line 117
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
    .line 89
    if-nez p1, :cond_0

    #@3
    .line 90
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@5
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getDocument()I

    #@8
    move-result p1

    #@9
    .line 91
    :cond_0
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;->_isRestartable:Z

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 93
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;->_startNode:I

    #@f
    .line 94
    if-ne p1, v0, :cond_1

    #@11
    :goto_0
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;->_currentNode:I

    #@13
    .line 97
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 95
    :cond_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@1a
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@1c
    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@1f
    move-result v1

    #@20
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    #@23
    move-result v0

    #@24
    goto :goto_0

    #@25
    .line 100
    :cond_2
    return-object p0
.end method
