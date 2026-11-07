.class public Lorg/apache/xpath/axes/MatchPatternIterator;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "MatchPatternIterator.java"


# static fields
.field private static final greylist DEBUG:Z = false

.field static final whitelist serialVersionUID:J = -0x482e35cb67d7471aL


# instance fields
.field protected greylist m_pattern:Lorg/apache/xpath/patterns/StepPattern;

.field protected greylist m_superAxis:I

.field protected greylist m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;


# direct methods
.method constructor greylist <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    const/4 v1, -0x1

    .line 50
    iput v1, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    .line 80
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result p2

    .line 82
    invoke-static {p0, p1, p2, v0}, Lorg/apache/xpath/axes/WalkerFactory;->loadSteps(Lorg/apache/xpath/axes/MatchPatternIterator;Lorg/apache/xpath/compiler/Compiler;II)Lorg/apache/xpath/patterns/StepPattern;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_pattern:Lorg/apache/xpath/patterns/StepPattern;

    const/high16 p1, 0x28000000

    and-int/2addr p1, p3

    const/4 p2, 0x1

    if-eqz p1, :cond_19

    move p1, p2

    goto :goto_1a

    :cond_19
    move p1, v0

    :goto_1a
    const v1, 0x5d86000

    and-int/2addr v1, p3

    if-eqz v1, :cond_22

    move v1, p2

    goto :goto_23

    :cond_22
    move v1, v0

    :goto_23
    const/high16 v2, 0x70000

    and-int/2addr v2, p3

    if-eqz v2, :cond_2a

    move v2, p2

    goto :goto_2b

    :cond_2a
    move v2, v0

    :goto_2b
    const v3, 0x208000

    and-int/2addr p3, v3

    if-eqz p3, :cond_32

    move v0, p2

    :cond_32
    const/16 p2, 0x10

    if-nez p1, :cond_49

    if-eqz v1, :cond_39

    goto :goto_49

    :cond_39
    if-eqz v2, :cond_46

    if-eqz v0, :cond_42

    const/16 p1, 0xe

    .line 134
    iput p1, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    return-void

    :cond_42
    const/4 p1, 0x5

    .line 138
    iput p1, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    return-void

    .line 143
    :cond_46
    iput p2, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    return-void

    :cond_49
    :goto_49
    if-eqz v0, :cond_4e

    .line 123
    iput p2, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    return-void

    :cond_4e
    const/16 p1, 0x11

    .line 127
    iput p1, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    return-void
.end method


# virtual methods
.method public greylist acceptNode(ILorg/apache/xpath/XPathContext;)S
    .registers 3

    .line 292
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 293
    iget p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->pushIteratorRoot(I)V

    .line 304
    iget-object p0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_pattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {p0, p2}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    .line 314
    sget-object p1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;
    :try_end_10
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_10} :catch_1e
    .catchall {:try_start_0 .. :try_end_10} :catchall_1c

    if-ne p0, p1, :cond_14

    const/4 p0, 0x3

    goto :goto_15

    :cond_14
    const/4 p0, 0x1

    .line 325
    :goto_15
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 326
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popIteratorRoot()V

    return p0

    :catchall_1c
    move-exception p0

    goto :goto_29

    :catch_1e
    move-exception p0

    .line 321
    :try_start_1f
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_1c

    .line 325
    :goto_29
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 326
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popIteratorRoot()V

    .line 327
    throw p0
.end method

.method public greylist detach()V
    .registers 2

    .line 175
    iget-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    .line 180
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->detach()V

    :cond_a
    return-void
.end method

.method protected greylist getNextNode()I
    .registers 4

    .line 190
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_e

    .line 191
    iget-object v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v0

    goto :goto_16

    .line 192
    :cond_e
    iget-object v1, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    invoke-virtual {v1, v2, v0}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v0

    :goto_16
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    return v0
.end method

.method public greylist nextNode()I
    .registers 7

    .line 205
    iget-boolean v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    return v1

    .line 212
    :cond_6
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v1, v0, :cond_1a

    .line 214
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v2

    .line 219
    iget v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    invoke-virtual {v0, v3}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 235
    :cond_1c
    :goto_1c
    :try_start_1c
    invoke-virtual {p0}, Lorg/apache/xpath/axes/MatchPatternIterator;->getNextNode()I

    move-result v3

    const/4 v4, 0x1

    if-eq v1, v3, :cond_31

    .line 239
    iget-object v5, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {p0, v3, v5}, Lorg/apache/xpath/axes/MatchPatternIterator;->acceptNode(ILorg/apache/xpath/XPathContext;)S

    move-result v5

    if-ne v4, v5, :cond_2c

    goto :goto_31

    :cond_2c
    if-ne v3, v1, :cond_1c

    goto :goto_31

    :catchall_2f
    move-exception v3

    goto :goto_48

    :cond_31
    :goto_31
    if-eq v1, v3, :cond_3e

    .line 256
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->incrementCurrentPos()V
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_2f

    .line 269
    iget p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v1, p0, :cond_3d

    .line 272
    invoke-virtual {v0, v2}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_3d
    return v3

    .line 262
    :cond_3e
    :try_start_3e
    iput-boolean v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_2f

    .line 269
    iget p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v1, p0, :cond_47

    .line 272
    invoke-virtual {v0, v2}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_47
    return v1

    .line 269
    :goto_48
    iget p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v1, p0, :cond_4f

    .line 272
    invoke-virtual {v0, v2}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 274
    :cond_4f
    throw v3
.end method

.method public greylist setRoot(ILjava/lang/Object;)V
    .registers 3

    .line 162
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    .line 163
    iget-object p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iget p2, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    invoke-interface {p1, p2}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    return-void
.end method
