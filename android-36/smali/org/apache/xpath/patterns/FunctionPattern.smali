.class public Lorg/apache/xpath/patterns/FunctionPattern;
.super Lorg/apache/xpath/patterns/StepPattern;
.source "FunctionPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;
    }
.end annotation


# static fields
.field static final whitelist serialVersionUID:J = -0x4b4fd7db58bb32d8L


# instance fields
.field greylist m_functionExpr:Lorg/apache/xpath/Expression;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xpath/Expression;II)V
    .registers 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    .line 49
    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    .line 51
    iput-object p1, v0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    return-void
.end method


# virtual methods
.method public final greylist calcScore()V
    .registers 2

    .line 60
    sget-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    iput-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    .line 62
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 63
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->calcTargetString()V

    :cond_b
    return-void
.end method

.method protected greylist callSubtreeVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .registers 4

    .line 244
    iget-object v0, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    new-instance v1, Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;

    invoke-direct {v1, p0}, Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;-><init>(Lorg/apache/xpath/patterns/FunctionPattern;)V

    invoke-interface {v0, v1, p1}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 245
    invoke-super {p0, p1}, Lorg/apache/xpath/patterns/StepPattern;->callSubtreeVisitors(Lorg/apache/xpath/XPathVisitor;)V

    return-void
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 192
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 193
    iget-object p0, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    .line 194
    sget-object p1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eqz p0, :cond_23

    .line 200
    :cond_e
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_20

    if-ne v1, v0, :cond_1a

    .line 202
    sget-object p1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    goto :goto_1c

    :cond_1a
    sget-object p1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    .line 204
    :goto_1c
    sget-object v1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    if-ne p1, v1, :cond_e

    .line 212
    :cond_20
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    :cond_23
    return-object p1
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 106
    iget-object p0, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    .line 107
    sget-object p1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eqz p0, :cond_1c

    .line 113
    :cond_a
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_1c

    if-ne v0, p2, :cond_16

    .line 115
    sget-object p1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    goto :goto_18

    :cond_16
    sget-object p1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    .line 117
    :goto_18
    sget-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    if-ne p1, v0, :cond_a

    .line 127
    :cond_1c
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    return-object p1
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 150
    iget-object p0, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    .line 151
    sget-object p1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eqz p0, :cond_1f

    .line 157
    :cond_a
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result p3

    const/4 p4, -0x1

    if-eq p4, p3, :cond_1c

    if-ne p3, p2, :cond_16

    .line 159
    sget-object p1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    goto :goto_18

    :cond_16
    sget-object p1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    .line 161
    :goto_18
    sget-object p3, Lorg/apache/xpath/patterns/NodeTest;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    if-ne p1, p3, :cond_a

    .line 169
    :cond_1c
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    :cond_1f
    return-object p1
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 3

    .line 84
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->fixupVariables(Ljava/util/Vector;I)V

    .line 85
    iget-object p0, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method
