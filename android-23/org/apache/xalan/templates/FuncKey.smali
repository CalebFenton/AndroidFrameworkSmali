.class public Lorg/apache/xalan/templates/FuncKey;
.super Lorg/apache/xpath/functions/Function2Args;
.source "FuncKey.java"


# static fields
.field private static ISTRUE:Ljava/lang/Boolean; = null

.field static final serialVersionUID:J = 0x7e23a7eadbc8c78cL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 46
    new-instance v0, Ljava/lang/Boolean;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    #@6
    sput-object v0, Lorg/apache/xalan/templates/FuncKey;->ISTRUE:Ljava/lang/Boolean;

    #@8
    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function2Args;-><init>()V

    #@3
    return-void
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
    .line 60
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getOwnerObject()Ljava/lang/Object;

    #@3
    move-result-object v19

    #@4
    check-cast v19, Lorg/apache/xalan/transformer/TransformerImpl;

    #@6
    .line 61
    .local v19, "transformer":Lorg/apache/xalan/transformer/TransformerImpl;
    const/16 v16, 0x0

    #@8
    .line 62
    .local v16, "nodes":Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@b
    move-result v10

    #@c
    .line 63
    .local v10, "context":I
    move-object/from16 v0, p1

    #@e
    invoke-virtual {v0, v10}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@11
    move-result-object v12

    #@12
    .line 64
    .local v12, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v12, v10}, Lorg/apache/xml/dtm/DTM;->getDocumentRoot(I)I

    #@15
    move-result v4

    #@16
    .line 66
    .local v4, "docContext":I
    const/4 v3, -0x1

    #@17
    if-ne v3, v4, :cond_0

    #@19
    .line 72
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncKey;->getArg0()Lorg/apache/xpath/Expression;

    #@1c
    move-result-object v3

    #@1d
    move-object/from16 v0, p1

    #@1f
    invoke-virtual {v3, v0}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@26
    move-result-object v22

    #@27
    .line 73
    .local v22, "xkeyname":Ljava/lang/String;
    new-instance v5, Lorg/apache/xml/utils/QName;

    #@29
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    #@2c
    move-result-object v3

    #@2d
    move-object/from16 v0, v22

    #@2f
    invoke-direct {v5, v0, v3}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    #@32
    .line 74
    .local v5, "keyname":Lorg/apache/xml/utils/QName;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncKey;->getArg1()Lorg/apache/xpath/Expression;

    #@35
    move-result-object v3

    #@36
    move-object/from16 v0, p1

    #@38
    invoke-virtual {v3, v0}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@3b
    move-result-object v8

    #@3c
    .line 75
    .local v8, "arg":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@3f
    move-result v3

    #@40
    const/4 v7, 0x4

    #@41
    if-ne v7, v3, :cond_4

    #@43
    const/4 v9, 0x1

    #@44
    .line 76
    .local v9, "argIsNodeSetDTM":Z
    :goto_0
    invoke-virtual/range {v19 .. v19}, Lorg/apache/xalan/transformer/TransformerImpl;->getKeyManager()Lorg/apache/xalan/transformer/KeyManager;

    #@47
    move-result-object v2

    #@48
    .line 79
    .local v2, "kmgr":Lorg/apache/xalan/transformer/KeyManager;
    if-eqz v9, :cond_1

    #@4a
    move-object/from16 v17, v8

    #@4c
    .line 81
    check-cast v17, Lorg/apache/xpath/objects/XNodeSet;

    #@4e
    .line 82
    .local v17, "ns":Lorg/apache/xpath/objects/XNodeSet;
    const/4 v3, 0x1

    #@4f
    move-object/from16 v0, v17

    #@51
    invoke-virtual {v0, v3}, Lorg/apache/xpath/objects/XNodeSet;->setShouldCacheNodes(Z)V

    #@54
    .line 83
    invoke-virtual/range {v17 .. v17}, Lorg/apache/xpath/objects/XNodeSet;->getLength()I

    #@57
    move-result v13

    #@58
    .line 84
    .local v13, "len":I
    const/4 v3, 0x1

    #@59
    if-gt v13, v3, :cond_1

    #@5b
    .line 85
    const/4 v9, 0x0

    #@5c
    .line 88
    .end local v13    # "len":I
    .end local v17    # "ns":Lorg/apache/xpath/objects/XNodeSet;
    :cond_1
    if-eqz v9, :cond_6

    #@5e
    .line 90
    const/16 v21, 0x0

    #@60
    .line 91
    .local v21, "usedrefs":Ljava/util/Hashtable;
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    #@63
    move-result-object v14

    #@64
    .line 93
    .local v14, "ni":Lorg/apache/xml/dtm/DTMIterator;
    new-instance v20, Lorg/apache/xpath/axes/UnionPathIterator;

    #@66
    invoke-direct/range {v20 .. v20}, Lorg/apache/xpath/axes/UnionPathIterator;-><init>()V

    #@69
    .line 94
    .local v20, "upi":Lorg/apache/xpath/axes/UnionPathIterator;
    move-object/from16 v0, v20

    #@6b
    move-object/from16 v1, p0

    #@6d
    invoke-virtual {v0, v1}, Lorg/apache/xpath/axes/UnionPathIterator;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@70
    .line 96
    .end local v21    # "usedrefs":Ljava/util/Hashtable;
    :cond_2
    :goto_1
    invoke-interface {v14}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@73
    move-result v18

    #@74
    .local v18, "pos":I
    const/4 v3, -0x1

    #@75
    move/from16 v0, v18

    #@77
    if-eq v3, v0, :cond_5

    #@79
    .line 98
    move-object/from16 v0, p1

    #@7b
    move/from16 v1, v18

    #@7d
    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@80
    move-result-object v12

    #@81
    .line 99
    move/from16 v0, v18

    #@83
    invoke-interface {v12, v0}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    #@86
    move-result-object v6

    #@87
    .line 101
    .local v6, "ref":Lorg/apache/xml/utils/XMLString;
    if-eqz v6, :cond_2

    #@89
    .line 104
    if-nez v21, :cond_3

    #@8b
    .line 105
    new-instance v21, Ljava/util/Hashtable;

    #@8d
    invoke-direct/range {v21 .. v21}, Ljava/util/Hashtable;-><init>()V

    #@90
    .line 107
    :cond_3
    move-object/from16 v0, v21

    #@92
    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@95
    move-result-object v3

    #@96
    if-nez v3, :cond_2

    #@98
    .line 115
    sget-object v3, Lorg/apache/xalan/templates/FuncKey;->ISTRUE:Ljava/lang/Boolean;

    #@9a
    move-object/from16 v0, v21

    #@9c
    invoke-virtual {v0, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9f
    .line 120
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    #@a2
    move-result-object v7

    #@a3
    move-object/from16 v3, p1

    #@a5
    .line 119
    invoke-virtual/range {v2 .. v7}, Lorg/apache/xalan/transformer/KeyManager;->getNodeSetDTMByKey(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XNodeSet;

    #@a8
    move-result-object v15

    #@a9
    .line 122
    .local v15, "nl":Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@ac
    move-result v3

    #@ad
    move-object/from16 v0, p1

    #@af
    invoke-virtual {v15, v3, v0}, Lorg/apache/xpath/objects/XNodeSet;->setRoot(ILjava/lang/Object;)V

    #@b2
    .line 126
    move-object/from16 v0, v20

    #@b4
    invoke-virtual {v0, v15}, Lorg/apache/xpath/axes/UnionPathIterator;->addIterator(Lorg/apache/xml/dtm/DTMIterator;)V

    #@b7
    goto :goto_1

    #@b8
    .line 75
    .end local v2    # "kmgr":Lorg/apache/xalan/transformer/KeyManager;
    .end local v6    # "ref":Lorg/apache/xml/utils/XMLString;
    .end local v9    # "argIsNodeSetDTM":Z
    .end local v14    # "ni":Lorg/apache/xml/dtm/DTMIterator;
    .end local v15    # "nl":Lorg/apache/xpath/objects/XNodeSet;
    .end local v18    # "pos":I
    .end local v20    # "upi":Lorg/apache/xpath/axes/UnionPathIterator;
    :cond_4
    const/4 v9, 0x0

    #@b9
    .restart local v9    # "argIsNodeSetDTM":Z
    goto :goto_0

    #@ba
    .line 135
    .restart local v2    # "kmgr":Lorg/apache/xalan/transformer/KeyManager;
    .restart local v14    # "ni":Lorg/apache/xml/dtm/DTMIterator;
    .restart local v18    # "pos":I
    .restart local v20    # "upi":Lorg/apache/xpath/axes/UnionPathIterator;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@bd
    move-result v11

    #@be
    .line 136
    .local v11, "current":I
    move-object/from16 v0, v20

    #@c0
    move-object/from16 v1, p1

    #@c2
    invoke-virtual {v0, v11, v1}, Lorg/apache/xpath/axes/UnionPathIterator;->setRoot(ILjava/lang/Object;)V

    #@c5
    .line 138
    new-instance v16, Lorg/apache/xpath/objects/XNodeSet;

    #@c7
    .end local v16    # "nodes":Lorg/apache/xpath/objects/XNodeSet;
    move-object/from16 v0, v16

    #@c9
    move-object/from16 v1, v20

    #@cb
    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    #@ce
    .line 149
    .end local v11    # "current":I
    .end local v14    # "ni":Lorg/apache/xml/dtm/DTMIterator;
    .end local v18    # "pos":I
    .end local v20    # "upi":Lorg/apache/xpath/axes/UnionPathIterator;
    .local v16, "nodes":Lorg/apache/xpath/objects/XNodeSet;
    :goto_2
    return-object v16

    #@cf
    .line 142
    .local v16, "nodes":Lorg/apache/xpath/objects/XNodeSet;
    :cond_6
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    #@d2
    move-result-object v6

    #@d3
    .line 145
    .restart local v6    # "ref":Lorg/apache/xml/utils/XMLString;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    #@d6
    move-result-object v7

    #@d7
    move-object/from16 v3, p1

    #@d9
    .line 143
    invoke-virtual/range {v2 .. v7}, Lorg/apache/xalan/transformer/KeyManager;->getNodeSetDTMByKey(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XNodeSet;

    #@dc
    move-result-object v16

    #@dd
    .line 146
    .local v16, "nodes":Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@e0
    move-result v3

    #@e1
    move-object/from16 v0, v16

    #@e3
    move-object/from16 v1, p1

    #@e5
    invoke-virtual {v0, v3, v1}, Lorg/apache/xpath/objects/XNodeSet;->setRoot(ILjava/lang/Object;)V

    #@e8
    goto :goto_2
.end method
