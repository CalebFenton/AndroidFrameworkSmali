.class public Lorg/apache/xalan/templates/ElemExsltFuncResult;
.super Lorg/apache/xalan/templates/ElemVariable;
.source "ElemExsltFuncResult.java"


# static fields
.field static final serialVersionUID:J = -0x3045724a014950b3L


# instance fields
.field private m_callerFrameSize:I

.field private m_isResultSet:Z

.field private m_result:Lorg/apache/xpath/objects/XObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 32
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemVariable;-><init>()V

    #@4
    .line 40
    iput-boolean v1, p0, Lorg/apache/xalan/templates/ElemExsltFuncResult;->m_isResultSet:Z

    #@6
    .line 43
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExsltFuncResult;->m_result:Lorg/apache/xpath/objects/XObject;

    #@9
    .line 46
    iput v1, p0, Lorg/apache/xalan/templates/ElemExsltFuncResult;->m_callerFrameSize:I

    #@b
    .line 32
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 5
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@3
    move-result-object v0

    #@4
    .line 60
    .local v0, "context":Lorg/apache/xpath/XPathContext;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->currentFuncResultSeen()Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 61
    new-instance v3, Ljavax/xml/transform/TransformerException;

    #@c
    const-string/jumbo v4, "An EXSLT function cannot set more than one result!"

    #@f
    invoke-direct {v3, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@12
    throw v3

    #@13
    .line 64
    :cond_0
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@16
    move-result v1

    #@17
    .line 67
    .local v1, "sourceNode":I
    invoke-virtual {p0, p1, v1}, Lorg/apache/xalan/templates/ElemExsltFuncResult;->getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;

    #@1a
    move-result-object v2

    #@1b
    .line 68
    .local v2, "var":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentFuncResult()Ljava/lang/Object;

    #@1e
    .line 69
    invoke-virtual {p1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->pushCurrentFuncResult(Ljava/lang/Object;)V

    #@21
    .line 53
    return-void
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 93
    const-string/jumbo v0, "result"

    #@3
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 81
    const/16 v0, 0x59

    #@2
    return v0
.end method
