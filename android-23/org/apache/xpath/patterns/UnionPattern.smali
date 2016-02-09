.class public Lorg/apache/xpath/patterns/UnionPattern;
.super Lorg/apache/xpath/Expression;
.source "UnionPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = -0x5c9232e74e04ed5cL


# instance fields
.field private m_patterns:[Lorg/apache/xpath/patterns/StepPattern;


# direct methods
.method static synthetic -get0(Lorg/apache/xpath/patterns/UnionPattern;)[Lorg/apache/xpath/patterns/StepPattern;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 4
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    #@0
    .prologue
    .line 177
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitUnionPattern(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/UnionPattern;)Z

    #@3
    .line 178
    iget-object v2, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 180
    iget-object v2, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    #@9
    array-length v1, v2

    #@a
    .line 181
    .local v1, "n":I
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@d
    .line 183
    iget-object v2, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    #@f
    aget-object v2, v2, v0

    #@11
    new-instance v3, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;

    #@13
    invoke-direct {v3, p0, v0}, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;-><init>(Lorg/apache/xpath/patterns/UnionPattern;I)V

    #@16
    invoke-virtual {v2, v3, p2}, Lorg/apache/xpath/patterns/StepPattern;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@19
    .line 181
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 175
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 3

    #@0
    .prologue
    .line 62
    iget-object v2, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 64
    iget-object v2, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    #@6
    array-length v1, v2

    #@7
    .line 65
    .local v1, "n":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@a
    .line 67
    iget-object v2, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    #@c
    aget-object v2, v2, v0

    #@e
    invoke-virtual {v2}, Lorg/apache/xpath/patterns/StepPattern;->canTraverseOutsideSubtree()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 68
    const/4 v2, 0x1

    #@15
    return v2

    #@16
    .line 65
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 71
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    const/4 v2, 0x0

    #@1a
    return v2
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 6
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 193
    invoke-virtual {p0, p1}, Lorg/apache/xpath/patterns/UnionPattern;->isSameClass(Lorg/apache/xpath/Expression;)Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 194
    return v5

    #@8
    :cond_0
    move-object v2, p1

    #@9
    .line 196
    check-cast v2, Lorg/apache/xpath/patterns/UnionPattern;

    #@b
    .line 198
    .local v2, "up":Lorg/apache/xpath/patterns/UnionPattern;
    iget-object v3, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    #@d
    if-eqz v3, :cond_4

    #@f
    .line 200
    iget-object v3, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    #@11
    array-length v1, v3

    #@12
    .line 201
    .local v1, "n":I
    iget-object v3, v2, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    #@14
    if-eqz v3, :cond_1

    #@16
    iget-object v3, v2, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    #@18
    array-length v3, v3

    #@19
    if-eq v3, v1, :cond_2

    #@1b
    .line 202
    :cond_1
    return v5

    #@1c
    .line 204
    :cond_2
    const/4 v0, 0x0

    #@1d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    #@1f
    .line 206
    iget-object v3, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    #@21
    aget-object v3, v3, v0

    #@23
    iget-object v4, v2, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    #@25
    aget-object v4, v4, v0

    #@27
    invoke-virtual {v3, v4}, Lorg/apache/xpath/patterns/StepPattern;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@2a
    move-result v3

    #@2b
    if-nez v3, :cond_3

    #@2d
    .line 207
    return v5

    #@2e
    .line 204
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 210
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_4
    iget-object v3, v2, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    #@33
    if-eqz v3, :cond_5

    #@35
    .line 211
    return v5

    #@36
    .line 213
    :cond_5
    const/4 v3, 0x1

    #@37
    return v3
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 8
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    const/4 v0, 0x0

    #@1
    .line 121
    .local v0, "bestScore":Lorg/apache/xpath/objects/XObject;
    iget-object v4, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    #@3
    array-length v2, v4

    #@4
    .line 123
    .local v2, "n":I
    const/4 v1, 0x0

    #@5
    .end local v0    # "bestScore":Lorg/apache/xpath/objects/XObject;
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@7
    .line 125
    iget-object v4, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    #@9
    aget-object v4, v4, v1

    #@b
    invoke-virtual {v4, p1}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@e
    move-result-object v3

    #@f
    .line 127
    .local v3, "score":Lorg/apache/xpath/objects/XObject;
    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@11
    if-eq v3, v4, :cond_0

    #@13
    .line 129
    if-nez v0, :cond_1

    #@15
    .line 130
    move-object v0, v3

    #@16
    .line 123
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 131
    :cond_1
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->num()D

    #@1c
    move-result-wide v4

    #@1d
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->num()D

    #@20
    move-result-wide v6

    #@21
    cmpl-double v4, v4, v6

    #@23
    if-lez v4, :cond_0

    #@25
    .line 132
    move-object v0, v3

    #@26
    .local v0, "bestScore":Lorg/apache/xpath/objects/XObject;
    goto :goto_1

    #@27
    .line 136
    .end local v0    # "bestScore":Lorg/apache/xpath/objects/XObject;
    .end local v3    # "score":Lorg/apache/xpath/objects/XObject;
    :cond_2
    if-nez v0, :cond_3

    #@29
    .line 138
    sget-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@2b
    .line 141
    :cond_3
    return-object v0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 2
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 47
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 49
    iget-object v1, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    #@8
    aget-object v1, v1, v0

    #@a
    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->fixupVariables(Ljava/util/Vector;I)V

    #@d
    .line 47
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 45
    :cond_0
    return-void
.end method

.method public getPatterns()[Lorg/apache/xpath/patterns/StepPattern;
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    #@2
    return-object v0
.end method

.method public setPatterns([Lorg/apache/xpath/patterns/StepPattern;)V
    .locals 2
    .param p1, "patterns"    # [Lorg/apache/xpath/patterns/StepPattern;

    #@0
    .prologue
    .line 82
    iput-object p1, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    #@2
    .line 83
    if-eqz p1, :cond_0

    #@4
    .line 85
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@6
    if-ge v0, v1, :cond_0

    #@8
    .line 87
    aget-object v1, p1, v0

    #@a
    invoke-virtual {v1, p0}, Lorg/apache/xpath/patterns/StepPattern;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@d
    .line 85
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 80
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
