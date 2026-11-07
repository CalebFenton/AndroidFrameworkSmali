.class public Lorg/apache/xalan/templates/XUnresolvedVariableSimple;
.super Lorg/apache/xpath/objects/XObject;
.source "XUnresolvedVariableSimple.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x10fdfddee2c7dcc9L


# direct methods
.method public constructor greylist <init>(Lorg/apache/xalan/templates/ElemVariable;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 55
    iget-object p0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast p0, Lorg/apache/xalan/templates/ElemVariable;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemVariable;->getSelect()Lorg/apache/xpath/XPath;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object p0

    .line 56
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    return-object p0
.end method

.method public greylist getType()I
    .registers 1

    .line 0
    const/16 p0, 0x258

    return p0
.end method

.method public greylist getTypeString()Ljava/lang/String;
    .registers 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XUnresolvedVariableSimple ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
