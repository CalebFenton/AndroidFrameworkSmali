.class public Lorg/apache/xalan/templates/KeyDeclaration;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "KeyDeclaration.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x6b3144966407f67eL


# instance fields
.field private greylist m_matchPattern:Lorg/apache/xpath/XPath;

.field private greylist m_name:Lorg/apache/xml/utils/QName;

.field private greylist m_use:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xalan/templates/Stylesheet;I)V
    .registers 4

    .line 46
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_matchPattern:Lorg/apache/xpath/XPath;

    .line 47
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 48
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->setUid(I)V

    return-void
.end method


# virtual methods
.method public greylist compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 180
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 181
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_matchPattern:Lorg/apache/xpath/XPath;

    if-eqz v1, :cond_1a

    .line 183
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    .line 184
    :cond_1a
    iget-object p0, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_use:Lorg/apache/xpath/XPath;

    if-eqz p0, :cond_29

    .line 185
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_29
    return-void
.end method

.method public greylist getMatch()Lorg/apache/xpath/XPath;
    .registers 1

    .line 125
    iget-object p0, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_matchPattern:Lorg/apache/xpath/XPath;

    return-object p0
.end method

.method public greylist getName()Lorg/apache/xml/utils/QName;
    .registers 1

    .line 80
    iget-object p0, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_name:Lorg/apache/xml/utils/QName;

    return-object p0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 90
    const-string p0, "key"

    return-object p0
.end method

.method public greylist getUse()Lorg/apache/xpath/XPath;
    .registers 1

    .line 157
    iget-object p0, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_use:Lorg/apache/xpath/XPath;

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x1f

    return p0
.end method

.method public greylist recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2

    .line 195
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeKeys(Lorg/apache/xalan/templates/KeyDeclaration;)V

    return-void
.end method

.method public greylist setMatch(Lorg/apache/xpath/XPath;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_matchPattern:Lorg/apache/xpath/XPath;

    return-void
.end method

.method public greylist setName(Lorg/apache/xml/utils/QName;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_name:Lorg/apache/xml/utils/QName;

    return-void
.end method

.method public greylist setUse(Lorg/apache/xpath/XPath;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_use:Lorg/apache/xpath/XPath;

    return-void
.end method
