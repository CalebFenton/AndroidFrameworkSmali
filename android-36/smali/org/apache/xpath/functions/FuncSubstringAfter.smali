.class public Lorg/apache/xpath/functions/FuncSubstringAfter;
.super Lorg/apache/xpath/functions/Function2Args;
.source "FuncSubstringAfter.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x70af152236aa8e42L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function2Args;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    .line 48
    iget-object p0, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    .line 49
    invoke-interface {v0, p0}, Lorg/apache/xml/utils/XMLString;->indexOf(Lorg/apache/xml/utils/XMLString;)I

    move-result p1

    const/4 v1, -0x1

    if-ne v1, p1, :cond_1e

    .line 52
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-object p0

    .line 53
    :cond_1e
    invoke-interface {p0}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result p0

    add-int/2addr p1, p0

    invoke-interface {v0, p1}, Lorg/apache/xml/utils/XMLString;->substring(I)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/objects/XString;

    return-object p0
.end method
