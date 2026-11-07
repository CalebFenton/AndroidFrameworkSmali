.class public Lorg/apache/xpath/operations/Neg;
.super Lorg/apache/xpath/operations/UnaryOperation;
.source "Neg.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x5729336de1af9f13L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lorg/apache/xpath/operations/UnaryOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist num(Lorg/apache/xpath/XPathContext;)D
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 62
    iget-object p0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->num(Lorg/apache/xpath/XPathContext;)D

    move-result-wide p0

    neg-double p0, p0

    return-wide p0
.end method

.method public greylist operate(Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 46
    new-instance p0, Lorg/apache/xpath/objects/XNumber;

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v0

    neg-double v0, v0

    invoke-direct {p0, v0, v1}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    return-object p0
.end method
