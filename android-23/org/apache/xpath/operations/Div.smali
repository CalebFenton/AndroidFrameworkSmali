.class public Lorg/apache/xpath/operations/Div;
.super Lorg/apache/xpath/operations/Operation;
.source "Div.java"


# static fields
.field static final serialVersionUID:J = 0x5654912a405a1977L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/xpath/operations/Operation;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public num(Lorg/apache/xpath/XPathContext;)D
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/xpath/operations/Div;->m_left:Lorg/apache/xpath/Expression;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->num(Lorg/apache/xpath/XPathContext;)D

    #@5
    move-result-wide v0

    #@6
    iget-object v2, p0, Lorg/apache/xpath/operations/Div;->m_right:Lorg/apache/xpath/Expression;

    #@8
    invoke-virtual {v2, p1}, Lorg/apache/xpath/Expression;->num(Lorg/apache/xpath/XPathContext;)D

    #@b
    move-result-wide v2

    #@c
    div-double/2addr v0, v2

    #@d
    return-wide v0
.end method

.method public operate(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;
    .locals 6
    .param p1, "left"    # Lorg/apache/xpath/objects/XObject;
    .param p2, "right"    # Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 48
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    #@2
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    #@5
    move-result-wide v2

    #@6
    invoke-virtual {p2}, Lorg/apache/xpath/objects/XObject;->num()D

    #@9
    move-result-wide v4

    #@a
    div-double/2addr v2, v4

    #@b
    invoke-direct {v0, v2, v3}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    #@e
    return-object v0
.end method
