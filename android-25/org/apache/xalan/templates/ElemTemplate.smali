.class public Lorg/apache/xalan/templates/ElemTemplate;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemTemplate.java"


# static fields
.field static final serialVersionUID:J = -0x49513028de1a297aL


# instance fields
.field private m_argsQNameIDs:[I

.field public m_frameSize:I

.field m_inArgsSize:I

.field private m_matchPattern:Lorg/apache/xpath/XPath;

.field private m_mode:Lorg/apache/xml/utils/QName;

.field private m_name:Lorg/apache/xml/utils/QName;

.field private m_priority:D

.field private m_publicId:Ljava/lang/String;

.field private m_stylesheet:Lorg/apache/xalan/templates/Stylesheet;

.field private m_systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 52
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@4
    .line 158
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_matchPattern:Lorg/apache/xpath/XPath;

    #@6
    .line 196
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_name:Lorg/apache/xml/utils/QName;

    #@8
    .line 266
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@a
    iput-wide v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_priority:D

    #@c
    .line 52
    return-void
.end method


# virtual methods
.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 4
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 347
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@3
    .line 348
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@6
    move-result-object v0

    #@7
    .line 349
    .local v0, "cstate":Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    #@a
    move-result-object v1

    #@b
    .line 350
    .local v1, "vnames":Ljava/util/Vector;
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_matchPattern:Lorg/apache/xpath/XPath;

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 351
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_matchPattern:Lorg/apache/xpath/XPath;

    #@11
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@18
    move-result v3

    #@19
    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    #@1c
    .line 353
    :cond_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->resetStackFrameSize()V

    #@1f
    .line 354
    const/4 v2, 0x0

    #@20
    iput v2, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    #@22
    .line 345
    return-void
.end method

.method public endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 2
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 362
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@3
    move-result-object v0

    #@4
    .line 363
    .local v0, "cstate":Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@7
    .line 364
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getFrameSize()I

    #@a
    move-result v1

    #@b
    iput v1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    #@d
    .line 366
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->resetStackFrameSize()V

    #@10
    .line 360
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 2
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 382
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@3
    move-result-object v0

    #@4
    .line 384
    .local v0, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->pushRTFContext()V

    #@7
    .line 389
    const/4 v1, 0x1

    #@8
    invoke-virtual {p1, p0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    #@b
    .line 400
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popRTFContext()V

    #@e
    .line 380
    return-void
.end method

.method public getMatch()Lorg/apache/xpath/XPath;
    .locals 1

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_matchPattern:Lorg/apache/xpath/XPath;

    #@2
    return-object v0
.end method

.method public getMode()Lorg/apache/xml/utils/QName;
    .locals 1

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_mode:Lorg/apache/xml/utils/QName;

    #@2
    return-object v0
.end method

.method public getName()Lorg/apache/xml/utils/QName;
    .locals 1

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_name:Lorg/apache/xml/utils/QName;

    #@2
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 316
    const-string/jumbo v0, "template"

    #@3
    return-object v0
.end method

.method public getPriority()D
    .locals 2

    #@0
    .prologue
    .line 295
    iget-wide v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_priority:D

    #@2
    return-wide v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_publicId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .locals 1

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_stylesheet:Lorg/apache/xalan/templates/Stylesheet;

    #@2
    return-object v0
.end method

.method public getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;
    .locals 1

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_stylesheet:Lorg/apache/xalan/templates/Stylesheet;

    #@2
    invoke-virtual {v0}, Lorg/apache/xalan/templates/Stylesheet;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_stylesheet:Lorg/apache/xalan/templates/Stylesheet;

    #@2
    invoke-virtual {v0}, Lorg/apache/xalan/templates/Stylesheet;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_systemId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 306
    const/16 v0, 0x13

    #@2
    return v0
.end method

.method public recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0
    .param p1, "root"    # Lorg/apache/xalan/templates/StylesheetRoot;

    #@0
    .prologue
    .line 410
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeTemplates(Lorg/apache/xalan/templates/ElemTemplate;)V

    #@3
    .line 408
    return-void
.end method

.method public setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V
    .locals 1
    .param p1, "locator"    # Ljavax/xml/transform/SourceLocator;

    #@0
    .prologue
    .line 98
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_publicId:Ljava/lang/String;

    #@6
    .line 99
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_systemId:Ljava/lang/String;

    #@c
    .line 101
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    #@f
    .line 95
    return-void
.end method

.method public setMatch(Lorg/apache/xpath/XPath;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xpath/XPath;

    #@0
    .prologue
    .line 173
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_matchPattern:Lorg/apache/xpath/XPath;

    #@2
    .line 171
    return-void
.end method

.method public setMode(Lorg/apache/xml/utils/QName;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 244
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_mode:Lorg/apache/xml/utils/QName;

    #@2
    .line 242
    return-void
.end method

.method public setName(Lorg/apache/xml/utils/QName;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 209
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_name:Lorg/apache/xml/utils/QName;

    #@2
    .line 207
    return-void
.end method

.method public setPriority(D)V
    .locals 1
    .param p1, "v"    # D

    #@0
    .prologue
    .line 280
    iput-wide p1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_priority:D

    #@2
    .line 278
    return-void
.end method

.method public setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V
    .locals 0
    .param p1, "sheet"    # Lorg/apache/xalan/templates/Stylesheet;

    #@0
    .prologue
    .line 140
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_stylesheet:Lorg/apache/xalan/templates/Stylesheet;

    #@2
    .line 138
    return-void
.end method
