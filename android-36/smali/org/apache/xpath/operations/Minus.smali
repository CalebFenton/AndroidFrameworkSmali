.class public Lorg/apache/xpath/operations/Minus;
.super Lorg/apache/xpath/operations/Operation;
.source "Minus.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x49851d60c7690503L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lorg/apache/xpath/operations/Operation;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist num(Lorg/apache/xpath/XPathContext;)D
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->num(Lorg/apache/xpath/XPathContext;)D

    move-result-wide v0

    iget-object p0, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->num(Lorg/apache/xpath/XPathContext;)D

    move-result-wide p0

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method public greylist operate(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 49
    new-instance p0, Lorg/apache/xpath/objects/XNumber;

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide p1

    sub-double/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    return-object p0
.end method
