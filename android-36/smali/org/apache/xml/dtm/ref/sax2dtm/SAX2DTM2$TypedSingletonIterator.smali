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
.field private final greylist _nodeType:I

.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;I)V
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

    .line 1738
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 1739
    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public greylist next()I
    .registers 5

    .line 1750
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return v1

    .line 1754
    :cond_6
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1756
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;->_nodeType:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_21

    .line 1757
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v2

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;->_nodeType:I

    if-ne v2, v3, :cond_34

    .line 1758
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    .line 1762
    :cond_21
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v2

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;->_nodeType:I

    if-ne v2, v3, :cond_34

    .line 1763
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    :cond_34
    return v1
.end method
