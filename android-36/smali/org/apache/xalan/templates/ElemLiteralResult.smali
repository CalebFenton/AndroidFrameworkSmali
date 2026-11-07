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
.field private static final greylist EMPTYSTRING:Ljava/lang/String; = ""

.field static final whitelist serialVersionUID:J = -0x78c8b870c7d06eacL


# instance fields
.field private greylist isLiteralResultAsStylesheet:Z

.field private greylist m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

.field private greylist m_avts:Ljava/util/List;

.field private greylist m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

.field private greylist m_localName:Ljava/lang/String;

.field private greylist m_namespace:Ljava/lang/String;

.field private greylist m_rawName:Ljava/lang/String;

.field private greylist m_version:Ljava/lang/String;

.field private greylist m_xslAttr:Ljava/util/List;


# direct methods
.method static bridge synthetic greylist -$$Nest$fgetm_avts(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    return-object p0
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemUse;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->isLiteralResultAsStylesheet:Z

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    .line 125
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_xslAttr:Ljava/util/List;

    return-void
.end method

.method private greylist excludeResultNSDecl(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1282
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    if-eqz v0, :cond_9

    .line 1284
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemLiteralResult;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected greylist accept(Lorg/apache/xalan/templates/XSLTVisitor;)Z
    .registers 2

    .line 1443
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitLiteralResultElement(Lorg/apache/xalan/templates/ElemLiteralResult;)Z

    move-result p0

    return p0
.end method

.method public greylist addLiteralResultAttribute(Ljava/lang/String;)V
    .registers 3

    .line 149
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_xslAttr:Ljava/util/List;

    if-nez v0, :cond_b

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_xslAttr:Ljava/util/List;

    .line 152
    :cond_b
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_xslAttr:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public greylist addLiteralResultAttribute(Lorg/apache/xalan/templates/AVT;)V
    .registers 3

    .line 135
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    if-nez v0, :cond_b

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    .line 138
    :cond_b
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected greylist callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 5

    if-eqz p2, :cond_1c

    .line 1452
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    if-eqz v0, :cond_1c

    .line 1454
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_1c

    .line 1458
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/AVT;

    .line 1459
    invoke-virtual {v1, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1462
    :cond_1c
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public greylist compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 100
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 101
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    if-eqz v1, :cond_29

    .line 105
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_15
    if-ltz v1, :cond_29

    .line 109
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/AVT;

    .line 110
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    :cond_29
    return-void
.end method

.method public greylist containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    if-eqz p2, :cond_45

    .line 301
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_b

    goto :goto_45

    .line 307
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    .line 308
    const-string p1, "#default"

    .line 312
    :cond_13
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    const/4 v1, 0x1

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    .line 313
    :goto_19
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v2}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result v2

    if-ge v0, v2, :cond_35

    .line 315
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    return v1

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 320
    :cond_35
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-eqz v0, :cond_40

    invoke-virtual {v0, p2}, Lorg/apache/xml/utils/StringVector;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    return v1

    .line 323
    :cond_40
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 305
    :cond_45
    :goto_45
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public greylist containsExtensionElementURI(Ljava/lang/String;)Z
    .registers 2

    .line 1187
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1190
    :cond_6
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/StringVector;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public greylist enumerateLiteralResultAttributes()Ljava/util/Iterator;
    .registers 1

    .line 1431
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1303
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v1

    .line 1311
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->executeNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 1315
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getRawName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lorg/apache/xml/serializer/ExtendedContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_21} :catch_9d

    .line 1334
    :try_start_21
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemUse;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 1338
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    const/4 v8, 0x1

    if-eqz v0, :cond_62

    .line 1340
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v8

    :goto_2e
    if-ltz v0, :cond_62

    .line 1344
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/AVT;

    .line 1345
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    .line 1346
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v4

    .line 1348
    invoke-virtual {v2, v3, v4, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5f

    move-object v3, v2

    .line 1359
    invoke-virtual {v3}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    .line 1360
    invoke-virtual {v4}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1361
    invoke-virtual {v4}, Lorg/apache/xalan/templates/AVT;->getRawName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CDATA"

    const/4 v7, 0x0

    .line 1358
    invoke-interface/range {v1 .. v7}, Lorg/apache/xml/serializer/ExtendedContentHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5f

    :catch_5b
    move-exception v0

    goto :goto_68

    :catch_5d
    move-exception v0

    goto :goto_66

    :cond_5f
    :goto_5f
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    .line 1370
    :cond_62
    invoke-virtual {p1, p0, v8}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V
    :try_end_65
    .catch Ljavax/xml/transform/TransformerException; {:try_start_21 .. :try_end_65} :catch_5d
    .catch Lorg/xml/sax/SAXException; {:try_start_21 .. :try_end_65} :catch_5b

    const/4 v0, 0x0

    :goto_66
    move-object v2, v0

    goto :goto_6d

    .line 1379
    :goto_68
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    .line 1389
    :goto_6d
    :try_start_6d
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getRawName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v3, v4}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catch Lorg/xml/sax/SAXException; {:try_start_6d .. :try_end_7c} :catch_92

    if-nez v2, :cond_91

    .line 1409
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->unexecuteNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 1414
    :try_start_81
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_88
    .catch Lorg/xml/sax/SAXException; {:try_start_81 .. :try_end_88} :catch_89

    return-void

    :catch_89
    move-exception v0

    move-object p0, v0

    .line 1418
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1407
    :cond_91
    throw v2

    :catch_92
    move-exception v0

    move-object p0, v0

    if-eqz v2, :cond_97

    .line 1398
    throw v2

    .line 1400
    :cond_97
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_9d
    move-exception v0

    move-object p0, v0

    .line 1319
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public whitelist test-api getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 278
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemLiteralResult;->getLiteralResultAttribute(Ljava/lang/String;)Lorg/apache/xalan/templates/AVT;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 282
    invoke-virtual {p0}, Lorg/apache/xalan/templates/AVT;->getSimpleString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 285
    :cond_b
    const-string p0, ""

    return-object p0
.end method

.method public whitelist test-api getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 224
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemLiteralResult;->getLiteralResultAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/templates/AVT;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 228
    invoke-virtual {p0}, Lorg/apache/xalan/templates/AVT;->getSimpleString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 231
    :cond_b
    const-string p0, ""

    return-object p0
.end method

.method public whitelist test-api getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .registers 2

    .line 550
    new-instance v0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;

    invoke-direct {v0, p0}, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;-><init>(Lorg/apache/xalan/templates/ElemLiteralResult;)V

    return-object v0
.end method

.method public greylist getExtensionElementPrefix(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 1158
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-eqz p0, :cond_9

    .line 1161
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1159
    :cond_9
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public greylist getExtensionElementPrefixCount()I
    .registers 1

    .line 1172
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-eqz p0, :cond_9

    .line 1173
    invoke-virtual {p0}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getIsLiteralResultAsStylesheet()Z
    .registers 1

    .line 89
    iget-boolean p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->isLiteralResultAsStylesheet:Z

    return p0
.end method

.method public greylist getLiteralResultAttribute(Ljava/lang/String;)Lorg/apache/xalan/templates/AVT;
    .registers 8

    .line 245
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    if-eqz v0, :cond_56

    .line 247
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_56

    .line 251
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/AVT;

    .line 252
    invoke-virtual {v1}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v2

    .line 254
    const-string v3, ""

    if-eqz v2, :cond_40

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v1}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    :cond_40
    if-eqz v2, :cond_48

    .line 256
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    :cond_48
    invoke-virtual {v1}, Lorg/apache/xalan/templates/AVT;->getRawName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    :cond_52
    return-object v1

    :cond_53
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_56
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getLiteralResultAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/templates/AVT;
    .registers 6

    .line 193
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    if-eqz v0, :cond_2c

    .line 195
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_2c

    .line 199
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/AVT;

    .line 201
    invoke-virtual {v1}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 202
    invoke-virtual {v1}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    return-object v1

    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getLocalName()Ljava/lang/String;
    .registers 1

    .line 481
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getNamespace()Ljava/lang/String;
    .registers 1

    .line 450
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 1213
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api getPrefix()Ljava/lang/String;
    .registers 3

    .line 519
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_19

    .line 521
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 522
    :cond_19
    const-string p0, ""

    return-object p0
.end method

.method public greylist getRawName()Ljava/lang/String;
    .registers 1

    .line 509
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getVersion()Ljava/lang/String;
    .registers 1

    .line 1241
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_version:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x4d

    return p0
.end method

.method greylist needToCheckExclude()Z
    .registers 2

    .line 402
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPrefixTable()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return p0

    .line 410
    :cond_10
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPrefixTable()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixTable(Ljava/util/List;)V

    :cond_1e
    const/4 p0, 0x1

    return p0
.end method

.method public greylist resolvePrefixTables()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 335
    invoke-super {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->resolvePrefixTables()V

    .line 337
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    const-string v2, ":"

    if-eqz v1, :cond_48

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_48

    .line 341
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->getNamespaceAliasComposed(Ljava/lang/String;)Lorg/apache/xalan/templates/NamespaceAlias;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 345
    invoke-virtual {v1}, Lorg/apache/xalan/templates/NamespaceAlias;->getResultNamespace()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    .line 348
    invoke-virtual {v1}, Lorg/apache/xalan/templates/NamespaceAlias;->getStylesheetPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 350
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_44

    .line 351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    goto :goto_48

    .line 353
    :cond_44
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    .line 357
    :cond_48
    :goto_48
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    if-eqz v1, :cond_9e

    .line 359
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_51
    if-ge v3, v1, :cond_9e

    .line 363
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/templates/AVT;

    .line 366
    invoke-virtual {v4}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9b

    .line 368
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9b

    .line 370
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    .line 371
    invoke-virtual {v0, v5}, Lorg/apache/xalan/templates/StylesheetRoot;->getNamespaceAliasComposed(Ljava/lang/String;)Lorg/apache/xalan/templates/NamespaceAlias;

    move-result-object v5

    if-eqz v5, :cond_9b

    .line 375
    invoke-virtual {v5}, Lorg/apache/xalan/templates/NamespaceAlias;->getResultNamespace()Ljava/lang/String;

    move-result-object v6

    .line 378
    invoke-virtual {v5}, Lorg/apache/xalan/templates/NamespaceAlias;->getStylesheetPrefix()Ljava/lang/String;

    move-result-object v5

    .line 379
    invoke-virtual {v4}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_95

    .line 381
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_95

    .line 382
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 384
    :cond_95
    invoke-virtual {v4, v6}, Lorg/apache/xalan/templates/AVT;->setURI(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v4, v7}, Lorg/apache/xalan/templates/AVT;->setRawName(Ljava/lang/String;)V

    :cond_9b
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    :cond_9e
    return-void
.end method

.method public greylist setExcludeResultPrefixes(Lorg/apache/xml/utils/StringVector;)V
    .registers 2

    .line 1264
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    return-void
.end method

.method public greylist setExtensionElementPrefixes(Lorg/apache/xml/utils/StringVector;)V
    .registers 2

    .line 540
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    return-void
.end method

.method public greylist setIsLiteralResultAsStylesheet(Z)V
    .registers 2

    .line 76
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->isLiteralResultAsStylesheet:Z

    return-void
.end method

.method public greylist setLocalName(Ljava/lang/String;)V
    .registers 2

    .line 467
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    return-void
.end method

.method public greylist setNamespace(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_4

    .line 435
    const-string p1, ""

    .line 436
    :cond_4
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    return-void
.end method

.method public greylist setRawName(Ljava/lang/String;)V
    .registers 2

    .line 498
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    return-void
.end method

.method public greylist setVersion(Ljava/lang/String;)V
    .registers 2

    .line 1230
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_version:Ljava/lang/String;

    return-void
.end method

.method public greylist setXmlSpace(Lorg/apache/xalan/templates/AVT;)V
    .registers 3

    .line 169
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemLiteralResult;->addLiteralResultAttribute(Lorg/apache/xalan/templates/AVT;)V

    .line 170
    invoke-virtual {p1}, Lorg/apache/xalan/templates/AVT;->getSimpleString()Ljava/lang/String;

    move-result-object p1

    .line 171
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p1, 0x2

    .line 173
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setXmlSpace(I)V

    return-void

    .line 175
    :cond_14
    const-string v0, "preserve"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    .line 177
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setXmlSpace(I)V

    :cond_20
    return-void
.end method

.method public greylist throwDOMException(SLjava/lang/String;)V
    .registers 3

    const/4 p0, 0x0

    .line 1473
    invoke-static {p2, p0}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1475
    new-instance p2, Lorg/w3c/dom/DOMException;

    invoke-direct {p2, p1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p2
.end method
