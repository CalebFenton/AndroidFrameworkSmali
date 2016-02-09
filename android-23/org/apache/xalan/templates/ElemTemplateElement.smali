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
.field static final serialVersionUID:J = 0x3d9e1d63f87d91cfL


# instance fields
.field private transient m_DOMBackPointer:Lorg/w3c/dom/Node;

.field private m_columnNumber:I

.field private m_declaredPrefixes:Ljava/util/List;

.field private m_defaultSpace:Z

.field protected m_docOrderNumber:I

.field private m_endColumnNumber:I

.field private m_endLineNumber:I

.field m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

.field private m_hasTextLitOnly:Z

.field protected m_hasVariableDecl:Z

.field private m_lineNumber:I

.field m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

.field protected m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

.field private m_prefixTable:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 70
    invoke-direct {p0}, Lorg/apache/xml/utils/UnImplNode;-><init>()V

    #@4
    .line 758
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_defaultSpace:Z

    #@7
    .line 764
    iput-boolean v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasTextLitOnly:Z

    #@9
    .line 770
    iput-boolean v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasVariableDecl:Z

    #@b
    .line 1255
    const/4 v0, -0x1

    #@c
    iput v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_docOrderNumber:I

    #@e
    .line 70
    return-void
.end method

.method private excludeResultNSDecl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1005
    if-eqz p2, :cond_2

    #@3
    .line 1007
    const-string/jumbo v0, "http://www.w3.org/1999/XSL/Transform"

    #@6
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1008
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p2}, Lorg/apache/xalan/templates/Stylesheet;->containsExtensionElementURI(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    .line 1007
    if-eqz v0, :cond_1

    #@16
    .line 1009
    :cond_0
    return v1

    #@17
    .line 1011
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 1012
    return v1

    #@1e
    .line 1015
    :cond_2
    const/4 v0, 0x0

    #@1f
    return v0
.end method


# virtual methods
.method protected accept(Lorg/apache/xalan/templates/XSLTVisitor;)Z
    .locals 1
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;

    #@0
    .prologue
    .line 1615
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method addOrReplaceDecls(Lorg/apache/xalan/templates/XMLNSDecl;)V
    .locals 5
    .param p1, "newDecl"    # Lorg/apache/xalan/templates/XMLNSDecl;

    #@0
    .prologue
    .line 1132
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    #@2
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@5
    move-result v2

    #@6
    .line 1134
    .local v2, "n":I
    add-int/lit8 v1, v2, -0x1

    #@8
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@a
    .line 1136
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    #@c
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lorg/apache/xalan/templates/XMLNSDecl;

    #@12
    .line 1138
    .local v0, "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {p1}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 1140
    return-void

    #@21
    .line 1134
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@23
    goto :goto_0

    #@24
    .line 1143
    .end local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    :cond_1
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    #@26
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@29
    .line 1130
    return-void
.end method

.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 3
    .param p1, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 295
    if-nez p1, :cond_0

    #@3
    .line 297
    const-string/jumbo v1, "ER_NULL_CHILD"

    #@6
    invoke-virtual {p0, v1, v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@9
    .line 300
    :cond_0
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@b
    if-nez v1, :cond_1

    #@d
    .line 302
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@f
    .line 311
    :goto_0
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@12
    .line 313
    return-object p1

    #@13
    .line 306
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getLastChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@16
    move-result-object v0

    #@17
    .line 308
    .local v0, "last":Lorg/apache/xalan/templates/ElemTemplateElement;
    iput-object p1, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@19
    goto :goto_0
.end method

.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 4
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 257
    if-nez p1, :cond_0

    #@3
    .line 259
    const-string/jumbo v2, "ER_NULL_CHILD"

    #@6
    invoke-virtual {p0, v2, v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@9
    :cond_0
    move-object v0, p1

    #@a
    .line 262
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@c
    .line 264
    .local v0, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@e
    if-nez v2, :cond_1

    #@10
    .line 266
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@12
    .line 275
    :goto_0
    iput-object p0, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@14
    .line 277
    return-object p1

    #@15
    .line 270
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getLastChild()Lorg/w3c/dom/Node;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@1b
    .line 272
    .local v1, "last":Lorg/apache/xalan/templates/ElemTemplateElement;
    iput-object v0, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@1d
    goto :goto_0
.end method

.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V
    .locals 1
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;

    #@0
    .prologue
    .line 1649
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    #@4
    .line 1647
    return-void
.end method

.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 1
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;
    .param p2, "callAttributes"    # Z

    #@0
    .prologue
    .line 1635
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2
    .local v0, "node":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_0
    if-eqz v0, :cond_0

    #@4
    .line 1639
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    #@7
    .line 1637
    iget-object v0, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@9
    goto :goto_0

    #@a
    .line 1633
    :cond_0
    return-void
.end method

.method public callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V
    .locals 1
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;

    #@0
    .prologue
    .line 1623
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->accept(Lorg/apache/xalan/templates/XSLTVisitor;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1625
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    #@9
    .line 1621
    :cond_0
    return-void
.end method

.method public canAcceptVariables()Z
    .locals 1

    #@0
    .prologue
    .line 1559
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public canStripWhiteSpace()Z
    .locals 2

    #@0
    .prologue
    .line 1549
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    #@3
    move-result-object v0

    #@4
    .line 1550
    .local v0, "sroot":Lorg/apache/xalan/templates/StylesheetRoot;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot;->canStripWhiteSpace()Z

    #@9
    move-result v1

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    const/4 v1, 0x0

    #@c
    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    #@0
    .prologue
    move-object v1, p1

    #@1
    .line 1510
    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@3
    .line 1511
    .local v1, "ro":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    #@a
    move-result v2

    #@b
    .line 1512
    .local v2, "roPrecedence":I
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    #@12
    move-result v0

    #@13
    .line 1514
    .local v0, "myPrecedence":I
    if-ge v0, v2, :cond_0

    #@15
    .line 1515
    const/4 v3, -0x1

    #@16
    return v3

    #@17
    .line 1516
    :cond_0
    if-le v0, v2, :cond_1

    #@19
    .line 1517
    const/4 v3, 0x1

    #@1a
    return v3

    #@1b
    .line 1519
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getUid()I

    #@1e
    move-result v3

    #@1f
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getUid()I

    #@22
    move-result v4

    #@23
    sub-int/2addr v3, v4

    #@24
    return v3
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 5
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 193
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->resolvePrefixTables()V

    #@4
    .line 194
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@7
    move-result-object v1

    #@8
    .line 195
    .local v1, "t":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-eqz v1, :cond_0

    #@a
    .line 196
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@d
    move-result v3

    #@e
    const/16 v4, 0x4e

    #@10
    if-ne v3, v4, :cond_0

    #@12
    .line 197
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@15
    move-result-object v3

    #@16
    if-nez v3, :cond_0

    #@18
    const/4 v2, 0x1

    #@19
    .line 195
    :cond_0
    iput-boolean v2, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasTextLitOnly:Z

    #@1b
    .line 199
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@1e
    move-result-object v0

    #@1f
    .line 200
    .local v0, "cstate":Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->pushStackMark()V

    #@22
    .line 191
    return-void
.end method

.method public containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 982
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@3
    move-result-object v0

    #@4
    .line 983
    .local v0, "parent":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-eqz v0, :cond_0

    #@6
    .line 984
    invoke-virtual {v0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 986
    :cond_0
    const/4 v1, 0x0

    #@c
    return v1
.end method

.method public endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 1
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 208
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@3
    move-result-object v0

    #@4
    .line 209
    .local v0, "cstate":Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->popStackMark()V

    #@7
    .line 206
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 236
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@4
    .line 234
    return-void
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 221
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 223
    .local v0, "themsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    #@6
    .line 224
    const-string/jumbo v2, "ER_ELEMTEMPLATEELEM_ERR"

    #@9
    .line 225
    const/4 v3, 0x1

    #@a
    new-array v3, v3, [Ljava/lang/Object;

    #@c
    const/4 v4, 0x0

    #@d
    aput-object v0, v3, v4

    #@f
    .line 223
    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 0
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    return-void
.end method

.method executeNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 1
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1166
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->executeNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;Ljava/lang/String;)V

    #@4
    .line 1164
    return-void
.end method

.method executeNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;Ljava/lang/String;)V
    .locals 8
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p2, "ignorePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1182
    :try_start_0
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    #@2
    if-eqz v5, :cond_2

    #@4
    .line 1184
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    #@7
    move-result-object v3

    #@8
    .line 1185
    .local v3, "rhandler":Lorg/apache/xml/serializer/SerializationHandler;
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    #@a
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@d
    move-result v2

    #@e
    .line 1187
    .local v2, "n":I
    add-int/lit8 v1, v2, -0x1

    #@10
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@12
    .line 1189
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    #@14
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lorg/apache/xalan/templates/XMLNSDecl;

    #@1a
    .line 1191
    .local v0, "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getIsExcluded()Z

    #@1d
    move-result v5

    #@1e
    if-nez v5, :cond_0

    #@20
    if-eqz p2, :cond_1

    #@22
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_1

    #@2c
    .line 1187
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@2e
    goto :goto_0

    #@2f
    .line 1193
    :cond_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    const/4 v7, 0x1

    #@38
    invoke-interface {v3, v5, v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    goto :goto_1

    #@3c
    .line 1199
    .end local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "rhandler":Lorg/apache/xml/serializer/SerializationHandler;
    :catch_0
    move-exception v4

    #@3d
    .line 1200
    .local v4, "se":Lorg/xml/sax/SAXException;
    new-instance v5, Ljavax/xml/transform/TransformerException;

    #@3f
    invoke-direct {v5, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@42
    throw v5

    #@43
    .line 1178
    .end local v4    # "se":Lorg/xml/sax/SAXException;
    :cond_2
    return-void
.end method

.method public exprAddChild(Lorg/apache/xpath/ExpressionNode;I)V
    .locals 0
    .param p1, "n"    # Lorg/apache/xpath/ExpressionNode;
    .param p2, "i"    # I

    #@0
    .prologue
    .line 1590
    check-cast p1, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2
    .end local p1    # "n":Lorg/apache/xpath/ExpressionNode;
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@5
    .line 1588
    return-void
.end method

.method public exprGetChild(I)Lorg/apache/xpath/ExpressionNode;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 1597
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->item(I)Lorg/w3c/dom/Node;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/xpath/ExpressionNode;

    #@6
    return-object v0
.end method

.method public exprGetNumChildren()I
    .locals 1

    #@0
    .prologue
    .line 1603
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getLength()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public exprGetParent()Lorg/apache/xpath/ExpressionNode;
    .locals 1

    #@0
    .prologue
    .line 1580
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public exprSetParent(Lorg/apache/xpath/ExpressionNode;)V
    .locals 0
    .param p1, "n"    # Lorg/apache/xpath/ExpressionNode;

    #@0
    .prologue
    .line 1572
    check-cast p1, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2
    .end local p1    # "n":Lorg/apache/xpath/ExpressionNode;
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@5
    .line 1568
    return-void
.end method

.method public getBaseIdentifier()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 634
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getSystemId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 0

    #@0
    .prologue
    .line 344
    return-object p0
.end method

.method public getColumnNumber()I
    .locals 1

    #@0
    .prologue
    .line 700
    iget v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_columnNumber:I

    #@2
    return v0
.end method

.method public getDOMBackPointer()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 1480
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_DOMBackPointer:Lorg/w3c/dom/Node;

    #@2
    return-object v0
.end method

.method public getDeclaredPrefixes()Ljava/util/List;
    .locals 1

    #@0
    .prologue
    .line 823
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getEndColumnNumber()I
    .locals 1

    #@0
    .prologue
    .line 687
    iget v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_endColumnNumber:I

    #@2
    return v0
.end method

.method public getEndLineNumber()I
    .locals 1

    #@0
    .prologue
    .line 654
    iget v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_endLineNumber:I

    #@2
    return v0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 1416
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2
    return-object v0
.end method

.method public getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 1

    #@0
    .prologue
    .line 1426
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2
    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 2

    #@0
    .prologue
    .line 1437
    const/4 v0, 0x0

    #@1
    .line 1439
    .local v0, "lastChild":Lorg/apache/xalan/templates/ElemTemplateElement;
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@3
    .end local v0    # "lastChild":Lorg/apache/xalan/templates/ElemTemplateElement;
    .local v1, "node":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_0
    if-eqz v1, :cond_0

    #@5
    .line 1442
    move-object v0, v1

    #@6
    .line 1440
    .local v0, "lastChild":Lorg/apache/xalan/templates/ElemTemplateElement;
    iget-object v1, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@8
    goto :goto_0

    #@9
    .line 1445
    .end local v0    # "lastChild":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_0
    return-object v0
.end method

.method public getLastChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 2

    #@0
    .prologue
    .line 1456
    const/4 v0, 0x0

    #@1
    .line 1458
    .local v0, "lastChild":Lorg/apache/xalan/templates/ElemTemplateElement;
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@3
    .end local v0    # "lastChild":Lorg/apache/xalan/templates/ElemTemplateElement;
    .local v1, "node":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_0
    if-eqz v1, :cond_0

    #@5
    .line 1461
    move-object v0, v1

    #@6
    .line 1459
    .local v0, "lastChild":Lorg/apache/xalan/templates/ElemTemplateElement;
    iget-object v1, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@8
    goto :goto_0

    #@9
    .line 1464
    .end local v0    # "lastChild":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_0
    return-object v0
.end method

.method public getLength()I
    .locals 2

    #@0
    .prologue
    .line 543
    const/4 v0, 0x0

    #@1
    .line 545
    .local v0, "count":I
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@3
    .local v1, "node":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_0
    if-eqz v1, :cond_0

    #@5
    .line 548
    add-int/lit8 v0, v0, 0x1

    #@7
    .line 546
    iget-object v1, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@9
    goto :goto_0

    #@a
    .line 551
    :cond_0
    return v0
.end method

.method public getLineNumber()I
    .locals 1

    #@0
    .prologue
    .line 666
    iget v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_lineNumber:I

    #@2
    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 915
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    #@3
    .line 917
    .local v3, "nsDecls":Ljava/util/List;
    if-eqz v3, :cond_2

    #@5
    .line 919
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@8
    move-result v2

    #@9
    .line 920
    .local v2, "n":I
    const-string/jumbo v4, "#default"

    #@c
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    .line 922
    const-string/jumbo p1, ""

    #@15
    .line 925
    :cond_0
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@18
    .line 927
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lorg/apache/xalan/templates/XMLNSDecl;

    #@1e
    .line 929
    .local v0, "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_1

    #@28
    .line 930
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    return-object v4

    #@2d
    .line 925
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 935
    .end local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_2
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@32
    if-eqz v4, :cond_3

    #@34
    .line 936
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@36
    invoke-virtual {v4, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    return-object v4

    #@3b
    .line 941
    :cond_3
    const-string/jumbo v4, "xml"

    #@3e
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v4

    #@42
    if-eqz v4, :cond_4

    #@44
    .line 942
    const-string/jumbo v4, "http://www.w3.org/XML/1998/namespace"

    #@47
    return-object v4

    #@48
    .line 945
    :cond_4
    return-object v5
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "context"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 889
    const-string/jumbo v0, "ER_CANT_RESOLVE_NSPREFIX"

    #@4
    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@7
    .line 891
    return-object v1
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 1327
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2
    return-object v0
.end method

.method public getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 1

    #@0
    .prologue
    .line 1389
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 101
    const-string/jumbo v0, "Unknown XSLT Element"

    #@3
    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    #@0
    .prologue
    .line 334
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    #@0
    .prologue
    .line 584
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getOwnerXSLTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .locals 3

    #@0
    .prologue
    .line 594
    move-object v0, p0

    #@1
    .line 595
    .local v0, "el":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@4
    move-result v1

    #@5
    .line 596
    .local v1, "type":I
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    #@7
    const/16 v2, 0x13

    #@9
    if-eq v1, v2, :cond_1

    #@b
    .line 598
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@e
    move-result-object v0

    #@f
    .line 599
    if-eqz v0, :cond_0

    #@11
    .line 600
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@14
    move-result v1

    #@15
    goto :goto_0

    #@16
    .line 602
    :cond_1
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplate;

    #@18
    .end local v0    # "el":Lorg/apache/xalan/templates/ElemTemplateElement;
    return-object v0
.end method

.method public getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 1

    #@0
    .prologue
    .line 1301
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2
    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 1291
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2
    return-object v0
.end method

.method public getParentNodeElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 1

    #@0
    .prologue
    .line 1399
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2
    return-object v0
.end method

.method getPrefixTable()Ljava/util/List;
    .locals 1

    #@0
    .prologue
    .line 963
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1342
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentNode()Lorg/w3c/dom/Node;

    #@4
    move-result-object v1

    #@5
    .local v1, "walker":Lorg/w3c/dom/Node;
    const/4 v0, 0x0

    #@6
    .line 1344
    .local v0, "prev":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_1

    #@8
    .line 1345
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    #@b
    move-result-object v1

    #@c
    .end local v0    # "prev":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v1, :cond_1

    #@e
    .line 1348
    if-ne v1, p0, :cond_0

    #@10
    .line 1349
    return-object v0

    #@11
    .line 1346
    :cond_0
    move-object v0, v1

    #@12
    .local v0, "prev":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@15
    move-result-object v1

    #@16
    goto :goto_0

    #@17
    .line 1352
    .end local v0    # "prev":Lorg/w3c/dom/Node;
    :cond_1
    return-object v2
.end method

.method public getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1367
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentNodeElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@4
    move-result-object v1

    #@5
    .line 1368
    .local v1, "walker":Lorg/apache/xalan/templates/ElemTemplateElement;
    const/4 v0, 0x0

    #@6
    .line 1370
    .local v0, "prev":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-eqz v1, :cond_1

    #@8
    .line 1371
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@b
    move-result-object v1

    #@c
    .end local v0    # "prev":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_0
    if-eqz v1, :cond_1

    #@e
    .line 1374
    if-ne v1, p0, :cond_0

    #@10
    .line 1375
    return-object v0

    #@11
    .line 1372
    :cond_0
    move-object v0, v1

    #@12
    .local v0, "prev":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@15
    move-result-object v1

    #@16
    goto :goto_0

    #@17
    .line 1378
    .end local v0    # "prev":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_1
    return-object v2
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 712
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@7
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPublicId()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public getStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 161
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@8
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;
    .locals 1

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;
    .locals 1

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 727
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    #@4
    move-result-object v0

    #@5
    .line 728
    .local v0, "sheet":Lorg/apache/xalan/templates/Stylesheet;
    if-nez v0, :cond_0

    #@7
    :goto_0
    return-object v1

    #@8
    :cond_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/Stylesheet;->getHref()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    goto :goto_0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 613
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getUid()I
    .locals 1

    #@0
    .prologue
    .line 1274
    iget v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_docOrderNumber:I

    #@2
    return v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 91
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getXmlSpace()Z
    .locals 1

    #@0
    .prologue
    .line 805
    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_defaultSpace:Z

    #@2
    return v0
.end method

.method public handlesNullPrefixes()Z
    .locals 1

    #@0
    .prologue
    .line 1657
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    #@0
    .prologue
    .line 324
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public hasTextLitOnly()Z
    .locals 1

    #@0
    .prologue
    .line 622
    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasTextLitOnly:Z

    #@2
    return v0
.end method

.method public hasVariableDecl()Z
    .locals 1

    #@0
    .prologue
    .line 774
    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasVariableDecl:Z

    #@2
    return v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 6
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "refChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 436
    if-nez p2, :cond_0

    #@2
    .line 438
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@5
    .line 439
    return-object p1

    #@6
    .line 442
    :cond_0
    if-ne p1, p2, :cond_1

    #@8
    .line 445
    return-object p1

    #@9
    .line 448
    :cond_1
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@b
    .line 449
    .local v1, "node":Lorg/w3c/dom/Node;
    const/4 v2, 0x0

    #@c
    .line 450
    .local v2, "prev":Lorg/w3c/dom/Node;
    const/4 v0, 0x0

    #@d
    .line 452
    .end local v2    # "prev":Lorg/w3c/dom/Node;
    .local v0, "foundit":Z
    :goto_0
    if-eqz v1, :cond_6

    #@f
    .line 455
    if-ne p1, v1, :cond_3

    #@11
    .line 457
    if-eqz v2, :cond_2

    #@13
    move-object v3, v2

    #@14
    .line 458
    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@16
    .line 459
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@19
    move-result-object v4

    #@1a
    check-cast v4, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@1c
    .line 458
    iput-object v4, v3, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@1e
    .line 462
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@21
    move-result-object v1

    #@22
    goto :goto_0

    #@23
    .line 461
    :cond_2
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@29
    iput-object v3, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2b
    goto :goto_1

    #@2c
    .line 465
    :cond_3
    if-ne p2, v1, :cond_5

    #@2e
    .line 467
    if-eqz v2, :cond_4

    #@30
    .line 469
    check-cast v2, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@32
    move-object v3, p1

    #@33
    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@35
    iput-object v3, v2, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@37
    :goto_2
    move-object v3, p1

    #@38
    .line 475
    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@3a
    move-object v4, p2

    #@3b
    check-cast v4, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@3d
    iput-object v4, v3, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@3f
    move-object v3, p1

    #@40
    .line 476
    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@42
    invoke-virtual {v3, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@45
    .line 477
    move-object v2, p1

    #@46
    .line 478
    .local v2, "prev":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@49
    move-result-object v1

    #@4a
    .line 479
    const/4 v0, 0x1

    #@4b
    .line 480
    goto :goto_0

    #@4c
    .end local v2    # "prev":Lorg/w3c/dom/Node;
    :cond_4
    move-object v3, p1

    #@4d
    .line 473
    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@4f
    iput-object v3, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@51
    goto :goto_2

    #@52
    .line 482
    :cond_5
    move-object v2, v1

    #@53
    .line 483
    .restart local v2    # "prev":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@56
    move-result-object v1

    #@57
    goto :goto_0

    #@58
    .line 486
    .end local v2    # "prev":Lorg/w3c/dom/Node;
    :cond_6
    if-nez v0, :cond_7

    #@5a
    .line 487
    new-instance v3, Lorg/w3c/dom/DOMException;

    #@5c
    .line 488
    const-string/jumbo v4, "refChild was not found in insertBefore method!"

    #@5f
    .line 487
    const/16 v5, 0x8

    #@61
    invoke-direct {v3, v5, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@64
    throw v3

    #@65
    .line 490
    :cond_7
    return-object p1
.end method

.method public isCompiledTemplate()Z
    .locals 1

    #@0
    .prologue
    .line 79
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 567
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2
    .line 569
    .local v1, "node":Lorg/apache/xalan/templates/ElemTemplateElement;
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 571
    iget-object v1, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@9
    .line 569
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 574
    :cond_0
    return-object v1
.end method

.method needToCheckExclude()Z
    .locals 1

    #@0
    .prologue
    .line 1153
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0
    .param p1, "root"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 181
    return-void
.end method

.method public removeChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 3
    .param p1, "childETE"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 364
    if-eqz p1, :cond_0

    #@3
    iget-object v1, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@5
    if-eq v1, p0, :cond_1

    #@7
    .line 365
    :cond_0
    return-object v2

    #@8
    .line 368
    :cond_1
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@a
    if-ne p1, v1, :cond_2

    #@c
    .line 369
    iget-object v1, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@e
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@10
    .line 378
    :goto_0
    iput-object v2, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@12
    .line 379
    iput-object v2, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@14
    .line 381
    return-object p1

    #@15
    .line 372
    :cond_2
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@18
    move-result-object v0

    #@19
    .line 374
    .local v0, "prev":Lorg/apache/xalan/templates/ElemTemplateElement;
    iget-object v1, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@1b
    iput-object v1, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@1d
    goto :goto_0
.end method

.method public replaceChild(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 3
    .param p1, "newChildElem"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .param p2, "oldChildElem"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 508
    if-eqz p2, :cond_0

    #@3
    invoke-virtual {p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@6
    move-result-object v1

    #@7
    if-eq v1, p0, :cond_1

    #@9
    .line 509
    :cond_0
    return-object v2

    #@a
    .line 513
    :cond_1
    invoke-virtual {p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@d
    move-result-object v0

    #@e
    .line 515
    .local v0, "prev":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-eqz v0, :cond_2

    #@10
    .line 516
    iput-object p1, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@12
    .line 519
    :cond_2
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@14
    if-ne v1, p2, :cond_3

    #@16
    .line 520
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@18
    .line 522
    :cond_3
    iput-object p0, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@1a
    .line 523
    iput-object v2, p2, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@1c
    .line 524
    iget-object v1, p2, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@1e
    iput-object v1, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@20
    .line 525
    iput-object v2, p2, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@22
    .line 529
    return-object p1
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 5
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "oldChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 397
    if-eqz p2, :cond_0

    #@3
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    #@6
    move-result-object v3

    #@7
    if-eq v3, p0, :cond_1

    #@9
    .line 398
    :cond_0
    return-object v4

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 400
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@d
    .local v0, "newChildElem":Lorg/apache/xalan/templates/ElemTemplateElement;
    move-object v1, p2

    #@e
    .line 401
    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@10
    .line 405
    .local v1, "oldChildElem":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSibling()Lorg/w3c/dom/Node;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@16
    .line 407
    .local v2, "prev":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-eqz v2, :cond_2

    #@18
    .line 408
    iput-object v0, v2, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@1a
    .line 411
    :cond_2
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@1c
    if-ne v3, v1, :cond_3

    #@1e
    .line 412
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@20
    .line 414
    :cond_3
    iput-object p0, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@22
    .line 415
    iput-object v4, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@24
    .line 416
    iget-object v3, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@26
    iput-object v3, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@28
    .line 417
    iput-object v4, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2a
    .line 421
    return-object v0
.end method

.method public resolvePrefixTables()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 1032
    invoke-virtual {p0, v11}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixTable(Ljava/util/List;)V

    #@4
    .line 1038
    iget-object v11, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    #@6
    if-eqz v11, :cond_3

    #@8
    .line 1040
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    #@b
    move-result-object v9

    #@c
    .line 1044
    .local v9, "stylesheet":Lorg/apache/xalan/templates/StylesheetRoot;
    iget-object v11, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    #@e
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@11
    move-result v3

    #@12
    .line 1046
    .local v3, "n":I
    const/4 v2, 0x0

    #@13
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    #@15
    .line 1048
    iget-object v11, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    #@17
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lorg/apache/xalan/templates/XMLNSDecl;

    #@1d
    .line 1049
    .local v0, "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    #@20
    move-result-object v6

    #@21
    .line 1050
    .local v6, "prefix":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    #@24
    move-result-object v10

    #@25
    .line 1051
    .local v10, "uri":Ljava/lang/String;
    if-nez v10, :cond_0

    #@27
    .line 1052
    const-string/jumbo v10, ""

    #@2a
    .line 1053
    :cond_0
    invoke-direct {p0, v6, v10}, Lorg/apache/xalan/templates/ElemTemplateElement;->excludeResultNSDecl(Ljava/lang/String;Ljava/lang/String;)Z

    #@2d
    move-result v8

    #@2e
    .line 1056
    .local v8, "shouldExclude":Z
    iget-object v11, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    #@30
    if-nez v11, :cond_1

    #@32
    .line 1057
    new-instance v11, Ljava/util/ArrayList;

    #@34
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@37
    invoke-virtual {p0, v11}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixTable(Ljava/util/List;)V

    #@3a
    .line 1059
    :cond_1
    invoke-virtual {v9, v10}, Lorg/apache/xalan/templates/StylesheetRoot;->getNamespaceAliasComposed(Ljava/lang/String;)Lorg/apache/xalan/templates/NamespaceAlias;

    #@3d
    move-result-object v4

    #@3e
    .line 1060
    .local v4, "nsAlias":Lorg/apache/xalan/templates/NamespaceAlias;
    if-eqz v4, :cond_2

    #@40
    .line 1068
    new-instance v0, Lorg/apache/xalan/templates/XMLNSDecl;

    #@42
    .end local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    invoke-virtual {v4}, Lorg/apache/xalan/templates/NamespaceAlias;->getStylesheetPrefix()Ljava/lang/String;

    #@45
    move-result-object v11

    #@46
    .line 1069
    invoke-virtual {v4}, Lorg/apache/xalan/templates/NamespaceAlias;->getResultNamespace()Ljava/lang/String;

    #@49
    move-result-object v12

    #@4a
    .line 1068
    invoke-direct {v0, v11, v12, v8}, Lorg/apache/xalan/templates/XMLNSDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@4d
    .line 1074
    .restart local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    :goto_1
    iget-object v11, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    #@4f
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@52
    .line 1046
    add-int/lit8 v2, v2, 0x1

    #@54
    goto :goto_0

    #@55
    .line 1072
    :cond_2
    new-instance v0, Lorg/apache/xalan/templates/XMLNSDecl;

    #@57
    .end local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    invoke-direct {v0, v6, v10, v8}, Lorg/apache/xalan/templates/XMLNSDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@5a
    .restart local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    goto :goto_1

    #@5b
    .line 1079
    .end local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local v4    # "nsAlias":Lorg/apache/xalan/templates/NamespaceAlias;
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v8    # "shouldExclude":Z
    .end local v9    # "stylesheet":Lorg/apache/xalan/templates/StylesheetRoot;
    .end local v10    # "uri":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentNodeElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@5e
    move-result-object v5

    #@5f
    .line 1081
    .local v5, "parent":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-eqz v5, :cond_8

    #@61
    .line 1085
    iget-object v7, v5, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    #@63
    .line 1087
    .local v7, "prefixes":Ljava/util/List;
    iget-object v11, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    #@65
    if-nez v11, :cond_4

    #@67
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->needToCheckExclude()Z

    #@6a
    move-result v11

    #@6b
    if-eqz v11, :cond_6

    #@6d
    .line 1097
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@70
    move-result v3

    #@71
    .line 1099
    .restart local v3    # "n":I
    const/4 v2, 0x0

    #@72
    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v3, :cond_7

    #@74
    .line 1101
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@77
    move-result-object v0

    #@78
    check-cast v0, Lorg/apache/xalan/templates/XMLNSDecl;

    #@7a
    .line 1102
    .restart local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    #@7d
    move-result-object v11

    #@7e
    .line 1103
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    #@81
    move-result-object v12

    #@82
    .line 1102
    invoke-direct {p0, v11, v12}, Lorg/apache/xalan/templates/ElemTemplateElement;->excludeResultNSDecl(Ljava/lang/String;Ljava/lang/String;)Z

    #@85
    move-result v8

    #@86
    .line 1105
    .restart local v8    # "shouldExclude":Z
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getIsExcluded()Z

    #@89
    move-result v11

    #@8a
    if-eq v8, v11, :cond_5

    #@8c
    .line 1107
    new-instance v1, Lorg/apache/xalan/templates/XMLNSDecl;

    #@8e
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    #@91
    move-result-object v11

    #@92
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    #@95
    move-result-object v12

    #@96
    invoke-direct {v1, v11, v12, v8}, Lorg/apache/xalan/templates/XMLNSDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@99
    .end local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    .local v1, "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    move-object v0, v1

    #@9a
    .line 1112
    .end local v1    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    .restart local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    :cond_5
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->addOrReplaceDecls(Lorg/apache/xalan/templates/XMLNSDecl;)V

    #@9d
    .line 1099
    add-int/lit8 v2, v2, 0x1

    #@9f
    goto :goto_2

    #@a0
    .line 1091
    .end local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local v8    # "shouldExclude":Z
    :cond_6
    iget-object v11, v5, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    #@a2
    invoke-virtual {p0, v11}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixTable(Ljava/util/List;)V

    #@a5
    .line 1029
    .end local v7    # "prefixes":Ljava/util/List;
    :cond_7
    :goto_3
    return-void

    #@a6
    .line 1116
    :cond_8
    iget-object v11, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    #@a8
    if-nez v11, :cond_7

    #@aa
    .line 1120
    new-instance v11, Ljava/util/ArrayList;

    #@ac
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@af
    invoke-virtual {p0, v11}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixTable(Ljava/util/List;)V

    #@b2
    goto :goto_3
.end method

.method public runtimeInit(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 0
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    return-void
.end method

.method public setDOMBackPointer(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "n"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 1492
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_DOMBackPointer:Lorg/w3c/dom/Node;

    #@2
    .line 1490
    return-void
.end method

.method public setEndLocaterInfo(Ljavax/xml/transform/SourceLocator;)V
    .locals 1
    .param p1, "locator"    # Ljavax/xml/transform/SourceLocator;

    #@0
    .prologue
    .line 749
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_endLineNumber:I

    #@6
    .line 750
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_endColumnNumber:I

    #@c
    .line 747
    return-void
.end method

.method public setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V
    .locals 1
    .param p1, "locator"    # Ljavax/xml/transform/SourceLocator;

    #@0
    .prologue
    .line 738
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_lineNumber:I

    #@6
    .line 739
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_columnNumber:I

    #@c
    .line 736
    return-void
.end method

.method public setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 0
    .param p1, "p"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 1311
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2
    .line 1309
    return-void
.end method

.method setPrefixTable(Ljava/util/List;)V
    .locals 0
    .param p1, "list"    # Ljava/util/List;

    #@0
    .prologue
    .line 967
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    #@2
    .line 966
    return-void
.end method

.method public setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V
    .locals 1
    .param p1, "nsSupport"    # Lorg/xml/sax/helpers/NamespaceSupport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 838
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;Z)V

    #@4
    .line 836
    return-void
.end method

.method public setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;Z)V
    .locals 5
    .param p1, "nsSupport"    # Lorg/xml/sax/helpers/NamespaceSupport;
    .param p2, "excludeXSLDecl"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 856
    invoke-virtual {p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getDeclaredPrefixes()Ljava/util/Enumeration;

    #@3
    move-result-object v1

    #@4
    .line 858
    .local v1, "decls":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_3

    #@a
    .line 860
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Ljava/lang/String;

    #@10
    .line 862
    .local v2, "prefix":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    #@12
    if-nez v4, :cond_1

    #@14
    .line 863
    new-instance v4, Ljava/util/ArrayList;

    #@16
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v4, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    #@1b
    .line 865
    :cond_1
    invoke-virtual {p1, v2}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 867
    .local v3, "uri":Ljava/lang/String;
    if-eqz p2, :cond_2

    #@21
    const-string/jumbo v4, "http://www.w3.org/1999/XSL/Transform"

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v4

    #@28
    if-nez v4, :cond_0

    #@2a
    .line 871
    :cond_2
    new-instance v0, Lorg/apache/xalan/templates/XMLNSDecl;

    #@2c
    const/4 v4, 0x0

    #@2d
    invoke-direct {v0, v2, v3, v4}, Lorg/apache/xalan/templates/XMLNSDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@30
    .line 873
    .local v0, "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    #@32
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@35
    goto :goto_0

    #@36
    .line 853
    .end local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "uri":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "i"    # I

    #@0
    .prologue
    .line 1264
    iput p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_docOrderNumber:I

    #@2
    .line 1262
    return-void
.end method

.method public setXmlSpace(I)V
    .locals 1
    .param p1, "v"    # I

    #@0
    .prologue
    .line 790
    const/4 v0, 0x2

    #@1
    if-ne v0, p1, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_defaultSpace:Z

    #@6
    .line 788
    return-void

    #@7
    .line 790
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public shouldStripWhiteSpace(Lorg/apache/xpath/XPathContext;Lorg/w3c/dom/Element;)Z
    .locals 2
    .param p1, "support"    # Lorg/apache/xpath/XPathContext;
    .param p2, "targetElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1537
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    #@3
    move-result-object v0

    #@4
    .line 1538
    .local v0, "sroot":Lorg/apache/xalan/templates/StylesheetRoot;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0, p1, p2}, Lorg/apache/xalan/templates/StylesheetRoot;->shouldStripWhiteSpace(Lorg/apache/xpath/XPathContext;Lorg/w3c/dom/Element;)Z

    #@9
    move-result v1

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    const/4 v1, 0x0

    #@c
    goto :goto_0
.end method

.method unexecuteNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 1
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1214
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->unexecuteNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;Ljava/lang/String;)V

    #@4
    .line 1212
    return-void
.end method

.method unexecuteNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;Ljava/lang/String;)V
    .locals 6
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p2, "ignorePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1231
    :try_start_0
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    #@2
    if-eqz v5, :cond_2

    #@4
    .line 1233
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    #@7
    move-result-object v3

    #@8
    .line 1234
    .local v3, "rhandler":Lorg/apache/xml/serializer/SerializationHandler;
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    #@a
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@d
    move-result v2

    #@e
    .line 1236
    .local v2, "n":I
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@11
    .line 1238
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    #@13
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lorg/apache/xalan/templates/XMLNSDecl;

    #@19
    .line 1240
    .local v0, "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getIsExcluded()Z

    #@1c
    move-result v5

    #@1d
    if-nez v5, :cond_0

    #@1f
    if-eqz p2, :cond_1

    #@21
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_1

    #@2b
    .line 1236
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 1242
    :cond_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    invoke-interface {v3, v5}, Lorg/apache/xml/serializer/SerializationHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    goto :goto_1

    #@36
    .line 1248
    .end local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "rhandler":Lorg/apache/xml/serializer/SerializationHandler;
    :catch_0
    move-exception v4

    #@37
    .line 1249
    .local v4, "se":Lorg/xml/sax/SAXException;
    new-instance v5, Ljavax/xml/transform/TransformerException;

    #@39
    invoke-direct {v5, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@3c
    throw v5

    #@3d
    .line 1226
    .end local v4    # "se":Lorg/xml/sax/SAXException;
    :cond_2
    return-void
.end method
