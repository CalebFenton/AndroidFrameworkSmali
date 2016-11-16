.class public Lorg/apache/xalan/templates/ElemWhen;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemWhen.java"


# static fields
.field static final serialVersionUID:J = 0x530bac13a4dbf840L


# instance fields
.field private m_test:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 2
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;
    .param p2, "callAttrs"    # Z

    #@0
    .prologue
    .line 121
    if-eqz p2, :cond_0

    #@2
    .line 122
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemWhen;->m_test:Lorg/apache/xpath/XPath;

    #@4
    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemWhen;->m_test:Lorg/apache/xpath/XPath;

    #@a
    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@d
    .line 123
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    #@10
    .line 119
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
    .line 93
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@3
    .line 94
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    #@a
    move-result-object v0

    #@b
    .line 95
    .local v0, "vnames":Ljava/util/Vector;
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemWhen;->m_test:Lorg/apache/xpath/XPath;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 96
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemWhen;->m_test:Lorg/apache/xpath/XPath;

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
    .line 91
    :cond_0
    return-void
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 106
    const-string/jumbo v0, "when"

    #@3
    return-object v0
.end method

.method public getTest()Lorg/apache/xpath/XPath;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemWhen;->m_test:Lorg/apache/xpath/XPath;

    #@2
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 81
    const/16 v0, 0x26

    #@2
    return v0
.end method

.method public setTest(Lorg/apache/xpath/XPath;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xpath/XPath;

    #@0
    .prologue
    .line 57
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemWhen;->m_test:Lorg/apache/xpath/XPath;

    #@2
    .line 55
    return-void
.end method
