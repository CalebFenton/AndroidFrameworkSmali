.class public Lorg/apache/xalan/templates/AVTPartXPath;
.super Lorg/apache/xalan/templates/AVTPart;
.source "AVTPartXPath.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x3de66e588c8178bbL


# instance fields
.field private greylist m_xpath:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;Lorg/apache/xpath/compiler/XPathParser;Lorg/apache/xpath/XPathFactory;Lorg/apache/xpath/XPathContext;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lorg/apache/xalan/templates/AVTPart;-><init>()V

    .line 104
    new-instance v0, Lorg/apache/xpath/XPath;

    const/4 v4, 0x0

    invoke-virtual {p5}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v5

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    iput-object v0, p0, Lorg/apache/xalan/templates/AVTPartXPath;->m_xpath:Lorg/apache/xpath/XPath;

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xpath/XPath;)V
    .registers 2

    .line 76
    invoke-direct {p0}, Lorg/apache/xalan/templates/AVTPart;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/apache/xalan/templates/AVTPartXPath;->m_xpath:Lorg/apache/xpath/XPath;

    return-void
.end method


# virtual methods
.method public greylist callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V
    .registers 3

    .line 148
    iget-object v0, p0, Lorg/apache/xalan/templates/AVTPartXPath;->m_xpath:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xalan/templates/AVTPartXPath;->m_xpath:Lorg/apache/xpath/XPath;

    invoke-interface {v0, p0, p1}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    return-void
.end method

.method public greylist canTraverseOutsideSubtree()Z
    .registers 1

    .line 67
    iget-object p0, p0, Lorg/apache/xalan/templates/AVTPartXPath;->m_xpath:Lorg/apache/xpath/XPath;

    invoke-virtual {p0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    move-result p0

    return p0
.end method

.method public greylist evaluate(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/FastStringBuffer;ILorg/apache/xml/utils/PrefixResolver;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 135
    iget-object p0, p0, Lorg/apache/xalan/templates/AVTPartXPath;->m_xpath:Lorg/apache/xpath/XPath;

    invoke-virtual {p0, p1, p3, p4}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 139
    invoke-virtual {p0, p2}, Lorg/apache/xpath/objects/XObject;->appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V

    :cond_b
    return-void
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 3

    .line 56
    iget-object p0, p0, Lorg/apache/xalan/templates/AVTPartXPath;->m_xpath:Lorg/apache/xpath/XPath;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method

.method public greylist getSimpleString()Ljava/lang/String;
    .registers 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/xalan/templates/AVTPartXPath;->m_xpath:Lorg/apache/xpath/XPath;

    invoke-virtual {p0}, Lorg/apache/xpath/XPath;->getPatternString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
