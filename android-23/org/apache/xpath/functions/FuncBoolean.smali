.class public Lorg/apache/xpath/functions/FuncBoolean;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncBoolean.java"


# static fields
.field static final serialVersionUID:J = 0x3c127e06ed2594a0L


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
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncBoolean;->m_arg0:Lorg/apache/xpath/Expression;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->bool()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    sget-object v0, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    #@e
    :goto_0
    return-object v0

    #@f
    :cond_0
    sget-object v0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    #@11
    goto :goto_0
.end method
