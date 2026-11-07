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
.field static final whitelist serialVersionUID:J = -0x5c9232e74e04ed5cL


# instance fields
.field private greylist m_patterns:[Lorg/apache/xpath/patterns/StepPattern;


# direct methods
.method static bridge synthetic greylist -$$Nest$fgetm_patterns(Lorg/apache/xpath/patterns/UnionPattern;)[Lorg/apache/xpath/patterns/StepPattern;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    return-object p0
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .registers 6

    .line 177
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitUnionPattern(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/UnionPattern;)Z

    .line 178
    iget-object p1, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    if-eqz p1, :cond_1a

    .line 180
    array-length p1, p1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_1a

    .line 183
    iget-object v1, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    aget-object v1, v1, v0

    new-instance v2, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;

    invoke-direct {v2, p0, v0}, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;-><init>(Lorg/apache/xpath/patterns/UnionPattern;I)V

    invoke-virtual {v1, v2, p2}, Lorg/apache/xpath/patterns/StepPattern;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1a
    return-void
.end method

.method public greylist canTraverseOutsideSubtree()Z
    .registers 5

    .line 62
    iget-object v0, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 64
    array-length v0, v0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_18

    .line 67
    iget-object v3, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/apache/xpath/patterns/StepPattern;->canTraverseOutsideSubtree()Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_18
    return v1
.end method

.method public greylist deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 7

    .line 193
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->isSameClass(Lorg/apache/xpath/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 196
    :cond_8
    check-cast p1, Lorg/apache/xpath/patterns/UnionPattern;

    .line 198
    iget-object v0, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v0, :cond_2d

    .line 200
    array-length v0, v0

    .line 201
    iget-object v2, p1, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v2, :cond_2c

    array-length v2, v2

    if-eq v2, v0, :cond_17

    goto :goto_2c

    :cond_17
    move v2, v1

    :goto_18
    if-ge v2, v0, :cond_32

    .line 206
    iget-object v3, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    aget-object v3, v3, v2

    iget-object v4, p1, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xpath/patterns/StepPattern;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v3

    if-nez v3, :cond_29

    return v1

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2c
    :goto_2c
    return v1

    .line 210
    :cond_2d
    iget-object p0, p1, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    if-eqz p0, :cond_32

    return v1

    :cond_32
    const/4 p0, 0x1

    return p0
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_26

    .line 125
    iget-object v3, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v3

    .line 127
    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eq v3, v4, :cond_23

    if-nez v1, :cond_16

    goto :goto_22

    .line 131
    :cond_16
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_23

    :goto_22
    move-object v1, v3

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_26
    if-nez v1, :cond_2b

    .line 138
    sget-object p0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    return-object p0

    :cond_2b
    return-object v1
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 6

    const/4 v0, 0x0

    .line 47
    :goto_1
    iget-object v1, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 49
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->fixupVariables(Ljava/util/Vector;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public greylist getPatterns()[Lorg/apache/xpath/patterns/StepPattern;
    .registers 1

    .line 101
    iget-object p0, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    return-object p0
.end method

.method public greylist setPatterns([Lorg/apache/xpath/patterns/StepPattern;)V
    .registers 4

    .line 82
    iput-object p1, p0, Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;

    if-eqz p1, :cond_10

    const/4 v0, 0x0

    .line 85
    :goto_5
    array-length v1, p1

    if-ge v0, v1, :cond_10

    .line 87
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_10
    return-void
.end method
