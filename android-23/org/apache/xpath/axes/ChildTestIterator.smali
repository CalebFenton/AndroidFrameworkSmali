.class public Lorg/apache/xpath/axes/ChildTestIterator;
.super Lorg/apache/xpath/axes/BasicTestIterator;
.source "ChildTestIterator.java"


# static fields
.field static final serialVersionUID:J = -0x6e254e40aacb86baL


# instance fields
.field protected transient m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMAxisTraverser;)V
    .locals 1
    .param p1, "traverser"    # Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@0
    .prologue
    .line 70
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/BasicTestIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    #@4
    .line 72
    iput-object p1, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@6
    .line 67
    return-void
.end method

.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 0
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
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xpath/axes/BasicTestIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    #@3
    .line 55
    return-void
.end method


# virtual methods
.method public cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    invoke-super {p0}, Lorg/apache/xpath/axes/BasicTestIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/xpath/axes/ChildTestIterator;

    #@6
    .line 111
    .local v0, "clone":Lorg/apache/xpath/axes/ChildTestIterator;
    iget-object v1, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@8
    iput-object v1, v0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@a
    .line 113
    return-object v0
.end method

.method public detach()V
    .locals 1

    #@0
    .prologue
    .line 169
    iget-boolean v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_allowDetach:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 171
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@7
    .line 174
    invoke-super {p0}, Lorg/apache/xpath/axes/BasicTestIterator;->detach()V

    #@a
    .line 167
    :cond_0
    return-void
.end method

.method public getAxis()I
    .locals 1

    #@0
    .prologue
    .line 157
    const/4 v0, 0x3

    #@1
    return v0
.end method

.method protected getNextNode()I
    .locals 3

    #@0
    .prologue
    .line 83
    iget v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_lastFetched:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v1, v0, :cond_0

    #@5
    .line 84
    iget-object v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@7
    iget v1, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_context:I

    #@9
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    #@c
    move-result v0

    #@d
    .line 83
    :goto_0
    iput v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_lastFetched:I

    #@f
    .line 95
    iget v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_lastFetched:I

    #@11
    return v0

    #@12
    .line 85
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@14
    iget v1, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_context:I

    #@16
    iget v2, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_lastFetched:I

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
    .line 126
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/BasicTestIterator;->setRoot(ILjava/lang/Object;)V

    #@3
    .line 127
    iget-object v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    #@5
    const/4 v1, 0x3

    #@6
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@c
    .line 124
    return-void
.end method
