.class public Lorg/apache/xml/utils/PrefixResolverDefault;
.super Ljava/lang/Object;
.source "PrefixResolverDefault.java"

# interfaces
.implements Lorg/apache/xml/utils/PrefixResolver;


# instance fields
.field m_context:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "xpathExpressionContext"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput-object p1, p0, Lorg/apache/xml/utils/PrefixResolverDefault;->m_context:Lorg/w3c/dom/Node;

    #@5
    .line 48
    return-void
.end method


# virtual methods
.method public getBaseIdentifier()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 136
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/xml/utils/PrefixResolverDefault;->m_context:Lorg/w3c/dom/Node;

    #@2
    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/utils/PrefixResolverDefault;->getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 13
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespaceContext"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 80
    move-object v8, p2

    #@1
    .line 81
    .local v8, "parent":Lorg/w3c/dom/Node;
    const/4 v5, 0x0

    #@2
    .line 83
    .local v5, "namespace":Ljava/lang/String;
    const-string/jumbo v10, "xml"

    #@5
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v10

    #@9
    if-eqz v10, :cond_4

    #@b
    .line 85
    const-string/jumbo v5, "http://www.w3.org/XML/1998/namespace"

    #@e
    .line 126
    .end local v5    # "namespace":Ljava/lang/String;
    :cond_0
    return-object v5

    #@f
    .line 99
    .local v9, "type":I
    :cond_1
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    #@12
    move-result-object v6

    #@13
    .line 101
    .local v6, "nnm":Lorg/w3c/dom/NamedNodeMap;
    const/4 v2, 0x0

    #@14
    .local v2, "i":I
    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@17
    move-result v10

    #@18
    if-ge v2, v10, :cond_3

    #@1a
    .line 103
    invoke-interface {v6, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@1d
    move-result-object v1

    #@1e
    .line 104
    .local v1, "attr":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 105
    .local v0, "aname":Ljava/lang/String;
    const-string/jumbo v10, "xmlns:"

    #@25
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@28
    move-result v4

    #@29
    .line 107
    .local v4, "isPrefix":Z
    if-nez v4, :cond_2

    #@2b
    const-string/jumbo v10, "xmlns"

    #@2e
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v10

    #@32
    if-eqz v10, :cond_7

    #@34
    .line 109
    :cond_2
    const/16 v10, 0x3a

    #@36
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    #@39
    move-result v3

    #@3a
    .line 110
    .local v3, "index":I
    if-eqz v4, :cond_6

    #@3c
    add-int/lit8 v10, v3, 0x1

    #@3e
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@41
    move-result-object v7

    #@42
    .line 112
    .local v7, "p":Ljava/lang/String;
    :goto_1
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v10

    #@46
    if-eqz v10, :cond_7

    #@48
    .line 114
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    .line 122
    .end local v0    # "aname":Ljava/lang/String;
    .end local v1    # "attr":Lorg/w3c/dom/Node;
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "isPrefix":Z
    .end local v6    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v7    # "p":Ljava/lang/String;
    :cond_3
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    #@4f
    move-result-object v8

    #@50
    .line 91
    .end local v9    # "type":I
    :cond_4
    if-eqz v8, :cond_0

    #@52
    if-nez v5, :cond_0

    #@54
    .line 92
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    #@57
    move-result v9

    #@58
    .restart local v9    # "type":I
    const/4 v10, 0x1

    #@59
    if-eq v9, v10, :cond_5

    #@5b
    .line 93
    const/4 v10, 0x5

    #@5c
    if-ne v9, v10, :cond_0

    #@5e
    .line 95
    :cond_5
    const/4 v10, 0x1

    #@5f
    if-ne v9, v10, :cond_3

    #@61
    .line 97
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@64
    move-result-object v10

    #@65
    new-instance v11, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v11

    #@6e
    const-string/jumbo v12, ":"

    #@71
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v11

    #@75
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v11

    #@79
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@7c
    move-result v10

    #@7d
    if-nez v10, :cond_1

    #@7f
    .line 98
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    #@82
    move-result-object v10

    #@83
    return-object v10

    #@84
    .line 110
    .restart local v0    # "aname":Ljava/lang/String;
    .restart local v1    # "attr":Lorg/w3c/dom/Node;
    .restart local v2    # "i":I
    .restart local v3    # "index":I
    .restart local v4    # "isPrefix":Z
    .restart local v6    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    :cond_6
    const-string/jumbo v7, ""

    #@87
    .restart local v7    # "p":Ljava/lang/String;
    goto :goto_1

    #@88
    .line 101
    .end local v3    # "index":I
    .end local v7    # "p":Ljava/lang/String;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    #@8a
    goto :goto_0
.end method

.method public handlesNullPrefixes()Z
    .locals 1

    #@0
    .prologue
    .line 142
    const/4 v0, 0x0

    #@1
    return v0
.end method
