.class public Lorg/apache/xalan/templates/AVTPartXPath;
.super Lorg/apache/xalan/templates/AVTPart;
.source "AVTPartXPath.java"


# static fields
.field static final serialVersionUID:J = -0x3de66e588c8178bbL


# instance fields
.field private m_xpath:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;Lorg/apache/xpath/compiler/XPathParser;Lorg/apache/xpath/XPathFactory;Lorg/apache/xpath/XPathContext;)V
    .locals 6
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "nsNode"    # Lorg/apache/xml/utils/PrefixResolver;
    .param p3, "xpathProcessor"    # Lorg/apache/xpath/compiler/XPathParser;
    .param p4, "factory"    # Lorg/apache/xpath/XPathFactory;
    .param p5, "liaison"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Lorg/apache/xalan/templates/AVTPart;-><init>()V

    #@3
    .line 104
    new-instance v0, Lorg/apache/xpath/XPath;

    #@5
    invoke-virtual {p5}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@8
    move-result-object v5

    #@9
    const/4 v2, 0x0

    #@a
    const/4 v4, 0x0

    #@b
    move-object v1, p1

    #@c
    move-object v3, p2

    #@d
    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    #@10
    iput-object v0, p0, Lorg/apache/xalan/templates/AVTPartXPath;->m_xpath:Lorg/apache/xpath/XPath;

    #@12
    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/XPath;)V
    .locals 0
    .param p1, "xpath"    # Lorg/apache/xpath/XPath;

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Lorg/apache/xalan/templates/AVTPart;-><init>()V

    #@3
    .line 77
    iput-object p1, p0, Lorg/apache/xalan/templates/AVTPartXPath;->m_xpath:Lorg/apache/xpath/XPath;

    #@5
    .line 75
    return-void
.end method


# virtual methods
.method public callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V
    .locals 2
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/xalan/templates/AVTPartXPath;->m_xpath:Lorg/apache/xpath/XPath;

    #@2
    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lorg/apache/xalan/templates/AVTPartXPath;->m_xpath:Lorg/apache/xpath/XPath;

    #@8
    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@b
    .line 146
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/xalan/templates/AVTPartXPath;->m_xpath:Lorg/apache/xpath/XPath;

    #@2
    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public evaluate(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/FastStringBuffer;ILorg/apache/xml/utils/PrefixResolver;)V
    .locals 2
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "buf"    # Lorg/apache/xml/utils/FastStringBuffer;
    .param p3, "context"    # I
    .param p4, "nsNode"    # Lorg/apache/xml/utils/PrefixResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    iget-object v1, p0, Lorg/apache/xalan/templates/AVTPartXPath;->m_xpath:Lorg/apache/xpath/XPath;

    #@2
    invoke-virtual {v1, p1, p3, p4}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    #@5
    move-result-object v0

    #@6
    .line 137
    .local v0, "xobj":Lorg/apache/xpath/objects/XObject;
    if-eqz v0, :cond_0

    #@8
    .line 139
    invoke-virtual {v0, p2}, Lorg/apache/xpath/objects/XObject;->appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V

    #@b
    .line 132
    :cond_0
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 1
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/xalan/templates/AVTPartXPath;->m_xpath:Lorg/apache/xpath/XPath;

    #@2
    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    #@5
    .line 54
    return-void
.end method

.method public getSimpleString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lorg/apache/xalan/templates/AVTPartXPath;->m_xpath:Lorg/apache/xpath/XPath;

    #@e
    invoke-virtual {v1}, Lorg/apache/xpath/XPath;->getPatternString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, "}"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method
