.class public final Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ParentIterator"
.end annotation


# instance fields
.field private _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@0
    .prologue
    .line 126
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    .line 130
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_nodeType:I

    #@8
    .line 126
    return-void
.end method


# virtual methods
.method public next()I
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 186
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_currentNode:I

    #@3
    .line 187
    .local v0, "result":I
    if-ne v0, v3, :cond_0

    #@5
    .line 188
    return v3

    #@6
    .line 191
    :cond_0
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_nodeType:I

    #@8
    if-ne v1, v3, :cond_1

    #@a
    .line 192
    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_currentNode:I

    #@c
    .line 193
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@e
    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@11
    move-result v1

    #@12
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->returnNode(I)I

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 195
    :cond_1
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_nodeType:I

    #@19
    const/16 v2, 0xe

    #@1b
    if-lt v1, v2, :cond_2

    #@1d
    .line 196
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_nodeType:I

    #@1f
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@21
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@24
    move-result v2

    #@25
    if-ne v1, v2, :cond_3

    #@27
    .line 197
    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_currentNode:I

    #@29
    .line 198
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@2b
    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@2e
    move-result v1

    #@2f
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->returnNode(I)I

    #@32
    move-result v1

    #@33
    return v1

    #@34
    .line 202
    :cond_2
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_nodeType:I

    #@36
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@38
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    #@3b
    move-result v2

    #@3c
    if-ne v1, v2, :cond_3

    #@3e
    .line 203
    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_currentNode:I

    #@40
    .line 204
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@42
    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@45
    move-result v1

    #@46
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->returnNode(I)I

    #@49
    move-result v1

    #@4a
    return v1

    #@4b
    .line 208
    :cond_3
    return v3
.end method

.method public setNodeType(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    .line 173
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_nodeType:I

    #@2
    .line 175
    return-object p0
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 2
    .param p1, "node"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 143
    if-nez p1, :cond_0

    #@3
    .line 144
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@5
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getDocument()I

    #@8
    move-result p1

    #@9
    .line 145
    :cond_0
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_isRestartable:Z

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 147
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_startNode:I

    #@f
    .line 149
    if-eq p1, v1, :cond_1

    #@11
    .line 150
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@13
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@15
    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@18
    move-result v1

    #@19
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_currentNode:I

    #@1f
    .line 154
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@22
    move-result-object v0

    #@23
    return-object v0

    #@24
    .line 152
    :cond_1
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_currentNode:I

    #@26
    goto :goto_0

    #@27
    .line 157
    :cond_2
    return-object p0
.end method
