.class public Lorg/apache/xpath/axes/WalkingIteratorSorted;
.super Lorg/apache/xpath/axes/WalkingIterator;
.source "WalkingIteratorSorted.java"


# static fields
.field static final serialVersionUID:J = -0x3e9fa9c3363f67d5L


# instance fields
.field protected m_inNaturalOrderStatic:Z


# direct methods
.method public constructor <init>(Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 1
    .param p1, "nscontext"    # Lorg/apache/xml/utils/PrefixResolver;

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    #@3
    .line 40
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lorg/apache/xpath/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    #@6
    .line 48
    return-void
.end method

.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V
    .locals 1
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
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    #@3
    .line 40
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lorg/apache/xpath/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    #@6
    .line 70
    return-void
.end method


# virtual methods
.method canBeWalkedInNaturalDocOrderStatic()Z
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 96
    iget-object v7, p0, Lorg/apache/xpath/axes/WalkingIteratorSorted;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@4
    if-eqz v7, :cond_c

    #@6
    .line 98
    iget-object v6, p0, Lorg/apache/xpath/axes/WalkingIteratorSorted;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@8
    .line 99
    .local v6, "walker":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v4, -0x1

    #@9
    .line 100
    .local v4, "prevAxis":I
    const/4 v5, 0x1

    #@a
    .line 102
    .local v5, "prevIsSimpleDownAxis":Z
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-eqz v6, :cond_b

    #@d
    .line 104
    invoke-virtual {v6}, Lorg/apache/xpath/axes/AxesWalker;->getAxis()I

    #@10
    move-result v0

    #@11
    .line 106
    .local v0, "axis":I
    invoke-virtual {v6}, Lorg/apache/xpath/axes/AxesWalker;->isDocOrdered()Z

    #@14
    move-result v7

    #@15
    if-eqz v7, :cond_a

    #@17
    .line 108
    const/4 v7, 0x3

    #@18
    if-eq v0, v7, :cond_0

    #@1a
    .line 109
    const/16 v7, 0xd

    #@1c
    if-ne v0, v7, :cond_2

    #@1e
    .line 108
    :cond_0
    const/4 v3, 0x1

    #@1f
    .line 113
    .local v3, "isSimpleDownAxis":Z
    :goto_1
    if-nez v3, :cond_1

    #@21
    const/4 v7, -0x1

    #@22
    if-ne v0, v7, :cond_4

    #@24
    .line 114
    :cond_1
    invoke-virtual {v6}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    #@27
    move-result-object v6

    #@28
    .line 102
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 110
    .end local v3    # "isSimpleDownAxis":Z
    :cond_2
    const/16 v7, 0x13

    #@2d
    if-ne v0, v7, :cond_3

    #@2f
    const/4 v3, 0x1

    #@30
    .restart local v3    # "isSimpleDownAxis":Z
    goto :goto_1

    #@31
    .end local v3    # "isSimpleDownAxis":Z
    :cond_3
    const/4 v3, 0x0

    #@32
    .restart local v3    # "isSimpleDownAxis":Z
    goto :goto_1

    #@33
    .line 117
    :cond_4
    invoke-virtual {v6}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    #@36
    move-result-object v7

    #@37
    if-nez v7, :cond_6

    #@39
    const/4 v2, 0x1

    #@3a
    .line 118
    .local v2, "isLastWalker":Z
    :goto_2
    if-eqz v2, :cond_9

    #@3c
    .line 120
    invoke-virtual {v6}, Lorg/apache/xpath/axes/AxesWalker;->isDocOrdered()Z

    #@3f
    move-result v7

    #@40
    if-eqz v7, :cond_8

    #@42
    const/4 v7, 0x4

    #@43
    if-eq v0, v7, :cond_5

    #@45
    .line 121
    const/4 v7, 0x5

    #@46
    if-ne v0, v7, :cond_7

    #@48
    .line 123
    :cond_5
    return v9

    #@49
    .line 117
    .end local v2    # "isLastWalker":Z
    :cond_6
    const/4 v2, 0x0

    #@4a
    .restart local v2    # "isLastWalker":Z
    goto :goto_2

    #@4b
    .line 121
    :cond_7
    const/16 v7, 0x11

    #@4d
    if-eq v0, v7, :cond_5

    #@4f
    .line 122
    const/16 v7, 0x12

    #@51
    if-eq v0, v7, :cond_5

    #@53
    :cond_8
    const/4 v7, 0x2

    #@54
    if-eq v0, v7, :cond_5

    #@56
    .line 125
    :cond_9
    return v8

    #@57
    .line 129
    .end local v2    # "isLastWalker":Z
    .end local v3    # "isSimpleDownAxis":Z
    :cond_a
    return v8

    #@58
    .line 131
    .end local v0    # "axis":I
    :cond_b
    return v9

    #@59
    .line 133
    .end local v1    # "i":I
    .end local v4    # "prevAxis":I
    .end local v5    # "prevIsSimpleDownAxis":Z
    .end local v6    # "walker":Lorg/apache/xpath/axes/AxesWalker;
    :cond_c
    return v8
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 2
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 198
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/WalkingIterator;->fixupVariables(Ljava/util/Vector;I)V

    #@3
    .line 200
    invoke-virtual {p0}, Lorg/apache/xpath/axes/WalkingIteratorSorted;->getAnalysisBits()I

    #@6
    move-result v0

    #@7
    .line 201
    .local v0, "analysis":I
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->isNaturalDocOrder(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 203
    const/4 v1, 0x1

    #@e
    iput-boolean v1, p0, Lorg/apache/xpath/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    #@10
    .line 196
    :goto_0
    return-void

    #@11
    .line 207
    :cond_0
    const/4 v1, 0x0

    #@12
    iput-boolean v1, p0, Lorg/apache/xpath/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    #@14
    goto :goto_0
.end method

.method public isDocOrdered()Z
    .locals 1

    #@0
    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/apache/xpath/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    #@2
    return v0
.end method
