.class public Lorg/apache/xpath/axes/WalkingIteratorSorted;
.super Lorg/apache/xpath/axes/WalkingIterator;
.source "WalkingIteratorSorted.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x3e9fa9c3363f67d5L


# instance fields
.field protected greylist m_inNaturalOrderStatic:Z


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/utils/PrefixResolver;)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lorg/apache/xpath/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    return-void
.end method

.method constructor greylist <init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lorg/apache/xpath/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    return-void
.end method


# virtual methods
.method greylist canBeWalkedInNaturalDocOrderStatic()Z
    .registers 5

    .line 96
    iget-object p0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    const/4 v0, 0x0

    if-eqz p0, :cond_48

    :goto_5
    const/4 v1, 0x1

    if-eqz p0, :cond_47

    .line 104
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->getAxis()I

    move-result v2

    .line 106
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->isDocOrdered()Z

    move-result v3

    if-eqz v3, :cond_46

    const/4 v3, 0x3

    if-eq v2, v3, :cond_41

    const/16 v3, 0xd

    if-eq v2, v3, :cond_41

    const/16 v3, 0x13

    if-ne v2, v3, :cond_1e

    goto :goto_41

    :cond_1e
    const/4 v3, -0x1

    if-ne v2, v3, :cond_22

    goto :goto_41

    .line 117
    :cond_22
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v3

    if-nez v3, :cond_40

    .line 120
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->isDocOrdered()Z

    move-result p0

    if-eqz p0, :cond_3c

    const/4 p0, 0x4

    if-eq v2, p0, :cond_3f

    const/4 p0, 0x5

    if-eq v2, p0, :cond_3f

    const/16 p0, 0x11

    if-eq v2, p0, :cond_3f

    const/16 p0, 0x12

    if-eq v2, p0, :cond_3f

    :cond_3c
    const/4 p0, 0x2

    if-ne v2, p0, :cond_40

    :cond_3f
    return v1

    :cond_40
    return v0

    .line 114
    :cond_41
    :goto_41
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object p0

    goto :goto_5

    :cond_46
    return v0

    :cond_47
    return v1

    :cond_48
    return v0
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 3

    .line 198
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/WalkingIterator;->fixupVariables(Ljava/util/Vector;I)V

    .line 200
    invoke-virtual {p0}, Lorg/apache/xpath/axes/WalkingIterator;->getAnalysisBits()I

    move-result p1

    .line 201
    invoke-static {p1}, Lorg/apache/xpath/axes/WalkerFactory;->isNaturalDocOrder(I)Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    .line 203
    iput-boolean p1, p0, Lorg/apache/xpath/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    return-void

    :cond_11
    const/4 p1, 0x0

    .line 207
    iput-boolean p1, p0, Lorg/apache/xpath/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    return-void
.end method

.method public greylist isDocOrdered()Z
    .registers 1

    .line 83
    iget-boolean p0, p0, Lorg/apache/xpath/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    return p0
.end method
