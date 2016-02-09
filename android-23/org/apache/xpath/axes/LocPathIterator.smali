.class public abstract Lorg/apache/xpath/axes/LocPathIterator;
.super Lorg/apache/xpath/axes/PredicatedNodeTest;
.source "LocPathIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/xml/dtm/DTMIterator;
.implements Ljava/io/Serializable;
.implements Lorg/apache/xpath/axes/PathComponent;


# static fields
.field static final serialVersionUID:J = -0x3fdf47dcaa1dfdfaL


# instance fields
.field protected m_allowDetach:Z

.field protected transient m_cdtm:Lorg/apache/xml/dtm/DTM;

.field protected transient m_clones:Lorg/apache/xpath/axes/IteratorPool;

.field protected transient m_context:I

.field protected transient m_currentContextNode:I

.field protected transient m_execContext:Lorg/apache/xpath/XPathContext;

.field private m_isTopLevel:Z

.field public transient m_lastFetched:I

.field protected transient m_length:I

.field protected transient m_pos:I

.field private m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

.field transient m_stackFrame:I


# direct methods
.method protected constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    .line 58
    invoke-direct {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;-><init>()V

    #@5
    .line 656
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    #@8
    .line 937
    new-instance v0, Lorg/apache/xpath/axes/IteratorPool;

    #@a
    invoke-direct {v0, p0}, Lorg/apache/xpath/axes/IteratorPool;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    #@d
    iput-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    #@f
    .line 948
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    #@11
    .line 956
    iput-boolean v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_isTopLevel:Z

    #@13
    .line 959
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    #@15
    .line 965
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    #@17
    .line 973
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    #@19
    .line 978
    iput v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    #@1b
    .line 980
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    #@1d
    .line 58
    return-void
.end method

.method protected constructor <init>(Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 3
    .param p1, "nscontext"    # Lorg/apache/xml/utils/PrefixResolver;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    .line 69
    invoke-direct {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;-><init>()V

    #@5
    .line 656
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    #@8
    .line 937
    new-instance v0, Lorg/apache/xpath/axes/IteratorPool;

    #@a
    invoke-direct {v0, p0}, Lorg/apache/xpath/axes/IteratorPool;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    #@d
    iput-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    #@f
    .line 948
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    #@11
    .line 956
    iput-boolean v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_isTopLevel:Z

    #@13
    .line 959
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    #@15
    .line 965
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    #@17
    .line 973
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    #@19
    .line 978
    iput v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    #@1b
    .line 980
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    #@1d
    .line 72
    invoke-virtual {p0, p0}, Lorg/apache/xpath/axes/LocPathIterator;->setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V

    #@20
    .line 73
    iput-object p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    #@22
    .line 69
    return-void
.end method

.method protected constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 1
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
    .line 91
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    #@4
    .line 89
    return-void
.end method

.method protected constructor <init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V
    .locals 3
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
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    .line 109
    invoke-direct {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;-><init>()V

    #@5
    .line 656
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    #@8
    .line 937
    new-instance v0, Lorg/apache/xpath/axes/IteratorPool;

    #@a
    invoke-direct {v0, p0}, Lorg/apache/xpath/axes/IteratorPool;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    #@d
    iput-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    #@f
    .line 948
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    #@11
    .line 956
    iput-boolean v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_isTopLevel:Z

    #@13
    .line 959
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    #@15
    .line 965
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    #@17
    .line 973
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    #@19
    .line 978
    iput v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    #@1b
    .line 980
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    #@1d
    .line 113
    invoke-virtual {p0, p0}, Lorg/apache/xpath/axes/LocPathIterator;->setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V

    #@20
    .line 111
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 141
    new-instance v1, Lorg/apache/xpath/axes/IteratorPool;

    #@5
    invoke-direct {v1, p0}, Lorg/apache/xpath/axes/IteratorPool;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    #@8
    iput-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 136
    return-void

    #@b
    .line 144
    :catch_0
    move-exception v0

    #@c
    .line 145
    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljavax/xml/transform/TransformerException;

    #@e
    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@11
    throw v1
.end method


# virtual methods
.method public allowDetachToRelease(Z)V
    .locals 0
    .param p1, "allowRelease"    # Z

    #@0
    .prologue
    .line 666
    iput-boolean p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    #@2
    .line 664
    return-void
.end method

.method public asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;
    .locals 2
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "contextNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 267
    new-instance v0, Lorg/apache/xpath/objects/XNodeSet;

    #@2
    iget-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    #@4
    invoke-virtual {v1}, Lorg/apache/xpath/axes/IteratorPool;->getInstance()Lorg/apache/xml/dtm/DTMIterator;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Lorg/apache/xpath/axes/LocPathIterator;

    #@a
    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    #@d
    .line 269
    .local v0, "iter":Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual {v0, p2, p1}, Lorg/apache/xpath/objects/XNodeSet;->setRoot(ILjava/lang/Object;)V

    #@10
    .line 271
    return-object v0
.end method

.method public asNode(Lorg/apache/xpath/XPathContext;)I
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 296
    iget-object v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    #@2
    invoke-virtual {v3}, Lorg/apache/xpath/axes/IteratorPool;->getInstance()Lorg/apache/xml/dtm/DTMIterator;

    #@5
    move-result-object v1

    #@6
    .line 298
    .local v1, "iter":Lorg/apache/xml/dtm/DTMIterator;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@9
    move-result v0

    #@a
    .line 300
    .local v0, "current":I
    invoke-interface {v1, v0, p1}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    #@d
    .line 302
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@10
    move-result v2

    #@11
    .line 304
    .local v2, "next":I
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    #@14
    .line 305
    return v2
.end method

.method public bool(Lorg/apache/xpath/XPathContext;)Z
    .locals 2
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->asNode(Lorg/apache/xpath/XPathContext;)I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 1
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    #@0
    .prologue
    .line 922
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitLocationPath(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/LocPathIterator;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 924
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitStep(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/NodeTest;)Z

    #@9
    .line 925
    invoke-virtual {p0, p2}, Lorg/apache/xpath/axes/LocPathIterator;->callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V

    #@c
    .line 920
    :cond_0
    return-void
.end method

.method public cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 715
    iget-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    #@2
    invoke-virtual {v1}, Lorg/apache/xpath/axes/IteratorPool;->getInstanceOrThrow()Lorg/apache/xml/dtm/DTMIterator;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/xpath/axes/LocPathIterator;

    #@8
    .line 716
    .local v0, "clone":Lorg/apache/xpath/axes/LocPathIterator;
    iget-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    #@a
    iput-object v1, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    #@c
    .line 717
    iget-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    #@e
    iput-object v1, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    #@10
    .line 719
    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    #@12
    iput v1, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    #@14
    .line 720
    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    #@16
    iput v1, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    #@18
    .line 721
    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    #@1a
    iput v1, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    #@1c
    .line 725
    return-object v0
.end method

.method public detach()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    .line 678
    iget-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 682
    iput-object v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    #@8
    .line 684
    iput-object v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    #@a
    .line 685
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    #@c
    .line 686
    const/4 v0, 0x0

    #@d
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    #@f
    .line 687
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    #@11
    .line 688
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    #@13
    .line 689
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    #@15
    .line 691
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    #@17
    invoke-virtual {v0, p0}, Lorg/apache/xpath/axes/IteratorPool;->freeInstance(Lorg/apache/xml/dtm/DTMIterator;)V

    #@1a
    .line 676
    :cond_0
    return-void
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 2
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 210
    new-instance v0, Lorg/apache/xpath/objects/XNodeSet;

    #@2
    iget-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    #@4
    invoke-virtual {v1}, Lorg/apache/xpath/axes/IteratorPool;->getInstance()Lorg/apache/xml/dtm/DTMIterator;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Lorg/apache/xpath/axes/LocPathIterator;

    #@a
    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    #@d
    .line 212
    .local v0, "iter":Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@10
    move-result v1

    #@11
    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/objects/XNodeSet;->setRoot(ILjava/lang/Object;)V

    #@14
    .line 214
    return-object v0
.end method

.method public executeCharsToContentHandler(Lorg/apache/xpath/XPathContext;Lorg/xml/sax/ContentHandler;)V
    .locals 5
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "handler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 236
    iget-object v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    #@2
    invoke-virtual {v4}, Lorg/apache/xpath/axes/IteratorPool;->getInstance()Lorg/apache/xml/dtm/DTMIterator;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/xpath/axes/LocPathIterator;

    #@8
    .line 238
    .local v0, "clone":Lorg/apache/xpath/axes/LocPathIterator;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@b
    move-result v1

    #@c
    .line 239
    .local v1, "current":I
    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    #@f
    .line 241
    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->nextNode()I

    #@12
    move-result v3

    #@13
    .line 242
    .local v3, "node":I
    invoke-virtual {v0, v3}, Lorg/apache/xpath/axes/LocPathIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@16
    move-result-object v2

    #@17
    .line 243
    .local v2, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->detach()V

    #@1a
    .line 245
    const/4 v4, -0x1

    #@1b
    if-eq v3, v4, :cond_0

    #@1d
    .line 247
    const/4 v4, 0x0

    #@1e
    invoke-interface {v2, v3, p2, v4}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    #@21
    .line 234
    :cond_0
    return-void
.end method

.method public getAnalysisBits()I
    .locals 2

    #@0
    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getAxis()I

    #@3
    move-result v0

    #@4
    .line 123
    .local v0, "axis":I
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->getAnalysisBitFromAxes(I)I

    #@7
    move-result v1

    #@8
    .line 124
    .local v1, "bit":I
    return v1
.end method

.method public getAxis()I
    .locals 1

    #@0
    .prologue
    .line 1014
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public final getContext()I
    .locals 1

    #@0
    .prologue
    .line 846
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    #@2
    return v0
.end method

.method public final getCurrentContextNode()I
    .locals 1

    #@0
    .prologue
    .line 857
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    #@2
    return v0
.end method

.method public getCurrentNode()I
    .locals 1

    #@0
    .prologue
    .line 784
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    #@2
    return v0
.end method

.method public final getCurrentPos()I
    .locals 1

    #@0
    .prologue
    .line 405
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    #@2
    return v0
.end method

.method public getDTM(I)Lorg/apache/xml/dtm/DTM;
    .locals 1
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDTMManager()Lorg/apache/xml/dtm/DTMManager;
    .locals 1

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    #@2
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getExpandEntityReferences()Z
    .locals 1

    #@0
    .prologue
    .line 652
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getFilter()Lorg/apache/xml/dtm/DTMFilter;
    .locals 1

    #@0
    .prologue
    .line 621
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final getFoundLast()Z
    .locals 1

    #@0
    .prologue
    .line 825
    iget-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_foundLast:Z

    #@2
    return v0
.end method

.method public getIsTopLevel()Z
    .locals 1

    #@0
    .prologue
    .line 347
    iget-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_isTopLevel:Z

    #@2
    return v0
.end method

.method public getLastPos(Lorg/apache/xpath/XPathContext;)I
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 1030
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getLength()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getLength()I
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, -0x1

    #@2
    .line 510
    iget-object v6, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    #@4
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->getSubContextList()Lorg/apache/xpath/axes/SubContextList;

    #@7
    move-result-object v6

    #@8
    if-ne p0, v6, :cond_0

    #@a
    const/4 v2, 0x1

    #@b
    .line 513
    .local v2, "isPredicateTest":Z
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getPredicateCount()I

    #@e
    move-result v5

    #@f
    .line 518
    .local v5, "predCount":I
    iget v6, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    #@11
    if-eq v7, v6, :cond_1

    #@13
    if-eqz v2, :cond_1

    #@15
    iget v6, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_predicateIndex:I

    #@17
    if-ge v6, v8, :cond_1

    #@19
    .line 519
    iget v6, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    #@1b
    return v6

    #@1c
    .line 510
    .end local v2    # "isPredicateTest":Z
    .end local v5    # "predCount":I
    :cond_0
    const/4 v2, 0x0

    #@1d
    .restart local v2    # "isPredicateTest":Z
    goto :goto_0

    #@1e
    .line 523
    .restart local v5    # "predCount":I
    :cond_1
    iget-boolean v6, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_foundLast:Z

    #@20
    if-eqz v6, :cond_2

    #@22
    .line 524
    iget v6, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    #@24
    return v6

    #@25
    .line 529
    :cond_2
    iget v6, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_predicateIndex:I

    #@27
    if-ltz v6, :cond_4

    #@29
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getProximityPosition()I

    #@2c
    move-result v4

    #@2d
    .line 535
    .local v4, "pos":I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->clone()Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Lorg/apache/xpath/axes/LocPathIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 545
    .local v0, "clone":Lorg/apache/xpath/axes/LocPathIterator;
    if-lez v5, :cond_3

    #@35
    if-eqz v2, :cond_3

    #@37
    .line 548
    iget v6, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_predicateIndex:I

    #@39
    iput v6, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_predCount:I

    #@3b
    .line 556
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->nextNode()I

    #@3e
    move-result v3

    #@3f
    .local v3, "next":I
    if-eq v7, v3, :cond_5

    #@41
    .line 558
    add-int/lit8 v4, v4, 0x1

    #@43
    goto :goto_2

    #@44
    .line 529
    .end local v0    # "clone":Lorg/apache/xpath/axes/LocPathIterator;
    .end local v3    # "next":I
    .end local v4    # "pos":I
    :cond_4
    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    #@46
    .restart local v4    # "pos":I
    goto :goto_1

    #@47
    .line 538
    :catch_0
    move-exception v1

    #@48
    .line 539
    .local v1, "cnse":Ljava/lang/CloneNotSupportedException;
    return v7

    #@49
    .line 561
    .end local v1    # "cnse":Ljava/lang/CloneNotSupportedException;
    .restart local v0    # "clone":Lorg/apache/xpath/axes/LocPathIterator;
    .restart local v3    # "next":I
    :cond_5
    if-eqz v2, :cond_6

    #@4b
    iget v6, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_predicateIndex:I

    #@4d
    if-ge v6, v8, :cond_6

    #@4f
    .line 562
    iput v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    #@51
    .line 564
    :cond_6
    return v4
.end method

.method public final getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;
    .locals 1

    #@0
    .prologue
    .line 889
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 891
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getExpressionOwner()Lorg/apache/xpath/ExpressionNode;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lorg/apache/xml/utils/PrefixResolver;

    #@a
    iput-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    #@c
    .line 894
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    #@e
    return-object v0
.end method

.method public getRoot()I
    .locals 1

    #@0
    .prologue
    .line 632
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    #@2
    return v0
.end method

.method public getWhatToShow()I
    .locals 1

    #@0
    .prologue
    .line 608
    const/16 v0, -0x11

    #@2
    return v0
.end method

.method public final getXPathContext()Lorg/apache/xpath/XPathContext;
    .locals 1

    #@0
    .prologue
    .line 836
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    #@2
    return-object v0
.end method

.method public incrementCurrentPos()V
    .locals 1

    #@0
    .prologue
    .line 448
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    #@6
    .line 446
    return-void
.end method

.method public isDocOrdered()Z
    .locals 1

    #@0
    .prologue
    .line 1003
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isFresh()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 576
    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public isMutable()Z
    .locals 1

    #@0
    .prologue
    .line 429
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isNodesetExpr()Z
    .locals 1

    #@0
    .prologue
    .line 282
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public item(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 479
    const-string/jumbo v0, "item(int index) not supported by this iterator!"

    #@4
    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/axes/LocPathIterator;->assertion(ZLjava/lang/String;)V

    #@7
    .line 480
    return v1
.end method

.method public abstract nextNode()I
.end method

.method public previousNode()I
    .locals 3

    #@0
    .prologue
    .line 587
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    .line 588
    const-string/jumbo v1, "ER_NODESETDTM_CANNOT_ITERATE"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 587
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 700
    const-string/jumbo v0, "This iterator can not reset!"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/axes/LocPathIterator;->assertion(ZLjava/lang/String;)V

    #@7
    .line 698
    return-void
.end method

.method protected returnNextNode(I)I
    .locals 2
    .param p1, "nextNode"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 764
    if-eq v1, p1, :cond_0

    #@3
    .line 766
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    #@5
    add-int/lit8 v0, v0, 0x1

    #@7
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    #@9
    .line 769
    :cond_0
    iput p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    #@b
    .line 771
    if-ne v1, p1, :cond_1

    #@d
    .line 772
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_foundLast:Z

    #@10
    .line 774
    :cond_1
    return p1
.end method

.method public runTo(I)V
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 799
    iget-boolean v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_foundLast:Z

    #@3
    if-nez v1, :cond_0

    #@5
    if-ltz p1, :cond_1

    #@7
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getCurrentPos()I

    #@a
    move-result v1

    #@b
    if-gt p1, v1, :cond_1

    #@d
    .line 800
    :cond_0
    return-void

    #@e
    .line 804
    :cond_1
    if-ne v2, p1, :cond_4

    #@10
    .line 806
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->nextNode()I

    #@13
    move-result v0

    #@14
    .local v0, "n":I
    if-ne v2, v0, :cond_2

    #@16
    .line 796
    :cond_3
    :goto_0
    return-void

    #@17
    .line 810
    .end local v0    # "n":I
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->nextNode()I

    #@1a
    move-result v0

    #@1b
    .restart local v0    # "n":I
    if-eq v2, v0, :cond_3

    #@1d
    .line 812
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getCurrentPos()I

    #@20
    move-result v1

    #@21
    if-lt v1, p1, :cond_4

    #@23
    goto :goto_0
.end method

.method public final setCurrentContextNode(I)V
    .locals 0
    .param p1, "n"    # I

    #@0
    .prologue
    .line 867
    iput p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    #@2
    .line 865
    return-void
.end method

.method public setCurrentPos(I)V
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 440
    const-string/jumbo v0, "setCurrentPos not supported by this iterator!"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/axes/LocPathIterator;->assertion(ZLjava/lang/String;)V

    #@7
    .line 438
    return-void
.end method

.method public setEnvironment(Ljava/lang/Object;)V
    .locals 0
    .param p1, "environment"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 162
    return-void
.end method

.method public setIsTopLevel(Z)V
    .locals 0
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 334
    iput-boolean p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_isTopLevel:Z

    #@2
    .line 332
    return-void
.end method

.method public setItem(II)V
    .locals 2
    .param p1, "node"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    .line 498
    const-string/jumbo v0, "setItem not supported by this iterator!"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/axes/LocPathIterator;->assertion(ZLjava/lang/String;)V

    #@7
    .line 496
    return-void
.end method

.method protected setNextPosition(I)V
    .locals 2
    .param p1, "next"    # I

    #@0
    .prologue
    .line 391
    const-string/jumbo v0, "setNextPosition not supported in this iterator!"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/axes/LocPathIterator;->assertion(ZLjava/lang/String;)V

    #@7
    .line 389
    return-void
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 4
    .param p1, "context"    # I
    .param p2, "environment"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 360
    iput p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    #@4
    move-object v0, p2

    #@5
    .line 362
    check-cast v0, Lorg/apache/xpath/XPathContext;

    #@7
    .line 363
    .local v0, "xctxt":Lorg/apache/xpath/XPathContext;
    iput-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    #@9
    .line 364
    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    #@f
    .line 366
    iput p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    #@11
    .line 369
    iget-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    #@13
    if-nez v1, :cond_0

    #@15
    .line 370
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    #@18
    move-result-object v1

    #@19
    iput-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    #@1b
    .line 372
    :cond_0
    iput v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    #@1d
    .line 373
    iput-boolean v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_foundLast:Z

    #@1f
    .line 374
    iput v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    #@21
    .line 375
    iput v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    #@23
    .line 377
    iget-boolean v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_isTopLevel:Z

    #@25
    if-eqz v1, :cond_1

    #@27
    .line 378
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    #@2e
    move-result v1

    #@2f
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    #@31
    .line 357
    :cond_1
    return-void
.end method

.method public setShouldCacheNodes(Z)V
    .locals 2
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 418
    const-string/jumbo v0, "setShouldCacheNodes not supported by this iterater!"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/axes/LocPathIterator;->assertion(ZLjava/lang/String;)V

    #@7
    .line 415
    return-void
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 464
    const-string/jumbo v0, "size() not supported by this iterator!"

    #@4
    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/axes/LocPathIterator;->assertion(ZLjava/lang/String;)V

    #@7
    .line 465
    return v1
.end method
