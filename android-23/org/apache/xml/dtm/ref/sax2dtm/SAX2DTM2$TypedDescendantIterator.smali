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
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
    .param p2, "nodeType"    # I

    #@0
    .prologue
    .line 1648
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V

    #@5
    .line 1650
    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->_nodeType:I

    #@7
    .line 1648
    return-void
.end method


# virtual methods
.method public next()I
    .locals 8

    #@0
    .prologue
    const/16 v7, 0xe

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v5, -0x1

    #@4
    .line 1660
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->_startNode:I

    #@6
    .line 1661
    .local v3, "startNode":I
    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->_startNode:I

    #@8
    if-ne v4, v5, :cond_0

    #@a
    .line 1662
    return v5

    #@b
    .line 1665
    :cond_0
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->_currentNode:I

    #@d
    .line 1668
    .local v1, "node":I
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->_nodeType:I

    #@f
    .line 1670
    .local v2, "nodeType":I
    if-eq v2, v6, :cond_5

    #@11
    .line 1674
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@13
    .line 1675
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@15
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@18
    move-result v0

    #@19
    .line 1677
    .local v0, "expType":I
    if-eq v5, v0, :cond_2

    #@1b
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@1d
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    #@20
    move-result v4

    #@21
    if-ge v4, v3, :cond_3

    #@23
    if-eq v3, v1, :cond_3

    #@25
    .line 1678
    :cond_2
    iput v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->_currentNode:I

    #@27
    .line 1679
    return v5

    #@28
    .line 1682
    :cond_3
    if-ne v0, v2, :cond_1

    #@2a
    .line 1717
    :cond_4
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->_currentNode:I

    #@2c
    .line 1718
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@2e
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@31
    move-result v4

    #@32
    invoke-virtual {p0, v4}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->returnNode(I)I

    #@35
    move-result v4

    #@36
    return v4

    #@37
    .line 1687
    .end local v0    # "expType":I
    :cond_5
    if-nez v3, :cond_9

    #@39
    .line 1691
    :cond_6
    :goto_0
    add-int/lit8 v1, v1, 0x1

    #@3b
    .line 1692
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@3d
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@40
    move-result v0

    #@41
    .line 1694
    .restart local v0    # "expType":I
    if-ne v5, v0, :cond_7

    #@43
    .line 1695
    iput v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->_currentNode:I

    #@45
    .line 1696
    return v5

    #@46
    .line 1698
    :cond_7
    if-lt v0, v7, :cond_6

    #@48
    .line 1699
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@4a
    iget-object v4, v4, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@4c
    aget-object v4, v4, v0

    #@4e
    invoke-virtual {v4}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    #@51
    move-result v4

    #@52
    if-eq v4, v6, :cond_4

    #@54
    goto :goto_0

    #@55
    .line 1713
    :cond_8
    if-lt v0, v7, :cond_9

    #@57
    .line 1714
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@59
    iget-object v4, v4, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@5b
    aget-object v4, v4, v0

    #@5d
    invoke-virtual {v4}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    #@60
    move-result v4

    #@61
    if-eq v4, v6, :cond_4

    #@63
    .line 1705
    .end local v0    # "expType":I
    :cond_9
    add-int/lit8 v1, v1, 0x1

    #@65
    .line 1706
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@67
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@6a
    move-result v0

    #@6b
    .line 1708
    .restart local v0    # "expType":I
    if-eq v5, v0, :cond_a

    #@6d
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@6f
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    #@72
    move-result v4

    #@73
    if-ge v4, v3, :cond_8

    #@75
    if-eq v3, v1, :cond_8

    #@77
    .line 1709
    :cond_a
    iput v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->_currentNode:I

    #@79
    .line 1710
    return v5
.end method
