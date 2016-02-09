.class public Lorg/apache/xpath/XPathAPI;
.super Ljava/lang/Object;
.source "XPathAPI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static eval(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .param p0, "contextNode"    # Lorg/w3c/dom/Node;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    invoke-static {p0, p1, p0}, Lorg/apache/xpath/XPathAPI;->eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;
    .locals 8
    .param p0, "contextNode"    # Lorg/w3c/dom/Node;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "prefixResolver"    # Lorg/apache/xml/utils/PrefixResolver;
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
    .line 277
    new-instance v0, Lorg/apache/xpath/XPath;

    #@4
    move-object v1, p1

    #@5
    move-object v3, p2

    #@6
    move-object v5, v2

    #@7
    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    #@a
    .line 281
    .local v0, "xpath":Lorg/apache/xpath/XPath;
    new-instance v7, Lorg/apache/xpath/XPathContext;

    #@c
    invoke-direct {v7, v4}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    #@f
    .line 284
    .local v7, "xpathSupport":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v7, p0}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    #@12
    move-result v6

    #@13
    .line 286
    .local v6, "ctxtNode":I
    invoke-virtual {v0, v7, v6, p2}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method public static eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;
    .locals 8
    .param p0, "contextNode"    # Lorg/w3c/dom/Node;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "namespaceNode"    # Lorg/w3c/dom/Node;
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
    .line 225
    new-instance v7, Lorg/apache/xpath/XPathContext;

    #@4
    invoke-direct {v7, v4}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    #@7
    .line 231
    .local v7, "xpathSupport":Lorg/apache/xpath/XPathContext;
    new-instance v3, Lorg/apache/xml/utils/PrefixResolverDefault;

    #@9
    .line 232
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    #@c
    move-result v1

    #@d
    const/16 v5, 0x9

    #@f
    if-ne v1, v5, :cond_0

    #@11
    .line 233
    check-cast p2, Lorg/w3c/dom/Document;

    #@13
    .end local p2    # "namespaceNode":Lorg/w3c/dom/Node;
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    #@16
    move-result-object p2

    #@17
    .line 231
    :cond_0
    invoke-direct {v3, p2}, Lorg/apache/xml/utils/PrefixResolverDefault;-><init>(Lorg/w3c/dom/Node;)V

    #@1a
    .line 236
    .local v3, "prefixResolver":Lorg/apache/xml/utils/PrefixResolverDefault;
    new-instance v0, Lorg/apache/xpath/XPath;

    #@1c
    move-object v1, p1

    #@1d
    move-object v5, v2

    #@1e
    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    #@21
    .line 240
    .local v0, "xpath":Lorg/apache/xpath/XPath;
    invoke-virtual {v7, p0}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    #@24
    move-result v6

    #@25
    .line 242
    .local v6, "ctxtNode":I
    invoke-virtual {v0, v7, v6, v3}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    #@28
    move-result-object v1

    #@29
    return-object v1
.end method

.method public static selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/traversal/NodeIterator;
    .locals 1
    .param p0, "contextNode"    # Lorg/w3c/dom/Node;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    invoke-static {p0, p1, p0}, Lorg/apache/xpath/XPathAPI;->selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;
    .locals 2
    .param p0, "contextNode"    # Lorg/w3c/dom/Node;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "namespaceNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    invoke-static {p0, p1, p2}, Lorg/apache/xpath/XPathAPI;->eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;

    #@3
    move-result-object v0

    #@4
    .line 131
    .local v0, "list":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public static selectNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1
    .param p0, "contextNode"    # Lorg/w3c/dom/Node;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 147
    invoke-static {p0, p1, p0}, Lorg/apache/xpath/XPathAPI;->selectNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static selectNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;
    .locals 2
    .param p0, "contextNode"    # Lorg/w3c/dom/Node;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "namespaceNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 167
    invoke-static {p0, p1, p2}, Lorg/apache/xpath/XPathAPI;->eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;

    #@3
    move-result-object v0

    #@4
    .line 170
    .local v0, "list":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->nodelist()Lorg/w3c/dom/NodeList;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public static selectSingleNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .param p0, "contextNode"    # Lorg/w3c/dom/Node;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    invoke-static {p0, p1, p0}, Lorg/apache/xpath/XPathAPI;->selectSingleNode(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static selectSingleNode(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .param p0, "contextNode"    # Lorg/w3c/dom/Node;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "namespaceNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    invoke-static {p0, p1, p2}, Lorg/apache/xpath/XPathAPI;->selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;

    #@3
    move-result-object v0

    #@4
    .line 92
    .local v0, "nl":Lorg/w3c/dom/traversal/NodeIterator;
    invoke-interface {v0}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method
