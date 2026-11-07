.class public Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;
.super Ljava/lang/Object;
.source "ElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/NamedNodeMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/dom/ElementImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ElementAttrNamedNodeMapImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lorg/apache/harmony/xml/dom/ElementImpl;


# direct methods
.method public constructor blacklist <init>(Lorg/apache/harmony/xml/dom/ElementImpl;)V
    .registers 2
    .param p1, "this$0"    # Lorg/apache/harmony/xml/dom/ElementImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 328
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist indexOfItem(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-static {v0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->-$$Nest$mindexOfAttribute(Lorg/apache/harmony/xml/dom/ElementImpl;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private blacklist indexOfItemNS(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-static {v0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->-$$Nest$mindexOfAttributeNS(Lorg/apache/harmony/xml/dom/ElementImpl;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist test-api getLength()I
    .registers 2

    .line 331
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-static {v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->-$$Nest$fgetattributes(Lorg/apache/harmony/xml/dom/ElementImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api item(I)Lorg/w3c/dom/Node;
    .registers 3
    .param p1, "index"    # I

    .line 351
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-static {v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->-$$Nest$fgetattributes(Lorg/apache/harmony/xml/dom/ElementImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public whitelist test-api removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 355
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->indexOfItem(Ljava/lang/String;)I

    move-result v0

    .line 357
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 361
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-static {v1}, Lorg/apache/harmony/xml/dom/ElementImpl;->-$$Nest$fgetattributes(Lorg/apache/harmony/xml/dom/ElementImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    return-object v1

    .line 358
    :cond_14
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 7
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 366
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->indexOfItemNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 368
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 372
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-static {v1}, Lorg/apache/harmony/xml/dom/ElementImpl;->-$$Nest$fgetattributes(Lorg/apache/harmony/xml/dom/ElementImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    return-object v1

    .line 369
    :cond_14
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 5
    .param p1, "arg"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 376
    instance-of v0, p1, Lorg/w3c/dom/Attr;

    if-eqz v0, :cond_e

    .line 380
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    move-object v1, p1

    check-cast v1, Lorg/w3c/dom/Attr;

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/dom/ElementImpl;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v0

    return-object v0

    .line 377
    :cond_e
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 5
    .param p1, "arg"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 384
    instance-of v0, p1, Lorg/w3c/dom/Attr;

    if-eqz v0, :cond_e

    .line 388
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    move-object v1, p1

    check-cast v1, Lorg/w3c/dom/Attr;

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/dom/ElementImpl;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v0

    return-object v0

    .line 385
    :cond_e
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method
