.class public Lorg/apache/xalan/transformer/KeyTable;
.super Ljava/lang/Object;
.source "KeyTable.java"


# instance fields
.field private greylist m_docKey:I

.field private greylist m_keyDeclarations:Ljava/util/Vector;

.field private greylist m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

.field private greylist m_refsTable:Ljava/util/Hashtable;


# direct methods
.method public constructor greylist <init>(ILorg/apache/xml/utils/PrefixResolver;Lorg/apache/xml/utils/QName;Ljava/util/Vector;Lorg/apache/xpath/XPathContext;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 63
    iput-object p2, p0, Lorg/apache/xalan/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    .line 99
    iput p1, p0, Lorg/apache/xalan/transformer/KeyTable;->m_docKey:I

    .line 100
    iput-object p4, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyDeclarations:Ljava/util/Vector;

    .line 101
    new-instance p2, Lorg/apache/xalan/transformer/KeyIterator;

    invoke-direct {p2, p3, p4}, Lorg/apache/xalan/transformer/KeyIterator;-><init>(Lorg/apache/xml/utils/QName;Ljava/util/Vector;)V

    .line 103
    new-instance p3, Lorg/apache/xpath/objects/XNodeSet;

    invoke-direct {p3, p2}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    iput-object p3, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    const/4 p2, 0x0

    .line 104
    invoke-virtual {p3, p2}, Lorg/apache/xpath/axes/NodeSequence;->allowDetachToRelease(Z)V

    .line 105
    iget-object p0, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {p0, p1, p5}, Lorg/apache/xpath/axes/NodeSequence;->setRoot(ILjava/lang/Object;)V

    return-void
.end method

.method private greylist addValueInRefsTable(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/XMLString;I)V
    .registers 5

    .line 241
    iget-object v0, p0, Lorg/apache/xalan/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/objects/XNodeSet;

    if-nez v0, :cond_1c

    .line 244
    new-instance v0, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object p1

    invoke-direct {v0, p3, p1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    .line 245
    invoke-virtual {v0}, Lorg/apache/xpath/axes/NodeSequence;->nextNode()I

    .line 246
    iget-object p0, p0, Lorg/apache/xalan/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    invoke-virtual {p0, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 254
    :cond_1c
    invoke-virtual {v0}, Lorg/apache/xpath/axes/NodeSequence;->getCurrentNode()I

    move-result p0

    if-eq p0, p3, :cond_2c

    .line 255
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->mutableNodeset()Lorg/apache/xpath/NodeSetDTM;

    move-result-object p0

    invoke-virtual {p0, p3}, Lorg/apache/xpath/NodeSetDTM;->addNode(I)V

    .line 256
    invoke-virtual {v0}, Lorg/apache/xpath/axes/NodeSequence;->nextNode()I

    :cond_2c
    return-void
.end method

.method private greylist getKeyDeclarations()Ljava/util/Vector;
    .registers 7

    .line 161
    iget-object v0, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyDeclarations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 162
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_2a

    .line 167
    iget-object v3, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyDeclarations:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/templates/KeyDeclaration;

    .line 171
    invoke-virtual {v3}, Lorg/apache/xalan/templates/KeyDeclaration;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/KeyTable;->getKeyTableName()Lorg/apache/xml/utils/QName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 172
    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_2a
    return-object v1
.end method

.method private greylist getRefsTable()Ljava/util/Hashtable;
    .registers 11

    .line 185
    iget-object v0, p0, Lorg/apache/xalan/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    if-nez v0, :cond_75

    .line 187
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x59

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    .line 189
    iget-object v0, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/axes/NodeSequence;->getContainedIter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/transformer/KeyIterator;

    .line 190
    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    .line 192
    invoke-direct {p0}, Lorg/apache/xalan/transformer/KeyTable;->getKeyDeclarations()Ljava/util/Vector;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    .line 196
    iget-object v4, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v4}, Lorg/apache/xpath/axes/NodeSequence;->reset()V

    .line 197
    :cond_26
    iget-object v4, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v4}, Lorg/apache/xpath/axes/NodeSequence;->nextNode()I

    move-result v4

    const/4 v5, -0x1

    if-eq v5, v4, :cond_75

    const/4 v6, 0x0

    :goto_30
    if-ge v6, v3, :cond_26

    .line 203
    :try_start_32
    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xalan/templates/KeyDeclaration;

    .line 205
    invoke-virtual {v7}, Lorg/apache/xalan/templates/KeyDeclaration;->getUse()Lorg/apache/xpath/XPath;

    move-result-object v7

    .line 207
    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v8

    .line 205
    invoke-virtual {v7, v1, v4, v8}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v7

    .line 209
    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_53

    .line 210
    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v7

    .line 211
    invoke-direct {p0, v1, v7, v4}, Lorg/apache/xalan/transformer/KeyTable;->addValueInRefsTable(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/XMLString;I)V

    goto :goto_6b

    .line 213
    :cond_53
    check-cast v7, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v7}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v7

    .line 216
    :goto_59
    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v8

    if-eq v5, v8, :cond_6b

    .line 217
    invoke-virtual {v1, v8}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v9

    .line 219
    invoke-interface {v9, v8}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v8

    .line 220
    invoke-direct {p0, v1, v8, v4}, Lorg/apache/xalan/transformer/KeyTable;->addValueInRefsTable(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/XMLString;I)V
    :try_end_6a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_32 .. :try_end_6a} :catch_6e

    goto :goto_59

    :cond_6b
    :goto_6b
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    :catch_6e
    move-exception p0

    .line 225
    new-instance v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v0, p0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 229
    :cond_75
    iget-object p0, p0, Lorg/apache/xalan/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    return-object p0
.end method


# virtual methods
.method public greylist getDocKey()I
    .registers 1

    .line 72
    iget p0, p0, Lorg/apache/xalan/transformer/KeyTable;->m_docKey:I

    return p0
.end method

.method greylist getKeyIterator()Lorg/apache/xalan/transformer/KeyIterator;
    .registers 1

    .line 83
    iget-object p0, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getContainedIter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/transformer/KeyIterator;

    return-object p0
.end method

.method public greylist getKeyTableName()Lorg/apache/xml/utils/QName;
    .registers 1

    .line 154
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/KeyTable;->getKeyIterator()Lorg/apache/xalan/transformer/KeyIterator;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/KeyIterator;->getName()Lorg/apache/xml/utils/QName;

    move-result-object p0

    return-object p0
.end method

.method public greylist getNodeSetDTMByKey(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;)Lorg/apache/xpath/objects/XNodeSet;
    .registers 3

    .line 118
    invoke-direct {p0}, Lorg/apache/xalan/transformer/KeyTable;->getRefsTable()Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xpath/objects/XNodeSet;

    if-eqz p1, :cond_14

    .line 124
    :try_start_c
    invoke-virtual {p1}, Lorg/apache/xpath/axes/NodeSequence;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p1

    check-cast p1, Lorg/apache/xpath/objects/XNodeSet;
    :try_end_12
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_c .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    const/4 p1, 0x0

    :cond_14
    :goto_14
    if-nez p1, :cond_2f

    .line 134
    iget-object p1, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {p1}, Lorg/apache/xpath/axes/NodeSequence;->getContainedIter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p1

    check-cast p1, Lorg/apache/xalan/transformer/KeyIterator;

    .line 135
    invoke-virtual {p1}, Lorg/apache/xpath/axes/LocPathIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object p1

    .line 136
    new-instance p2, Lorg/apache/xalan/transformer/KeyTable$1;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lorg/apache/xalan/transformer/KeyTable$1;-><init>(Lorg/apache/xalan/transformer/KeyTable;Lorg/apache/xml/dtm/DTMManager;)V

    .line 141
    invoke-virtual {p2}, Lorg/apache/xpath/axes/NodeSequence;->reset()V

    move-object p1, p2

    :cond_2f
    return-object p1
.end method
