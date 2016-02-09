.class public abstract Lorg/apache/xpath/axes/BasicTestIterator;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "BasicTestIterator.java"


# static fields
.field static final serialVersionUID:J = 0x30a59aca78c5c1efL


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>()V

    #@3
    return-void
.end method

.method protected constructor <init>(Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 0
    .param p1, "nscontext"    # Lorg/apache/xml/utils/PrefixResolver;

    #@0
    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    #@3
    .line 55
    return-void
.end method

.method protected constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 4
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "opPos"    # I
    .param p3, "analysis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 76
    invoke-direct {p0, p1, p2, p3, v2}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    #@4
    .line 78
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    #@7
    move-result v0

    #@8
    .line 79
    .local v0, "firstStepPos":I
    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    #@b
    move-result v1

    #@c
    .line 81
    .local v1, "whatToShow":I
    and-int/lit16 v2, v1, 0x1043

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 86
    const/4 v2, -0x1

    #@11
    if-ne v1, v2, :cond_1

    #@13
    .line 87
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/BasicTestIterator;->initNodeTest(I)V

    #@16
    .line 93
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/axes/BasicTestIterator;->initPredicateInfo(Lorg/apache/xpath/compiler/Compiler;I)V

    #@19
    .line 74
    return-void

    #@1a
    .line 90
    :cond_1
    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->getStepNS(I)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 91
    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 90
    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/xpath/axes/BasicTestIterator;->initNodeTest(ILjava/lang/String;Ljava/lang/String;)V

    #@25
    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V
    .locals 0
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "opPos"    # I
    .param p3, "analysis"    # I
    .param p4, "shouldLoadWalkers"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    #@3
    .line 113
    return-void
.end method


# virtual methods
.method public cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 217
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/xpath/axes/ChildTestIterator;

    #@6
    .line 219
    .local v0, "clone":Lorg/apache/xpath/axes/ChildTestIterator;
    invoke-virtual {v0}, Lorg/apache/xpath/axes/ChildTestIterator;->resetProximityPositions()V

    #@9
    .line 221
    return-object v0
.end method

.method protected abstract getNextNode()I
.end method

.method public nextNode()I
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, -0x1

    #@2
    .line 135
    iget-boolean v3, p0, Lorg/apache/xpath/axes/BasicTestIterator;->m_foundLast:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 137
    iput v5, p0, Lorg/apache/xpath/axes/BasicTestIterator;->m_lastFetched:I

    #@8
    .line 138
    return v5

    #@9
    .line 141
    :cond_0
    iget v3, p0, Lorg/apache/xpath/axes/BasicTestIterator;->m_lastFetched:I

    #@b
    if-ne v5, v3, :cond_1

    #@d
    .line 143
    invoke-virtual {p0}, Lorg/apache/xpath/axes/BasicTestIterator;->resetProximityPositions()V

    #@10
    .line 150
    :cond_1
    iget v3, p0, Lorg/apache/xpath/axes/BasicTestIterator;->m_stackFrame:I

    #@12
    if-eq v5, v3, :cond_4

    #@14
    .line 152
    iget-object v3, p0, Lorg/apache/xpath/axes/BasicTestIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    #@16
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    #@19
    move-result-object v2

    #@1a
    .line 155
    .local v2, "vars":Lorg/apache/xpath/VariableStack;
    invoke-virtual {v2}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    #@1d
    move-result v1

    #@1e
    .line 157
    .local v1, "savedStart":I
    iget v3, p0, Lorg/apache/xpath/axes/BasicTestIterator;->m_stackFrame:I

    #@20
    invoke-virtual {v2, v3}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    #@23
    .line 170
    .end local v2    # "vars":Lorg/apache/xpath/VariableStack;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/BasicTestIterator;->getNextNode()I

    #@26
    move-result v0

    #@27
    .line 172
    .local v0, "next":I
    if-eq v5, v0, :cond_2

    #@29
    .line 174
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/BasicTestIterator;->acceptNode(I)S

    #@2c
    move-result v3

    #@2d
    if-ne v4, v3, :cond_5

    #@2f
    .line 184
    :cond_2
    if-eq v5, v0, :cond_6

    #@31
    .line 186
    iget v3, p0, Lorg/apache/xpath/axes/BasicTestIterator;->m_pos:I

    #@33
    add-int/lit8 v3, v3, 0x1

    #@35
    iput v3, p0, Lorg/apache/xpath/axes/BasicTestIterator;->m_pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 198
    iget v3, p0, Lorg/apache/xpath/axes/BasicTestIterator;->m_stackFrame:I

    #@39
    if-eq v5, v3, :cond_3

    #@3b
    .line 201
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    #@3e
    .line 187
    :cond_3
    return v0

    #@3f
    .line 162
    .end local v0    # "next":I
    .end local v1    # "savedStart":I
    :cond_4
    const/4 v2, 0x0

    #@40
    .line 163
    .local v2, "vars":Lorg/apache/xpath/VariableStack;
    const/4 v1, 0x0

    #@41
    .restart local v1    # "savedStart":I
    goto :goto_0

    #@42
    .line 182
    .end local v2    # "vars":Lorg/apache/xpath/VariableStack;
    .restart local v0    # "next":I
    :cond_5
    if-eq v0, v5, :cond_2

    #@44
    goto :goto_0

    #@45
    .line 191
    :cond_6
    const/4 v3, 0x1

    #@46
    :try_start_1
    iput-boolean v3, p0, Lorg/apache/xpath/axes/BasicTestIterator;->m_foundLast:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    .line 198
    iget v3, p0, Lorg/apache/xpath/axes/BasicTestIterator;->m_stackFrame:I

    #@4a
    if-eq v5, v3, :cond_7

    #@4c
    .line 201
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    #@4f
    .line 193
    :cond_7
    return v5

    #@50
    .line 197
    .end local v0    # "next":I
    :catchall_0
    move-exception v3

    #@51
    .line 198
    iget v4, p0, Lorg/apache/xpath/axes/BasicTestIterator;->m_stackFrame:I

    #@53
    if-eq v5, v4, :cond_8

    #@55
    .line 201
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    #@58
    .line 197
    :cond_8
    throw v3
.end method
