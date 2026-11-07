.class public Lorg/apache/xalan/templates/ElemMessage;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemMessage.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x153d549875451337L


# instance fields
.field private greylist m_terminate:Z


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemMessage;->m_terminate:Z

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 117
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToString(Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/xalan/templates/ElemMessage;->m_terminate:Z

    invoke-virtual {v1, p0, v0, v2}, Lorg/apache/xalan/transformer/MsgMgr;->message(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;Z)V

    .line 121
    iget-boolean p0, p0, Lorg/apache/xalan/templates/ElemMessage;->m_terminate:Z

    if-eqz p0, :cond_24

    .line 122
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    const-string v0, "ER_STYLESHEET_DIRECTED_TERMINATION"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    :cond_24
    return-void
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 97
    const-string p0, "message"

    return-object p0
.end method

.method public greylist getTerminate()Z
    .registers 1

    .line 76
    iget-boolean p0, p0, Lorg/apache/xalan/templates/ElemMessage;->m_terminate:Z

    return p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x4b

    return p0
.end method

.method public greylist setTerminate(Z)V
    .registers 2

    .line 63
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemMessage;->m_terminate:Z

    return-void
.end method
