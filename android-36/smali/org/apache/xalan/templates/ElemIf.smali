.class public Lorg/apache/xalan/templates/ElemIf;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemIf.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x1df582172bf67a5eL


# instance fields
.field private greylist m_test:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    return-void
.end method


# virtual methods
.method protected greylist callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 5

    if-eqz p2, :cond_d

    .line 146
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    invoke-interface {v0, v1, p1}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 147
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

    .line 87
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 89
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    .line 91
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    if-eqz p0, :cond_1a

    .line 92
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_1a
    return-void
.end method

.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 130
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v1

    .line 133
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    invoke-virtual {v2, v0, v1, p0}, Lorg/apache/xpath/XPath;->bool(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 134
    invoke-virtual {p1, p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    :cond_14
    return-void
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 113
    const-string p0, "if"

    return-object p0
.end method

.method public greylist getTest()Lorg/apache/xpath/XPath;
    .registers 1

    .line 71
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x24

    return p0
.end method

.method public greylist setTest(Lorg/apache/xpath/XPath;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    return-void
.end method
