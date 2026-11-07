.class public Lorg/apache/xalan/templates/ElemWhen;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemWhen.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x530bac13a4dbf840L


# instance fields
.field private greylist m_test:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    return-void
.end method


# virtual methods
.method protected greylist callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 5

    if-eqz p2, :cond_d

    .line 122
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemWhen;->m_test:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemWhen;->m_test:Lorg/apache/xpath/XPath;

    invoke-interface {v0, v1, p1}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 123
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

    .line 93
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 94
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    .line 95
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemWhen;->m_test:Lorg/apache/xpath/XPath;

    if-eqz p0, :cond_1a

    .line 96
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_1a
    return-void
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 106
    const-string p0, "when"

    return-object p0
.end method

.method public greylist getTest()Lorg/apache/xpath/XPath;
    .registers 1

    .line 69
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemWhen;->m_test:Lorg/apache/xpath/XPath;

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x26

    return p0
.end method

.method public greylist setTest(Lorg/apache/xpath/XPath;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemWhen;->m_test:Lorg/apache/xpath/XPath;

    return-void
.end method
