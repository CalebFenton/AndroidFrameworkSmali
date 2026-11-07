.class public Lorg/apache/xml/utils/UnImplNode;
.super Ljava/lang/Object;
.source "UnImplNode.java"

# interfaces
.implements Lorg/w3c/dom/Node;
.implements Lorg/w3c/dom/Element;
.implements Lorg/w3c/dom/NodeList;
.implements Lorg/w3c/dom/Document;


# instance fields
.field protected greylist actualEncoding:Ljava/lang/String;

.field protected greylist fDocumentURI:Ljava/lang/String;

.field private greylist xmlEncoding:Ljava/lang/String;

.field private greylist xmlStandalone:Z

.field private greylist xmlVersion:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 1127
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 97
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist appendData(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1053
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api cloneNode(Z)Lorg/w3c/dom/Node;
    .registers 2

    .line 536
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
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

.method public whitelist test-api createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 916
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 993
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 880
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .registers 2

    .line 863
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .registers 2

    .line 833
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 820
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 974
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 934
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 899
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .registers 2

    .line 848
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist deleteData(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1079
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    return-void
.end method

.method public greylist error(Ljava/lang/String;)V
    .registers 5

    .line 66
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DOM ERROR! class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist error(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 80
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DOM ERROR! class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p1, p2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist getActualEncoding()Ljava/lang/String;
    .registers 1

    .line 1808
    iget-object p0, p0, Lorg/apache/xml/utils/UnImplNode;->actualEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 399
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 508
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 2

    .line 359
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 3

    .line 462
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .registers 2

    .line 641
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getBaseURI()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getChildNodes()Lorg/w3c/dom/NodeList;
    .registers 2

    .line 149
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getDoctype()Lorg/w3c/dom/DocumentType;
    .registers 2

    .line 777
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getDocumentElement()Lorg/w3c/dom/Element;
    .registers 2

    .line 803
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getDocumentURI()Ljava/lang/String;
    .registers 1

    .line 1793
    iget-object p0, p0, Lorg/apache/xml/utils/UnImplNode;->fDocumentURI:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 2

    .line 1008
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 2

    .line 276
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 3

    .line 429
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 1253
    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/utils/UnImplNode;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getFirstChild()Lorg/w3c/dom/Node;
    .registers 2

    .line 162
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getImplementation()Lorg/w3c/dom/DOMImplementation;
    .registers 2

    .line 790
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getInputEncoding()Ljava/lang/String;
    .registers 2

    .line 1146
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getLastChild()Lorg/w3c/dom/Node;
    .registers 2

    .line 175
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getLength()I
    .registers 2

    .line 201
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api getLocalName()Ljava/lang/String;
    .registers 2

    .line 764
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getNamespaceURI()Ljava/lang/String;
    .registers 2

    .line 726
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getNextSibling()Lorg/w3c/dom/Node;
    .registers 2

    .line 188
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 2

    .line 255
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getNodeType()S
    .registers 2

    .line 123
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api getNodeValue()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 551
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getOwnerDocument()Lorg/w3c/dom/Document;
    .registers 2

    .line 229
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getOwnerElement()Lorg/w3c/dom/Element;
    .registers 2

    .line 615
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getParentNode()Lorg/w3c/dom/Node;
    .registers 2

    .line 136
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getPrefix()Ljava/lang/String;
    .registers 2

    .line 739
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getPreviousSibling()Lorg/w3c/dom/Node;
    .registers 2

    .line 521
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getSpecified()Z
    .registers 2

    .line 628
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api getStrictErrorChecking()Z
    .registers 2

    .line 1185
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api getTagName()Ljava/lang/String;
    .registers 2

    .line 242
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getTextContent()Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1701
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1227
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public greylist getWholeText()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getXmlEncoding()Ljava/lang/String;
    .registers 1

    .line 1953
    iget-object p0, p0, Lorg/apache/xml/utils/UnImplNode;->xmlEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api getXmlStandalone()Z
    .registers 1

    .line 1961
    iget-boolean p0, p0, Lorg/apache/xml/utils/UnImplNode;->xmlStandalone:Z

    return p0
.end method

.method public whitelist test-api getXmlVersion()Ljava/lang/String;
    .registers 1

    .line 1970
    iget-object p0, p0, Lorg/apache/xml/utils/UnImplNode;->xmlVersion:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hasAttribute(Ljava/lang/String;)Z
    .registers 2

    .line 326
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 343
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hasAttributes()Z
    .registers 2

    .line 412
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hasChildNodes()Z
    .registers 2

    .line 110
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 955
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 659
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist insertData(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1066
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api isDefaultNamespace(Ljava/lang/String;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api isEqualNode(Lorg/w3c/dom/Node;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1302
    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeType()S

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_10

    return v3

    .line 1307
    :cond_10
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 1308
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    return v3

    .line 1312
    :cond_1d
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v3

    .line 1316
    :cond_2c
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getLocalName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_39

    .line 1317
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_48

    return v3

    .line 1321
    :cond_39
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    return v3

    .line 1325
    :cond_48
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_55

    .line 1326
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_64

    return v3

    .line 1330
    :cond_55
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v3

    .line 1334
    :cond_64
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_71

    .line 1335
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_80

    return v3

    .line 1339
    :cond_71
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    return v3

    .line 1343
    :cond_80
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8d

    .line 1344
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9c

    return v3

    .line 1348
    :cond_8d
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeValue()Ljava/lang/String;

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

.method public greylist isId()Z
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

.method public whitelist test-api isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isWhitespaceInElementContent()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api item(I)Lorg/w3c/dom/Node;
    .registers 2

    .line 216
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 1375
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeType()S

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_20

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    return-object v1

    .line 1437
    :cond_c
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeType()S

    move-result v0

    if-ne v0, v2, :cond_1f

    .line 1438
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    return-object v1

    .line 1379
    :cond_20
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 1380
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_38

    if-nez p1, :cond_2f

    if-ne v2, p1, :cond_2f

    goto :goto_37

    :cond_2f
    if-eqz v2, :cond_38

    .line 1386
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    :goto_37
    return-object v0

    .line 1391
    :cond_38
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1392
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    .line 1393
    invoke-interface {p0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    const/4 v2, 0x0

    :goto_47
    if-ge v2, v0, :cond_88

    .line 1395
    invoke-interface {p0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 1396
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    .line 1397
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 1398
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_85

    .line 1399
    const-string v7, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 1401
    const-string v6, "xmlns"

    if-nez p1, :cond_72

    .line 1402
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    goto :goto_84

    :cond_72
    if-eqz v4, :cond_85

    .line 1406
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 1407
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

    .line 1547
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeType()S

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    return-object v0

    .line 1568
    :cond_c
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    .line 1569
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    return-object v0
.end method

.method public whitelist test-api normalize()V
    .registers 2

    .line 263
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api normalizeDocument()V
    .registers 1

    .line 0
    return-void
.end method

.method public whitelist test-api removeAttribute(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 373
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 478
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 293
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 694
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
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

.method public whitelist test-api replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 677
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist replaceData(IILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1094
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    return-void
.end method

.method public greylist replaceWholeText(Ljava/lang/String;)Lorg/w3c/dom/Text;
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

.method public greylist setActualEncoding(Ljava/lang/String;)V
    .registers 2

    .line 1820
    iput-object p1, p0, Lorg/apache/xml/utils/UnImplNode;->actualEncoding:Ljava/lang/String;

    return-void
.end method

.method public whitelist test-api setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 386
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 494
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 310
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 446
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist setData(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1023
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api setDocumentURI(Ljava/lang/String;)V
    .registers 2

    .line 1781
    iput-object p1, p0, Lorg/apache/xml/utils/UnImplNode;->fDocumentURI:Ljava/lang/String;

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

.method public greylist setInputEncoding(Ljava/lang/String;)V
    .registers 2

    .line 1164
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api setNodeValue(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 565
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api setPrefix(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 753
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api setStrictErrorChecking(Z)V
    .registers 2

    .line 1207
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api setTextContent(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1652
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->setNodeValue(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .registers 4

    .line 1214
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/w3c/dom/Document;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public greylist setValue(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 593
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    return-void
.end method

.method public greylist setXmlEncoding(Ljava/lang/String;)V
    .registers 2

    .line 1956
    iput-object p1, p0, Lorg/apache/xml/utils/UnImplNode;->xmlEncoding:Ljava/lang/String;

    return-void
.end method

.method public whitelist test-api setXmlStandalone(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1965
    iput-boolean p1, p0, Lorg/apache/xml/utils/UnImplNode;->xmlStandalone:Z

    return-void
.end method

.method public whitelist test-api setXmlVersion(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1974
    iput-object p1, p0, Lorg/apache/xml/utils/UnImplNode;->xmlVersion:Ljava/lang/String;

    return-void
.end method

.method public greylist splitText(I)Lorg/w3c/dom/Text;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1109
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist substringData(II)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1039
    const-string p1, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
