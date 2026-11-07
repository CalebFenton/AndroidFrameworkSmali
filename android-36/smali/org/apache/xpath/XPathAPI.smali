.class public Lorg/apache/xpath/XPathAPI;
.super Ljava/lang/Object;
.source "XPathAPI.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist eval(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/apache/xpath/objects/XObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 191
    invoke-static {p0, p1, p0}, Lorg/apache/xpath/XPathAPI;->eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public static greylist eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 277
    new-instance v0, Lorg/apache/xpath/XPath;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 281
    new-instance p1, Lorg/apache/xpath/XPathContext;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    .line 284
    invoke-virtual {p1, p0}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p0

    .line 286
    invoke-virtual {v0, p1, p0, v3}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public static greylist eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 225
    new-instance v0, Lorg/apache/xpath/XPathContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    .line 231
    new-instance v5, Lorg/apache/xml/utils/PrefixResolverDefault;

    .line 232
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_16

    .line 233
    check-cast p2, Lorg/w3c/dom/Document;

    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p2

    :cond_16
    invoke-direct {v5, p2}, Lorg/apache/xml/utils/PrefixResolverDefault;-><init>(Lorg/w3c/dom/Node;)V

    .line 236
    new-instance v2, Lorg/apache/xpath/XPath;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 240
    invoke-virtual {v0, p0}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p0

    .line 242
    invoke-virtual {v2, v0, p0, v5}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public static greylist selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/traversal/NodeIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 108
    invoke-static {p0, p1, p0}, Lorg/apache/xpath/XPathAPI;->selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object p0

    return-object p0
.end method

.method public static greylist selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 128
    invoke-static {p0, p1, p2}, Lorg/apache/xpath/XPathAPI;->eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object p0

    return-object p0
.end method

.method public static greylist selectNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 147
    invoke-static {p0, p1, p0}, Lorg/apache/xpath/XPathAPI;->selectNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public static greylist selectNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 167
    invoke-static {p0, p1, p2}, Lorg/apache/xpath/XPathAPI;->eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    .line 170
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public static greylist selectSingleNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 69
    invoke-static {p0, p1, p0}, Lorg/apache/xpath/XPathAPI;->selectSingleNode(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static greylist selectSingleNode(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 89
    invoke-static {p0, p1, p2}, Lorg/apache/xpath/XPathAPI;->selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object p0

    .line 92
    invoke-interface {p0}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method
