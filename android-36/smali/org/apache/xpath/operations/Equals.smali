.class public Lorg/apache/xpath/operations/Equals;
.super Lorg/apache/xpath/operations/Operation;
.source "Equals.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x24e43bfc13ae5a56L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lorg/apache/xpath/operations/Operation;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist bool(Lorg/apache/xpath/XPathContext;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 66
    iget-object p0, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    .line 68
    invoke-virtual {v0, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result p1

    .line 69
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->detach()V

    .line 70
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->detach()V

    return p1
.end method

.method public greylist operate(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 48
    invoke-virtual {p1, p2}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    return-object p0

    :cond_9
    sget-object p0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    return-object p0
.end method
