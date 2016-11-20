.class public Lorg/apache/xpath/operations/Quo;
.super Lorg/apache/xpath/operations/Operation;
.source "Quo.java"


# static fields
.field static final serialVersionUID:J = 0x9a0bfdd28148eb1L


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
    .line 50
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
    double-to-int v1, v2

    #@c
    int-to-double v2, v1

    #@d
    invoke-direct {v0, v2, v3}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    #@10
    return-object v0
.end method
