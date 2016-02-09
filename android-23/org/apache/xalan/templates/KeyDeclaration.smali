.class public Lorg/apache/xalan/templates/KeyDeclaration;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "KeyDeclaration.java"


# static fields
.field static final serialVersionUID:J = 0x6b3144966407f67eL


# instance fields
.field private m_matchPattern:Lorg/apache/xpath/XPath;

.field private m_name:Lorg/apache/xml/utils/QName;

.field private m_use:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/Stylesheet;I)V
    .locals 1
    .param p1, "parentNode"    # Lorg/apache/xalan/templates/Stylesheet;
    .param p2, "docOrderNumber"    # I

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@3
    .line 98
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_matchPattern:Lorg/apache/xpath/XPath;

    #@6
    .line 47
    iput-object p1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    #@8
    .line 48
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/KeyDeclaration;->setUid(I)V

    #@b
    .line 45
    return-void
.end method


# virtual methods
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
    .line 180
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@3
    .line 181
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    #@a
    move-result-object v0

    #@b
    .line 182
    .local v0, "vnames":Ljava/util/Vector;
    iget-object v1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_matchPattern:Lorg/apache/xpath/XPath;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 183
    iget-object v1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_matchPattern:Lorg/apache/xpath/XPath;

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
    .line 184
    :cond_0
    iget-object v1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_use:Lorg/apache/xpath/XPath;

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 185
    iget-object v1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_use:Lorg/apache/xpath/XPath;

    #@22
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@29
    move-result v2

    #@2a
    invoke-virtual {v1, v0, v2}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    #@2d
    .line 178
    :cond_1
    return-void
.end method

.method public getMatch()Lorg/apache/xpath/XPath;
    .locals 1

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_matchPattern:Lorg/apache/xpath/XPath;

    #@2
    return-object v0
.end method

.method public getName()Lorg/apache/xml/utils/QName;
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_name:Lorg/apache/xml/utils/QName;

    #@2
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 90
    const-string/jumbo v0, "key"

    #@3
    return-object v0
.end method

.method public getUse()Lorg/apache/xpath/XPath;
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_use:Lorg/apache/xpath/XPath;

    #@2
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 168
    const/16 v0, 0x1f

    #@2
    return v0
.end method

.method public recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0
    .param p1, "root"    # Lorg/apache/xalan/templates/StylesheetRoot;

    #@0
    .prologue
    .line 195
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeKeys(Lorg/apache/xalan/templates/KeyDeclaration;)V

    #@3
    .line 193
    return-void
.end method

.method public setMatch(Lorg/apache/xpath/XPath;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xpath/XPath;

    #@0
    .prologue
    .line 111
    iput-object p1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_matchPattern:Lorg/apache/xpath/XPath;

    #@2
    .line 109
    return-void
.end method

.method public setName(Lorg/apache/xml/utils/QName;)V
    .locals 0
    .param p1, "name"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 67
    iput-object p1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_name:Lorg/apache/xml/utils/QName;

    #@2
    .line 65
    return-void
.end method

.method public setUse(Lorg/apache/xpath/XPath;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xpath/XPath;

    #@0
    .prologue
    .line 144
    iput-object p1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_use:Lorg/apache/xpath/XPath;

    #@2
    .line 142
    return-void
.end method
