.class public Lorg/apache/xalan/templates/ElemLiteralResult;
.super Lorg/apache/xalan/templates/ElemUse;
.source "ElemLiteralResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;,
        Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;
    }
.end annotation


# static fields
.field private static final EMPTYSTRING:Ljava/lang/String; = ""

.field static final serialVersionUID:J = -0x78c8b870c7d06eacL


# instance fields
.field private isLiteralResultAsStylesheet:Z

.field private m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

.field private m_avts:Ljava/util/List;

.field private m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

.field private m_localName:Ljava/lang/String;

.field private m_namespace:Ljava/lang/String;

.field private m_rawName:Ljava/lang/String;

.field private m_version:Ljava/lang/String;

.field private m_xslAttr:Ljava/util/List;


# direct methods
.method static synthetic -get0(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 51
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemUse;-><init>()V

    #@4
    .line 64
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->isLiteralResultAsStylesheet:Z

    #@7
    .line 121
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@9
    .line 125
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_xslAttr:Ljava/util/List;

    #@b
    .line 51
    return-void
.end method

.method private excludeResultNSDecl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1282
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1284
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemLiteralResult;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 1287
    :cond_0
    const/4 v0, 0x0

    #@a
    return v0
.end method


# virtual methods
.method protected accept(Lorg/apache/xalan/templates/XSLTVisitor;)Z
    .locals 1
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;

    #@0
    .prologue
    .line 1443
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitLiteralResultElement(Lorg/apache/xalan/templates/ElemLiteralResult;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public addLiteralResultAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "att"    # Ljava/lang/String;

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_xslAttr:Ljava/util/List;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 150
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_xslAttr:Ljava/util/List;

    #@b
    .line 152
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_xslAttr:Ljava/util/List;

    #@d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    .line 146
    return-void
.end method

.method public addLiteralResultAttribute(Lorg/apache/xalan/templates/AVT;)V
    .locals 1
    .param p1, "avt"    # Lorg/apache/xalan/templates/AVT;

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 136
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@b
    .line 138
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    .line 132
    return-void
.end method

.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 4
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;
    .param p2, "callAttrs"    # Z

    #@0
    .prologue
    .line 1452
    if-eqz p2, :cond_0

    #@2
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 1454
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@8
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@b
    move-result v2

    #@c
    .line 1456
    .local v2, "nAttrs":I
    add-int/lit8 v1, v2, -0x1

    #@e
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@10
    .line 1458
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@12
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lorg/apache/xalan/templates/AVT;

    #@18
    .line 1459
    .local v0, "avt":Lorg/apache/xalan/templates/AVT;
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    #@1b
    .line 1456
    add-int/lit8 v1, v1, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1462
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    .end local v1    # "i":I
    .end local v2    # "nAttrs":I
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemUse;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    #@21
    .line 1450
    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 6
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemUse;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@3
    .line 101
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@6
    move-result-object v1

    #@7
    .line 102
    .local v1, "cstate":Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    #@a
    move-result-object v4

    #@b
    .line 103
    .local v4, "vnames":Ljava/util/Vector;
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@d
    if-eqz v5, :cond_0

    #@f
    .line 105
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@11
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@14
    move-result v3

    #@15
    .line 107
    .local v3, "nAttrs":I
    add-int/lit8 v2, v3, -0x1

    #@17
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    #@19
    .line 109
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@1b
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lorg/apache/xalan/templates/AVT;

    #@21
    .line 110
    .local v0, "avt":Lorg/apache/xalan/templates/AVT;
    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@24
    move-result v5

    #@25
    invoke-virtual {v0, v4, v5}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    #@28
    .line 107
    add-int/lit8 v2, v2, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 98
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    .end local v2    # "i":I
    .end local v3    # "nAttrs":I
    :cond_0
    return-void
.end method

.method public containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 301
    if-eqz p2, :cond_0

    #@3
    .line 302
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    #@5
    if-nez v1, :cond_1

    #@7
    .line 303
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    #@9
    if-nez v1, :cond_1

    #@b
    .line 305
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemUse;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    #@e
    move-result v1

    #@f
    return v1

    #@10
    .line 307
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_2

    #@16
    .line 308
    const-string/jumbo p1, "#default"

    #@19
    .line 312
    :cond_2
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    #@1b
    if-eqz v1, :cond_4

    #@1d
    .line 313
    const/4 v0, 0x0

    #@1e
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    #@20
    invoke-virtual {v1}, Lorg/apache/xml/utils/StringVector;->size()I

    #@23
    move-result v1

    #@24
    if-ge v0, v1, :cond_4

    #@26
    .line 315
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    #@28
    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/ElemLiteralResult;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_3

    #@36
    .line 316
    return v2

    #@37
    .line 313
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 320
    .end local v0    # "i":I
    :cond_4
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    #@3c
    if-eqz v1, :cond_5

    #@3e
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    #@40
    invoke-virtual {v1, p2}, Lorg/apache/xml/utils/StringVector;->contains(Ljava/lang/String;)Z

    #@43
    move-result v1

    #@44
    if-eqz v1, :cond_5

    #@46
    .line 321
    return v2

    #@47
    .line 323
    :cond_5
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemUse;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    #@4a
    move-result v1

    #@4b
    return v1
.end method

.method public containsExtensionElementURI(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1187
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1188
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 1190
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    #@8
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringVector;->contains(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public enumerateLiteralResultAttributes()Ljava/util/Iterator;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1431
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 17
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1303
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    #@3
    move-result-object v2

    #@4
    .line 1311
    .local v2, "rhandler":Lorg/apache/xml/serializer/SerializationHandler;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getPrefix()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getNamespace()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    invoke-interface {v2, v3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 1314
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xalan/templates/ElemLiteralResult;->executeNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;)V

    #@12
    .line 1315
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getNamespace()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getLocalName()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getRawName()Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    invoke-interface {v2, v3, v4, v5}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 1329
    const/4 v14, 0x0

    #@22
    .line 1334
    .local v14, "tException":Ljavax/xml/transform/TransformerException;
    :try_start_1
    invoke-super/range {p0 .. p1}, Lorg/apache/xalan/templates/ElemUse;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    #@25
    .line 1338
    move-object/from16 v0, p0

    #@27
    iget-object v3, v0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@29
    if-eqz v3, :cond_1

    #@2b
    .line 1340
    move-object/from16 v0, p0

    #@2d
    iget-object v3, v0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@2f
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@32
    move-result v11

    #@33
    .line 1342
    .local v11, "nAttrs":I
    add-int/lit8 v10, v11, -0x1

    #@35
    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_1

    #@37
    .line 1344
    move-object/from16 v0, p0

    #@39
    iget-object v3, v0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@3b
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3e
    move-result-object v9

    #@3f
    check-cast v9, Lorg/apache/xalan/templates/AVT;

    #@41
    .line 1345
    .local v9, "avt":Lorg/apache/xalan/templates/AVT;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@44
    move-result-object v16

    #@45
    .line 1346
    .local v16, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@48
    move-result v13

    #@49
    .line 1348
    .local v13, "sourceNode":I
    move-object/from16 v0, v16

    #@4b
    move-object/from16 v1, p0

    #@4d
    invoke-virtual {v9, v0, v13, v1}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    #@50
    move-result-object v7

    #@51
    .line 1350
    .local v7, "stringedValue":Ljava/lang/String;
    if-eqz v7, :cond_0

    #@53
    .line 1359
    invoke-virtual {v9}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    .line 1360
    invoke-virtual {v9}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    #@5a
    move-result-object v4

    #@5b
    .line 1361
    invoke-virtual {v9}, Lorg/apache/xalan/templates/AVT;->getRawName()Ljava/lang/String;

    #@5e
    move-result-object v5

    #@5f
    .line 1362
    const-string/jumbo v6, "CDATA"

    #@62
    .line 1363
    const/4 v8, 0x0

    #@63
    .line 1358
    invoke-interface/range {v2 .. v8}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    #@66
    .line 1342
    :cond_0
    add-int/lit8 v10, v10, -0x1

    #@68
    goto :goto_0

    #@69
    .line 1318
    .end local v7    # "stringedValue":Ljava/lang/String;
    .end local v9    # "avt":Lorg/apache/xalan/templates/AVT;
    .end local v10    # "i":I
    .end local v11    # "nAttrs":I
    .end local v13    # "sourceNode":I
    .end local v14    # "tException":Ljavax/xml/transform/TransformerException;
    .end local v16    # "xctxt":Lorg/apache/xpath/XPathContext;
    :catch_0
    move-exception v12

    #@6a
    .line 1319
    .local v12, "se":Lorg/xml/sax/SAXException;
    new-instance v3, Ljavax/xml/transform/TransformerException;

    #@6c
    invoke-direct {v3, v12}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@6f
    throw v3

    #@70
    .line 1370
    .end local v12    # "se":Lorg/xml/sax/SAXException;
    .restart local v14    # "tException":Ljavax/xml/transform/TransformerException;
    :cond_1
    const/4 v3, 0x1

    #@71
    :try_start_2
    move-object/from16 v0, p1

    #@73
    move-object/from16 v1, p0

    #@75
    invoke-virtual {v0, v1, v3}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1

    #@78
    .line 1389
    .end local v14    # "tException":Ljavax/xml/transform/TransformerException;
    :goto_1
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getNamespace()Ljava/lang/String;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getLocalName()Ljava/lang/String;

    #@7f
    move-result-object v4

    #@80
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getRawName()Ljava/lang/String;

    #@83
    move-result-object v5

    #@84
    invoke-interface {v2, v3, v4, v5}, Lorg/apache/xml/serializer/SerializationHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3

    #@87
    .line 1406
    if-eqz v14, :cond_3

    #@89
    .line 1407
    throw v14

    #@8a
    .line 1378
    .restart local v14    # "tException":Ljavax/xml/transform/TransformerException;
    :catch_1
    move-exception v12

    #@8b
    .line 1379
    .restart local v12    # "se":Lorg/xml/sax/SAXException;
    new-instance v14, Ljavax/xml/transform/TransformerException;

    #@8d
    .end local v14    # "tException":Ljavax/xml/transform/TransformerException;
    invoke-direct {v14, v12}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@90
    .local v14, "tException":Ljavax/xml/transform/TransformerException;
    goto :goto_1

    #@91
    .line 1373
    .end local v12    # "se":Lorg/xml/sax/SAXException;
    .local v14, "tException":Ljavax/xml/transform/TransformerException;
    :catch_2
    move-exception v15

    #@92
    .line 1375
    .local v15, "te":Ljavax/xml/transform/TransformerException;
    move-object v14, v15

    #@93
    .local v14, "tException":Ljavax/xml/transform/TransformerException;
    goto :goto_1

    #@94
    .line 1392
    .end local v14    # "tException":Ljavax/xml/transform/TransformerException;
    .end local v15    # "te":Ljavax/xml/transform/TransformerException;
    :catch_3
    move-exception v12

    #@95
    .line 1397
    .restart local v12    # "se":Lorg/xml/sax/SAXException;
    if-eqz v14, :cond_2

    #@97
    .line 1398
    throw v14

    #@98
    .line 1400
    :cond_2
    new-instance v3, Ljavax/xml/transform/TransformerException;

    #@9a
    invoke-direct {v3, v12}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@9d
    throw v3

    #@9e
    .line 1409
    .end local v12    # "se":Lorg/xml/sax/SAXException;
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xalan/templates/ElemLiteralResult;->unexecuteNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;)V

    #@a1
    .line 1414
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getPrefix()Ljava/lang/String;

    #@a4
    move-result-object v3

    #@a5
    invoke-interface {v2, v3}, Lorg/apache/xml/serializer/SerializationHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_4

    #@a8
    .line 1301
    return-void

    #@a9
    .line 1417
    :catch_4
    move-exception v12

    #@aa
    .line 1418
    .restart local v12    # "se":Lorg/xml/sax/SAXException;
    new-instance v3, Ljavax/xml/transform/TransformerException;

    #@ac
    invoke-direct {v3, v12}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@af
    throw v3
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "rawName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemLiteralResult;->getLiteralResultAttribute(Ljava/lang/String;)Lorg/apache/xalan/templates/AVT;

    #@3
    move-result-object v0

    #@4
    .line 280
    .local v0, "avt":Lorg/apache/xalan/templates/AVT;
    if-eqz v0, :cond_0

    #@6
    .line 282
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getSimpleString()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 285
    :cond_0
    const-string/jumbo v1, ""

    #@e
    return-object v1
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 224
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemLiteralResult;->getLiteralResultAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/templates/AVT;

    #@3
    move-result-object v0

    #@4
    .line 226
    .local v0, "avt":Lorg/apache/xalan/templates/AVT;
    if-eqz v0, :cond_0

    #@6
    .line 228
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getSimpleString()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 231
    :cond_0
    const-string/jumbo v1, ""

    #@e
    return-object v1
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    #@0
    .prologue
    .line 550
    new-instance v0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;

    #@2
    invoke-direct {v0, p0}, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;-><init>(Lorg/apache/xalan/templates/ElemLiteralResult;)V

    #@5
    return-object v0
.end method

.method public getExtensionElementPrefix(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1158
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1159
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 1161
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    #@c
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public getExtensionElementPrefixCount()I
    .locals 1

    #@0
    .prologue
    .line 1172
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1173
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    #@6
    invoke-virtual {v0}, Lorg/apache/xml/utils/StringVector;->size()I

    #@9
    move-result v0

    #@a
    .line 1172
    :goto_0
    return v0

    #@b
    .line 1173
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getIsLiteralResultAsStylesheet()Z
    .locals 1

    #@0
    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->isLiteralResultAsStylesheet:Z

    #@2
    return v0
.end method

.method public getLiteralResultAttribute(Ljava/lang/String;)Lorg/apache/xalan/templates/AVT;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 245
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@3
    if-eqz v4, :cond_5

    #@5
    .line 247
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@7
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@a
    move-result v2

    #@b
    .line 248
    .local v2, "nAttrs":I
    const/4 v3, 0x0

    #@c
    .line 249
    .local v3, "namespace":Ljava/lang/String;
    add-int/lit8 v1, v2, -0x1

    #@e
    .end local v3    # "namespace":Ljava/lang/String;
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_5

    #@10
    .line 251
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@12
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lorg/apache/xalan/templates/AVT;

    #@18
    .line 252
    .local v0, "avt":Lorg/apache/xalan/templates/AVT;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 254
    .local v3, "namespace":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@1e
    const-string/jumbo v4, ""

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_3

    #@27
    .line 255
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    #@29
    .line 256
    const-string/jumbo v4, ""

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v4

    #@30
    .line 255
    if-eqz v4, :cond_4

    #@32
    .line 256
    :cond_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getRawName()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v4

    #@3a
    .line 254
    if-eqz v4, :cond_4

    #@3c
    .line 258
    :cond_2
    return-object v0

    #@3d
    .line 254
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    .line 255
    const-string/jumbo v5, ":"

    #@49
    .line 254
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    .line 255
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    .line 254
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v4

    #@5d
    if-nez v4, :cond_2

    #@5f
    goto :goto_1

    #@60
    .line 249
    :cond_4
    add-int/lit8 v1, v1, -0x1

    #@62
    goto :goto_0

    #@63
    .line 263
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    .end local v1    # "i":I
    .end local v2    # "nAttrs":I
    .end local v3    # "namespace":Ljava/lang/String;
    :cond_5
    return-object v6
.end method

.method public getLiteralResultAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/templates/AVT;
    .locals 5
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 193
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 195
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@7
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@a
    move-result v2

    #@b
    .line 197
    .local v2, "nAttrs":I
    add-int/lit8 v1, v2, -0x1

    #@d
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@f
    .line 199
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@11
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lorg/apache/xalan/templates/AVT;

    #@17
    .line 201
    .local v0, "avt":Lorg/apache/xalan/templates/AVT;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 202
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v3

    #@29
    .line 201
    if-eqz v3, :cond_0

    #@2b
    .line 204
    return-object v0

    #@2c
    .line 197
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@2e
    goto :goto_0

    #@2f
    .line 209
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    .end local v1    # "i":I
    .end local v2    # "nAttrs":I
    :cond_1
    return-object v4
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 481
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 450
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1213
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 519
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    #@3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    #@9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@c
    move-result v2

    #@d
    sub-int/2addr v1, v2

    #@e
    add-int/lit8 v0, v1, -0x1

    #@10
    .line 520
    .local v0, "len":I
    if-lez v0, :cond_0

    #@12
    .line 521
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    #@14
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 520
    :goto_0
    return-object v1

    #@19
    .line 522
    :cond_0
    const-string/jumbo v1, ""

    #@1c
    goto :goto_0
.end method

.method public getRawName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 509
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1241
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_version:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 1201
    const/16 v0, 0x4d

    #@2
    return v0
.end method

.method needToCheckExclude()Z
    .locals 1

    #@0
    .prologue
    .line 402
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getPrefixTable()Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 403
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    #@c
    if-nez v0, :cond_0

    #@e
    .line 405
    const/4 v0, 0x0

    #@f
    return v0

    #@10
    .line 410
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getPrefixTable()Ljava/util/List;

    #@13
    move-result-object v0

    #@14
    if-nez v0, :cond_1

    #@16
    .line 411
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->setPrefixTable(Ljava/util/List;)V

    #@1e
    .line 413
    :cond_1
    const/4 v0, 0x1

    #@1f
    return v0
.end method

.method public resolvePrefixTables()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 335
    invoke-super {p0}, Lorg/apache/xalan/templates/ElemUse;->resolvePrefixTables()V

    #@3
    .line 337
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    #@6
    move-result-object v8

    #@7
    .line 339
    .local v8, "stylesheet":Lorg/apache/xalan/templates/StylesheetRoot;
    iget-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    #@9
    if-eqz v9, :cond_0

    #@b
    iget-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    #@d
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@10
    move-result v9

    #@11
    if-lez v9, :cond_0

    #@13
    .line 341
    iget-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    #@15
    invoke-virtual {v8, v9}, Lorg/apache/xalan/templates/StylesheetRoot;->getNamespaceAliasComposed(Ljava/lang/String;)Lorg/apache/xalan/templates/NamespaceAlias;

    #@18
    move-result-object v5

    #@19
    .line 343
    .local v5, "nsa":Lorg/apache/xalan/templates/NamespaceAlias;
    if-eqz v5, :cond_0

    #@1b
    .line 345
    invoke-virtual {v5}, Lorg/apache/xalan/templates/NamespaceAlias;->getResultNamespace()Ljava/lang/String;

    #@1e
    move-result-object v9

    #@1f
    iput-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    #@21
    .line 348
    invoke-virtual {v5}, Lorg/apache/xalan/templates/NamespaceAlias;->getStylesheetPrefix()Ljava/lang/String;

    #@24
    move-result-object v7

    #@25
    .line 350
    .local v7, "resultPrefix":Ljava/lang/String;
    if-eqz v7, :cond_3

    #@27
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@2a
    move-result v9

    #@2b
    if-lez v9, :cond_3

    #@2d
    .line 351
    new-instance v9, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v9

    #@36
    const-string/jumbo v10, ":"

    #@39
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v9

    #@3d
    iget-object v10, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    #@3f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v9

    #@43
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v9

    #@47
    iput-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    #@49
    .line 357
    .end local v5    # "nsa":Lorg/apache/xalan/templates/NamespaceAlias;
    .end local v7    # "resultPrefix":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@4b
    if-eqz v9, :cond_4

    #@4d
    .line 359
    iget-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@4f
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@52
    move-result v2

    #@53
    .line 361
    .local v2, "n":I
    const/4 v1, 0x0

    #@54
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    #@56
    .line 363
    iget-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    #@58
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5b
    move-result-object v0

    #@5c
    check-cast v0, Lorg/apache/xalan/templates/AVT;

    #@5e
    .line 366
    .local v0, "avt":Lorg/apache/xalan/templates/AVT;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    .line 368
    .local v4, "ns":Ljava/lang/String;
    if-eqz v4, :cond_2

    #@64
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@67
    move-result v9

    #@68
    if-lez v9, :cond_2

    #@6a
    .line 371
    iget-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    #@6c
    invoke-virtual {v8, v9}, Lorg/apache/xalan/templates/StylesheetRoot;->getNamespaceAliasComposed(Ljava/lang/String;)Lorg/apache/xalan/templates/NamespaceAlias;

    #@6f
    move-result-object v5

    #@70
    .line 373
    .restart local v5    # "nsa":Lorg/apache/xalan/templates/NamespaceAlias;
    if-eqz v5, :cond_2

    #@72
    .line 375
    invoke-virtual {v5}, Lorg/apache/xalan/templates/NamespaceAlias;->getResultNamespace()Ljava/lang/String;

    #@75
    move-result-object v3

    #@76
    .line 378
    .local v3, "namespace":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/apache/xalan/templates/NamespaceAlias;->getStylesheetPrefix()Ljava/lang/String;

    #@79
    move-result-object v7

    #@7a
    .line 379
    .restart local v7    # "resultPrefix":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    #@7d
    move-result-object v6

    #@7e
    .line 381
    .local v6, "rawName":Ljava/lang/String;
    if-eqz v7, :cond_1

    #@80
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@83
    move-result v9

    #@84
    if-lez v9, :cond_1

    #@86
    .line 382
    new-instance v9, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v9

    #@8f
    const-string/jumbo v10, ":"

    #@92
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v9

    #@96
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v9

    #@9a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v6

    #@9e
    .line 384
    :cond_1
    invoke-virtual {v0, v3}, Lorg/apache/xalan/templates/AVT;->setURI(Ljava/lang/String;)V

    #@a1
    .line 385
    invoke-virtual {v0, v6}, Lorg/apache/xalan/templates/AVT;->setRawName(Ljava/lang/String;)V

    #@a4
    .line 361
    .end local v3    # "namespace":Ljava/lang/String;
    .end local v5    # "nsa":Lorg/apache/xalan/templates/NamespaceAlias;
    .end local v6    # "rawName":Ljava/lang/String;
    .end local v7    # "resultPrefix":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@a6
    goto :goto_1

    #@a7
    .line 353
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v4    # "ns":Ljava/lang/String;
    .restart local v5    # "nsa":Lorg/apache/xalan/templates/NamespaceAlias;
    .restart local v7    # "resultPrefix":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    #@a9
    iput-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    #@ab
    goto :goto_0

    #@ac
    .line 332
    .end local v5    # "nsa":Lorg/apache/xalan/templates/NamespaceAlias;
    .end local v7    # "resultPrefix":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public setExcludeResultPrefixes(Lorg/apache/xml/utils/StringVector;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xml/utils/StringVector;

    #@0
    .prologue
    .line 1264
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    #@2
    .line 1262
    return-void
.end method

.method public setExtensionElementPrefixes(Lorg/apache/xml/utils/StringVector;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xml/utils/StringVector;

    #@0
    .prologue
    .line 540
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    #@2
    .line 538
    return-void
.end method

.method public setIsLiteralResultAsStylesheet(Z)V
    .locals 0
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 76
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->isLiteralResultAsStylesheet:Z

    #@2
    .line 74
    return-void
.end method

.method public setLocalName(Ljava/lang/String;)V
    .locals 0
    .param p1, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 467
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    #@2
    .line 465
    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "ns"    # Ljava/lang/String;

    #@0
    .prologue
    .line 434
    if-nez p1, :cond_0

    #@2
    .line 435
    const-string/jumbo p1, ""

    #@5
    .line 436
    :cond_0
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    #@7
    .line 432
    return-void
.end method

.method public setRawName(Ljava/lang/String;)V
    .locals 0
    .param p1, "rawName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 498
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    #@2
    .line 496
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1230
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_version:Ljava/lang/String;

    #@2
    .line 1228
    return-void
.end method

.method public setXmlSpace(Lorg/apache/xalan/templates/AVT;)V
    .locals 2
    .param p1, "avt"    # Lorg/apache/xalan/templates/AVT;

    #@0
    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemLiteralResult;->addLiteralResultAttribute(Lorg/apache/xalan/templates/AVT;)V

    #@3
    .line 170
    invoke-virtual {p1}, Lorg/apache/xalan/templates/AVT;->getSimpleString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 171
    .local v0, "val":Ljava/lang/String;
    const-string/jumbo v1, "default"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 173
    const/4 v1, 0x2

    #@11
    invoke-super {p0, v1}, Lorg/apache/xalan/templates/ElemUse;->setXmlSpace(I)V

    #@14
    .line 166
    :cond_0
    :goto_0
    return-void

    #@15
    .line 175
    :cond_1
    const-string/jumbo v1, "preserve"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 177
    const/4 v1, 0x1

    #@1f
    invoke-super {p0, v1}, Lorg/apache/xalan/templates/ElemUse;->setXmlSpace(I)V

    #@22
    goto :goto_0
.end method

.method public throwDOMException(SLjava/lang/String;)V
    .locals 2
    .param p1, "code"    # S
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1473
    const/4 v1, 0x0

    #@1
    invoke-static {p2, v1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1475
    .local v0, "themsg":Ljava/lang/String;
    new-instance v1, Lorg/w3c/dom/DOMException;

    #@7
    invoke-direct {v1, p1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@a
    throw v1
.end method
