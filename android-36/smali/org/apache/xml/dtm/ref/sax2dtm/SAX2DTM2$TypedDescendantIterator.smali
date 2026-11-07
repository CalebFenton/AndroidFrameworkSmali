.class public final Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;
.super Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedDescendantIterator"
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

    .line 1649
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V

    .line 1650
    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public greylist next()I
    .registers 8

    .line 1660
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return v1

    .line 1665
    :cond_6
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1668
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->_nodeType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_27

    :cond_d
    add-int/2addr v2, v4

    .line 1675
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v5

    if-eq v1, v5, :cond_24

    .line 1677
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v6, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v6

    if-ge v6, v0, :cond_21

    if-eq v0, v2, :cond_21

    goto :goto_24

    :cond_21
    if-ne v5, v3, :cond_d

    goto :goto_68

    .line 1678
    :cond_24
    :goto_24
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    return v1

    :cond_27
    const/16 v3, 0xe

    if-nez v0, :cond_46

    :cond_2b
    add-int/2addr v2, v4

    .line 1692
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v0

    if-ne v1, v0, :cond_37

    .line 1695
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    return v1

    :cond_37
    if-lt v0, v3, :cond_2b

    .line 1698
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget-object v5, v5, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v0, v5, v0

    .line 1699
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v0

    if-ne v0, v4, :cond_2b

    goto :goto_68

    :cond_46
    add-int/2addr v2, v4

    .line 1706
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v5

    if-eq v1, v5, :cond_75

    .line 1708
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v6, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v6

    if-ge v6, v0, :cond_5a

    if-eq v0, v2, :cond_5a

    goto :goto_75

    :cond_5a
    if-lt v5, v3, :cond_46

    .line 1713
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget-object v6, v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v5, v6, v5

    .line 1714
    invoke-virtual {v5}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v5

    if-ne v5, v4, :cond_46

    .line 1717
    :goto_68
    iput v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1718
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    .line 1709
    :cond_75
    :goto_75
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    return v1
.end method
