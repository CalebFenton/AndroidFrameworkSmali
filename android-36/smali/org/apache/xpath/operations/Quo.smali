.class public Lorg/apache/xpath/operations/Quo;
.super Lorg/apache/xpath/operations/Operation;
.source "Quo.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x9a0bfdd28148eb1L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lorg/apache/xpath/operations/Operation;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist operate(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 50
    new-instance p0, Lorg/apache/xpath/objects/XNumber;

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide p1

    div-double/2addr v0, p1

    double-to-int p1, v0

    int-to-double p1, p1

    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    return-object p0
.end method
