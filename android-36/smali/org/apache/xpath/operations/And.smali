.class public Lorg/apache/xpath/operations/And;
.super Lorg/apache/xpath/operations/Operation;
.source "And.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x571d62061d42386L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lorg/apache/xpath/operations/Operation;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist bool(Lorg/apache/xpath/XPathContext;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->bool(Lorg/apache/xpath/XPathContext;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->bool(Lorg/apache/xpath/XPathContext;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 52
    iget-object p0, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result p0

    if-eqz p0, :cond_1b

    sget-object p0, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    return-object p0

    :cond_1b
    sget-object p0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    return-object p0

    .line 57
    :cond_1e
    sget-object p0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    return-object p0
.end method
