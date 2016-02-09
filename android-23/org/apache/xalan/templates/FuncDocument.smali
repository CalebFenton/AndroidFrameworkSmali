.class public Lorg/apache/xalan/templates/FuncDocument;
.super Lorg/apache/xpath/functions/Function2Args;
.source "FuncDocument.java"


# static fields
.field static final serialVersionUID:J = 0x227678209ab58610L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function2Args;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public checkNumberArgs(I)V
    .locals 1
    .param p1, "argNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    #@0
    .prologue
    .line 440
    const/4 v0, 0x1

    #@1
    if-lt p1, v0, :cond_0

    #@3
    const/4 v0, 0x2

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 441
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/templates/FuncDocument;->reportWrongNumberArgs()V

    #@9
    .line 438
    :cond_1
    return-void
.end method

.method public error(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 393
    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 394
    .local v1, "formattedMsg":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@7
    move-result-object v0

    #@8
    .line 395
    .local v0, "errHandler":Ljavax/xml/transform/ErrorListener;
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@a
    .line 396
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    #@d
    move-result-object v3

    #@e
    .line 395
    invoke-direct {v2, v1, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@11
    .line 398
    .local v2, "spe":Ljavax/xml/transform/TransformerException;
    if-eqz v0, :cond_0

    #@13
    .line 399
    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V

    #@16
    .line 390
    :goto_0
    return-void

    #@17
    .line 401
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@19
    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1c
    goto :goto_0
.end method

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
    .line 75
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@3
    move-result v10

    #@4
    .line 76
    .local v10, "context":I
    move-object/from16 v0, p1

    #@6
    invoke-virtual {v0, v10}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@9
    move-result-object v12

    #@a
    .line 78
    .local v12, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v12, v10}, Lorg/apache/xml/dtm/DTM;->getDocumentRoot(I)I

    #@d
    move-result v11

    #@e
    .line 79
    .local v11, "docContext":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncDocument;->getArg0()Lorg/apache/xpath/Expression;

    #@11
    move-result-object v21

    #@12
    move-object/from16 v0, v21

    #@14
    move-object/from16 v1, p1

    #@16
    invoke-virtual {v0, v1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@19
    move-result-object v4

    #@1a
    .line 81
    .local v4, "arg":Lorg/apache/xpath/objects/XObject;
    const-string/jumbo v7, ""

    #@1d
    .line 82
    .local v7, "base":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncDocument;->getArg1()Lorg/apache/xpath/Expression;

    #@20
    move-result-object v5

    #@21
    .line 84
    .local v5, "arg1Expr":Lorg/apache/xpath/Expression;
    if-eqz v5, :cond_9

    #@23
    .line 91
    move-object/from16 v0, p1

    #@25
    invoke-virtual {v5, v0}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@28
    move-result-object v6

    #@29
    .line 93
    .local v6, "arg2":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v6}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@2c
    move-result v21

    #@2d
    const/16 v22, 0x4

    #@2f
    move/from16 v0, v22

    #@31
    move/from16 v1, v21

    #@33
    if-ne v0, v1, :cond_8

    #@35
    .line 95
    invoke-virtual {v6}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    #@38
    move-result-object v21

    #@39
    invoke-interface/range {v21 .. v21}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@3c
    move-result v9

    #@3d
    .line 97
    .local v9, "baseNode":I
    const/16 v21, -0x1

    #@3f
    move/from16 v0, v21

    #@41
    if-ne v9, v0, :cond_0

    #@43
    .line 102
    const-string/jumbo v21, "WG_EMPTY_SECOND_ARG"

    #@46
    const/16 v22, 0x0

    #@48
    move-object/from16 v0, p0

    #@4a
    move-object/from16 v1, p1

    #@4c
    move-object/from16 v2, v21

    #@4e
    move-object/from16 v3, v22

    #@50
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/FuncDocument;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    #@53
    .line 103
    new-instance v18, Lorg/apache/xpath/objects/XNodeSet;

    #@55
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@58
    move-result-object v21

    #@59
    move-object/from16 v0, v18

    #@5b
    move-object/from16 v1, v21

    #@5d
    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    #@60
    .line 104
    .local v18, "nodes":Lorg/apache/xpath/objects/XNodeSet;
    return-object v18

    #@61
    .line 106
    .end local v18    # "nodes":Lorg/apache/xpath/objects/XNodeSet;
    :cond_0
    move-object/from16 v0, p1

    #@63
    invoke-virtual {v0, v9}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@66
    move-result-object v8

    #@67
    .line 107
    .local v8, "baseDTM":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v8}, Lorg/apache/xml/dtm/DTM;->getDocumentBaseURI()Ljava/lang/String;

    #@6a
    move-result-object v7

    #@6b
    .line 144
    .end local v6    # "arg2":Lorg/apache/xpath/objects/XObject;
    .end local v8    # "baseDTM":Lorg/apache/xml/dtm/DTM;
    .end local v9    # "baseNode":I
    :goto_0
    new-instance v18, Lorg/apache/xpath/objects/XNodeSet;

    #@6d
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@70
    move-result-object v21

    #@71
    move-object/from16 v0, v18

    #@73
    move-object/from16 v1, v21

    #@75
    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    #@78
    .line 145
    .restart local v18    # "nodes":Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xpath/objects/XNodeSet;->mutableNodeset()Lorg/apache/xpath/NodeSetDTM;

    #@7b
    move-result-object v16

    #@7c
    .line 146
    .local v16, "mnl":Lorg/apache/xpath/NodeSetDTM;
    invoke-virtual {v4}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@7f
    move-result v21

    #@80
    const/16 v22, 0x4

    #@82
    move/from16 v0, v22

    #@84
    move/from16 v1, v21

    #@86
    if-ne v0, v1, :cond_b

    #@88
    .line 147
    invoke-virtual {v4}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    #@8b
    move-result-object v15

    #@8c
    .line 148
    :goto_1
    const/16 v19, -0x1

    #@8e
    .line 150
    .end local v7    # "base":Ljava/lang/String;
    .local v19, "pos":I
    :cond_1
    if-eqz v15, :cond_2

    #@90
    invoke-interface {v15}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@93
    move-result v19

    #@94
    const/16 v21, -0x1

    #@96
    move/from16 v0, v21

    #@98
    move/from16 v1, v19

    #@9a
    if-eq v0, v1, :cond_7

    #@9c
    .line 152
    :cond_2
    if-eqz v15, :cond_c

    #@9e
    .line 153
    move-object/from16 v0, p1

    #@a0
    move/from16 v1, v19

    #@a2
    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@a5
    move-result-object v21

    #@a6
    move-object/from16 v0, v21

    #@a8
    move/from16 v1, v19

    #@aa
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    #@ad
    move-result-object v20

    #@ae
    .line 163
    .local v20, "ref":Lorg/apache/xml/utils/XMLString;
    :goto_2
    if-nez v5, :cond_3

    #@b0
    const/16 v21, -0x1

    #@b2
    move/from16 v0, v21

    #@b4
    move/from16 v1, v19

    #@b6
    if-eq v0, v1, :cond_3

    #@b8
    .line 165
    move-object/from16 v0, p1

    #@ba
    move/from16 v1, v19

    #@bc
    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@bf
    move-result-object v8

    #@c0
    .line 166
    .restart local v8    # "baseDTM":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v8}, Lorg/apache/xml/dtm/DTM;->getDocumentBaseURI()Ljava/lang/String;

    #@c3
    move-result-object v7

    #@c4
    .line 169
    .end local v8    # "baseDTM":Lorg/apache/xml/dtm/DTM;
    :cond_3
    if-eqz v20, :cond_1

    #@c6
    .line 172
    const/16 v21, -0x1

    #@c8
    move/from16 v0, v21

    #@ca
    if-ne v0, v11, :cond_4

    #@cc
    .line 174
    const-string/jumbo v21, "ER_NO_CONTEXT_OWNERDOC"

    #@cf
    const/16 v22, 0x0

    #@d1
    move-object/from16 v0, p0

    #@d3
    move-object/from16 v1, p1

    #@d5
    move-object/from16 v2, v21

    #@d7
    move-object/from16 v3, v22

    #@d9
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/FuncDocument;->error(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    #@dc
    .line 183
    :cond_4
    const/16 v21, 0x3a

    #@de
    invoke-interface/range {v20 .. v21}, Lorg/apache/xml/utils/XMLString;->indexOf(I)I

    #@e1
    move-result v13

    #@e2
    .line 184
    .local v13, "indexOfColon":I
    const/16 v21, 0x2f

    #@e4
    invoke-interface/range {v20 .. v21}, Lorg/apache/xml/utils/XMLString;->indexOf(I)I

    #@e7
    move-result v14

    #@e8
    .line 186
    .local v14, "indexOfSlash":I
    const/16 v21, -0x1

    #@ea
    move/from16 v0, v21

    #@ec
    if-eq v13, v0, :cond_5

    #@ee
    const/16 v21, -0x1

    #@f0
    move/from16 v0, v21

    #@f2
    if-eq v14, v0, :cond_5

    #@f4
    .line 187
    if-ge v13, v14, :cond_5

    #@f6
    .line 191
    const/4 v7, 0x0

    #@f7
    .line 194
    :cond_5
    invoke-interface/range {v20 .. v20}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    #@fa
    move-result-object v21

    #@fb
    move-object/from16 v0, p0

    #@fd
    move-object/from16 v1, p1

    #@ff
    move-object/from16 v2, v21

    #@101
    invoke-virtual {v0, v1, v10, v2, v7}, Lorg/apache/xalan/templates/FuncDocument;->getDoc(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Ljava/lang/String;)I

    #@104
    move-result v17

    #@105
    .line 197
    .local v17, "newDoc":I
    const/16 v21, -0x1

    #@107
    move/from16 v0, v21

    #@109
    move/from16 v1, v17

    #@10b
    if-eq v0, v1, :cond_6

    #@10d
    .line 200
    invoke-virtual/range {v16 .. v17}, Lorg/apache/xpath/NodeSetDTM;->contains(I)Z

    #@110
    move-result v21

    #@111
    if-nez v21, :cond_6

    #@113
    .line 202
    invoke-virtual/range {v16 .. v17}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    #@116
    .line 206
    :cond_6
    if-eqz v15, :cond_7

    #@118
    const/16 v21, -0x1

    #@11a
    move/from16 v0, v17

    #@11c
    move/from16 v1, v21

    #@11e
    if-ne v0, v1, :cond_1

    #@120
    .line 210
    .end local v13    # "indexOfColon":I
    .end local v14    # "indexOfSlash":I
    .end local v17    # "newDoc":I
    .end local v20    # "ref":Lorg/apache/xml/utils/XMLString;
    :cond_7
    return-object v18

    #@121
    .line 125
    .end local v16    # "mnl":Lorg/apache/xpath/NodeSetDTM;
    .end local v18    # "nodes":Lorg/apache/xpath/objects/XNodeSet;
    .end local v19    # "pos":I
    .restart local v6    # "arg2":Lorg/apache/xpath/objects/XObject;
    .restart local v7    # "base":Ljava/lang/String;
    :cond_8
    invoke-virtual {v6}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    #@124
    goto/16 :goto_0

    #@126
    .line 140
    .end local v6    # "arg2":Lorg/apache/xpath/objects/XObject;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    #@129
    move-result-object v21

    #@12a
    if-eqz v21, :cond_a

    #@12c
    const/16 v21, 0x1

    #@12e
    :goto_3
    const-string/jumbo v22, "Namespace context can not be null!"

    #@131
    move-object/from16 v0, p0

    #@133
    move/from16 v1, v21

    #@135
    move-object/from16 v2, v22

    #@137
    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/FuncDocument;->assertion(ZLjava/lang/String;)V

    #@13a
    .line 141
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    #@13d
    move-result-object v21

    #@13e
    invoke-interface/range {v21 .. v21}, Lorg/apache/xml/utils/PrefixResolver;->getBaseIdentifier()Ljava/lang/String;

    #@141
    move-result-object v7

    #@142
    goto/16 :goto_0

    #@144
    .line 140
    :cond_a
    const/16 v21, 0x0

    #@146
    goto :goto_3

    #@147
    .line 147
    .restart local v16    # "mnl":Lorg/apache/xpath/NodeSetDTM;
    .restart local v18    # "nodes":Lorg/apache/xpath/objects/XNodeSet;
    :cond_b
    const/4 v15, 0x0

    #@148
    .local v15, "iterator":Lorg/apache/xml/dtm/DTMIterator;
    goto/16 :goto_1

    #@14a
    .line 153
    .end local v7    # "base":Ljava/lang/String;
    .end local v15    # "iterator":Lorg/apache/xml/dtm/DTMIterator;
    .restart local v19    # "pos":I
    :cond_c
    invoke-virtual {v4}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    #@14d
    move-result-object v20

    #@14e
    .restart local v20    # "ref":Lorg/apache/xml/utils/XMLString;
    goto/16 :goto_2
.end method

.method getDoc(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Ljava/lang/String;)I
    .locals 21
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "context"    # I
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "base"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 231
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;

    #@3
    move-result-object v16

    #@4
    .line 237
    .local v16, "treeMgr":Lorg/apache/xpath/SourceTreeManager;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    #@7
    move-result-object v17

    #@8
    move-object/from16 v0, v16

    #@a
    move-object/from16 v1, p4

    #@c
    move-object/from16 v2, p3

    #@e
    move-object/from16 v3, v17

    #@10
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xpath/SourceTreeManager;->resolveURI(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)Ljavax/xml/transform/Source;

    #@13
    move-result-object v10

    #@14
    .line 238
    .local v10, "source":Ljavax/xml/transform/Source;
    move-object/from16 v0, v16

    #@16
    invoke-virtual {v0, v10}, Lorg/apache/xpath/SourceTreeManager;->getNode(Ljavax/xml/transform/Source;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result v9

    #@1a
    .line 250
    .local v9, "newDoc":I
    const/16 v17, -0x1

    #@1c
    move/from16 v0, v17

    #@1e
    if-eq v0, v9, :cond_0

    #@20
    .line 251
    return v9

    #@21
    .line 246
    .end local v9    # "newDoc":I
    .end local v10    # "source":Ljavax/xml/transform/Source;
    :catch_0
    move-exception v14

    #@22
    .line 247
    .local v14, "te":Ljavax/xml/transform/TransformerException;
    new-instance v17, Ljavax/xml/transform/TransformerException;

    #@24
    move-object/from16 v0, v17

    #@26
    invoke-direct {v0, v14}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@29
    throw v17

    #@2a
    .line 241
    .end local v14    # "te":Ljavax/xml/transform/TransformerException;
    :catch_1
    move-exception v7

    #@2b
    .line 242
    .local v7, "ioe":Ljava/io/IOException;
    new-instance v17, Ljavax/xml/transform/TransformerException;

    #@2d
    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@30
    move-result-object v18

    #@31
    .line 243
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    #@34
    move-result-object v19

    #@35
    .line 242
    move-object/from16 v0, v17

    #@37
    move-object/from16 v1, v18

    #@39
    move-object/from16 v2, v19

    #@3b
    invoke-direct {v0, v1, v2, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    #@3e
    throw v17

    #@3f
    .line 254
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v9    # "newDoc":I
    .restart local v10    # "source":Ljavax/xml/transform/Source;
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    #@42
    move-result v17

    #@43
    if-nez v17, :cond_1

    #@45
    .line 257
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    #@48
    move-result-object v17

    #@49
    invoke-interface/range {v17 .. v17}, Lorg/apache/xml/utils/PrefixResolver;->getBaseIdentifier()Ljava/lang/String;

    #@4c
    move-result-object p3

    #@4d
    .line 260
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    #@50
    move-result-object v17

    #@51
    move-object/from16 v0, v16

    #@53
    move-object/from16 v1, p4

    #@55
    move-object/from16 v2, p3

    #@57
    move-object/from16 v3, v17

    #@59
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xpath/SourceTreeManager;->resolveURI(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)Ljavax/xml/transform/Source;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    #@5c
    move-result-object v10

    #@5d
    .line 269
    :cond_1
    const/4 v4, 0x0

    #@5e
    .line 273
    .local v4, "diagnosticsString":Ljava/lang/String;
    if-eqz p3, :cond_3

    #@60
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    #@63
    move-result v17

    #@64
    if-lez v17, :cond_3

    #@66
    .line 275
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    #@69
    move-result-object v17

    #@6a
    move-object/from16 v0, v16

    #@6c
    move-object/from16 v1, v17

    #@6e
    move-object/from16 v2, p1

    #@70
    invoke-virtual {v0, v10, v1, v2}, Lorg/apache/xpath/SourceTreeManager;->getSourceTree(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    #@73
    move-result v9

    #@74
    .line 352
    .end local v4    # "diagnosticsString":Ljava/lang/String;
    :goto_0
    const/16 v17, -0x1

    #@76
    move/from16 v0, v17

    #@78
    if-ne v0, v9, :cond_2

    #@7a
    .line 356
    if-eqz v4, :cond_e

    #@7c
    .line 358
    const-string/jumbo v17, "WG_CANNOT_LOAD_REQUESTED_DOC"

    #@7f
    .line 359
    const/16 v18, 0x1

    #@81
    move/from16 v0, v18

    #@83
    new-array v0, v0, [Ljava/lang/Object;

    #@85
    move-object/from16 v18, v0

    #@87
    const/16 v19, 0x0

    #@89
    aput-object v4, v18, v19

    #@8b
    .line 358
    move-object/from16 v0, p0

    #@8d
    move-object/from16 v1, p1

    #@8f
    move-object/from16 v2, v17

    #@91
    move-object/from16 v3, v18

    #@93
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/FuncDocument;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    #@96
    .line 374
    .end local p4    # "base":Ljava/lang/String;
    :cond_2
    :goto_1
    return v9

    #@97
    .line 263
    .restart local p4    # "base":Ljava/lang/String;
    :catch_2
    move-exception v7

    #@98
    .line 264
    .restart local v7    # "ioe":Ljava/io/IOException;
    new-instance v17, Ljavax/xml/transform/TransformerException;

    #@9a
    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@9d
    move-result-object v18

    #@9e
    .line 265
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    #@a1
    move-result-object v19

    #@a2
    .line 264
    move-object/from16 v0, v17

    #@a4
    move-object/from16 v1, v18

    #@a6
    move-object/from16 v2, v19

    #@a8
    invoke-direct {v0, v1, v2, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    #@ab
    throw v17

    #@ac
    .line 280
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v4    # "diagnosticsString":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string/jumbo v18, "WG_CANNOT_MAKE_URL_FROM"

    #@af
    .line 281
    const/16 v17, 0x1

    #@b1
    move/from16 v0, v17

    #@b3
    new-array v0, v0, [Ljava/lang/Object;

    #@b5
    move-object/from16 v19, v0

    #@b7
    new-instance v20, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    if-nez p4, :cond_4

    #@be
    const-string/jumbo v17, ""

    #@c1
    :goto_2
    move-object/from16 v0, v20

    #@c3
    move-object/from16 v1, v17

    #@c5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v17

    #@c9
    move-object/from16 v0, v17

    #@cb
    move-object/from16 v1, p3

    #@cd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v17

    #@d1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d4
    move-result-object v17

    #@d5
    const/16 v20, 0x0

    #@d7
    aput-object v17, v19, v20

    #@d9
    .line 280
    move-object/from16 v0, p0

    #@db
    move-object/from16 v1, p1

    #@dd
    move-object/from16 v2, v18

    #@df
    move-object/from16 v3, v19

    #@e1
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/FuncDocument;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    #@e4
    goto :goto_0

    #@e5
    .line 284
    :catch_3
    move-exception v15

    #@e6
    .line 287
    .local v15, "throwable":Ljava/lang/Throwable;
    const/4 v9, -0x1

    #@e7
    .line 290
    :goto_3
    instance-of v0, v15, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@e9
    move/from16 v17, v0

    #@eb
    if-eqz v17, :cond_5

    #@ed
    .line 294
    check-cast v15, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@ef
    .end local v15    # "throwable":Ljava/lang/Throwable;
    invoke-virtual {v15}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    #@f2
    move-result-object v15

    #@f3
    .restart local v15    # "throwable":Ljava/lang/Throwable;
    goto :goto_3

    #@f4
    .end local v15    # "throwable":Ljava/lang/Throwable;
    :cond_4
    move-object/from16 v17, p4

    #@f6
    .line 281
    goto :goto_2

    #@f7
    .line 297
    .restart local v15    # "throwable":Ljava/lang/Throwable;
    :cond_5
    instance-of v0, v15, Ljava/lang/NullPointerException;

    #@f9
    move/from16 v17, v0

    #@fb
    if-nez v17, :cond_6

    #@fd
    .line 298
    instance-of v0, v15, Ljava/lang/ClassCastException;

    #@ff
    move/from16 v17, v0

    #@101
    .line 297
    if-eqz v17, :cond_7

    #@103
    .line 300
    :cond_6
    new-instance v17, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@105
    .line 301
    check-cast v15, Ljava/lang/Exception;

    #@107
    .line 300
    .end local v15    # "throwable":Ljava/lang/Throwable;
    move-object/from16 v0, v17

    #@109
    invoke-direct {v0, v15}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@10c
    throw v17

    #@10d
    .line 304
    .restart local v15    # "throwable":Ljava/lang/Throwable;
    :cond_7
    new-instance v13, Ljava/io/StringWriter;

    #@10f
    invoke-direct {v13}, Ljava/io/StringWriter;-><init>()V

    #@112
    .line 305
    .local v13, "sw":Ljava/io/StringWriter;
    new-instance v5, Ljava/io/PrintWriter;

    #@114
    invoke-direct {v5, v13}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@117
    .line 307
    .local v5, "diagnosticsWriter":Ljava/io/PrintWriter;
    instance-of v0, v15, Ljavax/xml/transform/TransformerException;

    #@119
    move/from16 v17, v0

    #@11b
    if-eqz v17, :cond_c

    #@11d
    move-object v11, v15

    #@11e
    .line 309
    check-cast v11, Ljavax/xml/transform/TransformerException;

    #@120
    .line 312
    .local v11, "spe":Ljavax/xml/transform/TransformerException;
    move-object v6, v11

    #@121
    .line 314
    :cond_8
    :goto_4
    if-eqz v6, :cond_d

    #@123
    .line 316
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@126
    move-result-object v17

    #@127
    if-eqz v17, :cond_9

    #@129
    .line 318
    new-instance v17, Ljava/lang/StringBuilder;

    #@12b
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@12e
    const-string/jumbo v18, " ("

    #@131
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v17

    #@135
    invoke-virtual {v6}, Ljava/lang/Throwable;->getClass()Ljava/lang/Class;

    #@138
    move-result-object v18

    #@139
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@13c
    move-result-object v18

    #@13d
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v17

    #@141
    const-string/jumbo v18, "): "

    #@144
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v17

    #@148
    .line 319
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@14b
    move-result-object v18

    #@14c
    .line 318
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v17

    #@150
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@153
    move-result-object v17

    #@154
    move-object/from16 v0, v17

    #@156
    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@159
    .line 322
    :cond_9
    instance-of v0, v6, Ljavax/xml/transform/TransformerException;

    #@15b
    move/from16 v17, v0

    #@15d
    if-eqz v17, :cond_b

    #@15f
    move-object v12, v6

    #@160
    .line 324
    check-cast v12, Ljavax/xml/transform/TransformerException;

    #@162
    .line 326
    .local v12, "spe2":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v12}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    #@165
    move-result-object v8

    #@166
    .line 327
    .local v8, "locator":Ljavax/xml/transform/SourceLocator;
    if-eqz v8, :cond_a

    #@168
    invoke-interface {v8}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    #@16b
    move-result-object v17

    #@16c
    if-eqz v17, :cond_a

    #@16e
    .line 328
    new-instance v17, Ljava/lang/StringBuilder;

    #@170
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@173
    const-string/jumbo v18, "   ID: "

    #@176
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@179
    move-result-object v17

    #@17a
    invoke-interface {v8}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    #@17d
    move-result-object v18

    #@17e
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v17

    #@182
    .line 329
    const-string/jumbo v18, " Line #"

    #@185
    .line 328
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v17

    #@189
    .line 329
    invoke-interface {v8}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    #@18c
    move-result v18

    #@18d
    .line 328
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@190
    move-result-object v17

    #@191
    .line 330
    const-string/jumbo v18, " Column #"

    #@194
    .line 328
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@197
    move-result-object v17

    #@198
    .line 331
    invoke-interface {v8}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    #@19b
    move-result v18

    #@19c
    .line 328
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v17

    #@1a0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a3
    move-result-object v17

    #@1a4
    move-object/from16 v0, v17

    #@1a6
    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a9
    .line 333
    :cond_a
    invoke-virtual {v12}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    #@1ac
    move-result-object v6

    #@1ad
    .line 335
    .local v6, "e":Ljava/lang/Throwable;
    instance-of v0, v6, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@1af
    move/from16 v17, v0

    #@1b1
    if-eqz v17, :cond_8

    #@1b3
    .line 336
    check-cast v6, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@1b5
    .end local v6    # "e":Ljava/lang/Throwable;
    invoke-virtual {v6}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    #@1b8
    move-result-object v6

    #@1b9
    .restart local v6    # "e":Ljava/lang/Throwable;
    goto/16 :goto_4

    #@1bb
    .line 339
    .end local v6    # "e":Ljava/lang/Throwable;
    .end local v8    # "locator":Ljavax/xml/transform/SourceLocator;
    .end local v12    # "spe2":Ljavax/xml/transform/TransformerException;
    :cond_b
    const/4 v6, 0x0

    #@1bc
    .local v6, "e":Ljava/lang/Throwable;
    goto/16 :goto_4

    #@1be
    .line 345
    .end local v6    # "e":Ljava/lang/Throwable;
    .end local v11    # "spe":Ljavax/xml/transform/TransformerException;
    :cond_c
    new-instance v17, Ljava/lang/StringBuilder;

    #@1c0
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@1c3
    const-string/jumbo v18, " ("

    #@1c6
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c9
    move-result-object v17

    #@1ca
    invoke-virtual {v15}, Ljava/lang/Throwable;->getClass()Ljava/lang/Class;

    #@1cd
    move-result-object v18

    #@1ce
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1d1
    move-result-object v18

    #@1d2
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d5
    move-result-object v17

    #@1d6
    .line 346
    const-string/jumbo v18, "): "

    #@1d9
    .line 345
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object v17

    #@1dd
    .line 346
    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@1e0
    move-result-object v18

    #@1e1
    .line 345
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e4
    move-result-object v17

    #@1e5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e8
    move-result-object v17

    #@1e9
    move-object/from16 v0, v17

    #@1eb
    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ee
    .line 349
    :cond_d
    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@1f1
    move-result-object v4

    #@1f2
    .local v4, "diagnosticsString":Ljava/lang/String;
    goto/16 :goto_0

    #@1f4
    .line 362
    .end local v4    # "diagnosticsString":Ljava/lang/String;
    .end local v5    # "diagnosticsWriter":Ljava/io/PrintWriter;
    .end local v13    # "sw":Ljava/io/StringWriter;
    .end local v15    # "throwable":Ljava/lang/Throwable;
    :cond_e
    const-string/jumbo v18, "WG_CANNOT_LOAD_REQUESTED_DOC"

    #@1f7
    .line 363
    const/16 v17, 0x1

    #@1f9
    move/from16 v0, v17

    #@1fb
    new-array v0, v0, [Ljava/lang/Object;

    #@1fd
    move-object/from16 v19, v0

    #@1ff
    .line 364
    if-nez p3, :cond_10

    #@201
    .line 365
    new-instance v17, Ljava/lang/StringBuilder;

    #@203
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@206
    if-nez p4, :cond_f

    #@208
    const-string/jumbo p4, ""

    #@20b
    .end local p4    # "base":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, v17

    #@20d
    move-object/from16 v1, p4

    #@20f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@212
    move-result-object v17

    #@213
    move-object/from16 v0, v17

    #@215
    move-object/from16 v1, p3

    #@217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21a
    move-result-object v17

    #@21b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21e
    move-result-object v17

    #@21f
    .line 364
    :goto_5
    const/16 v20, 0x0

    #@221
    aput-object v17, v19, v20

    #@223
    .line 362
    move-object/from16 v0, p0

    #@225
    move-object/from16 v1, p1

    #@227
    move-object/from16 v2, v18

    #@229
    move-object/from16 v3, v19

    #@22b
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/FuncDocument;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    #@22e
    goto/16 :goto_1

    #@230
    .line 365
    .restart local p4    # "base":Ljava/lang/String;
    :cond_10
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@233
    move-result-object v17

    #@234
    goto :goto_5
.end method

.method public isNodesetExpr()Z
    .locals 1

    #@0
    .prologue
    .line 460
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected reportWrongNumberArgs()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    #@0
    .prologue
    .line 451
    new-instance v0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    #@2
    const-string/jumbo v1, "ER_ONE_OR_TWO"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
.end method

.method public warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 419
    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 420
    .local v1, "formattedMsg":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@7
    move-result-object v0

    #@8
    .line 421
    .local v0, "errHandler":Ljavax/xml/transform/ErrorListener;
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@a
    .line 422
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    #@d
    move-result-object v3

    #@e
    .line 421
    invoke-direct {v2, v1, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@11
    .line 424
    .local v2, "spe":Ljavax/xml/transform/TransformerException;
    if-eqz v0, :cond_0

    #@13
    .line 425
    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    #@16
    .line 416
    :goto_0
    return-void

    #@17
    .line 427
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@19
    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1c
    goto :goto_0
.end method
