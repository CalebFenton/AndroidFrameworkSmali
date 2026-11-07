.class public Lorg/apache/xalan/templates/XUnresolvedVariable;
.super Lorg/apache/xpath/objects/XObject;
.source "XUnresolvedVariable.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x39043df38b0156cL


# instance fields
.field private transient greylist m_context:I

.field private transient greylist m_doneEval:Z

.field private greylist m_isGlobal:Z

.field private transient greylist m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

.field private transient greylist m_varStackContext:I

.field private transient greylist m_varStackPos:I


# direct methods
.method public constructor greylist <init>(Lorg/apache/xalan/templates/ElemVariable;ILorg/apache/xalan/transformer/TransformerImpl;IIZ)V
    .registers 7

    .line 82
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_doneEval:Z

    .line 83
    iput p2, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_context:I

    .line 84
    iput-object p3, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    .line 88
    iput p4, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_varStackPos:I

    .line 91
    iput p5, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_varStackContext:I

    .line 93
    iput-boolean p6, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_isGlobal:Z

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 107
    iget-boolean v0, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_doneEval:Z

    if-nez v0, :cond_25

    .line 109
    iget-object v0, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v1

    .line 111
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/ElemVariable;

    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 110
    const-string v3, "ER_REFERENCING_ITSELF"

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :cond_25
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v0

    .line 120
    iget-object v1, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast v1, Lorg/apache/xalan/templates/ElemVariable;

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 123
    :try_start_33
    iput-boolean v2, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_doneEval:Z

    .line 124
    iget v2, v1, Lorg/apache/xalan/templates/ElemVariable;->m_frameSize:I

    if-eq v3, v2, :cond_3f

    .line 125
    invoke-virtual {p1, v2}, Lorg/apache/xpath/VariableStack;->link(I)I

    goto :goto_3f

    :catchall_3d
    move-exception p0

    goto :goto_52

    .line 126
    :cond_3f
    :goto_3f
    iget-object v2, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    iget v4, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_context:I

    invoke-virtual {v1, v2, v4}, Lorg/apache/xalan/templates/ElemVariable;->getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    const/4 v4, 0x1

    .line 127
    iput-boolean v4, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_doneEval:Z
    :try_end_4a
    .catchall {:try_start_33 .. :try_end_4a} :catchall_3d

    .line 135
    iget p0, v1, Lorg/apache/xalan/templates/ElemVariable;->m_frameSize:I

    if-eq v3, p0, :cond_51

    .line 136
    invoke-virtual {p1, v0}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    :cond_51
    return-object v2

    .line 135
    :goto_52
    iget v1, v1, Lorg/apache/xalan/templates/ElemVariable;->m_frameSize:I

    if-eq v3, v1, :cond_59

    .line 136
    invoke-virtual {p1, v0}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    .line 137
    :cond_59
    throw p0
.end method

.method public greylist getType()I
    .registers 1

    .line 0
    const/16 p0, 0x258

    return p0
.end method

.method public greylist getTypeString()Ljava/lang/String;
    .registers 3

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XUnresolvedVariable ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist setVarStackContext(I)V
    .registers 2

    .line 162
    iput p1, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_varStackContext:I

    return-void
.end method

.method public greylist setVarStackPos(I)V
    .registers 2

    .line 150
    iput p1, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_varStackPos:I

    return-void
.end method
