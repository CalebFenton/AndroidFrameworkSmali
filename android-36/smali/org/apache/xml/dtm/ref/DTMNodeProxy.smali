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
.field private static final greylist EMPTYSTRING:Ljava/lang/String; = ""

.field static final greylist implementation:Lorg/w3c/dom/DOMImplementation;


# instance fields
.field protected greylist actualEncoding:Ljava/lang/String;

.field public greylist dtm:Lorg/apache/xml/dtm/DTM;

.field protected greylist fDocumentURI:Ljava/lang/String;

.field greylist node:I

.field private greylist xmlEncoding:Ljava/lang/String;

.field private greylist xmlStandalone:Z

.field private greylist xmlVersion:Ljava/lang/String;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy$DTMNodeProxyImplementation;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy$DTMNodeProxyImplementation;-><init>()V

    sput-object v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->implementation:Lorg/w3c/dom/DOMImplementation;

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTM;I)V
    .registers 3

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    .line 89
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    return-void
.end method

.method private final greylist traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 16

    if-nez p2, :cond_3

    goto :goto_4c

    .line 923
    :cond_3
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    if-nez p6, :cond_16

    .line 925
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 927
    :cond_16
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_1e

    if-eqz v0, :cond_28

    :cond_1e
    if-nez p5, :cond_28

    if-eqz p3, :cond_2b

    .line 930
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 932
    :cond_28
    invoke-virtual {p1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 935
    :cond_2b
    invoke-interface {p2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 937
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    .line 938
    :goto_36
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_4c

    .line 940
    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_4c
    :goto_4c
    return-void
.end method

.method private final greylist traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Z)V
    .registers 7

    if-nez p2, :cond_3

    goto :goto_34

    .line 793
    :cond_3
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    if-nez p4, :cond_16

    .line 794
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 796
    :cond_16
    invoke-virtual {p1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 798
    :cond_19
    invoke-interface {p2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 800
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    .line 801
    :goto_24
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 803
    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3, p4}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_34
    :goto_34
    return-void
.end method


# virtual methods
.method public whitelist test-api adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1335
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 538
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api appendData(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1031
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api cloneNode(Z)Lorg/w3c/dom/Node;
    .registers 2

    .line 560
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public whitelist test-api compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final whitelist test-api createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 718
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 855
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 688
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .registers 2

    .line 673
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .registers 2

    .line 649
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 639
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 839
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 733
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 704
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .registers 2

    .line 661
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api deleteData(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1057
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2

    .line 152
    :try_start_0
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->equals(Lorg/w3c/dom/Node;)Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method

.method public final greylist equals(Lorg/w3c/dom/Node;)Z
    .registers 5

    const/4 v0, 0x0

    .line 124
    :try_start_1
    check-cast p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    .line 128
    iget v1, p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    if-ne v1, v2, :cond_11

    iget-object p1, p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_d} :catch_11

    if-ne p1, p0, :cond_11

    const/4 p0, 0x1

    return p0

    :catch_11
    :cond_11
    return v0
.end method

.method public greylist getActualEncoding()Ljava/lang/String;
    .registers 1

    .line 2049
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->actualEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public final whitelist test-api getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1095
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-direct {v0, v1, p0}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;-><init>(Lorg/apache/xml/dtm/DTM;I)V

    .line 1096
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-nez p0, :cond_12

    .line 1097
    const-string p0, ""

    return-object p0

    :cond_12
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1195
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1, p1, p2}, Lorg/apache/xml/dtm/DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_12

    .line 1197
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {p0, p1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    if-nez p0, :cond_18

    .line 1198
    const-string p0, ""

    return-object p0

    :cond_18
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 4

    .line 1136
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-direct {v0, v1, p0}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;-><init>(Lorg/apache/xml/dtm/DTM;I)V

    .line 1137
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public final whitelist test-api getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 5

    .line 1242
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1, p1, p2}, Lorg/apache/xml/dtm/DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_14

    .line 1244
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {p0, p1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public final whitelist test-api getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .registers 3

    .line 440
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-direct {v0, v1, p0}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;-><init>(Lorg/apache/xml/dtm/DTM;I)V

    return-object v0
.end method

.method public whitelist test-api getBaseURI()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final whitelist test-api getChildNodes()Lorg/w3c/dom/NodeList;
    .registers 3

    .line 369
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-direct {v0, v1, p0}, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;-><init>(Lorg/apache/xml/dtm/DTM;I)V

    return-object v0
.end method

.method public final greylist getDTM()Lorg/apache/xml/dtm/DTM;
    .registers 1

    .line 99
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    return-object p0
.end method

.method public final greylist getDTMNodeNumber()I
    .registers 1

    .line 109
    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    return p0
.end method

.method public final whitelist test-api getData()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 981
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api getDoctype()Lorg/w3c/dom/DocumentType;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final whitelist test-api getDocumentElement()Lorg/w3c/dom/Element;
    .registers 7

    .line 592
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v0

    .line 594
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v1

    const/4 v2, -0x1

    move v3, v2

    :goto_e
    if-eq v1, v2, :cond_3d

    .line 598
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v4, v1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2c

    const/16 v5, 0xa

    if-eq v4, v5, :cond_36

    const/4 v5, 0x7

    if-eq v4, v5, :cond_36

    const/16 v5, 0x8

    if-eq v4, v5, :cond_36

    .line 618
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getLastChild(I)I

    move-result v1

    :goto_2a
    move v3, v2

    goto :goto_36

    :cond_2c
    if-eq v3, v2, :cond_35

    .line 604
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getLastChild(I)I

    move-result v1

    goto :goto_2a

    :cond_35
    move v3, v1

    .line 596
    :cond_36
    :goto_36
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v4, v1}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v1

    goto :goto_e

    :cond_3d
    if-eq v3, v2, :cond_48

    .line 625
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {p0, v3}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    .line 623
    :cond_48
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public whitelist test-api getDocumentURI()Ljava/lang/String;
    .registers 1

    .line 2034
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->fDocumentURI:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final whitelist test-api getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 2

    .line 955
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {p0, p1}, Lorg/apache/xml/dtm/DTM;->getElementById(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public final whitelist test-api getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 8

    .line 745
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 746
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_45

    .line 749
    const-string v3, "*"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 750
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v5, v4, :cond_32

    .line 752
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    move v4, v2

    .line 753
    :goto_22
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_45

    .line 755
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-direct {p0, v0, v5, p1, v3}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_32
    const/16 v4, 0x9

    .line 758
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v4, v1, :cond_45

    .line 759
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v1, v4}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1, v3}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Z)V

    .line 763
    :cond_45
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    .line 764
    new-instance p1, Lorg/apache/xpath/NodeSet;

    invoke-direct {p1, p0}, Lorg/apache/xpath/NodeSet;-><init>(I)V

    :goto_4e
    if-ge v2, p0, :cond_5c

    .line 767
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    invoke-virtual {p1, v1}, Lorg/apache/xpath/NodeSet;->addNode(Lorg/w3c/dom/Node;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_5c
    return-object p1
.end method

.method public final whitelist test-api getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 13

    .line 869
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 870
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v7, 0x0

    if-eqz v0, :cond_4f

    .line 873
    const-string v2, "*"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 874
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 875
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_39

    .line 877
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    move v9, v7

    .line 878
    :goto_26
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v9, v0, :cond_4f

    .line 880
    invoke-interface {v8, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;ZZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    :cond_39
    move-object v3, p1

    move-object v4, p2

    const/16 p1, 0x9

    .line 883
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p2

    if-ne p1, p2, :cond_4f

    .line 885
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {p1, p2}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 888
    :cond_4f
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p0

    .line 889
    new-instance p1, Lorg/apache/xpath/NodeSet;

    invoke-direct {p1, p0}, Lorg/apache/xpath/NodeSet;-><init>(I)V

    :goto_58
    if-ge v7, p0, :cond_66

    .line 892
    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/w3c/dom/Node;

    invoke-virtual {p1, p2}, Lorg/apache/xpath/NodeSet;->addNode(Lorg/w3c/dom/Node;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_58

    :cond_66
    return-object p1
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 1503
    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public final whitelist test-api getFirstChild()Lorg/w3c/dom/Node;
    .registers 3

    .line 382
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 384
    :cond_d
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {p0, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api getImplementation()Lorg/w3c/dom/DOMImplementation;
    .registers 1

    .line 580
    sget-object p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->implementation:Lorg/w3c/dom/DOMImplementation;

    return-object p0
.end method

.method public whitelist test-api getInputEncoding()Ljava/lang/String;
    .registers 2

    .line 1352
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api getLastChild()Lorg/w3c/dom/Node;
    .registers 3

    .line 395
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getLastChild(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 397
    :cond_d
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {p0, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api getLength()I
    .registers 2

    .line 1004
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public final whitelist test-api getLocalName()Ljava/lang/String;
    .registers 2

    .line 213
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 1269
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api getNamespaceURI()Ljava/lang/String;
    .registers 2

    .line 244
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api getNextSibling()Lorg/w3c/dom/Node;
    .registers 4

    .line 422
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_d

    return-object v2

    .line 425
    :cond_d
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    return-object v2

    .line 427
    :cond_19
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {p0, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api getNodeName()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api getNodeType()S
    .registers 2

    .line 326
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result p0

    return p0
.end method

.method public final whitelist test-api getNodeValue()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api getOwnerDocument()Lorg/w3c/dom/Document;
    .registers 2

    .line 478
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lorg/apache/xml/dtm/DTM;->getOwnerDocument(I)I

    move-result p0

    invoke-interface {v0, p0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Document;

    return-object p0
.end method

.method public final whitelist test-api getOwnerElement()Lorg/w3c/dom/Element;
    .registers 4

    .line 1314
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeType()S

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    return-object v2

    .line 1318
    :cond_9
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    return-object v2

    .line 1319
    :cond_15
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {p0, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public final greylist getOwnerNode()Lorg/w3c/dom/Node;
    .registers 3

    .line 353
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 355
    :cond_d
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {p0, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api getParentNode()Lorg/w3c/dom/Node;
    .registers 4

    .line 337
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeType()S

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    return-object v2

    .line 340
    :cond_9
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    return-object v2

    .line 342
    :cond_15
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {p0, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api getPrefix()Ljava/lang/String;
    .registers 2

    .line 222
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lorg/apache/xml/dtm/DTM;->getPrefix(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api getPreviousSibling()Lorg/w3c/dom/Node;
    .registers 3

    .line 408
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getPreviousSibling(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 410
    :cond_d
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {p0, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final whitelist test-api getSpecified()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api getStrictErrorChecking()Z
    .registers 2

    .line 1373
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final greylist getStringValue()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api getTagName()Ljava/lang/String;
    .registers 2

    .line 1082
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api getTarget()Ljava/lang/String;
    .registers 2

    .line 203
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getTextContent()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1943
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1477
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api getValue()Ljava/lang/String;
    .registers 2

    .line 1293
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getWholeText()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getXmlEncoding()Ljava/lang/String;
    .registers 1

    .line 2192
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->xmlEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api getXmlStandalone()Z
    .registers 1

    .line 2202
    iget-boolean p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->xmlStandalone:Z

    return p0
.end method

.method public whitelist test-api getXmlVersion()Ljava/lang/String;
    .registers 1

    .line 2212
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->xmlVersion:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hasAttribute(Ljava/lang/String;)Z
    .registers 4

    .line 453
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/xml/dtm/DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p1, p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 467
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/xml/dtm/DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p1, p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hasAttributes()Z
    .registers 2

    .line 1175
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq v0, p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final whitelist test-api hasChildNodes()Z
    .registers 2

    .line 548
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq v0, p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final whitelist test-api importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 823
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 494
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api insertData(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1044
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public whitelist test-api isDefaultNamespace(Ljava/lang/String;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api isElementContentWhitespace()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api isEqualNode(Lorg/w3c/dom/Node;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1552
    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeType()S

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_10

    return v3

    .line 1557
    :cond_10
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 1558
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    return v3

    .line 1562
    :cond_1d
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v3

    .line 1566
    :cond_2c
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getLocalName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_39

    .line 1567
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_48

    return v3

    .line 1571
    :cond_39
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    return v3

    .line 1575
    :cond_48
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_55

    .line 1576
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_64

    return v3

    .line 1580
    :cond_55
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v3

    .line 1584
    :cond_64
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_71

    .line 1585
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_80

    return v3

    .line 1589
    :cond_71
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    return v3

    .line 1593
    :cond_80
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8d

    .line 1594
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9c

    return v3

    .line 1598
    :cond_8d
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9c

    return v3

    :cond_9c
    return v0
.end method

.method public whitelist test-api isId()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api isSameNode(Lorg/w3c/dom/Node;)Z
    .registers 2

    .line 0
    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public final whitelist test-api isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 281
    sget-object p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->implementation:Lorg/w3c/dom/DOMImplementation;

    invoke-interface {p0, p1, p2}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 1624
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeType()S

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_20

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    return-object v1

    .line 1683
    :cond_c
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeType()S

    move-result v0

    if-ne v0, v2, :cond_1f

    .line 1684
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    return-object v1

    .line 1628
    :cond_20
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 1629
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_38

    if-nez p1, :cond_2f

    if-ne v2, p1, :cond_2f

    goto :goto_37

    :cond_2f
    if-eqz v2, :cond_38

    .line 1635
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    :goto_37
    return-object v0

    .line 1640
    :cond_38
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1641
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    .line 1642
    invoke-interface {p0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    const/4 v2, 0x0

    :goto_47
    if-ge v2, v0, :cond_88

    .line 1644
    invoke-interface {p0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 1645
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    .line 1646
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 1647
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_85

    .line 1648
    const-string v7, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 1650
    const-string v6, "xmlns"

    if-nez p1, :cond_72

    .line 1651
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    goto :goto_84

    :cond_72
    if-eqz v4, :cond_85

    .line 1655
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 1656
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    :goto_84
    return-object v5

    :cond_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_88
    return-object v1
.end method

.method public whitelist test-api lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1789
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeType()S

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    return-object v0

    .line 1810
    :cond_c
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    .line 1811
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    return-object v0
.end method

.method public final whitelist test-api normalize()V
    .registers 2

    .line 1181
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public whitelist test-api normalizeDocument()V
    .registers 1

    .line 0
    return-void
.end method

.method public final whitelist test-api removeAttribute(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1123
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1228
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1165
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 524
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public whitelist test-api renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 0
    return-object p1
.end method

.method public final whitelist test-api replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 510
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api replaceData(IILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1072
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public whitelist test-api replaceWholeText(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final greylist sameNodeAs(Lorg/w3c/dom/Node;)Z
    .registers 5

    .line 170
    instance-of v0, p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 173
    :cond_6
    check-cast p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    .line 175
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget-object v2, p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    if-ne v0, v2, :cond_16

    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    iget p1, p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    if-ne p0, p1, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v1
.end method

.method public greylist setActualEncoding(Ljava/lang/String;)V
    .registers 2

    .line 2061
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->actualEncoding:Ljava/lang/String;

    return-void
.end method

.method public final whitelist test-api setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1111
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1214
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1151
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1259
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api setData(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 993
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public whitelist test-api setDocumentURI(Ljava/lang/String;)V
    .registers 2

    .line 2022
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->fDocumentURI:Ljava/lang/String;

    return-void
.end method

.method public whitelist test-api setIdAttribute(Ljava/lang/String;Z)V
    .registers 3

    .line 0
    return-void
.end method

.method public greylist setIdAttribute(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public whitelist test-api setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 0
    return-void
.end method

.method public whitelist test-api setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V
    .registers 3

    .line 0
    return-void
.end method

.method public final whitelist test-api setNodeValue(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 316
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api setPrefix(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 234
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public whitelist test-api setStrictErrorChecking(Z)V
    .registers 2

    .line 1393
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public whitelist test-api setTextContent(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1894
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->setNodeValue(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .registers 4

    .line 1464
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/w3c/dom/Document;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api setValue(Ljava/lang/String;)V
    .registers 2

    .line 1303
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public greylist setXmlEncoding(Ljava/lang/String;)V
    .registers 2

    .line 2196
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->xmlEncoding:Ljava/lang/String;

    return-void
.end method

.method public whitelist test-api setXmlStandalone(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 2206
    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->xmlStandalone:Z

    return-void
.end method

.method public whitelist test-api setXmlVersion(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 2216
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->xmlVersion:Ljava/lang/String;

    return-void
.end method

.method public final whitelist test-api splitText(I)Lorg/w3c/dom/Text;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 969
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final whitelist test-api substringData(II)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1019
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getData()Ljava/lang/String;

    move-result-object p0

    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final greylist supports(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 265
    sget-object p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->implementation:Lorg/w3c/dom/DOMImplementation;

    invoke-interface {p0, p1, p2}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
