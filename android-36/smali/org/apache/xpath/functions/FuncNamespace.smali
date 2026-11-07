.class public Lorg/apache/xpath/functions/FuncNamespace;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncNamespace.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x412a6323c251fb55L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionDef1Arg;-><init>()V

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
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FunctionDef1Arg;->getArg0AsNode(Lorg/apache/xpath/XPathContext;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_44

    .line 52
    invoke-virtual {p1, p0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p1

    .line 53
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 56
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_33

    :cond_17
    const/4 v1, 0x2

    if-ne v0, v1, :cond_41

    .line 64
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "xmlns"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_3e

    .line 68
    :cond_2f
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object p0

    :goto_33
    if-nez p0, :cond_38

    .line 76
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-object p0

    :cond_38
    new-instance p1, Lorg/apache/xpath/objects/XString;

    invoke-direct {p1, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 66
    :cond_3e
    :goto_3e
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-object p0

    .line 71
    :cond_41
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-object p0

    .line 74
    :cond_44
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-object p0
.end method
