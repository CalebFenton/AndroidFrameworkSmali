.class public Lorg/apache/xpath/functions/FuncStartsWith;
.super Lorg/apache/xpath/functions/Function2Args;
.source "FuncStartsWith.java"


# static fields
.field static final serialVersionUID:J = 0x1e74bc227a17db38L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function2Args;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 2
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncStartsWith;->m_arg0:Lorg/apache/xpath/Expression;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    #@9
    move-result-object v0

    #@a
    iget-object v1, p0, Lorg/apache/xpath/functions/FuncStartsWith;->m_arg1:Lorg/apache/xpath/Expression;

    #@c
    invoke-virtual {v1, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    #@13
    move-result-object v1

    #@14
    invoke-interface {v0, v1}, Lorg/apache/xml/utils/XMLString;->startsWith(Lorg/apache/xml/utils/XMLString;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 46
    sget-object v0, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    #@1c
    .line 45
    :goto_0
    return-object v0

    #@1d
    .line 46
    :cond_0
    sget-object v0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    #@1f
    goto :goto_0
.end method
