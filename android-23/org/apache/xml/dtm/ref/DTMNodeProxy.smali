.class public Lorg/apache/xml/dtm/ref/DTMNodeProxy;
.super Ljava/lang/Object;
.source "DTMNodeProxy.java"

# interfaces
.implements Lorg/w3c/dom/Node;
.implements Lorg/w3c/dom/Document;
.implements Lorg/w3c/dom/Text;
.implements Lorg/w3c/dom/Element;
.implements Lorg/w3c/dom/Attr;
.implements Lorg/w3c/dom/ProcessingInstruction;
.implements Lorg/w3c/dom/Comment;
.implements Lorg/w3c/dom/DocumentFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/DTMNodeProxy$DTMNodeProxyImplementation;
    }
.end annotation


# static fields
.field private static final EMPTYSTRING:Ljava/lang/String; = ""

.field static final implementation:Lorg/w3c/dom/DOMImplementation;


# instance fields
.field protected actualEncoding:Ljava/lang/String;

.field public dtm:Lorg/apache/xml/dtm/DTM;

.field protected fDocumentURI:Ljava/lang/String;

.field node:I

.field private xmlEncoding:Ljava/lang/String;

.field private xmlStandalone:Z

.field private xmlVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 78
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy$DTMNodeProxyImplementation;

    #@2
    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy$DTMNodeProxyImplementation;-><init>()V

    #@5
    sput-object v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->implementation:Lorg/w3c/dom/DOMImplementation;

    #@7
    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTM;I)V
    .locals 0
    .param p1, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p2, "node"    # I

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 88
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@5
    .line 89
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@7
    .line 86
    return-void
.end method

.method private final traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 10
    .param p1, "listVector"    # Ljava/util/Vector;
    .param p2, "tempNode"    # Lorg/w3c/dom/Node;
    .param p3, "namespaceURI"    # Ljava/lang/String;
    .param p4, "localname"    # Ljava/lang/String;
    .param p5, "isNamespaceURIWildCard"    # Z
    .param p6, "isLocalNameWildCard"    # Z

    #@0
    .prologue
    .line 917
    if-nez p2, :cond_0

    #@2
    .line 919
    return-void

    #@3
    .line 923
    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    #@6
    move-result v0

    #@7
    const/4 v1, 0x1

    #@8
    if-ne v0, v1, :cond_3

    #@a
    .line 924
    if-nez p6, :cond_1

    #@c
    .line 925
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    .line 923
    if-eqz v0, :cond_3

    #@16
    .line 927
    :cond_1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    #@19
    move-result-object v9

    #@1a
    .line 928
    .local v9, "nsURI":Ljava/lang/String;
    if-nez p3, :cond_4

    #@1c
    if-nez v9, :cond_4

    #@1e
    .line 932
    :cond_2
    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@21
    .line 935
    .end local v9    # "nsURI":Ljava/lang/String;
    :cond_3
    invoke-interface {p2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_5

    #@27
    .line 937
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@2a
    move-result-object v8

    #@2b
    .line 938
    .local v8, "nl":Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    #@2c
    .local v7, "i":I
    :goto_1
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    #@2f
    move-result v0

    #@30
    if-ge v7, v0, :cond_5

    #@32
    .line 940
    invoke-interface {v8, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@35
    move-result-object v2

    #@36
    move-object v0, p0

    #@37
    move-object v1, p1

    #@38
    move-object v3, p3

    #@39
    move-object v4, p4

    #@3a
    move v5, p5

    #@3b
    move/from16 v6, p6

    #@3d
    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;ZZ)V

    #@40
    .line 938
    add-int/lit8 v7, v7, 0x1

    #@42
    goto :goto_1

    #@43
    .line 928
    .end local v7    # "i":I
    .end local v8    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v9    # "nsURI":Ljava/lang/String;
    :cond_4
    if-nez p5, :cond_2

    #@45
    .line 930
    if-eqz p3, :cond_3

    #@47
    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v0

    #@4b
    .line 928
    if-eqz v0, :cond_3

    #@4d
    goto :goto_0

    #@4e
    .line 915
    .end local v9    # "nsURI":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private final traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "listVector"    # Ljava/util/Vector;
    .param p2, "tempNode"    # Lorg/w3c/dom/Node;
    .param p3, "tagname"    # Ljava/lang/String;
    .param p4, "isTagNameWildCard"    # Z

    #@0
    .prologue
    .line 787
    if-nez p2, :cond_0

    #@2
    .line 789
    return-void

    #@3
    .line 793
    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    #@6
    move-result v2

    #@7
    const/4 v3, 0x1

    #@8
    if-ne v2, v3, :cond_2

    #@a
    .line 794
    if-nez p4, :cond_1

    #@c
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    .line 793
    if-eqz v2, :cond_2

    #@16
    .line 796
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@19
    .line 798
    :cond_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_3

    #@1f
    .line 800
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@22
    move-result-object v1

    #@23
    .line 801
    .local v1, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    #@24
    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    #@27
    move-result v2

    #@28
    if-ge v0, v2, :cond_3

    #@2a
    .line 803
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@2d
    move-result-object v2

    #@2e
    invoke-direct {p0, p1, v2, p3, p4}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Z)V

    #@31
    .line 801
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 786
    .end local v0    # "i":I
    .end local v1    # "nodeList":Lorg/w3c/dom/NodeList;
    :cond_3
    return-void
.end method


# virtual methods
.method public adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "source"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1335
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public final appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 538
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/4 v1, 0x7

    #@3
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@6
    throw v0
.end method

.method public final appendData(Ljava/lang/String;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1031
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public final cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "deep"    # Z

    #@0
    .prologue
    .line 560
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 1
    .param p1, "other"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1955
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 718
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public final createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 855
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public final createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 688
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public final createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 673
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public final createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .locals 2

    #@0
    .prologue
    .line 649
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public final createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 639
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public final createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 839
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public final createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 733
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public final createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 704
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public final createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 661
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public final deleteData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1057
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "node"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 152
    :try_start_0
    check-cast p1, Lorg/w3c/dom/Node;

    #@2
    .end local p1    # "node":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->equals(Lorg/w3c/dom/Node;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 155
    :catch_0
    move-exception v0

    #@8
    .line 156
    .local v0, "cce":Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public final equals(Lorg/w3c/dom/Node;)Z
    .locals 6
    .param p1, "node"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 124
    :try_start_0
    move-object v0, p1

    #@2
    check-cast v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    #@4
    move-object v2, v0

    #@5
    .line 128
    .local v2, "dtmp":Lorg/apache/xml/dtm/ref/DTMNodeProxy;
    iget v4, v2, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@7
    iget v5, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@9
    if-ne v4, v5, :cond_0

    #@b
    iget-object v4, v2, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@d
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    if-ne v4, v5, :cond_0

    #@11
    const/4 v3, 0x1

    #@12
    :cond_0
    return v3

    #@13
    .line 131
    .end local v2    # "dtmp":Lorg/apache/xml/dtm/ref/DTMNodeProxy;
    :catch_0
    move-exception v1

    #@14
    .line 132
    .local v1, "cce":Ljava/lang/ClassCastException;
    return v3
.end method

.method public getActualEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2049
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->actualEncoding:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1095
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;

    #@2
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@4
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@6
    invoke-direct {v0, v2, v3}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;-><init>(Lorg/apache/xml/dtm/DTM;I)V

    #@9
    .line 1096
    .local v0, "map":Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    #@c
    move-result-object v1

    #@d
    .line 1097
    .local v1, "node":Lorg/w3c/dom/Node;
    if-nez v1, :cond_0

    #@f
    const-string/jumbo v2, ""

    #@12
    :goto_0
    return-object v2

    #@13
    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    goto :goto_0
.end method

.method public final getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1194
    const/4 v1, 0x0

    #@1
    .line 1195
    .local v1, "retNode":Lorg/w3c/dom/Node;
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@3
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@5
    invoke-interface {v2, v3, p1, p2}, Lorg/apache/xml/dtm/DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    .line 1196
    .local v0, "n":I
    const/4 v2, -0x1

    #@a
    if-eq v0, v2, :cond_0

    #@c
    .line 1197
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@e
    invoke-interface {v2, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@11
    move-result-object v1

    #@12
    .line 1198
    .end local v1    # "retNode":Lorg/w3c/dom/Node;
    :cond_0
    if-nez v1, :cond_1

    #@14
    const-string/jumbo v2, ""

    #@17
    :goto_0
    return-object v2

    #@18
    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    goto :goto_0
.end method

.method public final getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1136
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;

    #@2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@4
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@6
    invoke-direct {v0, v1, v2}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;-><init>(Lorg/apache/xml/dtm/DTM;I)V

    #@9
    .line 1137
    .local v0, "map":Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Lorg/w3c/dom/Attr;

    #@f
    return-object v1
.end method

.method public final getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1241
    const/4 v1, 0x0

    #@1
    .line 1242
    .local v1, "retAttr":Lorg/w3c/dom/Attr;
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@3
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@5
    invoke-interface {v2, v3, p1, p2}, Lorg/apache/xml/dtm/DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    .line 1243
    .local v0, "n":I
    const/4 v2, -0x1

    #@a
    if-eq v0, v2, :cond_0

    #@c
    .line 1244
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@e
    invoke-interface {v2, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@11
    move-result-object v1

    #@12
    .end local v1    # "retAttr":Lorg/w3c/dom/Attr;
    check-cast v1, Lorg/w3c/dom/Attr;

    #@14
    .line 1245
    :cond_0
    return-object v1
.end method

.method public final getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 3

    #@0
    .prologue
    .line 440
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;

    #@2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@4
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@6
    invoke-direct {v0, v1, v2}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;-><init>(Lorg/apache/xml/dtm/DTM;I)V

    #@9
    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1983
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 3

    #@0
    .prologue
    .line 369
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;

    #@2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@4
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@6
    invoke-direct {v0, v1, v2}, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;-><init>(Lorg/apache/xml/dtm/DTM;I)V

    #@9
    return-object v0
.end method

.method public final getDTM()Lorg/apache/xml/dtm/DTM;
    .locals 1

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    return-object v0
.end method

.method public final getDTMNodeNumber()I
    .locals 1

    #@0
    .prologue
    .line 109
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@2
    return v0
.end method

.method public final getData()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 981
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@4
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getDoctype()Lorg/w3c/dom/DocumentType;
    .locals 1

    #@0
    .prologue
    .line 570
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final getDocumentElement()Lorg/w3c/dom/Element;
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 592
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@3
    invoke-interface {v3}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    #@6
    move-result v0

    #@7
    .line 593
    .local v0, "dochandle":I
    const/4 v1, -0x1

    #@8
    .line 594
    .local v1, "elementhandle":I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@a
    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    #@d
    move-result v2

    #@e
    .local v2, "kidhandle":I
    :goto_0
    if-eq v2, v4, :cond_1

    #@10
    .line 598
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@12
    invoke-interface {v3, v2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@15
    move-result v3

    #@16
    sparse-switch v3, :sswitch_data_0

    #@19
    .line 617
    const/4 v1, -0x1

    #@1a
    .line 618
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@1c
    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getLastChild(I)I

    #@1f
    move-result v2

    #@20
    .line 596
    :goto_1
    :sswitch_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@22
    invoke-interface {v3, v2}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    #@25
    move-result v2

    #@26
    goto :goto_0

    #@27
    .line 601
    :sswitch_1
    if-eq v1, v4, :cond_0

    #@29
    .line 603
    const/4 v1, -0x1

    #@2a
    .line 604
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2c
    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getLastChild(I)I

    #@2f
    move-result v2

    #@30
    goto :goto_1

    #@31
    .line 607
    :cond_0
    move v1, v2

    #@32
    goto :goto_1

    #@33
    .line 622
    :cond_1
    if-ne v1, v4, :cond_2

    #@35
    .line 623
    new-instance v3, Lorg/apache/xml/dtm/DTMDOMException;

    #@37
    const/16 v4, 0x9

    #@39
    invoke-direct {v3, v4}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@3c
    throw v3

    #@3d
    .line 625
    :cond_2
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@3f
    invoke-interface {v3, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@42
    move-result-object v3

    #@43
    check-cast v3, Lorg/w3c/dom/Element;

    #@45
    return-object v3

    #@46
    .line 598
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public getDocumentURI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2034
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->fDocumentURI:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .locals 1

    #@0
    .prologue
    .line 2011
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2
    .param p1, "elementId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 955
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@4
    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getElementById(Ljava/lang/String;)I

    #@7
    move-result v1

    #@8
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lorg/w3c/dom/Element;

    #@e
    return-object v0
.end method

.method public final getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 9
    .param p1, "tagname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 745
    new-instance v2, Ljava/util/Vector;

    #@2
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    #@5
    .line 746
    .local v2, "listVector":Ljava/util/Vector;
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@7
    iget v8, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@9
    invoke-interface {v7, v8}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@c
    move-result-object v5

    #@d
    .line 747
    .local v5, "retNode":Lorg/w3c/dom/Node;
    if-eqz v5, :cond_1

    #@f
    .line 749
    const-string/jumbo v7, "*"

    #@12
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    .line 750
    .local v1, "isTagNameWildCard":Z
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    #@19
    move-result v7

    #@1a
    const/4 v8, 0x1

    #@1b
    if-ne v8, v7, :cond_0

    #@1d
    .line 752
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@20
    move-result-object v3

    #@21
    .line 753
    .local v3, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    #@22
    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    #@25
    move-result v7

    #@26
    if-ge v0, v7, :cond_1

    #@28
    .line 755
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@2b
    move-result-object v7

    #@2c
    invoke-direct {p0, v2, v7, p1, v1}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Z)V

    #@2f
    .line 753
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 758
    .end local v0    # "i":I
    .end local v3    # "nodeList":Lorg/w3c/dom/NodeList;
    :cond_0
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    #@35
    move-result v7

    #@36
    const/16 v8, 0x9

    #@38
    if-ne v8, v7, :cond_1

    #@3a
    .line 759
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@3c
    iget v8, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@3e
    invoke-interface {v7, v8}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@41
    move-result-object v7

    #@42
    invoke-direct {p0, v2, v7, p1, v1}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Z)V

    #@45
    .line 763
    .end local v1    # "isTagNameWildCard":Z
    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@48
    move-result v6

    #@49
    .line 764
    .local v6, "size":I
    new-instance v4, Lorg/apache/xpath/NodeSet;

    #@4b
    invoke-direct {v4, v6}, Lorg/apache/xpath/NodeSet;-><init>(I)V

    #@4e
    .line 765
    .local v4, "nodeSet":Lorg/apache/xpath/NodeSet;
    const/4 v0, 0x0

    #@4f
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v6, :cond_2

    #@51
    .line 767
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@54
    move-result-object v7

    #@55
    check-cast v7, Lorg/w3c/dom/Node;

    #@57
    invoke-virtual {v4, v7}, Lorg/apache/xpath/NodeSet;->addNode(Lorg/w3c/dom/Node;)V

    #@5a
    .line 765
    add-int/lit8 v0, v0, 0x1

    #@5c
    goto :goto_1

    #@5d
    .line 769
    :cond_2
    return-object v4
.end method

.method public final getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 12
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 869
    new-instance v1, Ljava/util/Vector;

    #@2
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@5
    .line 870
    .local v1, "listVector":Ljava/util/Vector;
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@7
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@9
    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@c
    move-result-object v10

    #@d
    .line 871
    .local v10, "retNode":Lorg/w3c/dom/Node;
    if-eqz v10, :cond_1

    #@f
    .line 873
    const-string/jumbo v0, "*"

    #@12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v5

    #@16
    .line 874
    .local v5, "isNamespaceURIWildCard":Z
    const-string/jumbo v0, "*"

    #@19
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v6

    #@1d
    .line 875
    .local v6, "isLocalNameWildCard":Z
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    #@20
    move-result v0

    #@21
    const/4 v2, 0x1

    #@22
    if-ne v2, v0, :cond_0

    #@24
    .line 877
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@27
    move-result-object v8

    #@28
    .line 878
    .local v8, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    #@29
    .local v7, "i":I
    :goto_0
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    #@2c
    move-result v0

    #@2d
    if-ge v7, v0, :cond_1

    #@2f
    .line 880
    invoke-interface {v8, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@32
    move-result-object v2

    #@33
    move-object v0, p0

    #@34
    move-object v3, p1

    #@35
    move-object v4, p2

    #@36
    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;ZZ)V

    #@39
    .line 878
    add-int/lit8 v7, v7, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 883
    .end local v7    # "i":I
    .end local v8    # "nodeList":Lorg/w3c/dom/NodeList;
    :cond_0
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    #@3f
    move-result v0

    #@40
    const/16 v2, 0x9

    #@42
    if-ne v2, v0, :cond_1

    #@44
    .line 885
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@46
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@48
    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@4b
    move-result-object v2

    #@4c
    move-object v0, p0

    #@4d
    move-object v3, p1

    #@4e
    move-object v4, p2

    #@4f
    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;ZZ)V

    #@52
    .line 888
    .end local v5    # "isNamespaceURIWildCard":Z
    .end local v6    # "isLocalNameWildCard":Z
    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@55
    move-result v11

    #@56
    .line 889
    .local v11, "size":I
    new-instance v9, Lorg/apache/xpath/NodeSet;

    #@58
    invoke-direct {v9, v11}, Lorg/apache/xpath/NodeSet;-><init>(I)V

    #@5b
    .line 890
    .local v9, "nodeSet":Lorg/apache/xpath/NodeSet;
    const/4 v7, 0x0

    #@5c
    .restart local v7    # "i":I
    :goto_1
    if-ge v7, v11, :cond_2

    #@5e
    .line 892
    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@61
    move-result-object v0

    #@62
    check-cast v0, Lorg/w3c/dom/Node;

    #@64
    invoke-virtual {v9, v0}, Lorg/apache/xpath/NodeSet;->addNode(Lorg/w3c/dom/Node;)V

    #@67
    .line 890
    add-int/lit8 v7, v7, 0x1

    #@69
    goto :goto_1

    #@6a
    .line 894
    :cond_2
    return-object v9
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1503
    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .end local p0    # "this":Lorg/apache/xml/dtm/ref/DTMNodeProxy;
    :goto_0
    return-object p0

    #@7
    .restart local p0    # "this":Lorg/apache/xml/dtm/ref/DTMNodeProxy;
    :cond_0
    const/4 p0, 0x0

    #@8
    goto :goto_0
.end method

.method public final getFirstChild()Lorg/w3c/dom/Node;
    .locals 3

    #@0
    .prologue
    .line 382
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@4
    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    #@7
    move-result v0

    #@8
    .line 384
    .local v0, "newnode":I
    const/4 v1, -0x1

    #@9
    if-ne v0, v1, :cond_0

    #@b
    const/4 v1, 0x0

    #@c
    :goto_0
    return-object v1

    #@d
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@f
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@12
    move-result-object v1

    #@13
    goto :goto_0
.end method

.method public final getImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    #@0
    .prologue
    .line 580
    sget-object v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->implementation:Lorg/w3c/dom/DOMImplementation;

    #@2
    return-object v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1352
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public final getLastChild()Lorg/w3c/dom/Node;
    .locals 3

    #@0
    .prologue
    .line 395
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@4
    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getLastChild(I)I

    #@7
    move-result v0

    #@8
    .line 397
    .local v0, "newnode":I
    const/4 v1, -0x1

    #@9
    if-ne v0, v1, :cond_0

    #@b
    const/4 v1, 0x0

    #@c
    :goto_0
    return-object v1

    #@d
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@f
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@12
    move-result-object v1

    #@13
    goto :goto_0
.end method

.method public final getLength()I
    .locals 2

    #@0
    .prologue
    .line 1004
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@4
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public final getLocalName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@4
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1269
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@4
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getNamespaceURI()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@4
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getNextSibling()Lorg/w3c/dom/Node;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 422
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@3
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@5
    invoke-interface {v2, v3}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@8
    move-result v2

    #@9
    const/4 v3, 0x2

    #@a
    if-ne v2, v3, :cond_0

    #@c
    .line 423
    return-object v1

    #@d
    .line 425
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@f
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@11
    invoke-interface {v2, v3}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    #@14
    move-result v0

    #@15
    .line 427
    .local v0, "newnode":I
    const/4 v2, -0x1

    #@16
    if-ne v0, v2, :cond_1

    #@18
    :goto_0
    return-object v1

    #@19
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@1b
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@1e
    move-result-object v1

    #@1f
    goto :goto_0
.end method

.method public final getNodeName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@4
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getNodeType()S
    .locals 2

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@4
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final getNodeValue()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 294
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@4
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 3

    #@0
    .prologue
    .line 478
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@4
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@6
    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getOwnerDocument(I)I

    #@9
    move-result v1

    #@a
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lorg/w3c/dom/Document;

    #@10
    return-object v0
.end method

.method public final getOwnerElement()Lorg/w3c/dom/Element;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1314
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeType()S

    #@4
    move-result v2

    #@5
    const/4 v3, 0x2

    #@6
    if-eq v2, v3, :cond_0

    #@8
    .line 1315
    return-object v1

    #@9
    .line 1318
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@b
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@d
    invoke-interface {v2, v3}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    #@10
    move-result v0

    #@11
    .line 1319
    .local v0, "newnode":I
    const/4 v2, -0x1

    #@12
    if-ne v0, v2, :cond_1

    #@14
    :goto_0
    return-object v1

    #@15
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@17
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Lorg/w3c/dom/Element;

    #@1d
    goto :goto_0
.end method

.method public final getOwnerNode()Lorg/w3c/dom/Node;
    .locals 3

    #@0
    .prologue
    .line 353
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@4
    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    #@7
    move-result v0

    #@8
    .line 355
    .local v0, "newnode":I
    const/4 v1, -0x1

    #@9
    if-ne v0, v1, :cond_0

    #@b
    const/4 v1, 0x0

    #@c
    :goto_0
    return-object v1

    #@d
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@f
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@12
    move-result-object v1

    #@13
    goto :goto_0
.end method

.method public final getParentNode()Lorg/w3c/dom/Node;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 337
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeType()S

    #@4
    move-result v2

    #@5
    const/4 v3, 0x2

    #@6
    if-ne v2, v3, :cond_0

    #@8
    .line 338
    return-object v1

    #@9
    .line 340
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@b
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@d
    invoke-interface {v2, v3}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    #@10
    move-result v0

    #@11
    .line 342
    .local v0, "newnode":I
    const/4 v2, -0x1

    #@12
    if-ne v0, v2, :cond_1

    #@14
    :goto_0
    return-object v1

    #@15
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@17
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@1a
    move-result-object v1

    #@1b
    goto :goto_0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@4
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getPrefix(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 3

    #@0
    .prologue
    .line 408
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@4
    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getPreviousSibling(I)I

    #@7
    move-result v0

    #@8
    .line 410
    .local v0, "newnode":I
    const/4 v1, -0x1

    #@9
    if-ne v0, v1, :cond_0

    #@b
    const/4 v1, 0x0

    #@c
    :goto_0
    return-object v1

    #@d
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@f
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@12
    move-result-object v1

    #@13
    goto :goto_0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 1

    #@0
    .prologue
    .line 2181
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final getSpecified()Z
    .locals 1

    #@0
    .prologue
    .line 1283
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getStrictErrorChecking()Z
    .locals 2

    #@0
    .prologue
    .line 1373
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public final getStringValue()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@4
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public final getTagName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1082
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@4
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getTarget()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@4
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1943
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@4
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1477
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1293
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@4
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getWholeText()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2136
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2192
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->xmlEncoding:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getXmlStandalone()Z
    .locals 1

    #@0
    .prologue
    .line 2202
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->xmlStandalone:Z

    #@2
    return v0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2212
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->xmlVersion:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 453
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@4
    const/4 v2, 0x0

    #@5
    invoke-interface {v0, v1, v2, p1}, Lorg/apache/xml/dtm/DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    const/4 v1, -0x1

    #@a
    if-eq v1, v0, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 467
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@4
    invoke-interface {v0, v1, p1, p2}, Lorg/apache/xml/dtm/DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    const/4 v1, -0x1

    #@9
    if-eq v1, v0, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public hasAttributes()Z
    .locals 2

    #@0
    .prologue
    .line 1175
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@4
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    #@7
    move-result v0

    #@8
    const/4 v1, -0x1

    #@9
    if-eq v1, v0, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public final hasChildNodes()Z
    .locals 2

    #@0
    .prologue
    .line 548
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@4
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    #@7
    move-result v0

    #@8
    const/4 v1, -0x1

    #@9
    if-eq v1, v0, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public final importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "importedNode"    # Lorg/w3c/dom/Node;
    .param p2, "deep"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 823
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/4 v1, 0x7

    #@3
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@6
    throw v0
.end method

.method public final insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "refChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 494
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/4 v1, 0x7

    #@3
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@6
    throw v0
.end method

.method public final insertData(ILjava/lang/String;)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1044
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1771
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isElementContentWhitespace()Z
    .locals 1

    #@0
    .prologue
    .line 2145
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 4
    .param p1, "arg"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1549
    if-ne p1, p0, :cond_0

    #@4
    .line 1550
    return v3

    #@5
    .line 1552
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@8
    move-result v0

    #@9
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeType()S

    #@c
    move-result v1

    #@d
    if-eq v0, v1, :cond_1

    #@f
    .line 1553
    return v2

    #@10
    .line 1557
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeName()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    if-nez v0, :cond_2

    #@16
    .line 1558
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    if-eqz v0, :cond_3

    #@1c
    .line 1559
    return v2

    #@1d
    .line 1562
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeName()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v0

    #@29
    if-nez v0, :cond_3

    #@2b
    .line 1563
    return v2

    #@2c
    .line 1566
    :cond_3
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getLocalName()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    if-nez v0, :cond_4

    #@32
    .line 1567
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    if-eqz v0, :cond_5

    #@38
    .line 1568
    return v2

    #@39
    .line 1571
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getLocalName()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v0

    #@45
    if-nez v0, :cond_5

    #@47
    .line 1572
    return v2

    #@48
    .line 1575
    :cond_5
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNamespaceURI()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    if-nez v0, :cond_6

    #@4e
    .line 1576
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    if-eqz v0, :cond_7

    #@54
    .line 1577
    return v2

    #@55
    .line 1580
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNamespaceURI()Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v0

    #@61
    if-nez v0, :cond_7

    #@63
    .line 1581
    return v2

    #@64
    .line 1584
    :cond_7
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getPrefix()Ljava/lang/String;

    #@67
    move-result-object v0

    #@68
    if-nez v0, :cond_8

    #@6a
    .line 1585
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    #@6d
    move-result-object v0

    #@6e
    if-eqz v0, :cond_9

    #@70
    .line 1586
    return v2

    #@71
    .line 1589
    :cond_8
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getPrefix()Ljava/lang/String;

    #@74
    move-result-object v0

    #@75
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v0

    #@7d
    if-nez v0, :cond_9

    #@7f
    .line 1590
    return v2

    #@80
    .line 1593
    :cond_9
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeValue()Ljava/lang/String;

    #@83
    move-result-object v0

    #@84
    if-nez v0, :cond_a

    #@86
    .line 1594
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@89
    move-result-object v0

    #@8a
    if-eqz v0, :cond_b

    #@8c
    .line 1595
    return v2

    #@8d
    .line 1598
    :cond_a
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeValue()Ljava/lang/String;

    #@90
    move-result-object v0

    #@91
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@94
    move-result-object v1

    #@95
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v0

    #@99
    if-nez v0, :cond_b

    #@9b
    .line 1599
    return v2

    #@9c
    .line 1611
    :cond_b
    return v3
.end method

.method public isId()Z
    .locals 1

    #@0
    .prologue
    .line 2185
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 1
    .param p1, "other"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 1844
    if-ne p0, p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x0

    #@5
    goto :goto_0
.end method

.method public final isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    #@0
    .prologue
    .line 281
    sget-object v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->implementation:Lorg/w3c/dom/DOMImplementation;

    #@2
    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "specifiedPrefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 1624
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeType()S

    #@4
    move-result v7

    #@5
    .line 1625
    .local v7, "type":S
    packed-switch v7, :pswitch_data_0

    #@8
    .line 1695
    :pswitch_0
    return-object v11

    #@9
    .line 1628
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNamespaceURI()Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    .line 1629
    .local v5, "namespace":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getPrefix()Ljava/lang/String;

    #@10
    move-result-object v6

    #@11
    .line 1630
    .local v6, "prefix":Ljava/lang/String;
    if-eqz v5, :cond_1

    #@13
    .line 1632
    if-nez p1, :cond_0

    #@15
    if-ne v6, p1, :cond_0

    #@17
    .line 1634
    return-object v5

    #@18
    .line 1635
    :cond_0
    if-eqz v6, :cond_1

    #@1a
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v9

    #@1e
    if-eqz v9, :cond_1

    #@20
    .line 1637
    return-object v5

    #@21
    .line 1640
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->hasAttributes()Z

    #@24
    move-result v9

    #@25
    if-eqz v9, :cond_4

    #@27
    .line 1641
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    #@2a
    move-result-object v4

    #@2b
    .line 1642
    .local v4, "map":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@2e
    move-result v3

    #@2f
    .line 1643
    .local v3, "length":I
    const/4 v2, 0x0

    #@30
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    #@32
    .line 1644
    invoke-interface {v4, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@35
    move-result-object v0

    #@36
    .line 1645
    .local v0, "attr":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    .line 1646
    .local v1, "attrPrefix":Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@3d
    move-result-object v8

    #@3e
    .line 1647
    .local v8, "value":Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    .line 1648
    if-eqz v5, :cond_3

    #@44
    const-string/jumbo v9, "http://www.w3.org/2000/xmlns/"

    #@47
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v9

    #@4b
    if-eqz v9, :cond_3

    #@4d
    .line 1650
    if-nez p1, :cond_2

    #@4f
    .line 1651
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@52
    move-result-object v9

    #@53
    const-string/jumbo v10, "xmlns"

    #@56
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v9

    #@5a
    .line 1650
    if-eqz v9, :cond_2

    #@5c
    .line 1653
    return-object v8

    #@5d
    .line 1654
    :cond_2
    if-eqz v1, :cond_3

    #@5f
    .line 1655
    const-string/jumbo v9, "xmlns"

    #@62
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v9

    #@66
    .line 1654
    if-eqz v9, :cond_3

    #@68
    .line 1656
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@6b
    move-result-object v9

    #@6c
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v9

    #@70
    .line 1654
    if-eqz v9, :cond_3

    #@72
    .line 1658
    return-object v8

    #@73
    .line 1643
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@75
    goto :goto_0

    #@76
    .line 1669
    .end local v0    # "attr":Lorg/w3c/dom/Node;
    .end local v1    # "attrPrefix":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    return-object v11

    #@77
    .line 1681
    .end local v5    # "namespace":Ljava/lang/String;
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_2
    return-object v11

    #@78
    .line 1683
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getOwnerElement()Lorg/w3c/dom/Element;

    #@7b
    move-result-object v9

    #@7c
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getNodeType()S

    #@7f
    move-result v9

    #@80
    const/4 v10, 0x1

    #@81
    if-ne v9, v10, :cond_5

    #@83
    .line 1684
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getOwnerElement()Lorg/w3c/dom/Element;

    #@86
    move-result-object v9

    #@87
    invoke-interface {v9, p1}, Lorg/w3c/dom/Element;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    #@8a
    move-result-object v9

    #@8b
    return-object v9

    #@8c
    .line 1686
    :cond_5
    return-object v11

    #@8d
    .line 1625
    nop

    #@8e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "namespaceURI"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1785
    if-nez p1, :cond_0

    #@3
    .line 1786
    return-object v3

    #@4
    .line 1789
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeType()S

    #@7
    move-result v0

    #@8
    .line 1791
    .local v0, "type":S
    packed-switch v0, :pswitch_data_0

    #@b
    .line 1823
    :pswitch_0
    return-object v3

    #@c
    .line 1808
    :pswitch_1
    return-object v3

    #@d
    .line 1810
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getOwnerElement()Lorg/w3c/dom/Element;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeType()S

    #@14
    move-result v1

    #@15
    const/4 v2, 0x1

    #@16
    if-ne v1, v2, :cond_1

    #@18
    .line 1811
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getOwnerElement()Lorg/w3c/dom/Element;

    #@1b
    move-result-object v1

    #@1c
    invoke-interface {v1, p1}, Lorg/w3c/dom/Element;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    return-object v1

    #@21
    .line 1814
    :cond_1
    return-object v3

    #@22
    .line 1791
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final normalize()V
    .locals 2

    #@0
    .prologue
    .line 1181
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public normalizeDocument()V
    .locals 0

    #@0
    .prologue
    .line 2001
    return-void
.end method

.method public final removeAttribute(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1123
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public final removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1228
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public final removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 2
    .param p1, "oldAttr"    # Lorg/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1165
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public final removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "oldChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 524
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/4 v1, 0x7

    #@3
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@6
    throw v0
.end method

.method public renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 0
    .param p1, "n"    # Lorg/w3c/dom/Node;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1994
    return-object p1
.end method

.method public final replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "oldChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 510
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/4 v1, 0x7

    #@3
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@6
    throw v0
.end method

.method public final replaceData(IILjava/lang/String;)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1072
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public replaceWholeText(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 2111
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final sameNodeAs(Lorg/w3c/dom/Node;)Z
    .locals 4
    .param p1, "other"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 170
    instance-of v2, p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 171
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 173
    check-cast v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    #@9
    .line 175
    .local v0, "that":Lorg/apache/xml/dtm/ref/DTMNodeProxy;
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@b
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    #@d
    if-ne v2, v3, :cond_1

    #@f
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@11
    iget v3, v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    #@13
    if-ne v2, v3, :cond_1

    #@15
    const/4 v1, 0x1

    #@16
    :cond_1
    return v1
.end method

.method public setActualEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2061
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->actualEncoding:Ljava/lang/String;

    #@2
    .line 2060
    return-void
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1111
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public final setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1214
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public final setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 2
    .param p1, "newAttr"    # Lorg/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1151
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public final setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 2
    .param p1, "newAttr"    # Lorg/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1259
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public final setData(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 993
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public setDocumentURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "documentURI"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2022
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->fDocumentURI:Ljava/lang/String;

    #@2
    .line 2020
    return-void
.end method

.method public setIdAttribute(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "makeId"    # Z

    #@0
    .prologue
    .line 2160
    return-void
.end method

.method public setIdAttribute(Z)V
    .locals 0
    .param p1, "id"    # Z

    #@0
    .prologue
    .line 2153
    return-void
.end method

.method public setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "makeId"    # Z

    #@0
    .prologue
    .line 2176
    return-void
.end method

.method public setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V
    .locals 0
    .param p1, "at"    # Lorg/w3c/dom/Attr;
    .param p2, "makeId"    # Z

    #@0
    .prologue
    .line 2168
    return-void
.end method

.method public final setNodeValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "nodeValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 316
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/4 v1, 0x7

    #@3
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@6
    throw v0
.end method

.method public final setPrefix(Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 234
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/4 v1, 0x7

    #@3
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@6
    throw v0
.end method

.method public setStrictErrorChecking(Z)V
    .locals 2
    .param p1, "strictErrorChecking"    # Z

    #@0
    .prologue
    .line 1393
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "textContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1894
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->setNodeValue(Ljava/lang/String;)V

    #@3
    .line 1893
    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "handler"    # Lorg/w3c/dom/UserDataHandler;

    #@0
    .prologue
    .line 1464
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1, p2, p3}, Lorg/w3c/dom/Document;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1303
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public setXmlEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "xmlEncoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2196
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->xmlEncoding:Ljava/lang/String;

    #@2
    .line 2195
    return-void
.end method

.method public setXmlStandalone(Z)V
    .locals 0
    .param p1, "xmlStandalone"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 2206
    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->xmlStandalone:Z

    #@2
    .line 2205
    return-void
.end method

.method public setXmlVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "xmlVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 2216
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->xmlVersion:Ljava/lang/String;

    #@2
    .line 2215
    return-void
.end method

.method public final splitText(I)Lorg/w3c/dom/Text;
    .locals 2
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 969
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public final substringData(II)Ljava/lang/String;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1019
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getData()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    add-int v1, p1, p2

    #@6
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public final supports(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    #@0
    .prologue
    .line 265
    sget-object v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->implementation:Lorg/w3c/dom/DOMImplementation;

    #@2
    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
