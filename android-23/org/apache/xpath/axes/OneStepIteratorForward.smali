.class public Lorg/apache/xpath/axes/OneStepIteratorForward;
.super Lorg/apache/xpath/axes/ChildTestIterator;
.source "OneStepIteratorForward.java"


# static fields
.field static final serialVersionUID:J = -0x15e2677d048fa4e6L


# instance fields
.field protected m_axis:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "axis"    # I

    #@0
    .prologue
    .line 71
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, v1}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xml/dtm/DTMAxisTraverser;)V

    #@4
    .line 41
    const/4 v1, -0x1

    #@5
    iput v1, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_axis:I

    #@7
    .line 73
    iput p1, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_axis:I

    #@9
    .line 74
    const/4 v0, -0x1

    #@a
    .line 75
    .local v0, "whatToShow":I
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/OneStepIteratorForward;->initNodeTest(I)V

    #@d
    .line 69
    return-void
.end method

.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 2
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
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    #@3
    .line 41
    const/4 v1, -0x1

    #@4
    iput v1, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_axis:I

    #@6
    .line 56
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    #@9
    move-result v0

    #@a
    .line 58
    .local v0, "firstStepPos":I
    invoke-static {p1, v0}, Lorg/apache/xpath/axes/WalkerFactory;->getAxisFromStep(Lorg/apache/xpath/compiler/Compiler;I)I

    #@d
    move-result v1

    #@e
    iput v1, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_axis:I

    #@10
    .line 53
    return-void
.end method


# virtual methods
.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 3
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 162
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/ChildTestIterator;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 163
    return v2

    #@8
    .line 165
    :cond_0
    iget v0, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_axis:I

    #@a
    check-cast p1, Lorg/apache/xpath/axes/OneStepIteratorForward;

    #@c
    .end local p1    # "expr":Lorg/apache/xpath/Expression;
    iget v1, p1, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_axis:I

    #@e
    if-eq v0, v1, :cond_1

    #@10
    .line 166
    return v2

    #@11
    .line 168
    :cond_1
    const/4 v0, 0x1

    #@12
    return v0
.end method

.method public getAxis()I
    .locals 1

    #@0
    .prologue
    .line 154
    iget v0, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_axis:I

    #@2
    return v0
.end method

.method protected getNextNode()I
    .locals 3

    #@0
    .prologue
    .line 140
    iget v0, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_lastFetched:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v1, v0, :cond_0

    #@5
    .line 141
    iget-object v0, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@7
    iget v1, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_context:I

    #@9
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    #@c
    move-result v0

    #@d
    .line 140
    :goto_0
    iput v0, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_lastFetched:I

    #@f
    .line 143
    iget v0, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_lastFetched:I

    #@11
    return v0

    #@12
    .line 142
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@14
    iget v1, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_context:I

    #@16
    iget v2, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_lastFetched:I

    #@18
    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    #@1b
    move-result v0

    #@1c
    goto :goto_0
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 2
    .param p1, "context"    # I
    .param p2, "environment"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/ChildTestIterator;->setRoot(ILjava/lang/Object;)V

    #@3
    .line 91
    iget-object v0, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    #@5
    iget v1, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_axis:I

    #@7
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@d
    .line 88
    return-void
.end method
