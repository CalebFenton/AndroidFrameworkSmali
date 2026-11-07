.class public Lorg/apache/xpath/functions/FuncCeiling;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncCeiling.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x11b5392d5ae1d4e3L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 45
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    iget-object p0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    return-object v0
.end method
