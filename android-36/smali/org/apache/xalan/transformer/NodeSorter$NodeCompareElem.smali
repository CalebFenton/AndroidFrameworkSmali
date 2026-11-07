.class Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;
.super Ljava/lang/Object;
.source "NodeSorter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xalan/transformer/NodeSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NodeCompareElem"
.end annotation


# instance fields
.field greylist m_key1Value:Ljava/lang/Object;

.field greylist m_key2Value:Ljava/lang/Object;

.field greylist m_node:I

.field greylist maxkey:I


# direct methods
.method constructor greylist <init>(Lorg/apache/xalan/transformer/NodeSorter;I)V
    .registers 7
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 471
    iput v0, p0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->maxkey:I

    .line 493
    iput p2, p0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    .line 495
    iget-object v0, p1, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 497
    iget-object v0, p1, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/transformer/NodeSortKey;

    .line 498
    iget-object v1, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    iget-object v2, p1, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    iget-object v3, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    invoke-virtual {v1, v2, p2, v3}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    .line 503
    iget-boolean v2, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_treatAsNumbers:Z

    if-eqz v2, :cond_33

    .line 505
    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v2

    .line 508
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    goto :goto_3f

    .line 512
    :cond_33
    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    .line 515
    :goto_3f
    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_56

    .line 518
    check-cast v1, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v1}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    .line 519
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentNode()I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_56

    .line 521
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    .line 529
    :cond_56
    iget-object v0, p1, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_8d

    .line 531
    iget-object v0, p1, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/transformer/NodeSortKey;

    .line 533
    iget-object v1, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    iget-object p1, p1, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    iget-object v2, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    invoke-virtual {v1, p1, p2, v2}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object p1

    .line 536
    iget-boolean p2, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_treatAsNumbers:Z

    if-eqz p2, :cond_81

    .line 537
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide p1

    .line 538
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    return-void

    .line 540
    :cond_81
    iget-object p2, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    :cond_8d
    return-void
.end method
