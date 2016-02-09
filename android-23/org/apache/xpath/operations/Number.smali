.class public Lorg/apache/xpath/operations/Number;
.super Lorg/apache/xpath/operations/UnaryOperation;
.source "Number.java"


# static fields
.field static final serialVersionUID:J = 0x63e0b7f89837d0b5L


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
    .line 66
    iget-object v0, p0, Lorg/apache/xpath/operations/Number;->m_right:Lorg/apache/xpath/Expression;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->num(Lorg/apache/xpath/XPathContext;)D

    #@5
    move-result-wide v0

    #@6
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
    .line 47
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-ne v1, v0, :cond_0

    #@7
    .line 48
    return-object p1

    #@8
    .line 50
    :cond_0
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    #@a
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    #@d
    move-result-wide v2

    #@e
    invoke-direct {v0, v2, v3}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    #@11
    return-object v0
.end method
