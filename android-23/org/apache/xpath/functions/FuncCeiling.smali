.class public Lorg/apache/xpath/functions/FuncCeiling;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncCeiling.java"


# static fields
.field static final serialVersionUID:J = -0x11b5392d5ae1d4e3L


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
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    #@2
    iget-object v1, p0, Lorg/apache/xpath/functions/FuncCeiling;->m_arg0:Lorg/apache/xpath/Expression;

    #@4
    invoke-virtual {v1, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->num()D

    #@b
    move-result-wide v2

    #@c
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@f
    move-result-wide v2

    #@10
    invoke-direct {v0, v2, v3}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    #@13
    return-object v0
.end method
