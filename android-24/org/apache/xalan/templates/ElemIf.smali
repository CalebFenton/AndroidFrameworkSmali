.class public Lorg/apache/xalan/templates/ElemIf;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemIf.java"


# static fields
.field static final serialVersionUID:J = 0x1df582172bf67a5eL


# instance fields
.field private m_test:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@3
    .line 50
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    #@6
    .line 42
    return-void
.end method


# virtual methods
.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 2
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;
    .param p2, "callAttrs"    # Z

    #@0
    .prologue
    .line 145
    if-eqz p2, :cond_0

    #@2
    .line 146
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    #@4
    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    #@a
    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@d
    .line 147
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    #@10
    .line 143
    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 3
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@3
    .line 89
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    #@a
    move-result-object v0

    #@b
    .line 91
    .local v0, "vnames":Ljava/util/Vector;
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 92
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    #@11
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@18
    move-result v2

    #@19
    invoke-virtual {v1, v0, v2}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    #@1c
    .line 84
    :cond_0
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 3
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 130
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@3
    move-result-object v1

    #@4
    .line 131
    .local v1, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@7
    move-result v0

    #@8
    .line 133
    .local v0, "sourceNode":I
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    #@a
    invoke-virtual {v2, v1, v0, p0}, Lorg/apache/xpath/XPath;->bool(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 134
    const/4 v2, 0x1

    #@11
    invoke-virtual {p1, p0, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    #@14
    .line 127
    :cond_0
    return-void
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 113
    const-string/jumbo v0, "if"

    #@3
    return-object v0
.end method

.method public getTest()Lorg/apache/xpath/XPath;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    #@2
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 103
    const/16 v0, 0x24

    #@2
    return v0
.end method

.method public setTest(Lorg/apache/xpath/XPath;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xpath/XPath;

    #@0
    .prologue
    .line 60
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    #@2
    .line 58
    return-void
.end method
