.class public Lorg/apache/xpath/operations/And;
.super Lorg/apache/xpath/operations/Operation;
.source "And.java"


# static fields
.field static final serialVersionUID:J = 0x571d62061d42386L


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
.method public bool(Lorg/apache/xpath/XPathContext;)Z
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/xpath/operations/And;->m_left:Lorg/apache/xpath/Expression;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->bool(Lorg/apache/xpath/XPathContext;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Lorg/apache/xpath/operations/And;->m_right:Lorg/apache/xpath/Expression;

    #@a
    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->bool(Lorg/apache/xpath/XPathContext;)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 3
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 48
    iget-object v2, p0, Lorg/apache/xpath/operations/And;->m_left:Lorg/apache/xpath/Expression;

    #@2
    invoke-virtual {v2, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@5
    move-result-object v0

    #@6
    .line 50
    .local v0, "expr1":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->bool()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 52
    iget-object v2, p0, Lorg/apache/xpath/operations/And;->m_right:Lorg/apache/xpath/Expression;

    #@e
    invoke-virtual {v2, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@11
    move-result-object v1

    #@12
    .line 54
    .local v1, "expr2":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    sget-object v2, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    #@1a
    :goto_0
    return-object v2

    #@1b
    :cond_0
    sget-object v2, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    #@1d
    goto :goto_0

    #@1e
    .line 57
    .end local v1    # "expr2":Lorg/apache/xpath/objects/XObject;
    :cond_1
    sget-object v2, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    #@20
    return-object v2
.end method
