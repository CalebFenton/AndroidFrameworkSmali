.class Lorg/apache/xalan/transformer/NodeSortKey;
.super Ljava/lang/Object;
.source "NodeSortKey.java"


# instance fields
.field greylist m_caseOrderUpper:Z

.field greylist m_col:Ljava/text/Collator;

.field greylist m_descending:Z

.field greylist m_locale:Ljava/util/Locale;

.field greylist m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

.field greylist m_processor:Lorg/apache/xalan/transformer/TransformerImpl;

.field greylist m_selectPat:Lorg/apache/xpath/XPath;

.field greylist m_treatAsNumbers:Z


# direct methods
.method constructor greylist <init>(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xpath/XPath;ZZLjava/lang/String;ZLorg/apache/xml/utils/PrefixResolver;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_processor:Lorg/apache/xalan/transformer/TransformerImpl;

    .line 82
    iput-object p7, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    .line 83
    iput-object p2, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    .line 84
    iput-boolean p3, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_treatAsNumbers:Z

    .line 85
    iput-boolean p4, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_descending:Z

    .line 86
    iput-boolean p6, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_caseOrderUpper:Z

    if-eqz p5, :cond_27

    if-nez p3, :cond_27

    .line 100
    new-instance p1, Ljava/util/Locale;

    invoke-virtual {p5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 101
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_locale:Ljava/util/Locale;

    goto :goto_2d

    .line 116
    :cond_27
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_locale:Ljava/util/Locale;

    .line 119
    :goto_2d
    iget-object p1, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_locale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    if-nez p1, :cond_4d

    .line 123
    iget-object p1, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_processor:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object p1

    const-string p2, "WG_CANNOT_FIND_COLLATOR"

    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p2, p3}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    :cond_4d
    return-void
.end method
