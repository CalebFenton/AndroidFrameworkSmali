.class public final Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedSingletonIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
    .param p2, "nodeType"    # I

    #@0
    .prologue
    .line 1737
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    .line 1739
    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;->_nodeType:I

    #@7
    .line 1737
    return-void
.end method


# virtual methods
.method public next()I
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 1750
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;->_currentNode:I

    #@3
    .line 1751
    .local v0, "result":I
    if-ne v0, v3, :cond_0

    #@5
    .line 1752
    return v3

    #@6
    .line 1754
    :cond_0
    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;->_currentNode:I

    #@8
    .line 1756
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;->_nodeType:I

    #@a
    const/16 v2, 0xe

    #@c
    if-lt v1, v2, :cond_1

    #@e
    .line 1757
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@10
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@12
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@15
    move-result v2

    #@16
    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@19
    move-result v1

    #@1a
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;->_nodeType:I

    #@1c
    if-ne v1, v2, :cond_2

    #@1e
    .line 1758
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;->returnNode(I)I

    #@21
    move-result v1

    #@22
    return v1

    #@23
    .line 1762
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@25
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@27
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@2a
    move-result v2

    #@2b
    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    #@2e
    move-result v1

    #@2f
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;->_nodeType:I

    #@31
    if-ne v1, v2, :cond_2

    #@33
    .line 1763
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;->returnNode(I)I

    #@36
    move-result v1

    #@37
    return v1

    #@38
    .line 1767
    :cond_2
    return v3
.end method
