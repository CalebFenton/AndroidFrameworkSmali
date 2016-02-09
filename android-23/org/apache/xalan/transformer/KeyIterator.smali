.class public Lorg/apache/xalan/transformer/KeyIterator;
.super Lorg/apache/xpath/axes/OneStepIteratorForward;
.source "KeyIterator.java"


# static fields
.field static final serialVersionUID:J = -0x12b90050ba7c0c3dL


# instance fields
.field private m_keyDeclarations:Ljava/util/Vector;

.field private m_name:Lorg/apache/xml/utils/QName;


# direct methods
.method constructor <init>(Lorg/apache/xml/utils/QName;Ljava/util/Vector;)V
    .locals 1
    .param p1, "name"    # Lorg/apache/xml/utils/QName;
    .param p2, "keyDeclarations"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 83
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/OneStepIteratorForward;-><init>(I)V

    #@5
    .line 84
    iput-object p2, p0, Lorg/apache/xalan/transformer/KeyIterator;->m_keyDeclarations:Ljava/util/Vector;

    #@7
    .line 86
    iput-object p1, p0, Lorg/apache/xalan/transformer/KeyIterator;->m_name:Lorg/apache/xml/utils/QName;

    #@9
    .line 81
    return-void
.end method


# virtual methods
.method public acceptNode(I)S
    .locals 19
    .param p1, "testNode"    # I

    #@0
    .prologue
    .line 102
    const/4 v2, 0x0

    #@1
    .line 103
    .local v2, "foundKey":Z
    move-object/from16 v0, p0

    #@3
    iget-object v6, v0, Lorg/apache/xalan/transformer/KeyIterator;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    #@5
    check-cast v6, Lorg/apache/xalan/transformer/KeyIterator;

    #@7
    .line 104
    .local v6, "ki":Lorg/apache/xalan/transformer/KeyIterator;
    invoke-virtual {v6}, Lorg/apache/xalan/transformer/KeyIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@a
    move-result-object v13

    #@b
    .line 105
    .local v13, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v6}, Lorg/apache/xalan/transformer/KeyIterator;->getKeyDeclarations()Ljava/util/Vector;

    #@e
    move-result-object v5

    #@f
    .line 107
    .local v5, "keys":Ljava/util/Vector;
    invoke-virtual {v6}, Lorg/apache/xalan/transformer/KeyIterator;->getName()Lorg/apache/xml/utils/QName;

    #@12
    move-result-object v9

    #@13
    .line 111
    .local v9, "name":Lorg/apache/xml/utils/QName;
    :try_start_0
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    #@16
    move-result v8

    #@17
    .line 114
    .local v8, "nDeclarations":I
    const/4 v3, 0x0

    #@18
    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_2

    #@1a
    .line 116
    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@1d
    move-result-object v4

    #@1e
    check-cast v4, Lorg/apache/xalan/templates/KeyDeclaration;

    #@20
    .line 120
    .local v4, "kd":Lorg/apache/xalan/templates/KeyDeclaration;
    invoke-virtual {v4}, Lorg/apache/xalan/templates/KeyDeclaration;->getName()Lorg/apache/xml/utils/QName;

    #@23
    move-result-object v14

    #@24
    invoke-virtual {v14, v9}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v14

    #@28
    if-nez v14, :cond_1

    #@2a
    .line 114
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 123
    :cond_1
    const/4 v2, 0x1

    #@2e
    .line 128
    invoke-virtual {v4}, Lorg/apache/xalan/templates/KeyDeclaration;->getMatch()Lorg/apache/xpath/XPath;

    #@31
    move-result-object v7

    #@32
    .line 129
    .local v7, "matchExpr":Lorg/apache/xpath/XPath;
    move/from16 v0, p1

    #@34
    invoke-virtual {v7, v13, v0}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    move-result-wide v10

    #@38
    .line 131
    .local v10, "score":D
    const-wide/high16 v14, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@3a
    cmpl-double v14, v10, v14

    #@3c
    if-eqz v14, :cond_0

    #@3e
    .line 134
    const/4 v14, 0x1

    #@3f
    return v14

    #@40
    .line 139
    .end local v3    # "i":I
    .end local v4    # "kd":Lorg/apache/xalan/templates/KeyDeclaration;
    .end local v7    # "matchExpr":Lorg/apache/xpath/XPath;
    .end local v8    # "nDeclarations":I
    .end local v10    # "score":D
    :catch_0
    move-exception v12

    #@41
    .line 144
    :cond_2
    if-nez v2, :cond_3

    #@43
    .line 145
    new-instance v14, Ljava/lang/RuntimeException;

    #@45
    .line 147
    const-string/jumbo v15, "ER_NO_XSLKEY_DECLARATION"

    #@48
    .line 148
    const/16 v16, 0x1

    #@4a
    move/from16 v0, v16

    #@4c
    new-array v0, v0, [Ljava/lang/Object;

    #@4e
    move-object/from16 v16, v0

    #@50
    invoke-virtual {v9}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    #@53
    move-result-object v17

    #@54
    const/16 v18, 0x0

    #@56
    aput-object v17, v16, v18

    #@58
    .line 146
    invoke-static/range {v15 .. v16}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5b
    move-result-object v15

    #@5c
    .line 145
    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v14

    #@60
    .line 150
    :cond_3
    const/4 v14, 0x2

    #@61
    return v14
.end method

.method public getKeyDeclarations()Ljava/util/Vector;
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/xalan/transformer/KeyIterator;->m_keyDeclarations:Ljava/util/Vector;

    #@2
    return-object v0
.end method

.method public getName()Lorg/apache/xml/utils/QName;
    .locals 1

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/xalan/transformer/KeyIterator;->m_name:Lorg/apache/xml/utils/QName;

    #@2
    return-object v0
.end method
