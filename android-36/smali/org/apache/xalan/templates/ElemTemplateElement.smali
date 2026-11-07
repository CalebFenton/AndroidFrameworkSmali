.class public Lorg/apache/xalan/templates/ElemTemplateElement;
.super Lorg/apache/xml/utils/UnImplNode;
.source "ElemTemplateElement.java"

# interfaces
.implements Lorg/apache/xml/utils/PrefixResolver;
.implements Ljava/io/Serializable;
.implements Lorg/apache/xpath/ExpressionNode;
.implements Lorg/apache/xpath/WhitespaceStrippingElementMatcher;
.implements Lorg/apache/xalan/templates/XSLTVisitable;


# static fields
.field static final whitelist serialVersionUID:J = 0x3d9e1d63f87d91cfL


# instance fields
.field private transient greylist m_DOMBackPointer:Lorg/w3c/dom/Node;

.field private greylist m_columnNumber:I

.field private greylist m_declaredPrefixes:Ljava/util/List;

.field private greylist m_defaultSpace:Z

.field protected greylist m_docOrderNumber:I

.field private greylist m_endColumnNumber:I

.field private greylist m_endLineNumber:I

.field greylist m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

.field private greylist m_hasTextLitOnly:Z

.field protected greylist m_hasVariableDecl:Z

.field private greylist m_lineNumber:I

.field greylist m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

.field protected greylist m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

.field private greylist m_prefixTable:Ljava/util/List;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Lorg/apache/xml/utils/UnImplNode;-><init>()V

    const/4 v0, 0x1

    .line 758
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_defaultSpace:Z

    const/4 v0, 0x0

    .line 764
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasTextLitOnly:Z

    .line 770
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasVariableDecl:Z

    const/4 v0, -0x1

    .line 1255
    iput v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_docOrderNumber:I

    return-void
.end method

.method private greylist excludeResultNSDecl(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-eqz p2, :cond_1d

    .line 1007
    const-string v0, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    .line 1008
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/xalan/templates/Stylesheet;->containsExtensionElementURI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1c

    .line 1011
    :cond_16
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1d

    :cond_1c
    :goto_1c
    return v1

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected greylist accept(Lorg/apache/xalan/templates/XSLTVisitor;)Z
    .registers 2

    .line 1615
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result p0

    return p0
.end method

.method greylist addOrReplaceDecls(Lorg/apache/xalan/templates/XMLNSDecl;)V
    .registers 5

    .line 1132
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_24

    .line 1136
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/XMLNSDecl;

    .line 1138
    invoke-virtual {v1}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    return-void

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1143
    :cond_24
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public greylist appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 4

    if-nez p1, :cond_8

    .line 297
    const-string v0, "ER_NULL_CHILD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    :cond_8
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-nez v0, :cond_f

    .line 302
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_15

    .line 306
    :cond_f
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getLastChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 308
    iput-object p1, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 311
    :goto_15
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    return-object p1
.end method

.method public whitelist test-api appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    if-nez p1, :cond_8

    .line 259
    const-string v0, "ER_NULL_CHILD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    :cond_8
    move-object v0, p1

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 264
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-nez v1, :cond_12

    .line 266
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_1a

    .line 270
    :cond_12
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 272
    iput-object v0, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 275
    :goto_1a
    iput-object p0, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object p1
.end method

.method protected greylist callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V
    .registers 3

    const/4 v0, 0x1

    .line 1649
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    return-void
.end method

.method protected greylist callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 3

    .line 1635
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_2
    if-eqz p0, :cond_a

    .line 1639
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1637
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_2

    :cond_a
    return-void
.end method

.method public greylist callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V
    .registers 3

    .line 1623
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->accept(Lorg/apache/xalan/templates/XSLTVisitor;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1625
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    :cond_9
    return-void
.end method

.method public greylist canAcceptVariables()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist canStripWhiteSpace()Z
    .registers 1

    .line 1549
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1550
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->canStripWhiteSpace()Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public greylist compareTo(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 1510
    check-cast p1, Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 1511
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    move-result v0

    .line 1512
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    move-result v1

    if-ge v1, v0, :cond_16

    const/4 p0, -0x1

    return p0

    :cond_16
    if-le v1, v0, :cond_1a

    const/4 p0, 0x1

    return p0

    .line 1519
    :cond_1a
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getUid()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getUid()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public greylist compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->resolvePrefixTables()V

    .line 194
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 196
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v1

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_19

    .line 197
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasTextLitOnly:Z

    .line 199
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object p0

    .line 200
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->pushStackMark()V

    return-void
.end method

.method public greylist containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 982
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 984
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public greylist endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 208
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object p0

    .line 209
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->popStackMark()V

    return-void
.end method

.method public greylist error(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public greylist error(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 221
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 223
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ER_ELEMTEMPLATEELEM_ERR"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method greylist executeNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1166
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->executeNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;Ljava/lang/String;)V

    return-void
.end method

.method greylist executeNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1182
    :try_start_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    if-eqz v0, :cond_3a

    .line 1184
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object p1

    .line 1185
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_10
    if-ltz v0, :cond_3a

    .line 1189
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/XMLNSDecl;

    .line 1191
    invoke-virtual {v2}, Lorg/apache/xalan/templates/XMLNSDecl;->getIsExcluded()Z

    move-result v3

    if-nez v3, :cond_37

    if-eqz p2, :cond_2c

    invoke-virtual {v2}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 1193
    :cond_2c
    invoke-virtual {v2}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/xalan/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2, v1}, Lorg/apache/xml/serializer/ExtendedContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_37
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_37} :catch_3b

    :cond_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_3a
    return-void

    :catch_3b
    move-exception p0

    .line 1200
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public greylist exprAddChild(Lorg/apache/xpath/ExpressionNode;I)V
    .registers 3

    .line 1590
    check-cast p1, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    return-void
.end method

.method public greylist exprGetChild(I)Lorg/apache/xpath/ExpressionNode;
    .registers 2

    .line 1597
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/ExpressionNode;

    return-object p0
.end method

.method public greylist exprGetNumChildren()I
    .registers 1

    .line 1603
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getLength()I

    move-result p0

    return p0
.end method

.method public greylist exprGetParent()Lorg/apache/xpath/ExpressionNode;
    .registers 1

    .line 1580
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    return-object p0
.end method

.method public greylist exprSetParent(Lorg/apache/xpath/ExpressionNode;)V
    .registers 2

    .line 1572
    check-cast p1, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    return-void
.end method

.method public greylist getBaseIdentifier()Ljava/lang/String;
    .registers 1

    .line 634
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getChildNodes()Lorg/w3c/dom/NodeList;
    .registers 1

    .line 0
    return-object p0
.end method

.method public whitelist test-api getColumnNumber()I
    .registers 1

    .line 700
    iget p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_columnNumber:I

    return p0
.end method

.method public greylist getDOMBackPointer()Lorg/w3c/dom/Node;
    .registers 1

    .line 1480
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_DOMBackPointer:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public greylist getDeclaredPrefixes()Ljava/util/List;
    .registers 1

    .line 823
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    return-object p0
.end method

.method public greylist getEndColumnNumber()I
    .registers 1

    .line 687
    iget p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_endColumnNumber:I

    return p0
.end method

.method public greylist getEndLineNumber()I
    .registers 1

    .line 654
    iget p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_endLineNumber:I

    return p0
.end method

.method public whitelist test-api getFirstChild()Lorg/w3c/dom/Node;
    .registers 1

    .line 1416
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object p0
.end method

.method public greylist getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 1

    .line 1426
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object p0
.end method

.method public whitelist test-api getLastChild()Lorg/w3c/dom/Node;
    .registers 3

    .line 1439
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    const/4 v0, 0x0

    :goto_3
    if-eqz p0, :cond_b

    .line 1440
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_3

    :cond_b
    return-object v0
.end method

.method public greylist getLastChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 3

    .line 1458
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    const/4 v0, 0x0

    :goto_3
    if-eqz p0, :cond_b

    .line 1459
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_3

    :cond_b
    return-object v0
.end method

.method public whitelist test-api getLength()I
    .registers 2

    .line 545
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    const/4 v0, 0x0

    :goto_3
    if-eqz p0, :cond_a

    add-int/lit8 v0, v0, 0x1

    .line 546
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_3

    :cond_a
    return v0
.end method

.method public whitelist test-api getLineNumber()I
    .registers 1

    .line 666
    iget p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_lineNumber:I

    return p0
.end method

.method public whitelist test-api getLocalName()Ljava/lang/String;
    .registers 1

    .line 113
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 915
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    if-eqz v0, :cond_2d

    .line 919
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 920
    const-string v2, "#default"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 922
    const-string p1, ""

    :cond_12
    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_2d

    .line 927
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/templates/XMLNSDecl;

    .line 929
    invoke-virtual {v3}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 930
    invoke-virtual {v3}, Lorg/apache/xalan/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 935
    :cond_2d
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz p0, :cond_36

    .line 936
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 941
    :cond_36
    const-string p0, "xml"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_41

    .line 942
    const-string p0, "http://www.w3.org/XML/1998/namespace"

    return-object p0

    :cond_41
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 3

    .line 889
    const-string p1, "ER_CANT_RESOLVE_NSPREFIX"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2
.end method

.method public whitelist test-api getNextSibling()Lorg/w3c/dom/Node;
    .registers 1

    .line 1327
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object p0
.end method

.method public greylist getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 1

    .line 1389
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object p0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 101
    const-string p0, "Unknown XSLT Element"

    return-object p0
.end method

.method public whitelist test-api getNodeType()S
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api getOwnerDocument()Lorg/w3c/dom/Document;
    .registers 1

    .line 584
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object p0

    return-object p0
.end method

.method public greylist getOwnerXSLTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .registers 3

    .line 595
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    :cond_4
    :goto_4
    if-eqz p0, :cond_15

    const/16 v1, 0x13

    if-eq v0, v1, :cond_15

    .line 598
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 600
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    goto :goto_4

    .line 602
    :cond_15
    check-cast p0, Lorg/apache/xalan/templates/ElemTemplate;

    return-object p0
.end method

.method public greylist getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 1

    .line 1301
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object p0
.end method

.method public whitelist test-api getParentNode()Lorg/w3c/dom/Node;
    .registers 1

    .line 1291
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object p0
.end method

.method public greylist getParentNodeElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 1

    .line 1399
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object p0
.end method

.method greylist getPrefixTable()Ljava/util/List;
    .registers 1

    .line 963
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    return-object p0
.end method

.method public whitelist test-api getPreviousSibling()Lorg/w3c/dom/Node;
    .registers 5

    .line 1342
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 1345
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v2, v1

    :goto_c
    if-eqz v0, :cond_19

    if-ne v0, p0, :cond_11

    return-object v2

    .line 1346
    :cond_11
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_c

    :cond_19
    return-object v1
.end method

.method public greylist getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 5

    .line 1367
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentNodeElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 1371
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    move-object v2, v1

    :goto_c
    if-eqz v0, :cond_19

    if-ne v0, p0, :cond_11

    return-object v2

    .line 1372
    :cond_11
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_c

    :cond_19
    return-object v1
.end method

.method public whitelist test-api getPublicId()Ljava/lang/String;
    .registers 1

    .line 712
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPublicId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .registers 1

    .line 161
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object p0

    return-object p0
.end method

.method public greylist getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;
    .registers 1

    .line 149
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object p0

    return-object p0
.end method

.method public greylist getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;
    .registers 1

    .line 174
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSystemId()Ljava/lang/String;
    .registers 1

    .line 727
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 728
    :cond_8
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getHref()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getTagName()Ljava/lang/String;
    .registers 1

    .line 613
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getUid()I
    .registers 1

    .line 1274
    iget p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_docOrderNumber:I

    return p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public greylist getXmlSpace()Z
    .registers 1

    .line 805
    iget-boolean p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_defaultSpace:Z

    return p0
.end method

.method public greylist handlesNullPrefixes()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hasChildNodes()Z
    .registers 1

    .line 324
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public greylist hasTextLitOnly()Z
    .registers 1

    .line 622
    iget-boolean p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasTextLitOnly:Z

    return p0
.end method

.method public greylist hasVariableDecl()Z
    .registers 1

    .line 774
    iget-boolean p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasVariableDecl:Z

    return p0
.end method

.method public whitelist test-api insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    if-nez p2, :cond_6

    .line 438
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p1

    :cond_6
    if-ne p1, p2, :cond_9

    goto :goto_59

    .line 448
    :cond_9
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_d
    if-eqz v0, :cond_57

    if-ne p1, v0, :cond_2c

    if-eqz v1, :cond_1f

    .line 458
    move-object v3, v1

    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 459
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v4, v3, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_27

    .line 461
    :cond_1f
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v3, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 462
    :goto_27
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_d

    :cond_2c
    if-ne p2, v0, :cond_4f

    if-eqz v1, :cond_38

    .line 469
    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object v2, p1

    check-cast v2, Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v2, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_3d

    .line 473
    :cond_38
    move-object v1, p1

    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 475
    :goto_3d
    move-object v1, p1

    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object v2, p2

    check-cast v2, Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v2, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 476
    invoke-virtual {v1, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 478
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v2, 0x1

    move-object v1, p1

    goto :goto_d

    .line 483
    :cond_4f
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_d

    :cond_57
    if-eqz v2, :cond_5a

    :goto_59
    return-object p1

    .line 487
    :cond_5a
    new-instance p0, Lorg/w3c/dom/DOMException;

    const/16 p1, 0x8

    const-string p2, "refChild was not found in insertBefore method!"

    invoke-direct {p0, p1, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public greylist isCompiledTemplate()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api item(I)Lorg/w3c/dom/Node;
    .registers 3

    .line 567
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_c

    if-eqz p0, :cond_c

    .line 571
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    return-object p0
.end method

.method greylist needToCheckExclude()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist removeChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    .line 364
    iget-object v1, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eq v1, p0, :cond_8

    goto :goto_1e

    .line 368
    :cond_8
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-ne p1, v1, :cond_11

    .line 369
    iget-object v1, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_19

    .line 372
    :cond_11
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    .line 374
    iget-object v1, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 378
    :goto_19
    iput-object v0, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 379
    iput-object v0, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object p1

    :cond_1e
    :goto_1e
    return-object v0
.end method

.method public greylist replaceChild(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_23

    .line 508
    invoke-virtual {p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    if-eq v1, p0, :cond_a

    goto :goto_23

    .line 513
    :cond_a
    invoke-virtual {p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 516
    iput-object p1, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 519
    :cond_12
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-ne v1, p2, :cond_18

    .line 520
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 522
    :cond_18
    iput-object p0, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 523
    iput-object v0, p2, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 524
    iget-object p0, p2, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object p0, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 525
    iput-object v0, p2, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object p1

    :cond_23
    :goto_23
    return-object v0
.end method

.method public whitelist test-api replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_29

    .line 397
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eq v1, p0, :cond_a

    goto :goto_29

    .line 400
    :cond_a
    check-cast p1, Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 401
    check-cast p2, Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 405
    invoke-virtual {p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz v1, :cond_18

    .line 408
    iput-object p1, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 411
    :cond_18
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-ne v1, p2, :cond_1e

    .line 412
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 414
    :cond_1e
    iput-object p0, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 415
    iput-object v0, p2, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 416
    iget-object p0, p2, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object p0, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 417
    iput-object v0, p2, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object p1

    :cond_29
    :goto_29
    return-object v0
.end method

.method public greylist resolvePrefixTables()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1032
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixTable(Ljava/util/List;)V

    .line 1038
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    .line 1040
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    .line 1044
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_14
    if-ge v3, v2, :cond_5c

    .line 1048
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/templates/XMLNSDecl;

    .line 1049
    invoke-virtual {v4}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v5

    .line 1050
    invoke-virtual {v4}, Lorg/apache/xalan/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2a

    .line 1052
    const-string v4, ""

    .line 1053
    :cond_2a
    invoke-direct {p0, v5, v4}, Lorg/apache/xalan/templates/ElemTemplateElement;->excludeResultNSDecl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 1056
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    if-nez v7, :cond_3a

    .line 1057
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v7}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixTable(Ljava/util/List;)V

    .line 1059
    :cond_3a
    invoke-virtual {v0, v4}, Lorg/apache/xalan/templates/StylesheetRoot;->getNamespaceAliasComposed(Ljava/lang/String;)Lorg/apache/xalan/templates/NamespaceAlias;

    move-result-object v7

    if-eqz v7, :cond_4e

    .line 1068
    new-instance v4, Lorg/apache/xalan/templates/XMLNSDecl;

    invoke-virtual {v7}, Lorg/apache/xalan/templates/NamespaceAlias;->getStylesheetPrefix()Ljava/lang/String;

    move-result-object v5

    .line 1069
    invoke-virtual {v7}, Lorg/apache/xalan/templates/NamespaceAlias;->getResultNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7, v6}, Lorg/apache/xalan/templates/XMLNSDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_54

    .line 1072
    :cond_4e
    new-instance v7, Lorg/apache/xalan/templates/XMLNSDecl;

    invoke-direct {v7, v5, v4, v6}, Lorg/apache/xalan/templates/XMLNSDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v4, v7

    .line 1074
    :goto_54
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1079
    :cond_5c
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentNodeElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    if-eqz v0, :cond_a6

    .line 1085
    iget-object v2, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    .line 1087
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    if-nez v3, :cond_74

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->needToCheckExclude()Z

    move-result v3

    if-nez v3, :cond_74

    .line 1091
    iget-object v0, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixTable(Ljava/util/List;)V

    return-void

    .line 1097
    :cond_74
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    :goto_78
    if-ge v1, v0, :cond_b2

    .line 1101
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/templates/XMLNSDecl;

    .line 1102
    invoke-virtual {v3}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v4

    .line 1103
    invoke-virtual {v3}, Lorg/apache/xalan/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    move-result-object v5

    .line 1102
    invoke-direct {p0, v4, v5}, Lorg/apache/xalan/templates/ElemTemplateElement;->excludeResultNSDecl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1105
    invoke-virtual {v3}, Lorg/apache/xalan/templates/XMLNSDecl;->getIsExcluded()Z

    move-result v5

    if-eq v4, v5, :cond_a0

    .line 1107
    new-instance v5, Lorg/apache/xalan/templates/XMLNSDecl;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lorg/apache/xalan/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v3, v4}, Lorg/apache/xalan/templates/XMLNSDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v3, v5

    .line 1112
    :cond_a0
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->addOrReplaceDecls(Lorg/apache/xalan/templates/XMLNSDecl;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    .line 1116
    :cond_a6
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    if-nez v0, :cond_b2

    .line 1120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixTable(Ljava/util/List;)V

    :cond_b2
    return-void
.end method

.method public greylist runtimeInit(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist setDOMBackPointer(Lorg/w3c/dom/Node;)V
    .registers 2

    .line 1492
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_DOMBackPointer:Lorg/w3c/dom/Node;

    return-void
.end method

.method public greylist setEndLocaterInfo(Ljavax/xml/transform/SourceLocator;)V
    .registers 3

    .line 749
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v0

    iput v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_endLineNumber:I

    .line 750
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result p1

    iput p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_endColumnNumber:I

    return-void
.end method

.method public greylist setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V
    .registers 3

    .line 738
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v0

    iput v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_lineNumber:I

    .line 739
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result p1

    iput p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_columnNumber:I

    return-void
.end method

.method public greylist setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 2

    .line 1311
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-void
.end method

.method greylist setPrefixTable(Ljava/util/List;)V
    .registers 2

    .line 967
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    return-void
.end method

.method public greylist setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 838
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;Z)V

    return-void
.end method

.method public greylist setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 856
    invoke-virtual {p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getDeclaredPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    .line 858
    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 860
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 862
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    if-nez v2, :cond_1b

    .line 863
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    .line 865
    :cond_1b
    invoke-virtual {p1, v1}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_2a

    .line 867
    const-string v3, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_4

    .line 871
    :cond_2a
    new-instance v3, Lorg/apache/xalan/templates/XMLNSDecl;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Lorg/apache/xalan/templates/XMLNSDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 873
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_36
    return-void
.end method

.method public greylist setUid(I)V
    .registers 2

    .line 1264
    iput p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_docOrderNumber:I

    return-void
.end method

.method public greylist setXmlSpace(I)V
    .registers 3

    const/4 v0, 0x2

    if-ne v0, p1, :cond_5

    const/4 p1, 0x1

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    .line 790
    :goto_6
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_defaultSpace:Z

    return-void
.end method

.method public greylist shouldStripWhiteSpace(Lorg/apache/xpath/XPathContext;Lorg/w3c/dom/Element;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1537
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1538
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->shouldStripWhiteSpace(Lorg/apache/xpath/XPathContext;Lorg/w3c/dom/Element;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method greylist unexecuteNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1214
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->unexecuteNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;Ljava/lang/String;)V

    return-void
.end method

.method greylist unexecuteNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1231
    :try_start_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    if-eqz v0, :cond_35

    .line 1233
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object p1

    .line 1234
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_35

    .line 1238
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/XMLNSDecl;

    .line 1240
    invoke-virtual {v2}, Lorg/apache/xalan/templates/XMLNSDecl;->getIsExcluded()Z

    move-result v3

    if-nez v3, :cond_32

    if-eqz p2, :cond_2b

    invoke-virtual {v2}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 1242
    :cond_2b
    invoke-virtual {v2}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_32
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_32} :catch_36

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_35
    return-void

    :catch_36
    move-exception p0

    .line 1249
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
