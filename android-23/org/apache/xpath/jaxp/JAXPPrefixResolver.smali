.class public Lorg/apache/xpath/jaxp/JAXPPrefixResolver;
.super Ljava/lang/Object;
.source "JAXPPrefixResolver.java"

# interfaces
.implements Lorg/apache/xml/utils/PrefixResolver;


# static fields
.field public static final S_XMLNAMESPACEURI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field private namespaceContext:Ljavax/xml/namespace/NamespaceContext;


# direct methods
.method public constructor <init>(Ljavax/xml/namespace/NamespaceContext;)V
    .locals 0
    .param p1, "nsContext"    # Ljavax/xml/namespace/NamespaceContext;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    iput-object p1, p0, Lorg/apache/xpath/jaxp/JAXPPrefixResolver;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    #@5
    .line 41
    return-void
.end method


# virtual methods
.method public getBaseIdentifier()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 56
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/xpath/jaxp/JAXPPrefixResolver;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    #@2
    invoke-interface {v0, p1}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 12
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespaceContext"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    .line 88
    move-object v8, p2

    #@2
    .line 89
    .local v8, "parent":Lorg/w3c/dom/Node;
    const/4 v5, 0x0

    #@3
    .line 91
    .local v5, "namespace":Ljava/lang/String;
    const-string/jumbo v10, "xml"

    #@6
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v10

    #@a
    if-eqz v10, :cond_1

    #@c
    .line 92
    const-string/jumbo v5, "http://www.w3.org/XML/1998/namespace"

    #@f
    .line 123
    .end local v5    # "namespace":Ljava/lang/String;
    :cond_0
    return-object v5

    #@10
    .line 96
    :cond_1
    :goto_0
    if-eqz v8, :cond_0

    #@12
    if-nez v5, :cond_0

    #@14
    .line 97
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    #@17
    move-result v9

    #@18
    .local v9, "type":I
    if-eq v9, v11, :cond_2

    #@1a
    .line 98
    const/4 v10, 0x5

    #@1b
    if-ne v9, v10, :cond_0

    #@1d
    .line 100
    :cond_2
    if-ne v9, v11, :cond_4

    #@1f
    .line 101
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    #@22
    move-result-object v6

    #@23
    .line 103
    .local v6, "nnm":Lorg/w3c/dom/NamedNodeMap;
    const/4 v2, 0x0

    #@24
    .local v2, "i":I
    :goto_1
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@27
    move-result v10

    #@28
    if-ge v2, v10, :cond_4

    #@2a
    .line 104
    invoke-interface {v6, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@2d
    move-result-object v1

    #@2e
    .line 105
    .local v1, "attr":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    .line 106
    .local v0, "aname":Ljava/lang/String;
    const-string/jumbo v10, "xmlns:"

    #@35
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@38
    move-result v4

    #@39
    .line 108
    .local v4, "isPrefix":Z
    if-nez v4, :cond_3

    #@3b
    const-string/jumbo v10, "xmlns"

    #@3e
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v10

    #@42
    if-eqz v10, :cond_6

    #@44
    .line 109
    :cond_3
    const/16 v10, 0x3a

    #@46
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    #@49
    move-result v3

    #@4a
    .line 110
    .local v3, "index":I
    if-eqz v4, :cond_5

    #@4c
    add-int/lit8 v10, v3, 0x1

    #@4e
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@51
    move-result-object v7

    #@52
    .line 112
    .local v7, "p":Ljava/lang/String;
    :goto_2
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v10

    #@56
    if-eqz v10, :cond_6

    #@58
    .line 113
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    .line 120
    .end local v0    # "aname":Ljava/lang/String;
    .end local v1    # "attr":Lorg/w3c/dom/Node;
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "isPrefix":Z
    .end local v6    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v7    # "p":Ljava/lang/String;
    :cond_4
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    #@5f
    move-result-object v8

    #@60
    goto :goto_0

    #@61
    .line 110
    .restart local v0    # "aname":Ljava/lang/String;
    .restart local v1    # "attr":Lorg/w3c/dom/Node;
    .restart local v2    # "i":I
    .restart local v3    # "index":I
    .restart local v4    # "isPrefix":Z
    .restart local v6    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    :cond_5
    const-string/jumbo v7, ""

    #@64
    .restart local v7    # "p":Ljava/lang/String;
    goto :goto_2

    #@65
    .line 103
    .end local v3    # "index":I
    .end local v7    # "p":Ljava/lang/String;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    #@67
    goto :goto_1
.end method

.method public handlesNullPrefixes()Z
    .locals 1

    #@0
    .prologue
    .line 63
    const/4 v0, 0x0

    #@1
    return v0
.end method
