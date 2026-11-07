.class public Lorg/apache/xml/utils/PrefixResolverDefault;
.super Ljava/lang/Object;
.source "PrefixResolverDefault.java"

# interfaces
.implements Lorg/apache/xml/utils/PrefixResolver;


# instance fields
.field greylist m_context:Lorg/w3c/dom/Node;


# direct methods
.method public constructor greylist <init>(Lorg/w3c/dom/Node;)V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/xml/utils/PrefixResolverDefault;->m_context:Lorg/w3c/dom/Node;

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
    .registers 3

    .line 63
    iget-object v0, p0, Lorg/apache/xml/utils/PrefixResolverDefault;->m_context:Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/utils/PrefixResolverDefault;->getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 10

    .line 83
    const-string p0, "xml"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 85
    const-string p0, "http://www.w3.org/XML/1998/namespace"

    return-object p0

    :cond_b
    const/4 p0, 0x0

    :goto_c
    if-eqz p2, :cond_82

    if-nez p0, :cond_82

    .line 92
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    const/4 v2, 0x5

    if-ne v0, v2, :cond_82

    :cond_1a
    if-ne v0, v1, :cond_7d

    .line 97
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3c

    .line 98
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 99
    :cond_3c
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const/4 v2, 0x0

    .line 101
    :goto_41
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_7d

    .line 103
    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 104
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 105
    const-string v5, "xmlns:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5f

    .line 107
    const-string v6, "xmlns"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7a

    :cond_5f
    const/16 v6, 0x3a

    .line 109
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eqz v5, :cond_6d

    add-int/2addr v6, v1

    .line 110
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_6f

    :cond_6d
    const-string v4, ""

    .line 112
    :goto_6f
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 114
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_7d

    :cond_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 122
    :cond_7d
    :goto_7d
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p2

    goto :goto_c

    :cond_82
    return-object p0
.end method

.method public greylist handlesNullPrefixes()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method
