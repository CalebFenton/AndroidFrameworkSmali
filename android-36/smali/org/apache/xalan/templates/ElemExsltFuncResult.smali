.class public Lorg/apache/xalan/templates/ElemExsltFuncResult;
.super Lorg/apache/xalan/templates/ElemVariable;
.source "ElemExsltFuncResult.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x3045724a014950b3L


# instance fields
.field private greylist m_callerFrameSize:I

.field private greylist m_isResultSet:Z

.field private greylist m_result:Lorg/apache/xpath/objects/XObject;


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemVariable;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemExsltFuncResult;->m_isResultSet:Z

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemExsltFuncResult;->m_result:Lorg/apache/xpath/objects/XObject;

    .line 46
    iput v0, p0, Lorg/apache/xalan/templates/ElemExsltFuncResult;->m_callerFrameSize:I

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    .line 60
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->currentFuncResultSeen()Z

    move-result v1

    if-nez v1, :cond_19

    .line 64
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 67
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemVariable;->getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    .line 68
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentFuncResult()Ljava/lang/Object;

    .line 69
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->pushCurrentFuncResult(Ljava/lang/Object;)V

    return-void

    .line 61
    :cond_19
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string p1, "An EXSLT function cannot set more than one result!"

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 93
    const-string p0, "result"

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x59

    return p0
.end method
