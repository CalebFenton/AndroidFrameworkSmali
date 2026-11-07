.class public Lorg/apache/xpath/jaxp/JAXPVariableStack;
.super Lorg/apache/xpath/VariableStack;
.source "JAXPVariableStack.java"


# instance fields
.field private final greylist resolver:Ljavax/xml/xpath/XPathVariableResolver;


# direct methods
.method public constructor greylist <init>(Ljavax/xml/xpath/XPathVariableResolver;)V
    .registers 3

    const/4 v0, 0x2

    .line 45
    invoke-direct {p0, v0}, Lorg/apache/xpath/VariableStack;-><init>(I)V

    .line 46
    iput-object p1, p0, Lorg/apache/xpath/jaxp/JAXPVariableStack;->resolver:Ljavax/xml/xpath/XPathVariableResolver;

    return-void
.end method


# virtual methods
.method public greylist getVariableOrParam(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/QName;)Lorg/apache/xpath/objects/XObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_30

    .line 59
    new-instance v0, Ljavax/xml/namespace/QName;

    .line 61
    invoke-virtual {p2}, Lorg/apache/xml/utils/QName;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {p2}, Lorg/apache/xml/utils/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object p0, p0, Lorg/apache/xpath/jaxp/JAXPVariableStack;->resolver:Ljavax/xml/xpath/XPathVariableResolver;

    invoke-interface {p0, v0}, Ljavax/xml/xpath/XPathVariableResolver;->resolveVariable(Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 70
    invoke-static {p0, p1}, Lorg/apache/xpath/objects/XObject;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0

    .line 67
    :cond_1c
    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 65
    const-string p1, "ER_RESOLVE_VARIABLE_RETURNS_NULL"

    invoke-static {p1, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 68
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_30
    const-string p0, "Variable qname"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_ARG_CANNOT_BE_NULL"

    invoke-static {p1, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
