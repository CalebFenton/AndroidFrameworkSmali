.class public Lorg/apache/xpath/functions/FuncRound;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncRound.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x6e9d33d4555c1233L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 45
    iget-object p0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide p0

    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    cmpl-double v0, p0, v0

    const-wide/16 v1, 0x0

    if-ltz v0, :cond_1e

    cmpg-double v0, p0, v1

    if-gez v0, :cond_1e

    .line 47
    new-instance p0, Lorg/apache/xpath/objects/XNumber;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-direct {p0, v0, v1}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    return-object p0

    :cond_1e
    cmpl-double v0, p0, v1

    if-nez v0, :cond_28

    .line 48
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    invoke-direct {v0, p0, p1}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    return-object v0

    .line 49
    :cond_28
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    return-object v0
.end method
