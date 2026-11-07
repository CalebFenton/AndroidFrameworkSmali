.class public abstract Lorg/apache/xpath/axes/LocPathIterator;
.super Lorg/apache/xpath/axes/PredicatedNodeTest;
.source "LocPathIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/xml/dtm/DTMIterator;
.implements Ljava/io/Serializable;
.implements Lorg/apache/xpath/axes/PathComponent;


# static fields
.field static final whitelist serialVersionUID:J = -0x3fdf47dcaa1dfdfaL


# instance fields
.field protected greylist m_allowDetach:Z

.field protected transient greylist m_cdtm:Lorg/apache/xml/dtm/DTM;

.field protected transient greylist m_clones:Lorg/apache/xpath/axes/IteratorPool;

.field protected transient greylist m_context:I

.field protected transient greylist m_currentContextNode:I

.field protected transient greylist m_execContext:Lorg/apache/xpath/XPathContext;

.field private greylist m_isTopLevel:Z

.field public transient greylist m_lastFetched:I

.field protected transient greylist m_length:I

.field protected transient greylist m_pos:I

.field private greylist m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

.field transient greylist m_stackFrame:I


# direct methods
.method protected constructor greylist <init>()V
    .registers 3

    .line 59
    invoke-direct {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;-><init>()V

    const/4 v0, 0x1

    .line 656
    iput-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    .line 937
    new-instance v0, Lorg/apache/xpath/axes/IteratorPool;

    invoke-direct {v0, p0}, Lorg/apache/xpath/axes/IteratorPool;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    iput-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    const/4 v0, -0x1

    .line 948
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    const/4 v1, 0x0

    .line 956
    iput-boolean v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_isTopLevel:Z

    .line 959
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    .line 965
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    .line 973
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    .line 978
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    .line 980
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    return-void
.end method

.method protected constructor greylist <init>(Lorg/apache/xml/utils/PrefixResolver;)V
    .registers 4

    .line 70
    invoke-direct {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;-><init>()V

    const/4 v0, 0x1

    .line 656
    iput-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    .line 937
    new-instance v0, Lorg/apache/xpath/axes/IteratorPool;

    invoke-direct {v0, p0}, Lorg/apache/xpath/axes/IteratorPool;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    iput-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    const/4 v0, -0x1

    .line 948
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    const/4 v1, 0x0

    .line 956
    iput-boolean v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_isTopLevel:Z

    .line 959
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    .line 965
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    .line 973
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    .line 978
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    .line 980
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    .line 72
    invoke-virtual {p0, p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V

    .line 73
    iput-object p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    return-void
.end method

.method protected constructor greylist <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 91
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    return-void
.end method

.method protected constructor greylist <init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;-><init>()V

    const/4 p1, 0x1

    .line 656
    iput-boolean p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    .line 937
    new-instance p1, Lorg/apache/xpath/axes/IteratorPool;

    invoke-direct {p1, p0}, Lorg/apache/xpath/axes/IteratorPool;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    iput-object p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    const/4 p1, -0x1

    .line 948
    iput p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    const/4 p2, 0x0

    .line 956
    iput-boolean p2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_isTopLevel:Z

    .line 959
    iput p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    .line 965
    iput p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    .line 973
    iput p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    .line 978
    iput p2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    .line 980
    iput p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    .line 113
    invoke-virtual {p0, p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V

    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 140
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 141
    new-instance p1, Lorg/apache/xpath/axes/IteratorPool;

    invoke-direct {p1, p0}, Lorg/apache/xpath/axes/IteratorPool;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    iput-object p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 145
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public greylist allowDetachToRelease(Z)V
    .registers 2

    .line 666
    iput-boolean p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    return-void
.end method

.method public greylist asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 267
    new-instance v0, Lorg/apache/xpath/objects/XNodeSet;

    iget-object p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    invoke-virtual {p0}, Lorg/apache/xpath/axes/IteratorPool;->getInstance()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/axes/LocPathIterator;

    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 269
    invoke-virtual {v0, p2, p1}, Lorg/apache/xpath/axes/NodeSequence;->setRoot(ILjava/lang/Object;)V

    return-object v0
.end method

.method public greylist asNode(Lorg/apache/xpath/XPathContext;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 296
    iget-object p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    invoke-virtual {p0}, Lorg/apache/xpath/axes/IteratorPool;->getInstance()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    .line 298
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 300
    invoke-interface {p0, v0, p1}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    .line 302
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result p1

    .line 304
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    return p1
.end method

.method public greylist bool(Lorg/apache/xpath/XPathContext;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 320
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->asNode(Lorg/apache/xpath/XPathContext;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public greylist callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .registers 4

    .line 922
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitLocationPath(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/LocPathIterator;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 924
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitStep(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/NodeTest;)Z

    .line 925
    invoke-virtual {p0, p2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V

    :cond_c
    return-void
.end method

.method public greylist cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 715
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    invoke-virtual {v0}, Lorg/apache/xpath/axes/IteratorPool;->getInstanceOrThrow()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/LocPathIterator;

    .line 716
    iget-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    iput-object v1, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    .line 717
    iget-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iput-object v1, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    .line 719
    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    iput v1, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    .line 720
    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    iput v1, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    .line 721
    iget p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    iput p0, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    return-object v0
.end method

.method public greylist detach()V
    .registers 3

    .line 678
    iget-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    .line 682
    iput-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    .line 684
    iput-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    const/4 v0, -0x1

    .line 685
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    const/4 v1, 0x0

    .line 686
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    .line 687
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    .line 688
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    .line 689
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    .line 691
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    invoke-virtual {v0, p0}, Lorg/apache/xpath/axes/IteratorPool;->freeInstance(Lorg/apache/xml/dtm/DTMIterator;)V

    :cond_1a
    return-void
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 210
    new-instance v0, Lorg/apache/xpath/objects/XNodeSet;

    iget-object p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    invoke-virtual {p0}, Lorg/apache/xpath/axes/IteratorPool;->getInstance()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/axes/LocPathIterator;

    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 212
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->setRoot(ILjava/lang/Object;)V

    return-object v0
.end method

.method public greylist executeCharsToContentHandler(Lorg/apache/xpath/XPathContext;Lorg/xml/sax/ContentHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 236
    iget-object p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    invoke-virtual {p0}, Lorg/apache/xpath/axes/IteratorPool;->getInstance()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/axes/LocPathIterator;

    .line 238
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 239
    invoke-virtual {p0, v0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    .line 241
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->nextNode()I

    move-result p1

    .line 242
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 243
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->detach()V

    const/4 p0, -0x1

    if-eq p1, p0, :cond_21

    const/4 p0, 0x0

    .line 247
    invoke-interface {v0, p1, p2, p0}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    :cond_21
    return-void
.end method

.method public greylist getAnalysisBits()I
    .registers 1

    .line 122
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getAxis()I

    move-result p0

    .line 123
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->getAnalysisBitFromAxes(I)I

    move-result p0

    return p0
.end method

.method public greylist getAxis()I
    .registers 1

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public final greylist getContext()I
    .registers 1

    .line 846
    iget p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    return p0
.end method

.method public final greylist getCurrentContextNode()I
    .registers 1

    .line 857
    iget p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    return p0
.end method

.method public greylist getCurrentNode()I
    .registers 1

    .line 784
    iget p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    return p0
.end method

.method public final greylist getCurrentPos()I
    .registers 1

    .line 405
    iget p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    return p0
.end method

.method public greylist getDTM(I)Lorg/apache/xml/dtm/DTM;
    .registers 2

    .line 179
    iget-object p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    return-object p0
.end method

.method public greylist getDTMManager()Lorg/apache/xml/dtm/DTMManager;
    .registers 1

    .line 191
    iget-object p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object p0

    return-object p0
.end method

.method public greylist getExpandEntityReferences()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist getFilter()Lorg/apache/xml/dtm/DTMFilter;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final greylist getFoundLast()Z
    .registers 1

    .line 825
    iget-boolean p0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    return p0
.end method

.method public greylist getIsTopLevel()Z
    .registers 1

    .line 347
    iget-boolean p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_isTopLevel:Z

    return p0
.end method

.method public greylist getLastPos(Lorg/apache/xpath/XPathContext;)I
    .registers 2

    .line 1030
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getLength()I

    move-result p0

    return p0
.end method

.method public greylist getLength()I
    .registers 7

    .line 510
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getSubContextList()Lorg/apache/xpath/axes/SubContextList;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p0, v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 513
    :goto_c
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v2

    .line 518
    iget v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    const/4 v4, -0x1

    if-eq v4, v3, :cond_1c

    if-eqz v0, :cond_1c

    iget v5, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    if-ge v5, v1, :cond_1c

    return v3

    .line 523
    :cond_1c
    iget-boolean v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    if-eqz v3, :cond_23

    .line 524
    iget p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    return p0

    .line 529
    :cond_23
    iget v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    if-ltz v3, :cond_2c

    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getProximityPosition()I

    move-result v3

    goto :goto_2e

    :cond_2c
    iget v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    .line 535
    :goto_2e
    :try_start_2e
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xpath/axes/LocPathIterator;
    :try_end_34
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2e .. :try_end_34} :catch_4e

    if-lez v2, :cond_3c

    if-eqz v0, :cond_3c

    .line 548
    iget v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    iput v2, v5, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predCount:I

    .line 556
    :cond_3c
    :goto_3c
    invoke-virtual {v5}, Lorg/apache/xpath/axes/LocPathIterator;->nextNode()I

    move-result v2

    if-eq v4, v2, :cond_45

    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_45
    if-eqz v0, :cond_4d

    .line 561
    iget v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    if-ge v0, v1, :cond_4d

    .line 562
    iput v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    :cond_4d
    return v3

    :catch_4e
    return v4
.end method

.method public final greylist getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;
    .registers 2

    .line 889
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    if-nez v0, :cond_c

    .line 891
    invoke-virtual {p0}, Lorg/apache/xpath/Expression;->getExpressionOwner()Lorg/apache/xpath/ExpressionNode;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/utils/PrefixResolver;

    iput-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    .line 894
    :cond_c
    iget-object p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    return-object p0
.end method

.method public greylist getRoot()I
    .registers 1

    .line 632
    iget p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    return p0
.end method

.method public greylist getWhatToShow()I
    .registers 1

    .line 0
    const/16 p0, -0x11

    return p0
.end method

.method public final greylist getXPathContext()Lorg/apache/xpath/XPathContext;
    .registers 1

    .line 836
    iget-object p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    return-object p0
.end method

.method public greylist incrementCurrentPos()V
    .registers 2

    .line 448
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    return-void
.end method

.method public greylist isDocOrdered()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isFresh()Z
    .registers 1

    .line 576
    iget p0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isMutable()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isNodesetExpr()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist item(I)I
    .registers 3

    .line 479
    const-string p1, "item(int index) not supported by this iterator!"

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/xpath/Expression;->assertion(ZLjava/lang/String;)V

    return v0
.end method

.method public abstract greylist nextNode()I
.end method

.method public greylist previousNode()I
    .registers 3

    .line 587
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_NODESETDTM_CANNOT_ITERATE"

    const/4 v1, 0x0

    .line 588
    invoke-static {v0, v1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist reset()V
    .registers 3

    const/4 v0, 0x0

    .line 700
    const-string v1, "This iterator can not reset!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/Expression;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method protected greylist returnNextNode(I)I
    .registers 5

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq v1, p1, :cond_9

    .line 766
    iget v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    .line 769
    :cond_9
    iput p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    if-ne v1, p1, :cond_f

    .line 772
    iput-boolean v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    :cond_f
    return p1
.end method

.method public greylist runTo(I)V
    .registers 4

    .line 799
    iget-boolean v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    if-nez v0, :cond_23

    if-ltz p1, :cond_d

    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getCurrentPos()I

    move-result v0

    if-gt p1, v0, :cond_d

    goto :goto_23

    :cond_d
    const/4 v0, -0x1

    if-ne v0, p1, :cond_17

    .line 806
    :goto_10
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->nextNode()I

    move-result p1

    if-eq v0, p1, :cond_23

    goto :goto_10

    .line 810
    :cond_17
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->nextNode()I

    move-result v1

    if-eq v0, v1, :cond_23

    .line 812
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getCurrentPos()I

    move-result v1

    if-lt v1, p1, :cond_17

    :cond_23
    :goto_23
    return-void
.end method

.method public final greylist setCurrentContextNode(I)V
    .registers 2

    .line 867
    iput p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    return-void
.end method

.method public greylist setCurrentPos(I)V
    .registers 3

    const/4 p1, 0x0

    .line 440
    const-string v0, "setCurrentPos not supported by this iterator!"

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/Expression;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method public greylist setEnvironment(Ljava/lang/Object;)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist setIsTopLevel(Z)V
    .registers 2

    .line 334
    iput-boolean p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_isTopLevel:Z

    return-void
.end method

.method public greylist setItem(II)V
    .registers 3

    const/4 p1, 0x0

    .line 498
    const-string p2, "setItem not supported by this iterator!"

    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/Expression;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method protected greylist setNextPosition(I)V
    .registers 3

    const/4 p1, 0x0

    .line 391
    const-string v0, "setNextPosition not supported in this iterator!"

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/Expression;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method public greylist setRoot(ILjava/lang/Object;)V
    .registers 4

    .line 360
    iput p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    .line 362
    check-cast p2, Lorg/apache/xpath/XPathContext;

    .line 363
    iput-object p2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    .line 364
    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    .line 366
    iput p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    .line 369
    iget-object p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    if-nez p1, :cond_18

    .line 370
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    :cond_18
    const/4 p1, -0x1

    .line 372
    iput p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    const/4 v0, 0x0

    .line 373
    iput-boolean v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    .line 374
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    .line 375
    iput p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    .line 377
    iget-boolean p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_isTopLevel:Z

    if-eqz p1, :cond_30

    .line 378
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result p1

    iput p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    :cond_30
    return-void
.end method

.method public greylist setShouldCacheNodes(Z)V
    .registers 3

    const/4 p1, 0x0

    .line 418
    const-string v0, "setShouldCacheNodes not supported by this iterater!"

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/Expression;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method public greylist size()I
    .registers 3

    .line 464
    const-string v0, "size() not supported by this iterator!"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/Expression;->assertion(ZLjava/lang/String;)V

    return v1
.end method
