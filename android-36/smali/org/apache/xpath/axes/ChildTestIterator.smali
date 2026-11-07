.class public Lorg/apache/xpath/axes/ChildTestIterator;
.super Lorg/apache/xpath/axes/BasicTestIterator;
.source "ChildTestIterator.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x6e254e40aacb86baL


# instance fields
.field protected transient greylist m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTMAxisTraverser;)V
    .registers 3

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/BasicTestIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 72
    iput-object p1, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    return-void
.end method

.method constructor greylist <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xpath/axes/BasicTestIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    return-void
.end method


# virtual methods
.method public greylist cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 110
    invoke-super {p0}, Lorg/apache/xpath/axes/BasicTestIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/ChildTestIterator;

    .line 111
    iget-object p0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iput-object p0, v0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    return-object v0
.end method

.method public greylist detach()V
    .registers 2

    .line 169
    iget-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    .line 174
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->detach()V

    :cond_a
    return-void
.end method

.method public greylist getAxis()I
    .registers 1

    .line 0
    const/4 p0, 0x3

    return p0
.end method

.method protected greylist getNextNode()I
    .registers 4

    .line 83
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_e

    .line 84
    iget-object v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v0

    goto :goto_16

    .line 85
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

    .line 126
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    .line 127
    iget-object p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    return-void
.end method
