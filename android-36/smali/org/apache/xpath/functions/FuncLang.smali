.class public Lorg/apache/xpath/functions/FuncLang;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncLang.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x6d3341a25189a979L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 47
    iget-object p0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    .line 48
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 50
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p1

    :goto_12
    const/4 v1, -0x1

    if-eq v1, v0, :cond_52

    .line 54
    invoke-interface {p1, v0}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_4d

    .line 56
    const-string v2, "http://www.w3.org/XML/1998/namespace"

    const-string v3, "lang"

    invoke-interface {p1, v0, v2, v3}, Lorg/apache/xml/dtm/DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_4d

    .line 60
    invoke-interface {p1, v2}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, p0, :cond_4a

    .line 67
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x2d

    if-ne p0, p1, :cond_52

    .line 80
    :cond_4a
    sget-object p0, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    return-object p0

    .line 77
    :cond_4d
    invoke-interface {p1, v0}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result v0

    goto :goto_12

    .line 80
    :cond_52
    sget-object p0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    return-object p0
.end method
