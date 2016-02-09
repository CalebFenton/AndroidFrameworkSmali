.class public Lorg/apache/xpath/functions/FuncSum;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncSum.java"


# static fields
.field static final serialVersionUID:J = -0x25bc00e53bbcd00fL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    #@3
    return-void
.end method


# virtual methods
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
    .line 49
    iget-object v6, p0, Lorg/apache/xpath/functions/FuncSum;->m_arg0:Lorg/apache/xpath/Expression;

    #@2
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@5
    move-result v7

    #@6
    invoke-virtual {v6, p1, v7}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    #@9
    move-result-object v1

    #@a
    .line 50
    .local v1, "nodes":Lorg/apache/xml/dtm/DTMIterator;
    const-wide/16 v4, 0x0

    #@c
    .line 53
    .local v4, "sum":D
    :cond_0
    :goto_0
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@f
    move-result v2

    #@10
    .local v2, "pos":I
    const/4 v6, -0x1

    #@11
    if-eq v6, v2, :cond_1

    #@13
    .line 55
    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTMIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@16
    move-result-object v0

    #@17
    .line 56
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    #@1a
    move-result-object v3

    #@1b
    .line 58
    .local v3, "s":Lorg/apache/xml/utils/XMLString;
    if-eqz v3, :cond_0

    #@1d
    .line 59
    invoke-interface {v3}, Lorg/apache/xml/utils/XMLString;->toDouble()D

    #@20
    move-result-wide v6

    #@21
    add-double/2addr v4, v6

    #@22
    goto :goto_0

    #@23
    .line 61
    .end local v0    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v3    # "s":Lorg/apache/xml/utils/XMLString;
    :cond_1
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    #@26
    .line 63
    new-instance v6, Lorg/apache/xpath/objects/XNumber;

    #@28
    invoke-direct {v6, v4, v5}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    #@2b
    return-object v6
.end method
