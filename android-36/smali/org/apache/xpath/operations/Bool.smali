.class public Lorg/apache/xpath/operations/Bool;
.super Lorg/apache/xpath/operations/UnaryOperation;
.source "Bool.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x9ed34d4f9cfd0bL


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lorg/apache/xpath/operations/UnaryOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist bool(Lorg/apache/xpath/XPathContext;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 65
    iget-object p0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->bool(Lorg/apache/xpath/XPathContext;)Z

    move-result p0

    return p0
.end method

.method public greylist operate(Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_8

    return-object p1

    .line 50
    :cond_8
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result p0

    if-eqz p0, :cond_11

    sget-object p0, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    return-object p0

    :cond_11
    sget-object p0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    return-object p0
.end method
