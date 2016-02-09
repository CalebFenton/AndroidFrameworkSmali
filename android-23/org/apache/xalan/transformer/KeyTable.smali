.class public Lorg/apache/xalan/transformer/KeyTable;
.super Ljava/lang/Object;
.source "KeyTable.java"


# instance fields
.field private m_docKey:I

.field private m_keyDeclarations:Ljava/util/Vector;

.field private m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

.field private m_refsTable:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(ILorg/apache/xml/utils/PrefixResolver;Lorg/apache/xml/utils/QName;Ljava/util/Vector;Lorg/apache/xpath/XPathContext;)V
    .locals 3
    .param p1, "doc"    # I
    .param p2, "nscontext"    # Lorg/apache/xml/utils/PrefixResolver;
    .param p3, "name"    # Lorg/apache/xml/utils/QName;
    .param p4, "keyDeclarations"    # Ljava/util/Vector;
    .param p5, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    const/4 v1, 0x0

    #@4
    iput-object v1, p0, Lorg/apache/xalan/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    #@6
    .line 99
    iput p1, p0, Lorg/apache/xalan/transformer/KeyTable;->m_docKey:I

    #@8
    .line 100
    iput-object p4, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyDeclarations:Ljava/util/Vector;

    #@a
    .line 101
    new-instance v0, Lorg/apache/xalan/transformer/KeyIterator;

    #@c
    invoke-direct {v0, p3, p4}, Lorg/apache/xalan/transformer/KeyIterator;-><init>(Lorg/apache/xml/utils/QName;Ljava/util/Vector;)V

    #@f
    .line 103
    .local v0, "ki":Lorg/apache/xalan/transformer/KeyIterator;
    new-instance v1, Lorg/apache/xpath/objects/XNodeSet;

    #@11
    invoke-direct {v1, v0}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    #@14
    iput-object v1, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    #@16
    .line 104
    iget-object v1, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    #@18
    const/4 v2, 0x0

    #@19
    invoke-virtual {v1, v2}, Lorg/apache/xpath/objects/XNodeSet;->allowDetachToRelease(Z)V

    #@1c
    .line 105
    iget-object v1, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    #@1e
    invoke-virtual {v1, p1, p5}, Lorg/apache/xpath/objects/XNodeSet;->setRoot(ILjava/lang/Object;)V

    #@21
    .line 97
    return-void
.end method

.method private addValueInRefsTable(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/XMLString;I)V
    .locals 2
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "ref"    # Lorg/apache/xml/utils/XMLString;
    .param p3, "node"    # I

    #@0
    .prologue
    .line 241
    iget-object v1, p0, Lorg/apache/xalan/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/xpath/objects/XNodeSet;

    #@8
    .line 242
    .local v0, "nodes":Lorg/apache/xpath/objects/XNodeSet;
    if-nez v0, :cond_1

    #@a
    .line 244
    new-instance v0, Lorg/apache/xpath/objects/XNodeSet;

    #@c
    .end local v0    # "nodes":Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, p3, v1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    #@13
    .line 245
    .restart local v0    # "nodes":Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    #@16
    .line 246
    iget-object v1, p0, Lorg/apache/xalan/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    #@18
    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 239
    :cond_0
    :goto_0
    return-void

    #@1c
    .line 254
    :cond_1
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->getCurrentNode()I

    #@1f
    move-result v1

    #@20
    if-eq v1, p3, :cond_0

    #@22
    .line 255
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->mutableNodeset()Lorg/apache/xpath/NodeSetDTM;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p3}, Lorg/apache/xpath/NodeSetDTM;->addNode(I)V

    #@29
    .line 256
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    #@2c
    goto :goto_0
.end method

.method private getKeyDeclarations()Ljava/util/Vector;
    .locals 6

    #@0
    .prologue
    .line 161
    iget-object v4, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyDeclarations:Ljava/util/Vector;

    #@2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    #@5
    move-result v3

    #@6
    .line 162
    .local v3, "nDeclarations":I
    new-instance v2, Ljava/util/Vector;

    #@8
    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    #@b
    .line 165
    .local v2, "keyDecls":Ljava/util/Vector;
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    #@e
    .line 167
    iget-object v4, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyDeclarations:Ljava/util/Vector;

    #@10
    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lorg/apache/xalan/templates/KeyDeclaration;

    #@16
    .line 171
    .local v1, "kd":Lorg/apache/xalan/templates/KeyDeclaration;
    invoke-virtual {v1}, Lorg/apache/xalan/templates/KeyDeclaration;->getName()Lorg/apache/xml/utils/QName;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/KeyTable;->getKeyTableName()Lorg/apache/xml/utils/QName;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_0

    #@24
    .line 172
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@27
    .line 165
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 176
    .end local v1    # "kd":Lorg/apache/xalan/templates/KeyDeclaration;
    :cond_1
    return-object v2
.end method

.method private getRefsTable()Ljava/util/Hashtable;
    .locals 15

    #@0
    .prologue
    .line 185
    iget-object v13, p0, Lorg/apache/xalan/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    #@2
    if-nez v13, :cond_3

    #@4
    .line 187
    new-instance v13, Ljava/util/Hashtable;

    #@6
    const/16 v14, 0x59

    #@8
    invoke-direct {v13, v14}, Ljava/util/Hashtable;-><init>(I)V

    #@b
    iput-object v13, p0, Lorg/apache/xalan/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    #@d
    .line 189
    iget-object v13, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    #@f
    invoke-virtual {v13}, Lorg/apache/xpath/objects/XNodeSet;->getContainedIter()Lorg/apache/xml/dtm/DTMIterator;

    #@12
    move-result-object v8

    #@13
    check-cast v8, Lorg/apache/xalan/transformer/KeyIterator;

    #@15
    .line 190
    .local v8, "ki":Lorg/apache/xalan/transformer/KeyIterator;
    invoke-virtual {v8}, Lorg/apache/xalan/transformer/KeyIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@18
    move-result-object v11

    #@19
    .line 192
    .local v11, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-direct {p0}, Lorg/apache/xalan/transformer/KeyTable;->getKeyDeclarations()Ljava/util/Vector;

    #@1c
    move-result-object v7

    #@1d
    .line 193
    .local v7, "keyDecls":Ljava/util/Vector;
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    #@20
    move-result v9

    #@21
    .line 196
    .local v9, "nKeyDecls":I
    iget-object v13, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    #@23
    invoke-virtual {v13}, Lorg/apache/xpath/objects/XNodeSet;->reset()V

    #@26
    .line 197
    :cond_0
    iget-object v13, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    #@28
    invoke-virtual {v13}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    #@2b
    move-result v0

    #@2c
    .local v0, "currentNode":I
    const/4 v13, -0x1

    #@2d
    if-eq v13, v0, :cond_3

    #@2f
    .line 201
    const/4 v5, 0x0

    #@30
    .local v5, "keyDeclIdx":I
    :goto_0
    if-ge v5, v9, :cond_0

    #@32
    .line 203
    :try_start_0
    invoke-virtual {v7, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@35
    move-result-object v6

    #@36
    check-cast v6, Lorg/apache/xalan/templates/KeyDeclaration;

    #@38
    .line 205
    .local v6, "keyDeclaration":Lorg/apache/xalan/templates/KeyDeclaration;
    invoke-virtual {v6}, Lorg/apache/xalan/templates/KeyDeclaration;->getUse()Lorg/apache/xpath/XPath;

    #@3b
    move-result-object v13

    #@3c
    .line 207
    invoke-virtual {v8}, Lorg/apache/xalan/transformer/KeyIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    #@3f
    move-result-object v14

    #@40
    .line 205
    invoke-virtual {v13, v11, v0, v14}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    #@43
    move-result-object v12

    #@44
    .line 209
    .local v12, "xuse":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v12}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@47
    move-result v13

    #@48
    const/4 v14, 0x4

    #@49
    if-eq v13, v14, :cond_2

    #@4b
    .line 210
    invoke-virtual {v12}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    #@4e
    move-result-object v3

    #@4f
    .line 211
    .local v3, "exprResult":Lorg/apache/xml/utils/XMLString;
    invoke-direct {p0, v11, v3, v0}, Lorg/apache/xalan/transformer/KeyTable;->addValueInRefsTable(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/XMLString;I)V

    #@52
    .line 201
    .end local v3    # "exprResult":Lorg/apache/xml/utils/XMLString;
    .end local v12    # "xuse":Lorg/apache/xpath/objects/XObject;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@54
    goto :goto_0

    #@55
    .line 213
    .restart local v12    # "xuse":Lorg/apache/xpath/objects/XObject;
    :cond_2
    check-cast v12, Lorg/apache/xpath/objects/XNodeSet;

    #@57
    .end local v12    # "xuse":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v12}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    #@5a
    move-result-object v4

    #@5b
    .line 216
    .local v4, "i":Lorg/apache/xml/dtm/DTMIterator;
    :goto_1
    invoke-interface {v4}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@5e
    move-result v1

    #@5f
    .local v1, "currentNodeInUseClause":I
    const/4 v13, -0x1

    #@60
    if-eq v13, v1, :cond_1

    #@62
    .line 217
    invoke-virtual {v11, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@65
    move-result-object v2

    #@66
    .line 219
    .local v2, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    #@69
    move-result-object v3

    #@6a
    .line 220
    .restart local v3    # "exprResult":Lorg/apache/xml/utils/XMLString;
    invoke-direct {p0, v11, v3, v0}, Lorg/apache/xalan/transformer/KeyTable;->addValueInRefsTable(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/XMLString;I)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@6d
    goto :goto_1

    #@6e
    .line 224
    .end local v1    # "currentNodeInUseClause":I
    .end local v2    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v3    # "exprResult":Lorg/apache/xml/utils/XMLString;
    .end local v4    # "i":Lorg/apache/xml/dtm/DTMIterator;
    .end local v6    # "keyDeclaration":Lorg/apache/xalan/templates/KeyDeclaration;
    :catch_0
    move-exception v10

    #@6f
    .line 225
    .local v10, "te":Ljavax/xml/transform/TransformerException;
    new-instance v13, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@71
    invoke-direct {v13, v10}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@74
    throw v13

    #@75
    .line 229
    .end local v0    # "currentNode":I
    .end local v5    # "keyDeclIdx":I
    .end local v7    # "keyDecls":Ljava/util/Vector;
    .end local v8    # "ki":Lorg/apache/xalan/transformer/KeyIterator;
    .end local v9    # "nKeyDecls":I
    .end local v10    # "te":Ljavax/xml/transform/TransformerException;
    .end local v11    # "xctxt":Lorg/apache/xpath/XPathContext;
    :cond_3
    iget-object v13, p0, Lorg/apache/xalan/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    #@77
    return-object v13
.end method


# virtual methods
.method public getDocKey()I
    .locals 1

    #@0
    .prologue
    .line 72
    iget v0, p0, Lorg/apache/xalan/transformer/KeyTable;->m_docKey:I

    #@2
    return v0
.end method

.method getKeyIterator()Lorg/apache/xalan/transformer/KeyIterator;
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    #@2
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->getContainedIter()Lorg/apache/xml/dtm/DTMIterator;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/xalan/transformer/KeyIterator;

    #@8
    return-object v0
.end method

.method public getKeyTableName()Lorg/apache/xml/utils/QName;
    .locals 1

    #@0
    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/KeyTable;->getKeyIterator()Lorg/apache/xalan/transformer/KeyIterator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lorg/apache/xalan/transformer/KeyIterator;->getName()Lorg/apache/xml/utils/QName;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getNodeSetDTMByKey(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;)Lorg/apache/xpath/objects/XNodeSet;
    .locals 5
    .param p1, "name"    # Lorg/apache/xml/utils/QName;
    .param p2, "ref"    # Lorg/apache/xml/utils/XMLString;

    #@0
    .prologue
    .line 118
    invoke-direct {p0}, Lorg/apache/xalan/transformer/KeyTable;->getRefsTable()Ljava/util/Hashtable;

    #@3
    move-result-object v4

    #@4
    invoke-virtual {v4, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Lorg/apache/xpath/objects/XNodeSet;

    #@a
    .line 122
    .local v2, "refNodes":Lorg/apache/xpath/objects/XNodeSet;
    if-eqz v2, :cond_0

    #@c
    .line 124
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XNodeSet;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    #@f
    move-result-object v2

    #@10
    .end local v2    # "refNodes":Lorg/apache/xpath/objects/XNodeSet;
    check-cast v2, Lorg/apache/xpath/objects/XNodeSet;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 132
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    #@14
    .line 134
    iget-object v4, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    #@16
    invoke-virtual {v4}, Lorg/apache/xpath/objects/XNodeSet;->getContainedIter()Lorg/apache/xml/dtm/DTMIterator;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Lorg/apache/xalan/transformer/KeyIterator;

    #@1c
    .line 135
    .local v1, "ki":Lorg/apache/xalan/transformer/KeyIterator;
    invoke-virtual {v1}, Lorg/apache/xalan/transformer/KeyIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@1f
    move-result-object v3

    #@20
    .line 136
    .local v3, "xctxt":Lorg/apache/xpath/XPathContext;
    new-instance v2, Lorg/apache/xalan/transformer/KeyTable$1;

    #@22
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@25
    move-result-object v4

    #@26
    invoke-direct {v2, p0, v4}, Lorg/apache/xalan/transformer/KeyTable$1;-><init>(Lorg/apache/xalan/transformer/KeyTable;Lorg/apache/xml/dtm/DTMManager;)V

    #@29
    .line 141
    .restart local v2    # "refNodes":Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XNodeSet;->reset()V

    #@2c
    .line 144
    .end local v1    # "ki":Lorg/apache/xalan/transformer/KeyIterator;
    .end local v2    # "refNodes":Lorg/apache/xpath/objects/XNodeSet;
    .end local v3    # "xctxt":Lorg/apache/xpath/XPathContext;
    :cond_1
    return-object v2

    #@2d
    .line 128
    :catch_0
    move-exception v0

    #@2e
    .line 129
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    #@2f
    .local v2, "refNodes":Lorg/apache/xpath/objects/XNodeSet;
    goto :goto_0
.end method
