.class public Lorg/apache/xpath/axes/OneStepIteratorForward;
.super Lorg/apache/xpath/axes/ChildTestIterator;
.source "OneStepIteratorForward.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x15e2677d048fa4e6L


# instance fields
.field protected greylist m_axis:I


# direct methods
.method public constructor greylist <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xml/dtm/DTMAxisTraverser;)V

    .line 73
    iput p1, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_axis:I

    const/4 p1, -0x1

    .line 75
    invoke-virtual {p0, p1}, Lorg/apache/xpath/patterns/NodeTest;->initNodeTest(I)V

    return-void
.end method

.method constructor greylist <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    const/4 p3, -0x1

    .line 41
    iput p3, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_axis:I

    .line 56
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result p2

    .line 58
    invoke-static {p1, p2}, Lorg/apache/xpath/axes/WalkerFactory;->getAxisFromStep(Lorg/apache/xpath/compiler/Compiler;I)I

    move-result p1

    iput p1, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_axis:I

    return-void
.end method


# virtual methods
.method public greylist deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 4

    .line 162
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 165
    :cond_8
    iget p0, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_axis:I

    check-cast p1, Lorg/apache/xpath/axes/OneStepIteratorForward;

    iget p1, p1, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_axis:I

    if-eq p0, p1, :cond_11

    return v1

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public greylist getAxis()I
    .registers 1

    .line 154
    iget p0, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_axis:I

    return p0
.end method

.method protected greylist getNextNode()I
    .registers 4

    .line 140
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_e

    .line 141
    iget-object v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v0

    goto :goto_16

    .line 142
    :cond_e
    iget-object v1, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    invoke-virtual {v1, v2, v0}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v0

    :goto_16
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    return v0
.end method

.method public greylist setRoot(ILjava/lang/Object;)V
    .registers 3

    .line 90
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/ChildTestIterator;->setRoot(ILjava/lang/Object;)V

    .line 91
    iget-object p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iget p2, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_axis:I

    invoke-interface {p1, p2}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    return-void
.end method
