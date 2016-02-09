.class public Lorg/apache/xpath/functions/FuncId;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncId.java"


# static fields
.field static final serialVersionUID:J = 0x7befc5b4bc56b5ceL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    #@3
    return-void
.end method

.method private getNodesByID(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Lorg/apache/xml/utils/StringVector;Lorg/apache/xpath/NodeSetDTM;Z)Lorg/apache/xml/utils/StringVector;
    .locals 6
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "docContext"    # I
    .param p3, "refval"    # Ljava/lang/String;
    .param p4, "usedrefs"    # Lorg/apache/xml/utils/StringVector;
    .param p5, "nodeSet"    # Lorg/apache/xpath/NodeSetDTM;
    .param p6, "mayBeMore"    # Z

    #@0
    .prologue
    .line 60
    if-eqz p3, :cond_5

    #@2
    .line 62
    const/4 v3, 0x0

    #@3
    .line 64
    .local v3, "ref":Ljava/lang/String;
    new-instance v4, Ljava/util/StringTokenizer;

    #@5
    invoke-direct {v4, p3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    #@8
    .line 65
    .local v4, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@b
    move-result v1

    #@c
    .line 66
    .local v1, "hasMore":Z
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@f
    move-result-object v0

    #@10
    .line 68
    .end local v3    # "ref":Ljava/lang/String;
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    :cond_0
    :goto_0
    if-eqz v1, :cond_5

    #@12
    .line 70
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    .line 71
    .local v3, "ref":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@19
    move-result v1

    #@1a
    .line 73
    if-eqz p4, :cond_1

    #@1c
    invoke-virtual {p4, v3}, Lorg/apache/xml/utils/StringVector;->contains(Ljava/lang/String;)Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_1

    #@22
    .line 75
    const/4 v3, 0x0

    #@23
    .line 77
    .local v3, "ref":Ljava/lang/String;
    goto :goto_0

    #@24
    .line 80
    .local v3, "ref":Ljava/lang/String;
    :cond_1
    invoke-interface {v0, v3}, Lorg/apache/xml/dtm/DTM;->getElementById(Ljava/lang/String;)I

    #@27
    move-result v2

    #@28
    .line 82
    .local v2, "node":I
    const/4 v5, -0x1

    #@29
    if-eq v5, v2, :cond_2

    #@2b
    .line 83
    invoke-virtual {p5, v2, p1}, Lorg/apache/xpath/NodeSetDTM;->addNodeInDocOrder(ILorg/apache/xpath/XPathContext;)I

    #@2e
    .line 85
    :cond_2
    if-eqz v3, :cond_0

    #@30
    if-nez v1, :cond_3

    #@32
    if-eqz p6, :cond_0

    #@34
    .line 87
    :cond_3
    if-nez p4, :cond_4

    #@36
    .line 88
    new-instance p4, Lorg/apache/xml/utils/StringVector;

    #@38
    .end local p4    # "usedrefs":Lorg/apache/xml/utils/StringVector;
    invoke-direct {p4}, Lorg/apache/xml/utils/StringVector;-><init>()V

    #@3b
    .line 90
    .restart local p4    # "usedrefs":Lorg/apache/xml/utils/StringVector;
    :cond_4
    invoke-virtual {p4, v3}, Lorg/apache/xml/utils/StringVector;->addElement(Ljava/lang/String;)V

    #@3e
    goto :goto_0

    #@3f
    .line 95
    .end local v0    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v1    # "hasMore":Z
    .end local v2    # "node":I
    .end local v3    # "ref":Ljava/lang/String;
    .end local v4    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_5
    return-object p4
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 23
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@3
    move-result v17

    #@4
    .line 110
    .local v17, "context":I
    move-object/from16 v0, p1

    #@6
    move/from16 v1, v17

    #@8
    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@b
    move-result-object v18

    #@c
    .line 111
    .local v18, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface/range {v18 .. v18}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    #@f
    move-result v4

    #@10
    .line 113
    .local v4, "docContext":I
    const/4 v2, -0x1

    #@11
    if-ne v2, v4, :cond_0

    #@13
    .line 114
    const-string/jumbo v2, "ER_CONTEXT_HAS_NO_OWNERDOC"

    #@16
    const/4 v3, 0x0

    #@17
    move-object/from16 v0, p0

    #@19
    move-object/from16 v1, p1

    #@1b
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xpath/functions/FuncId;->error(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    #@1e
    .line 116
    :cond_0
    move-object/from16 v0, p0

    #@20
    iget-object v2, v0, Lorg/apache/xpath/functions/FuncId;->m_arg0:Lorg/apache/xpath/Expression;

    #@22
    move-object/from16 v0, p1

    #@24
    invoke-virtual {v2, v0}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@27
    move-result-object v15

    #@28
    .line 117
    .local v15, "arg":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v15}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@2b
    move-result v16

    #@2c
    .line 118
    .local v16, "argType":I
    new-instance v21, Lorg/apache/xpath/objects/XNodeSet;

    #@2e
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@31
    move-result-object v2

    #@32
    move-object/from16 v0, v21

    #@34
    invoke-direct {v0, v2}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    #@37
    .line 119
    .local v21, "nodes":Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual/range {v21 .. v21}, Lorg/apache/xpath/objects/XNodeSet;->mutableNodeset()Lorg/apache/xpath/NodeSetDTM;

    #@3a
    move-result-object v7

    #@3b
    .line 121
    .local v7, "nodeSet":Lorg/apache/xpath/NodeSetDTM;
    const/4 v2, 0x4

    #@3c
    move/from16 v0, v16

    #@3e
    if-ne v2, v0, :cond_2

    #@40
    .line 123
    invoke-virtual {v15}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    #@43
    move-result-object v20

    #@44
    .line 124
    .local v20, "ni":Lorg/apache/xml/dtm/DTMIterator;
    const/4 v6, 0x0

    #@45
    .line 125
    .local v6, "usedrefs":Lorg/apache/xml/utils/StringVector;
    invoke-interface/range {v20 .. v20}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@48
    move-result v22

    #@49
    .line 127
    .end local v6    # "usedrefs":Lorg/apache/xml/utils/StringVector;
    .local v22, "pos":I
    :goto_0
    const/4 v2, -0x1

    #@4a
    move/from16 v0, v22

    #@4c
    if-eq v2, v0, :cond_4

    #@4e
    .line 129
    move-object/from16 v0, v20

    #@50
    move/from16 v1, v22

    #@52
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTMIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@55
    move-result-object v19

    #@56
    .line 130
    .local v19, "ndtm":Lorg/apache/xml/dtm/DTM;
    move-object/from16 v0, v19

    #@58
    move/from16 v1, v22

    #@5a
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    #@5d
    move-result-object v2

    #@5e
    invoke-interface {v2}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    #@61
    move-result-object v5

    #@62
    .line 132
    .local v5, "refval":Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@65
    move-result v22

    #@66
    .line 134
    const/4 v2, -0x1

    #@67
    move/from16 v0, v22

    #@69
    if-eq v2, v0, :cond_1

    #@6b
    const/4 v8, 0x1

    #@6c
    :goto_1
    move-object/from16 v2, p0

    #@6e
    move-object/from16 v3, p1

    #@70
    .line 133
    invoke-direct/range {v2 .. v8}, Lorg/apache/xpath/functions/FuncId;->getNodesByID(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Lorg/apache/xml/utils/StringVector;Lorg/apache/xpath/NodeSetDTM;Z)Lorg/apache/xml/utils/StringVector;

    #@73
    move-result-object v6

    #@74
    .local v6, "usedrefs":Lorg/apache/xml/utils/StringVector;
    goto :goto_0

    #@75
    .line 134
    .end local v6    # "usedrefs":Lorg/apache/xml/utils/StringVector;
    :cond_1
    const/4 v8, 0x0

    #@76
    goto :goto_1

    #@77
    .line 138
    .end local v5    # "refval":Ljava/lang/String;
    .end local v19    # "ndtm":Lorg/apache/xml/dtm/DTM;
    .end local v20    # "ni":Lorg/apache/xml/dtm/DTMIterator;
    .end local v22    # "pos":I
    :cond_2
    const/4 v2, -0x1

    #@78
    move/from16 v0, v16

    #@7a
    if-ne v2, v0, :cond_3

    #@7c
    .line 140
    return-object v21

    #@7d
    .line 144
    :cond_3
    invoke-virtual {v15}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@80
    move-result-object v5

    #@81
    .line 146
    .restart local v5    # "refval":Ljava/lang/String;
    const/4 v12, 0x0

    #@82
    const/4 v14, 0x0

    #@83
    move-object/from16 v8, p0

    #@85
    move-object/from16 v9, p1

    #@87
    move v10, v4

    #@88
    move-object v11, v5

    #@89
    move-object v13, v7

    #@8a
    invoke-direct/range {v8 .. v14}, Lorg/apache/xpath/functions/FuncId;->getNodesByID(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Lorg/apache/xml/utils/StringVector;Lorg/apache/xpath/NodeSetDTM;Z)Lorg/apache/xml/utils/StringVector;

    #@8d
    .line 149
    .end local v5    # "refval":Ljava/lang/String;
    :cond_4
    return-object v21
.end method
