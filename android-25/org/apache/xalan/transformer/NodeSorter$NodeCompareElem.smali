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
.field m_key1Value:Ljava/lang/Object;

.field m_key2Value:Ljava/lang/Object;

.field m_node:I

.field maxkey:I

.field final synthetic this$0:Lorg/apache/xalan/transformer/NodeSorter;


# direct methods
.method constructor <init>(Lorg/apache/xalan/transformer/NodeSorter;I)V
    .locals 12
    .param p1, "this$0"    # Lorg/apache/xalan/transformer/NodeSorter;
    .param p2, "node"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    .line 491
    iput-object p1, p0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->this$0:Lorg/apache/xalan/transformer/NodeSorter;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 471
    const/4 v8, 0x2

    #@7
    iput v8, p0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->maxkey:I

    #@9
    .line 493
    iput p2, p0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    #@b
    .line 495
    iget-object v8, p1, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    #@d
    invoke-virtual {v8}, Ljava/util/Vector;->isEmpty()Z

    #@10
    move-result v8

    #@11
    if-nez v8, :cond_1

    #@13
    .line 497
    iget-object v8, p1, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    #@15
    const/4 v9, 0x0

    #@16
    invoke-virtual {v8, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Lorg/apache/xalan/transformer/NodeSortKey;

    #@1c
    .line 498
    .local v1, "k1":Lorg/apache/xalan/transformer/NodeSortKey;
    iget-object v8, v1, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    #@1e
    iget-object v9, p1, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    #@20
    .line 499
    iget-object v10, v1, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    #@22
    .line 498
    invoke-virtual {v8, v9, p2, v10}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    #@25
    move-result-object v6

    #@26
    .line 503
    .local v6, "r":Lorg/apache/xpath/objects/XObject;
    iget-boolean v8, v1, Lorg/apache/xalan/transformer/NodeSortKey;->m_treatAsNumbers:Z

    #@28
    if-eqz v8, :cond_2

    #@2a
    .line 505
    invoke-virtual {v6}, Lorg/apache/xpath/objects/XObject;->num()D

    #@2d
    move-result-wide v2

    #@2e
    .line 508
    .local v2, "d":D
    new-instance v8, Ljava/lang/Double;

    #@30
    invoke-direct {v8, v2, v3}, Ljava/lang/Double;-><init>(D)V

    #@33
    iput-object v8, p0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    #@35
    .line 515
    .end local v2    # "d":D
    :goto_0
    invoke-virtual {v6}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@38
    move-result v8

    #@39
    const/4 v9, 0x4

    #@3a
    if-ne v8, v9, :cond_0

    #@3c
    .line 518
    check-cast v6, Lorg/apache/xpath/objects/XNodeSet;

    #@3e
    .end local v6    # "r":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v6}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    #@41
    move-result-object v5

    #@42
    .line 519
    .local v5, "ni":Lorg/apache/xml/dtm/DTMIterator;
    invoke-interface {v5}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentNode()I

    #@45
    move-result v0

    #@46
    .line 520
    .local v0, "current":I
    const/4 v8, -0x1

    #@47
    if-ne v8, v0, :cond_0

    #@49
    .line 521
    invoke-interface {v5}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@4c
    move-result v0

    #@4d
    .line 529
    .end local v0    # "current":I
    .end local v5    # "ni":Lorg/apache/xml/dtm/DTMIterator;
    :cond_0
    iget-object v8, p1, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    #@4f
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    #@52
    move-result v8

    #@53
    if-le v8, v11, :cond_1

    #@55
    .line 531
    iget-object v8, p1, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    #@57
    invoke-virtual {v8, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5a
    move-result-object v4

    #@5b
    check-cast v4, Lorg/apache/xalan/transformer/NodeSortKey;

    #@5d
    .line 533
    .local v4, "k2":Lorg/apache/xalan/transformer/NodeSortKey;
    iget-object v8, v4, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    #@5f
    iget-object v9, p1, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    #@61
    .line 534
    iget-object v10, v4, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    #@63
    .line 533
    invoke-virtual {v8, v9, p2, v10}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    #@66
    move-result-object v7

    #@67
    .line 536
    .local v7, "r2":Lorg/apache/xpath/objects/XObject;
    iget-boolean v8, v4, Lorg/apache/xalan/transformer/NodeSortKey;->m_treatAsNumbers:Z

    #@69
    if-eqz v8, :cond_3

    #@6b
    .line 537
    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->num()D

    #@6e
    move-result-wide v2

    #@6f
    .line 538
    .restart local v2    # "d":D
    new-instance v8, Ljava/lang/Double;

    #@71
    invoke-direct {v8, v2, v3}, Ljava/lang/Double;-><init>(D)V

    #@74
    iput-object v8, p0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    #@76
    .line 491
    .end local v1    # "k1":Lorg/apache/xalan/transformer/NodeSortKey;
    .end local v2    # "d":D
    .end local v4    # "k2":Lorg/apache/xalan/transformer/NodeSortKey;
    .end local v7    # "r2":Lorg/apache/xpath/objects/XObject;
    :cond_1
    :goto_1
    return-void

    #@77
    .line 512
    .restart local v1    # "k1":Lorg/apache/xalan/transformer/NodeSortKey;
    .restart local v6    # "r":Lorg/apache/xpath/objects/XObject;
    :cond_2
    iget-object v8, v1, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    #@79
    invoke-virtual {v6}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@7c
    move-result-object v9

    #@7d
    invoke-virtual {v8, v9}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    #@80
    move-result-object v8

    #@81
    iput-object v8, p0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    #@83
    goto :goto_0

    #@84
    .line 540
    .end local v6    # "r":Lorg/apache/xpath/objects/XObject;
    .restart local v4    # "k2":Lorg/apache/xalan/transformer/NodeSortKey;
    .restart local v7    # "r2":Lorg/apache/xpath/objects/XObject;
    :cond_3
    iget-object v8, v4, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    #@86
    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@89
    move-result-object v9

    #@8a
    invoke-virtual {v8, v9}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    #@8d
    move-result-object v8

    #@8e
    iput-object v8, p0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    #@90
    goto :goto_1
.end method
