.class public Lorg/apache/xalan/templates/ElemCopyOf;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemCopyOf.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x672a43ef2f404637L


# instance fields
.field public greylist m_selectExpression:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    return-void
.end method


# virtual methods
.method public greylist appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 3

    .line 221
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object p1

    .line 222
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemCopyOf;->getNodeName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 220
    const-string v0, "ER_CANNOT_ADD"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected greylist callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 5

    if-eqz p2, :cond_d

    .line 235
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    invoke-interface {v0, v1, p1}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 236
    :cond_d
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public greylist compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 86
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 88
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    .line 89
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method

.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 129
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v1

    .line 131
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    invoke-virtual {v2, v0, v1, p0}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    .line 133
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v1

    if-eqz p0, :cond_87

    .line 137
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_78

    const/4 v3, 0x2

    if-eq v2, v3, :cond_78

    const/4 v5, 0x3

    if-eq v2, v5, :cond_78

    const/4 v5, 0x4

    if-eq v2, v5, :cond_40

    const/4 v0, 0x5

    if-eq v2, v0, :cond_38

    .line 190
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    .line 192
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-interface {v1, p1, v4, p0}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    return-void

    .line 186
    :cond_38
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object p1

    .line 185
    invoke-static {v1, p0, p1}, Lorg/apache/xalan/serialize/SerializerUtils;->outputResultTreeFragment(Lorg/apache/xml/serializer/SerializationHandler;Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/XPathContext;)V

    return-void

    .line 152
    :cond_40
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    .line 155
    new-instance v2, Lorg/apache/xalan/transformer/TreeWalker2Result;

    invoke-direct {v2, p1, v1}, Lorg/apache/xalan/transformer/TreeWalker2Result;-><init>(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xml/serializer/SerializationHandler;)V

    .line 158
    :cond_49
    :goto_49
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result p1

    const/4 v4, -0x1

    if-eq v4, p1, :cond_87

    .line 160
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v5

    .line 161
    invoke-interface {v5, p1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_6e

    .line 167
    invoke-interface {v5, p1}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result p1

    :goto_64
    if-eq p1, v4, :cond_49

    .line 170
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->traverse(I)V

    .line 168
    invoke-interface {v5, p1}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result p1

    goto :goto_64

    :cond_6e
    if-ne v6, v3, :cond_74

    .line 175
    invoke-static {v1, p1}, Lorg/apache/xalan/serialize/SerializerUtils;->addAttribute(Lorg/apache/xml/serializer/SerializationHandler;I)V

    goto :goto_49

    .line 179
    :cond_74
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->traverse(I)V

    goto :goto_49

    .line 145
    :cond_78
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-interface {v1, p1, v4, p0}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_87
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_87} :catch_88

    :cond_87
    return-void

    :catch_88
    move-exception p0

    .line 205
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 110
    const-string p0, "copy-of"

    return-object p0
.end method

.method public greylist getSelect()Lorg/apache/xpath/XPath;
    .registers 1

    .line 75
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x4a

    return p0
.end method

.method public greylist setSelect(Lorg/apache/xpath/XPath;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    return-void
.end method
