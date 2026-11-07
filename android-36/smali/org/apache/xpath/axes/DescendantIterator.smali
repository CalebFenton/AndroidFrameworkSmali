.class public Lorg/apache/xpath/axes/DescendantIterator;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "DescendantIterator.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x1084eea8350345eaL


# instance fields
.field protected greylist m_axis:I

.field protected greylist m_extendedTypeID:I

.field protected transient greylist m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    const/16 v0, 0x12

    .line 135
    iput v0, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    const/4 v0, -0x1

    .line 137
    invoke-virtual {p0, v0}, Lorg/apache/xpath/patterns/NodeTest;->initNodeTest(I)V

    return-void
.end method

.method constructor greylist <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    .line 59
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result p2

    .line 60
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x2a

    if-ne v3, v1, :cond_13

    move v4, v2

    goto :goto_14

    :cond_13
    move v4, v0

    :goto_14
    const/16 v5, 0x30

    if-ne v5, v1, :cond_1b

    move v4, v2

    :cond_19
    move v2, v0

    goto :goto_2a

    :cond_1b
    const/16 v5, 0x32

    if-ne v5, v1, :cond_19

    .line 73
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/OpMap;->getNextStepPos(I)I

    move-result v1

    .line 74
    invoke-virtual {p1, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    if-ne v1, v3, :cond_2a

    move v4, v2

    .line 83
    :cond_2a
    :goto_2a
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/OpMap;->getNextStepPos(I)I

    move-result v1

    const/4 v3, -0x1

    if-lez v1, :cond_39

    .line 86
    invoke-virtual {p1, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v5

    if-eq v3, v5, :cond_39

    move p2, v1

    goto :goto_2a

    :cond_39
    const/high16 v1, 0x10000

    and-int/2addr p3, v1

    if-eqz p3, :cond_3f

    goto :goto_40

    :cond_3f
    move v0, v4

    :goto_40
    if-eqz v2, :cond_4e

    if-eqz v0, :cond_49

    const/16 p3, 0x12

    .line 104
    iput p3, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    goto :goto_57

    :cond_49
    const/16 p3, 0x11

    .line 106
    iput p3, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    goto :goto_57

    :cond_4e
    if-eqz v0, :cond_54

    const/4 p3, 0x5

    .line 109
    iput p3, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    goto :goto_57

    :cond_54
    const/4 p3, 0x4

    .line 111
    iput p3, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    .line 113
    :goto_57
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result p3

    and-int/lit8 v0, p3, 0x43

    if-eqz v0, :cond_6e

    if-ne p3, v3, :cond_62

    goto :goto_6e

    .line 122
    :cond_62
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/OpMap;->getStepNS(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/OpMap;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {p0, p3, v0, v1}, Lorg/apache/xpath/patterns/NodeTest;->initNodeTest(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_71

    .line 119
    :cond_6e
    :goto_6e
    invoke-virtual {p0, p3}, Lorg/apache/xpath/patterns/NodeTest;->initNodeTest(I)V

    .line 125
    :goto_71
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->initPredicateInfo(Lorg/apache/xpath/compiler/Compiler;I)V

    return-void
.end method


# virtual methods
.method public greylist asNode(Lorg/apache/xpath/XPathContext;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 296
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v0

    if-lez v0, :cond_b

    .line 297
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->asNode(Lorg/apache/xpath/XPathContext;)I

    move-result p0

    return p0

    .line 299
    :cond_b
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 301
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p1

    .line 302
    iget v1, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    invoke-interface {p1, v1}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v1

    .line 304
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/NodeTest;->getLocalName()Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/NodeTest;->getNamespace()Ljava/lang/String;

    move-result-object v3

    .line 306
    iget p0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    const/4 v4, -0x1

    if-eq v4, p0, :cond_3a

    .line 312
    const-string v4, "*"

    if-eq v2, v4, :cond_3a

    if-ne v3, v4, :cond_2d

    goto :goto_3a

    .line 320
    :cond_2d
    invoke-static {p0}, Lorg/apache/xpath/patterns/NodeTest;->getNodeTypeTest(I)I

    move-result p0

    .line 321
    invoke-interface {p1, v3, v2, p0}, Lorg/apache/xml/dtm/DTM;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    .line 322
    invoke-virtual {v1, v0, p0}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(II)I

    move-result p0

    return p0

    .line 316
    :cond_3a
    :goto_3a
    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result p0

    return p0
.end method

.method public greylist cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 152
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/DescendantIterator;

    .line 153
    iget-object p0, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iput-object p0, v0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    .line 155
    invoke-virtual {v0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->resetProximityPositions()V

    return-object v0
.end method

.method public greylist deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 4

    .line 370
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 373
    :cond_8
    iget p0, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    check-cast p1, Lorg/apache/xpath/axes/DescendantIterator;

    iget p1, p1, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    if-eq p0, p1, :cond_11

    return v1

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public greylist detach()V
    .registers 2

    .line 335
    iget-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    const/4 v0, 0x0

    .line 337
    iput v0, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_extendedTypeID:I

    .line 340
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->detach()V

    :cond_d
    return-void
.end method

.method public greylist getAxis()I
    .registers 1

    .line 352
    iget p0, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    return p0
.end method

.method public greylist nextNode()I
    .registers 8

    .line 174
    iget-boolean v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    return v1

    .line 177
    :cond_6
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    if-ne v1, v0, :cond_d

    .line 179
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->resetProximityPositions()V

    .line 186
    :cond_d
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v1, v0, :cond_21

    .line 188
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v2

    .line 193
    iget v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    invoke-virtual {v0, v3}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 206
    :cond_23
    :goto_23
    :try_start_23
    iget v3, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_extendedTypeID:I

    if-nez v3, :cond_41

    .line 208
    iget v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    if-ne v1, v3, :cond_36

    .line 209
    iget-object v3, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    invoke-virtual {v3, v4}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v3

    goto :goto_3e

    :catchall_34
    move-exception v3

    goto :goto_7d

    .line 210
    :cond_36
    iget-object v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v5, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    invoke-virtual {v4, v5, v3}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v3

    :goto_3e
    iput v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    goto :goto_58

    .line 214
    :cond_41
    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    if-ne v1, v4, :cond_4e

    .line 215
    iget-object v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v5, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    invoke-virtual {v4, v5, v3}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(II)I

    move-result v3

    goto :goto_56

    .line 216
    :cond_4e
    iget-object v5, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v6, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    invoke-virtual {v5, v6, v4, v3}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(III)I

    move-result v3

    :goto_56
    iput v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    :goto_58
    const/4 v4, 0x1

    if-eq v1, v3, :cond_64

    .line 222
    invoke-virtual {p0, v3}, Lorg/apache/xpath/axes/PredicatedNodeTest;->acceptNode(I)S

    move-result v5

    if-ne v4, v5, :cond_62

    goto :goto_64

    :cond_62
    if-ne v3, v1, :cond_23

    :cond_64
    :goto_64
    if-eq v1, v3, :cond_73

    .line 234
    iget v5, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    add-int/2addr v5, v4

    iput v5, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I
    :try_end_6b
    .catchall {:try_start_23 .. :try_end_6b} :catchall_34

    .line 246
    iget p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v1, p0, :cond_72

    .line 249
    invoke-virtual {v0, v2}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_72
    return v3

    .line 239
    :cond_73
    :try_start_73
    iput-boolean v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z
    :try_end_75
    .catchall {:try_start_73 .. :try_end_75} :catchall_34

    .line 246
    iget p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v1, p0, :cond_7c

    .line 249
    invoke-virtual {v0, v2}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_7c
    return v1

    .line 246
    :goto_7d
    iget p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v1, p0, :cond_84

    .line 249
    invoke-virtual {v0, v2}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 251
    :cond_84
    throw v3
.end method

.method public greylist setRoot(ILjava/lang/Object;)V
    .registers 6

    .line 263
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    .line 264
    iget-object p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iget p2, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    invoke-interface {p1, p2}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    .line 266
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/NodeTest;->getLocalName()Ljava/lang/String;

    move-result-object p1

    .line 267
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/NodeTest;->getNamespace()Ljava/lang/String;

    move-result-object p2

    .line 268
    iget v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_36

    .line 272
    const-string v1, "*"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 273
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_36

    .line 279
    :cond_29
    invoke-static {v0}, Lorg/apache/xpath/patterns/NodeTest;->getNodeTypeTest(I)I

    move-result v0

    .line 280
    iget-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, p2, p1, v0}, Lorg/apache/xml/dtm/DTM;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_extendedTypeID:I

    return-void

    :cond_36
    :goto_36
    const/4 p1, 0x0

    .line 275
    iput p1, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_extendedTypeID:I

    return-void
.end method
