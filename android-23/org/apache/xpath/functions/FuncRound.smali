.class public Lorg/apache/xpath/functions/FuncRound;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncRound.java"


# static fields
.field static final serialVersionUID:J = -0x6e9d33d4555c1233L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
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
    const-wide/16 v6, 0x0

    #@2
    .line 45
    iget-object v1, p0, Lorg/apache/xpath/functions/FuncRound;->m_arg0:Lorg/apache/xpath/Expression;

    #@4
    invoke-virtual {v1, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@7
    move-result-object v0

    #@8
    .line 46
    .local v0, "obj":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->num()D

    #@b
    move-result-wide v2

    #@c
    .line 47
    .local v2, "val":D
    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    #@e
    cmpl-double v1, v2, v4

    #@10
    if-ltz v1, :cond_0

    #@12
    cmpg-double v1, v2, v6

    #@14
    if-gez v1, :cond_0

    #@16
    new-instance v1, Lorg/apache/xpath/objects/XNumber;

    #@18
    const-wide/high16 v4, -0x8000000000000000L

    #@1a
    invoke-direct {v1, v4, v5}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    #@1d
    return-object v1

    #@1e
    .line 48
    :cond_0
    cmpl-double v1, v2, v6

    #@20
    if-nez v1, :cond_1

    #@22
    new-instance v1, Lorg/apache/xpath/objects/XNumber;

    #@24
    invoke-direct {v1, v2, v3}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    #@27
    return-object v1

    #@28
    .line 49
    :cond_1
    new-instance v1, Lorg/apache/xpath/objects/XNumber;

    #@2a
    .line 50
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    #@2c
    .line 49
    add-double/2addr v4, v2

    #@2d
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    #@30
    move-result-wide v4

    #@31
    invoke-direct {v1, v4, v5}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    #@34
    return-object v1
.end method
