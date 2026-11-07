.class public Lorg/apache/xpath/jaxp/JAXPPrefixResolver;
.super Ljava/lang/Object;
.source "JAXPPrefixResolver.java"

# interfaces
.implements Lorg/apache/xml/utils/PrefixResolver;


# static fields
.field public static final greylist S_XMLNAMESPACEURI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field private greylist namespaceContext:Ljavax/xml/namespace/NamespaceContext;


# direct methods
.method public constructor greylist <init>(Ljavax/xml/namespace/NamespaceContext;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/xpath/jaxp/JAXPPrefixResolver;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    return-void
.end method


# virtual methods
.method public greylist getBaseIdentifier()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 47
    iget-object p0, p0, Lorg/apache/xpath/jaxp/JAXPPrefixResolver;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    invoke-interface {p0, p1}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 10

    .line 91
    const-string p0, "xml"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 92
    const-string p0, "http://www.w3.org/XML/1998/namespace"

    return-object p0

    :cond_b
    const/4 p0, 0x0

    :goto_c
    if-eqz p2, :cond_62

    if-nez p0, :cond_62

    .line 97
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    const/4 v2, 0x5

    if-ne v0, v2, :cond_62

    :cond_1a
    if-ne v0, v1, :cond_5d

    .line 101
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const/4 v2, 0x0

    .line 103
    :goto_21
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_5d

    .line 104
    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 105
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 106
    const-string v5, "xmlns:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 108
    const-string v6, "xmlns"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    :cond_3f
    const/16 v6, 0x3a

    .line 109
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eqz v5, :cond_4d

    add-int/2addr v6, v1

    .line 110
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4f

    :cond_4d
    const-string v4, ""

    .line 112
    :goto_4f
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 113
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_5d

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 120
    :cond_5d
    :goto_5d
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p2

    goto :goto_c

    :cond_62
    return-object p0
.end method

.method public greylist handlesNullPrefixes()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method
