.class public Lorg/apache/xalan/templates/XUnresolvedVariable;
.super Lorg/apache/xpath/objects/XObject;
.source "XUnresolvedVariable.java"


# static fields
.field static final serialVersionUID:J = -0x39043df38b0156cL


# instance fields
.field private transient m_context:I

.field private transient m_doneEval:Z

.field private m_isGlobal:Z

.field private transient m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

.field private transient m_varStackContext:I

.field private transient m_varStackPos:I


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/ElemVariable;ILorg/apache/xalan/transformer/TransformerImpl;IIZ)V
    .locals 1
    .param p1, "obj"    # Lorg/apache/xalan/templates/ElemVariable;
    .param p2, "sourceNode"    # I
    .param p3, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p4, "varStackPos"    # I
    .param p5, "varStackContext"    # I
    .param p6, "isGlobal"    # Z

    #@0
    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    #@3
    .line 47
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_varStackPos:I

    #@6
    .line 59
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_doneEval:Z

    #@9
    .line 83
    iput p2, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_context:I

    #@b
    .line 84
    iput-object p3, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@d
    .line 88
    iput p4, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_varStackPos:I

    #@f
    .line 91
    iput p5, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_varStackContext:I

    #@11
    .line 93
    iput-boolean p6, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_isGlobal:Z

    #@13
    .line 80
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 11
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    const/4 v9, -0x1

    #@3
    .line 107
    iget-boolean v4, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_doneEval:Z

    #@5
    if-nez v4, :cond_0

    #@7
    .line 109
    iget-object v4, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@9
    invoke-virtual {v4}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    #@c
    move-result-object v5

    #@d
    .line 110
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    #@10
    move-result-object v6

    #@11
    const-string/jumbo v7, "ER_REFERENCING_ITSELF"

    #@14
    .line 111
    new-array v8, v8, [Ljava/lang/Object;

    #@16
    invoke-virtual {p0}, Lorg/apache/xalan/templates/XUnresolvedVariable;->object()Ljava/lang/Object;

    #@19
    move-result-object v4

    #@1a
    check-cast v4, Lorg/apache/xalan/templates/ElemVariable;

    #@1c
    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    aput-object v4, v8, v10

    #@26
    .line 109
    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    #@29
    .line 113
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    #@2c
    move-result-object v2

    #@2d
    .line 116
    .local v2, "vars":Lorg/apache/xpath/VariableStack;
    invoke-virtual {v2}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    #@30
    move-result v0

    #@31
    .line 120
    .local v0, "currentFrame":I
    iget-object v3, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_obj:Ljava/lang/Object;

    #@33
    check-cast v3, Lorg/apache/xalan/templates/ElemVariable;

    #@35
    .line 123
    .local v3, "velem":Lorg/apache/xalan/templates/ElemVariable;
    const/4 v4, 0x0

    #@36
    :try_start_0
    iput-boolean v4, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_doneEval:Z

    #@38
    .line 124
    iget v4, v3, Lorg/apache/xalan/templates/ElemVariable;->m_frameSize:I

    #@3a
    if-eq v9, v4, :cond_1

    #@3c
    .line 125
    iget v4, v3, Lorg/apache/xalan/templates/ElemVariable;->m_frameSize:I

    #@3e
    invoke-virtual {v2, v4}, Lorg/apache/xpath/VariableStack;->link(I)I

    #@41
    .line 126
    :cond_1
    iget-object v4, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    #@43
    iget v5, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_context:I

    #@45
    invoke-virtual {v3, v4, v5}, Lorg/apache/xalan/templates/ElemVariable;->getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;

    #@48
    move-result-object v1

    #@49
    .line 127
    .local v1, "var":Lorg/apache/xpath/objects/XObject;
    const/4 v4, 0x1

    #@4a
    iput-boolean v4, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_doneEval:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    .line 135
    iget v4, v3, Lorg/apache/xalan/templates/ElemVariable;->m_frameSize:I

    #@4e
    if-eq v9, v4, :cond_2

    #@50
    .line 136
    invoke-virtual {v2, v0}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    #@53
    .line 128
    :cond_2
    return-object v1

    #@54
    .line 131
    .end local v1    # "var":Lorg/apache/xpath/objects/XObject;
    :catchall_0
    move-exception v4

    #@55
    .line 135
    iget v5, v3, Lorg/apache/xalan/templates/ElemVariable;->m_frameSize:I

    #@57
    if-eq v9, v5, :cond_3

    #@59
    .line 136
    invoke-virtual {v2, v0}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    #@5c
    .line 131
    :cond_3
    throw v4
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 172
    const/16 v0, 0x258

    #@2
    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "XUnresolvedVariable ("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Lorg/apache/xalan/templates/XUnresolvedVariable;->object()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string/jumbo v1, ")"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method public setVarStackContext(I)V
    .locals 0
    .param p1, "bottom"    # I

    #@0
    .prologue
    .line 162
    iput p1, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_varStackContext:I

    #@2
    .line 160
    return-void
.end method

.method public setVarStackPos(I)V
    .locals 0
    .param p1, "top"    # I

    #@0
    .prologue
    .line 150
    iput p1, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_varStackPos:I

    #@2
    .line 148
    return-void
.end method
