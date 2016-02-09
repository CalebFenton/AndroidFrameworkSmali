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
.field static final serialVersionUID:J = -0x4b4fd7db58bb32d8L


# instance fields
.field m_functionExpr:Lorg/apache/xpath/Expression;


# direct methods
.method public constructor <init>(Lorg/apache/xpath/Expression;II)V
    .locals 6
    .param p1, "expr"    # Lorg/apache/xpath/Expression;
    .param p2, "axis"    # I
    .param p3, "predaxis"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 49
    const/4 v1, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v3, v2

    #@4
    move v4, p2

    #@5
    move v5, p3

    #@6
    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    #@9
    .line 51
    iput-object p1, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    #@b
    .line 46
    return-void
.end method


# virtual methods
.method public final calcScore()V
    .locals 1

    #@0
    .prologue
    .line 60
    sget-object v0, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    #@2
    iput-object v0, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_score:Lorg/apache/xpath/objects/XNumber;

    #@4
    .line 62
    iget-object v0, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_targetString:Ljava/lang/String;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 63
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/FunctionPattern;->calcTargetString()V

    #@b
    .line 57
    :cond_0
    return-void
.end method

.method protected callSubtreeVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .locals 2
    .param p1, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    #@2
    new-instance v1, Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;

    #@4
    invoke-direct {v1, p0}, Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;-><init>(Lorg/apache/xpath/patterns/FunctionPattern;)V

    #@7
    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@a
    .line 245
    invoke-super {p0, p1}, Lorg/apache/xpath/patterns/StepPattern;->callSubtreeVisitors(Lorg/apache/xpath/XPathVisitor;)V

    #@d
    .line 242
    return-void
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 5
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 192
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@3
    move-result v0

    #@4
    .line 193
    .local v0, "context":I
    iget-object v4, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    #@6
    invoke-virtual {v4, p1, v0}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    #@9
    move-result-object v2

    #@a
    .line 194
    .local v2, "nl":Lorg/apache/xml/dtm/DTMIterator;
    sget-object v3, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@c
    .line 196
    .local v3, "score":Lorg/apache/xpath/objects/XNumber;
    if-eqz v2, :cond_2

    #@e
    .line 200
    :cond_0
    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@11
    move-result v1

    #@12
    .local v1, "n":I
    const/4 v4, -0x1

    #@13
    if-eq v4, v1, :cond_1

    #@15
    .line 202
    if-ne v1, v0, :cond_3

    #@17
    sget-object v3, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    #@19
    .line 204
    :goto_0
    sget-object v4, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    #@1b
    if-ne v3, v4, :cond_0

    #@1d
    .line 206
    move v0, v1

    #@1e
    .line 212
    :cond_1
    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    #@21
    .line 215
    .end local v1    # "n":I
    :cond_2
    return-object v3

    #@22
    .line 202
    .restart local v1    # "n":I
    :cond_3
    sget-object v3, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@24
    goto :goto_0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "context"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 106
    iget-object v3, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    #@2
    invoke-virtual {v3, p1, p2}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    #@5
    move-result-object v1

    #@6
    .line 107
    .local v1, "nl":Lorg/apache/xml/dtm/DTMIterator;
    sget-object v2, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@8
    .line 109
    .local v2, "score":Lorg/apache/xpath/objects/XNumber;
    if-eqz v1, :cond_1

    #@a
    .line 113
    :cond_0
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@d
    move-result v0

    #@e
    .local v0, "n":I
    const/4 v3, -0x1

    #@f
    if-eq v3, v0, :cond_1

    #@11
    .line 115
    if-ne v0, p2, :cond_2

    #@13
    sget-object v2, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    #@15
    .line 117
    :goto_0
    sget-object v3, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    #@17
    if-ne v2, v3, :cond_0

    #@19
    .line 119
    move p2, v0

    #@1a
    .line 127
    .end local v0    # "n":I
    :cond_1
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    #@1d
    .line 129
    return-object v2

    #@1e
    .line 115
    .restart local v0    # "n":I
    :cond_2
    sget-object v2, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@20
    goto :goto_0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "context"    # I
    .param p3, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p4, "expType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    iget-object v3, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    #@2
    invoke-virtual {v3, p1, p2}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    #@5
    move-result-object v1

    #@6
    .line 151
    .local v1, "nl":Lorg/apache/xml/dtm/DTMIterator;
    sget-object v2, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@8
    .line 153
    .local v2, "score":Lorg/apache/xpath/objects/XNumber;
    if-eqz v1, :cond_2

    #@a
    .line 157
    :cond_0
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@d
    move-result v0

    #@e
    .local v0, "n":I
    const/4 v3, -0x1

    #@f
    if-eq v3, v0, :cond_1

    #@11
    .line 159
    if-ne v0, p2, :cond_3

    #@13
    sget-object v2, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    #@15
    .line 161
    :goto_0
    sget-object v3, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    #@17
    if-ne v2, v3, :cond_0

    #@19
    .line 163
    move p2, v0

    #@1a
    .line 169
    :cond_1
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    #@1d
    .line 172
    .end local v0    # "n":I
    :cond_2
    return-object v2

    #@1e
    .line 159
    .restart local v0    # "n":I
    :cond_3
    sget-object v2, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@20
    goto :goto_0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 1
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->fixupVariables(Ljava/util/Vector;I)V

    #@3
    .line 85
    iget-object v0, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    #@5
    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    #@8
    .line 82
    return-void
.end method
