.class public Lorg/apache/xpath/CachedXPathAPI;
.super Ljava/lang/Object;
.source "CachedXPathAPI.java"


# instance fields
.field protected greylist xpathSupport:Lorg/apache/xpath/XPathContext;


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lorg/apache/xpath/XPathContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/xpath/CachedXPathAPI;->xpathSupport:Lorg/apache/xpath/XPathContext;

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xpath/CachedXPathAPI;)V
    .registers 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iget-object p1, p1, Lorg/apache/xpath/CachedXPathAPI;->xpathSupport:Lorg/apache/xpath/XPathContext;

    iput-object p1, p0, Lorg/apache/xpath/CachedXPathAPI;->xpathSupport:Lorg/apache/xpath/XPathContext;

    return-void
.end method


# virtual methods
.method public greylist eval(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 246
    invoke-virtual {p0, p1, p2, p1}, Lorg/apache/xpath/CachedXPathAPI;->eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public greylist eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 329
    new-instance v0, Lorg/apache/xpath/XPath;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 333
    new-instance p0, Lorg/apache/xpath/XPathContext;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    .line 336
    invoke-virtual {p0, p1}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p1

    .line 338
    invoke-virtual {v0, p0, p1, v3}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public greylist eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 283
    new-instance v3, Lorg/apache/xml/utils/PrefixResolverDefault;

    .line 284
    invoke-interface {p3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_10

    .line 285
    check-cast p3, Lorg/w3c/dom/Document;

    invoke-interface {p3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p3

    :cond_10
    invoke-direct {v3, p3}, Lorg/apache/xml/utils/PrefixResolverDefault;-><init>(Lorg/w3c/dom/Node;)V

    .line 288
    new-instance v0, Lorg/apache/xpath/XPath;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 292
    iget-object p2, p0, Lorg/apache/xpath/CachedXPathAPI;->xpathSupport:Lorg/apache/xpath/XPathContext;

    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p1

    .line 294
    iget-object p0, p0, Lorg/apache/xpath/CachedXPathAPI;->xpathSupport:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0, p0, p1, v3}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public greylist getXPathContext()Lorg/apache/xpath/XPathContext;
    .registers 1

    .line 106
    iget-object p0, p0, Lorg/apache/xpath/CachedXPathAPI;->xpathSupport:Lorg/apache/xpath/XPathContext;

    return-object p0
.end method

.method public greylist selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/traversal/NodeIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 163
    invoke-virtual {p0, p1, p2, p1}, Lorg/apache/xpath/CachedXPathAPI;->selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object p0

    return-object p0
.end method

.method public greylist selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 183
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/CachedXPathAPI;->eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    .line 186
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object p0

    return-object p0
.end method

.method public greylist selectNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 202
    invoke-virtual {p0, p1, p2, p1}, Lorg/apache/xpath/CachedXPathAPI;->selectNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public greylist selectNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 222
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/CachedXPathAPI;->eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    .line 225
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public greylist selectSingleNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0, p1, p2, p1}, Lorg/apache/xpath/CachedXPathAPI;->selectSingleNode(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public greylist selectSingleNode(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/CachedXPathAPI;->selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object p0

    .line 147
    invoke-interface {p0}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method
