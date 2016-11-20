.class Lorg/apache/xalan/transformer/NodeSortKey;
.super Ljava/lang/Object;
.source "NodeSortKey.java"


# instance fields
.field m_caseOrderUpper:Z

.field m_col:Ljava/text/Collator;

.field m_descending:Z

.field m_locale:Ljava/util/Locale;

.field m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

.field m_processor:Lorg/apache/xalan/transformer/TransformerImpl;

.field m_selectPat:Lorg/apache/xpath/XPath;

.field m_treatAsNumbers:Z


# direct methods
.method constructor <init>(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xpath/XPath;ZZLjava/lang/String;ZLorg/apache/xml/utils/PrefixResolver;)V
    .locals 5
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p2, "selectPat"    # Lorg/apache/xpath/XPath;
    .param p3, "treatAsNumbers"    # Z
    .param p4, "descending"    # Z
    .param p5, "langValue"    # Ljava/lang/String;
    .param p6, "caseOrderUpper"    # Z
    .param p7, "namespaceContext"    # Lorg/apache/xml/utils/PrefixResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 81
    iput-object p1, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_processor:Lorg/apache/xalan/transformer/TransformerImpl;

    #@6
    .line 82
    iput-object p7, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    #@8
    .line 83
    iput-object p2, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    #@a
    .line 84
    iput-boolean p3, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_treatAsNumbers:Z

    #@c
    .line 85
    iput-boolean p4, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_descending:Z

    #@e
    .line 86
    iput-boolean p6, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_caseOrderUpper:Z

    #@10
    .line 88
    if-eqz p5, :cond_2

    #@12
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_treatAsNumbers:Z

    #@14
    if-nez v0, :cond_2

    #@16
    .line 100
    new-instance v0, Ljava/util/Locale;

    #@18
    invoke-virtual {p5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 101
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    .line 100
    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@27
    iput-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_locale:Ljava/util/Locale;

    #@29
    .line 107
    iget-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_locale:Ljava/util/Locale;

    #@2b
    if-nez v0, :cond_0

    #@2d
    .line 111
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_locale:Ljava/util/Locale;

    #@33
    .line 119
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_locale:Ljava/util/Locale;

    #@35
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    #@3b
    .line 121
    iget-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    #@3d
    if-nez v0, :cond_1

    #@3f
    .line 123
    iget-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_processor:Lorg/apache/xalan/transformer/TransformerImpl;

    #@41
    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    #@44
    move-result-object v0

    #@45
    const-string/jumbo v1, "WG_CANNOT_FIND_COLLATOR"

    #@48
    .line 124
    const/4 v2, 0x1

    #@49
    new-array v2, v2, [Ljava/lang/Object;

    #@4b
    const/4 v3, 0x0

    #@4c
    aput-object p5, v2, v3

    #@4e
    .line 123
    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    #@51
    .line 126
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    #@54
    move-result-object v0

    #@55
    iput-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    #@57
    .line 78
    :cond_1
    return-void

    #@58
    .line 116
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@5b
    move-result-object v0

    #@5c
    iput-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_locale:Ljava/util/Locale;

    #@5e
    goto :goto_0
.end method
