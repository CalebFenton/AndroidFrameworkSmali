.class public abstract Lorg/apache/xpath/axes/BasicTestIterator;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "BasicTestIterator.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x30a59aca78c5c1efL


# direct methods
.method protected constructor greylist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>()V

    return-void
.end method

.method protected constructor greylist <init>(Lorg/apache/xml/utils/PrefixResolver;)V
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    return-void
.end method

.method protected constructor greylist <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    .line 78
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result p2

    .line 79
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result p3

    and-int/lit16 v0, p3, 0x1043

    if-eqz v0, :cond_20

    const/4 v0, -0x1

    if-ne p3, v0, :cond_14

    goto :goto_20

    .line 90
    :cond_14
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/OpMap;->getStepNS(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/OpMap;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {p0, p3, v0, v1}, Lorg/apache/xpath/patterns/NodeTest;->initNodeTest(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 87
    :cond_20
    :goto_20
    invoke-virtual {p0, p3}, Lorg/apache/xpath/patterns/NodeTest;->initNodeTest(I)V

    .line 93
    :goto_23
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->initPredicateInfo(Lorg/apache/xpath/compiler/Compiler;I)V

    return-void
.end method

.method protected constructor greylist <init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    return-void
.end method


# virtual methods
.method public greylist cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 217
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/axes/ChildTestIterator;

    .line 219
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->resetProximityPositions()V

    return-object p0
.end method

.method protected abstract greylist getNextNode()I
.end method

.method public greylist nextNode()I
    .registers 7

    .line 135
    iget-boolean v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    .line 137
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    return v1

    .line 141
    :cond_8
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    if-ne v1, v0, :cond_f

    .line 143
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->resetProximityPositions()V

    .line 150
    :cond_f
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v1, v0, :cond_23

    .line 152
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v2

    .line 157
    iget v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    invoke-virtual {v0, v3}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 170
    :cond_25
    :goto_25
    :try_start_25
    invoke-virtual {p0}, Lorg/apache/xpath/axes/BasicTestIterator;->getNextNode()I

    move-result v3

    const/4 v4, 0x1

    if-eq v1, v3, :cond_38

    .line 174
    invoke-virtual {p0, v3}, Lorg/apache/xpath/axes/PredicatedNodeTest;->acceptNode(I)S

    move-result v5

    if-ne v4, v5, :cond_33

    goto :goto_38

    :cond_33
    if-ne v3, v1, :cond_25

    goto :goto_38

    :catchall_36
    move-exception v3

    goto :goto_51

    :cond_38
    :goto_38
    if-eq v1, v3, :cond_47

    .line 186
    iget v5, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    add-int/2addr v5, v4

    iput v5, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_36

    .line 198
    iget p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v1, p0, :cond_46

    .line 201
    invoke-virtual {v0, v2}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_46
    return v3

    .line 191
    :cond_47
    :try_start_47
    iput-boolean v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z
    :try_end_49
    .catchall {:try_start_47 .. :try_end_49} :catchall_36

    .line 198
    iget p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v1, p0, :cond_50

    .line 201
    invoke-virtual {v0, v2}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_50
    return v1

    .line 198
    :goto_51
    iget p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v1, p0, :cond_58

    .line 201
    invoke-virtual {v0, v2}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 203
    :cond_58
    throw v3
.end method
