.class public Lorg/apache/xpath/operations/Neg;
.super Lorg/apache/xpath/operations/UnaryOperation;
.source "Neg.java"


# static fields
.field static final serialVersionUID:J = -0x5729336de1af9f13L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/xpath/operations/UnaryOperation;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public num(Lorg/apache/xpath/XPathContext;)D
    .locals 2
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/xpath/operations/Neg;->m_right:Lorg/apache/xpath/Expression;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->num(Lorg/apache/xpath/XPathContext;)D

    #@5
    move-result-wide v0

    #@6
    neg-double v0, v0

    #@7
    return-wide v0
.end method

.method public operate(Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;
    .locals 4
    .param p1, "right"    # Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 46
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    #@2
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    #@5
    move-result-wide v2

    #@6
    neg-double v2, v2

    #@7
    invoke-direct {v0, v2, v3}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    #@a
    return-object v0
.end method
