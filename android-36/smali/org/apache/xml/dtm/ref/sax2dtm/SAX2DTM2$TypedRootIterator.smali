.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypedRootIterator"
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

    .line 360
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    .line 361
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 362
    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public greylist next()I
    .registers 6

    .line 372
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    const/4 v2, -0x1

    if-ne v0, v1, :cond_8

    return v2

    .line 376
    :cond_8
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v1

    .line 378
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 380
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_nodeType:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_21

    if-ne v3, v1, :cond_3d

    .line 382
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    :cond_21
    if-ge v1, v4, :cond_2a

    if-ne v1, v3, :cond_3d

    .line 388
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    .line 392
    :cond_2a
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget-object v3, v3, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v1

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_nodeType:I

    if-ne v1, v3, :cond_3d

    .line 393
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    :cond_3d
    return v2
.end method
