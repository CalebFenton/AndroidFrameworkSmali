.class public Lorg/apache/xpath/CachedXPathAPI;
.super Ljava/lang/Object;
.source "CachedXPathAPI.java"


# instance fields
.field protected xpathSupport:Lorg/apache/xpath/XPathContext;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 77
    new-instance v0, Lorg/apache/xpath/XPathContext;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    #@9
    iput-object v0, p0, Lorg/apache/xpath/CachedXPathAPI;->xpathSupport:Lorg/apache/xpath/XPathContext;

    #@b
    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/CachedXPathAPI;)V
    .locals 1
    .param p1, "priorXPathAPI"    # Lorg/apache/xpath/CachedXPathAPI;

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 95
    iget-object v0, p1, Lorg/apache/xpath/CachedXPathAPI;->xpathSupport:Lorg/apache/xpath/XPathContext;

    #@5
    iput-object v0, p0, Lorg/apache/xpath/CachedXPathAPI;->xpathSupport:Lorg/apache/xpath/XPathContext;

    #@7
    .line 93
    return-void
.end method


# virtual methods
.method public eval(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .param p1, "contextNode"    # Lorg/w3c/dom/Node;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 246
    invoke-virtual {p0, p1, p2, p1}, Lorg/apache/xpath/CachedXPathAPI;->eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;
    .locals 8
    .param p1, "contextNode"    # Lorg/w3c/dom/Node;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "prefixResolver"    # Lorg/apache/xml/utils/PrefixResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 329
    new-instance v0, Lorg/apache/xpath/XPath;

    #@4
    move-object v1, p2

    #@5
    move-object v3, p3

    #@6
    move-object v5, v2

    #@7
    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    #@a
    .line 333
    .local v0, "xpath":Lorg/apache/xpath/XPath;
    new-instance v7, Lorg/apache/xpath/XPathContext;

    #@c
    invoke-direct {v7, v4}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    #@f
    .line 336
    .local v7, "xpathSupport":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v7, p1}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    #@12
    move-result v6

    #@13
    .line 338
    .local v6, "ctxtNode":I
    invoke-virtual {v0, v7, v6, p3}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method public eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;
    .locals 7
    .param p1, "contextNode"    # Lorg/w3c/dom/Node;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "namespaceNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 283
    new-instance v3, Lorg/apache/xml/utils/PrefixResolverDefault;

    #@3
    .line 284
    invoke-interface {p3}, Lorg/w3c/dom/Node;->getNodeType()S

    #@6
    move-result v1

    #@7
    const/16 v4, 0x9

    #@9
    if-ne v1, v4, :cond_0

    #@b
    .line 285
    check-cast p3, Lorg/w3c/dom/Document;

    #@d
    .end local p3    # "namespaceNode":Lorg/w3c/dom/Node;
    invoke-interface {p3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    #@10
    move-result-object p3

    #@11
    .line 283
    :cond_0
    invoke-direct {v3, p3}, Lorg/apache/xml/utils/PrefixResolverDefault;-><init>(Lorg/w3c/dom/Node;)V

    #@14
    .line 288
    .local v3, "prefixResolver":Lorg/apache/xml/utils/PrefixResolverDefault;
    new-instance v0, Lorg/apache/xpath/XPath;

    #@16
    const/4 v4, 0x0

    #@17
    move-object v1, p2

    #@18
    move-object v5, v2

    #@19
    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    #@1c
    .line 292
    .local v0, "xpath":Lorg/apache/xpath/XPath;
    iget-object v1, p0, Lorg/apache/xpath/CachedXPathAPI;->xpathSupport:Lorg/apache/xpath/XPathContext;

    #@1e
    invoke-virtual {v1, p1}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    #@21
    move-result v6

    #@22
    .line 294
    .local v6, "ctxtNode":I
    iget-object v1, p0, Lorg/apache/xpath/CachedXPathAPI;->xpathSupport:Lorg/apache/xpath/XPathContext;

    #@24
    invoke-virtual {v0, v1, v6, v3}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    #@27
    move-result-object v1

    #@28
    return-object v1
.end method

.method public getXPathContext()Lorg/apache/xpath/XPathContext;
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/xpath/CachedXPathAPI;->xpathSupport:Lorg/apache/xpath/XPathContext;

    #@2
    return-object v0
.end method

.method public selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/traversal/NodeIterator;
    .locals 1
    .param p1, "contextNode"    # Lorg/w3c/dom/Node;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 163
    invoke-virtual {p0, p1, p2, p1}, Lorg/apache/xpath/CachedXPathAPI;->selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;
    .locals 2
    .param p1, "contextNode"    # Lorg/w3c/dom/Node;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "namespaceNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 183
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/CachedXPathAPI;->eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;

    #@3
    move-result-object v0

    #@4
    .line 186
    .local v0, "list":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public selectNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1
    .param p1, "contextNode"    # Lorg/w3c/dom/Node;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 202
    invoke-virtual {p0, p1, p2, p1}, Lorg/apache/xpath/CachedXPathAPI;->selectNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public selectNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;
    .locals 2
    .param p1, "contextNode"    # Lorg/w3c/dom/Node;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "namespaceNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 222
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/CachedXPathAPI;->eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;

    #@3
    move-result-object v0

    #@4
    .line 225
    .local v0, "list":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->nodelist()Lorg/w3c/dom/NodeList;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public selectSingleNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "contextNode"    # Lorg/w3c/dom/Node;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    invoke-virtual {p0, p1, p2, p1}, Lorg/apache/xpath/CachedXPathAPI;->selectSingleNode(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public selectSingleNode(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "contextNode"    # Lorg/w3c/dom/Node;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "namespaceNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/CachedXPathAPI;->selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;

    #@3
    move-result-object v0

    #@4
    .line 147
    .local v0, "nl":Lorg/w3c/dom/traversal/NodeIterator;
    invoke-interface {v0}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method
