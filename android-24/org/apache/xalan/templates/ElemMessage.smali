.class public Lorg/apache/xalan/templates/ElemMessage;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemMessage.java"


# static fields
.field static final serialVersionUID:J = 0x153d549875451337L


# instance fields
.field private m_terminate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@3
    .line 51
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemMessage;->m_terminate:Z

    #@6
    .line 41
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
    .line 117
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToString(Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 119
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    #@7
    move-result-object v1

    #@8
    iget-boolean v2, p0, Lorg/apache/xalan/templates/ElemMessage;->m_terminate:Z

    #@a
    invoke-virtual {v1, p0, v0, v2}, Lorg/apache/xalan/transformer/MsgMgr;->message(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;Z)V

    #@d
    .line 121
    iget-boolean v1, p0, Lorg/apache/xalan/templates/ElemMessage;->m_terminate:Z

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 122
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@14
    move-result-object v1

    #@15
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@17
    const-string/jumbo v3, "ER_STYLESHEET_DIRECTED_TERMINATION"

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v2, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@22
    invoke-interface {v1, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    #@25
    .line 114
    :cond_0
    return-void
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 97
    const-string/jumbo v0, "message"

    #@3
    return-object v0
.end method

.method public getTerminate()Z
    .locals 1

    #@0
    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemMessage;->m_terminate:Z

    #@2
    return v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 87
    const/16 v0, 0x4b

    #@2
    return v0
.end method

.method public setTerminate(Z)V
    .locals 0
    .param p1, "v"    # Z

    #@0
    .prologue
    .line 63
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemMessage;->m_terminate:Z

    #@2
    .line 61
    return-void
.end method
