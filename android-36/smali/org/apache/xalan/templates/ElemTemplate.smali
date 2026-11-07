.class public Lorg/apache/xalan/templates/ElemTemplate;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemTemplate.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x49513028de1a297aL


# instance fields
.field private greylist m_argsQNameIDs:[I

.field public greylist m_frameSize:I

.field greylist m_inArgsSize:I

.field private greylist m_matchPattern:Lorg/apache/xpath/XPath;

.field private greylist m_mode:Lorg/apache/xml/utils/QName;

.field private greylist m_name:Lorg/apache/xml/utils/QName;

.field private greylist m_priority:D

.field private greylist m_publicId:Ljava/lang/String;

.field private greylist m_stylesheet:Lorg/apache/xalan/templates/Stylesheet;

.field private greylist m_systemId:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 52
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_matchPattern:Lorg/apache/xpath/XPath;

    .line 196
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_name:Lorg/apache/xml/utils/QName;

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 266
    iput-wide v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_priority:D

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

    .line 347
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 348
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v1

    .line 350
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_matchPattern:Lorg/apache/xpath/XPath;

    if-eqz v2, :cond_1a

    .line 351
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result p1

    invoke-virtual {v2, v1, p1}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    .line 353
    :cond_1a
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->resetStackFrameSize()V

    const/4 p1, 0x0

    .line 354
    iput p1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    return-void
.end method

.method public greylist endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 362
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    .line 363
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 364
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getFrameSize()I

    move-result p1

    iput p1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    .line 366
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->resetStackFrameSize()V

    return-void
.end method

.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 382
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->pushRTFContext()V

    const/4 v1, 0x1

    .line 389
    invoke-virtual {p1, p0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    .line 400
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popRTFContext()V

    return-void
.end method

.method public greylist getMatch()Lorg/apache/xpath/XPath;
    .registers 1

    .line 189
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_matchPattern:Lorg/apache/xpath/XPath;

    return-object p0
.end method

.method public greylist getMode()Lorg/apache/xml/utils/QName;
    .registers 1

    .line 258
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_mode:Lorg/apache/xml/utils/QName;

    return-object p0
.end method

.method public greylist getName()Lorg/apache/xml/utils/QName;
    .registers 1

    .line 223
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_name:Lorg/apache/xml/utils/QName;

    return-object p0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 316
    const-string p0, "template"

    return-object p0
.end method

.method public greylist getPriority()D
    .registers 3

    .line 295
    iget-wide v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_priority:D

    return-wide v0
.end method

.method public whitelist test-api getPublicId()Ljava/lang/String;
    .registers 1

    .line 72
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_publicId:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .registers 1

    .line 130
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_stylesheet:Lorg/apache/xalan/templates/Stylesheet;

    return-object p0
.end method

.method public greylist getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;
    .registers 1

    .line 120
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_stylesheet:Lorg/apache/xalan/templates/Stylesheet;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object p0

    return-object p0
.end method

.method public greylist getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;
    .registers 1

    .line 150
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_stylesheet:Lorg/apache/xalan/templates/Stylesheet;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSystemId()Ljava/lang/String;
    .registers 1

    .line 87
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_systemId:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x13

    return p0
.end method

.method public greylist recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2

    .line 410
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeTemplates(Lorg/apache/xalan/templates/ElemTemplate;)V

    return-void
.end method

.method public greylist setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V
    .registers 3

    .line 98
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_publicId:Ljava/lang/String;

    .line 99
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_systemId:Ljava/lang/String;

    .line 101
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    return-void
.end method

.method public greylist setMatch(Lorg/apache/xpath/XPath;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_matchPattern:Lorg/apache/xpath/XPath;

    return-void
.end method

.method public greylist setMode(Lorg/apache/xml/utils/QName;)V
    .registers 2

    .line 244
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_mode:Lorg/apache/xml/utils/QName;

    return-void
.end method

.method public greylist setName(Lorg/apache/xml/utils/QName;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_name:Lorg/apache/xml/utils/QName;

    return-void
.end method

.method public greylist setPriority(D)V
    .registers 3

    .line 280
    iput-wide p1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_priority:D

    return-void
.end method

.method public greylist setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_stylesheet:Lorg/apache/xalan/templates/Stylesheet;

    return-void
.end method
