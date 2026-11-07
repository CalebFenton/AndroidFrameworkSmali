.class public Lorg/apache/xalan/transformer/NodeSorter;
.super Ljava/lang/Object;
.source "NodeSorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;
    }
.end annotation


# instance fields
.field greylist m_execContext:Lorg/apache/xpath/XPathContext;

.field greylist m_keys:Ljava/util/Vector;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xpath/XPathContext;)V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    return-void
.end method


# virtual methods
.method greylist compare(Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;ILorg/apache/xpath/XPathContext;)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/transformer/NodeSortKey;

    .line 134
    iget-boolean v1, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_treatAsNumbers:Z

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_9f

    if-nez p3, :cond_22

    .line 140
    iget-object v1, p1, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 141
    iget-object v1, p2, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    goto :goto_57

    :cond_22
    if-ne p3, v4, :cond_35

    .line 145
    iget-object v1, p1, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 146
    iget-object v1, p2, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    goto :goto_57

    .line 159
    :cond_35
    iget-object v1, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    iget-object v5, p0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    iget v6, p1, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    iget-object v7, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    invoke-virtual {v1, v5, v6, v7}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    .line 161
    iget-object v5, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    iget-object v6, p0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    iget v7, p2, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    iget-object v8, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v5

    .line 163
    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v6

    .line 168
    invoke-virtual {v5}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v8

    move-wide v5, v6

    move-wide v7, v8

    :goto_57
    cmpl-double v1, v5, v7

    if-nez v1, :cond_6b

    add-int/lit8 v1, p3, 0x1

    .line 172
    iget-object v9, p0, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v1, v9, :cond_6b

    .line 174
    invoke-virtual {p0, p1, p2, v1, p4}, Lorg/apache/xalan/transformer/NodeSorter;->compare(Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;ILorg/apache/xpath/XPathContext;)I

    move-result v0

    goto/16 :goto_10c

    .line 179
    :cond_6b
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    const-wide/16 v9, 0x0

    if-eqz v1, :cond_7e

    .line 181
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_7b

    move-wide v5, v9

    goto :goto_88

    :cond_7b
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    goto :goto_88

    .line 186
    :cond_7e
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_87

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    goto :goto_88

    :cond_87
    sub-double/2addr v5, v7

    :goto_88
    cmpg-double v1, v5, v9

    if-gez v1, :cond_96

    .line 193
    iget-boolean v0, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_descending:Z

    if-eqz v0, :cond_93

    :cond_90
    move v2, v4

    goto/16 :goto_10b

    :cond_93
    :goto_93
    move v2, v3

    goto/16 :goto_10b

    :cond_96
    cmpl-double v1, v5, v9

    if-lez v1, :cond_10b

    .line 194
    iget-boolean v0, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_descending:Z

    if-eqz v0, :cond_90

    goto :goto_93

    :cond_9f
    if-nez p3, :cond_aa

    .line 203
    iget-object v1, p1, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    check-cast v1, Ljava/text/CollationKey;

    .line 204
    iget-object v5, p2, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    check-cast v5, Ljava/text/CollationKey;

    goto :goto_e1

    :cond_aa
    if-ne p3, v4, :cond_b5

    .line 208
    iget-object v1, p1, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    check-cast v1, Ljava/text/CollationKey;

    .line 209
    iget-object v5, p2, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    check-cast v5, Ljava/text/CollationKey;

    goto :goto_e1

    .line 222
    :cond_b5
    iget-object v1, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    iget-object v5, p0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    iget v6, p1, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    iget-object v7, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    invoke-virtual {v1, v5, v6, v7}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    .line 224
    iget-object v5, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    iget-object v6, p0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    iget v7, p2, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    iget-object v8, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v5

    .line 227
    iget-object v6, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v1

    .line 228
    iget-object v6, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    invoke-virtual {v5}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v5

    .line 233
    :goto_e1
    invoke-virtual {v1, v5}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result v6

    .line 236
    iget-boolean v7, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_caseOrderUpper:Z

    if-eqz v7, :cond_104

    .line 238
    invoke-virtual {v1}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-virtual {v5}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 241
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_104

    if-nez v6, :cond_102

    goto :goto_105

    :cond_102
    neg-int v2, v6

    goto :goto_105

    :cond_104
    move v2, v6

    .line 250
    :goto_105
    iget-boolean v0, v0, Lorg/apache/xalan/transformer/NodeSortKey;->m_descending:Z

    if-eqz v0, :cond_10b

    neg-int v0, v2

    goto :goto_10c

    :cond_10b
    :goto_10b
    move v0, v2

    :goto_10c
    if-nez v0, :cond_11b

    add-int/2addr p3, v4

    .line 258
    iget-object v1, p0, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p3, v1, :cond_11b

    .line 260
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/xalan/transformer/NodeSorter;->compare(Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;ILorg/apache/xpath/XPathContext;)I

    move-result v0

    :cond_11b
    if-nez v0, :cond_12f

    .line 271
    iget p0, p1, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    invoke-virtual {p4, p0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    .line 272
    iget p1, p1, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    iget p2, p2, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    invoke-interface {p0, p1, p2}, Lorg/apache/xml/dtm/DTM;->isNodeAfter(II)Z

    move-result p0

    if-eqz p0, :cond_12e

    return v3

    :cond_12e
    return v4

    :cond_12f
    return v0
.end method

.method greylist mergesort(Ljava/util/Vector;Ljava/util/Vector;IILorg/apache/xpath/XPathContext;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    sub-int v0, p4, p3

    if-lez v0, :cond_82

    add-int v0, p4, p3

    .line 301
    div-int/lit8 v5, v0, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p5

    .line 303
    invoke-virtual/range {v1 .. v6}, Lorg/apache/xalan/transformer/NodeSorter;->mergesort(Ljava/util/Vector;Ljava/util/Vector;IILorg/apache/xpath/XPathContext;)V

    add-int/lit8 p3, v5, 0x1

    .line 304
    invoke-virtual/range {p0 .. p5}, Lorg/apache/xalan/transformer/NodeSorter;->mergesort(Ljava/util/Vector;Ljava/util/Vector;IILorg/apache/xpath/XPathContext;)V

    move v0, v5

    :goto_16
    if-lt v0, v4, :cond_30

    .line 313
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_26

    .line 314
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_2d

    .line 316
    :cond_26
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :goto_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    :cond_30
    :goto_30
    if-gt p3, p4, :cond_4f

    add-int v0, p4, v5

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, p3

    .line 325
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_45

    .line 326
    invoke-virtual {p1, p3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_4c

    .line 328
    :cond_45
    invoke-virtual {p1, p3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :goto_4c
    add-int/lit8 p3, p3, 0x1

    goto :goto_30

    :cond_4f
    move v0, p4

    move p3, v4

    :goto_51
    if-gt p3, p4, :cond_82

    if-ne v4, v0, :cond_57

    const/4 v1, -0x1

    goto :goto_68

    .line 342
    :cond_57
    invoke-virtual {p2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;

    .line 343
    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;

    const/4 v3, 0x0

    .line 342
    invoke-virtual {p0, v1, v2, v3, p5}, Lorg/apache/xalan/transformer/NodeSorter;->compare(Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;ILorg/apache/xpath/XPathContext;)I

    move-result v1

    :goto_68
    if-gez v1, :cond_74

    .line 349
    invoke-virtual {p2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7f

    :cond_74
    if-lez v1, :cond_7f

    .line 357
    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, -0x1

    :cond_7f
    :goto_7f
    add-int/lit8 p3, p3, 0x1

    goto :goto_51

    :cond_82
    return-void
.end method

.method public greylist sort(Lorg/apache/xml/dtm/DTMIterator;Ljava/util/Vector;Lorg/apache/xpath/XPathContext;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 77
    iput-object p2, p0, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    .line 80
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    move-result p2

    .line 88
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v6, 0x0

    move v0, v6

    :goto_d
    if-ge v0, p2, :cond_1e

    .line 92
    new-instance v2, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;

    invoke-interface {p1, v0}, Lorg/apache/xml/dtm/DTMIterator;->item(I)I

    move-result v3

    invoke-direct {v2, p0, v3}, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;-><init>(Lorg/apache/xalan/transformer/NodeSorter;I)V

    .line 94
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 97
    :cond_1e
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    add-int/lit8 v4, p2, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p3

    .line 99
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/NodeSorter;->mergesort(Ljava/util/Vector;Ljava/util/Vector;IILorg/apache/xpath/XPathContext;)V

    move p0, v6

    :goto_2c
    if-ge p0, p2, :cond_3c

    .line 104
    invoke-virtual {v1, p0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;

    iget p3, p3, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    invoke-interface {p1, p3, p0}, Lorg/apache/xml/dtm/DTMIterator;->setItem(II)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_2c

    .line 106
    :cond_3c
    invoke-interface {p1, v6}, Lorg/apache/xml/dtm/DTMIterator;->setCurrentPos(I)V

    return-void
.end method
