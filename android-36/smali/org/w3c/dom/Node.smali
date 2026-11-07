.class public interface abstract Lorg/w3c/dom/Node;
.super Ljava/lang/Object;
.source "Node.java"


# static fields
.field public static final whitelist test-api ATTRIBUTE_NODE:S = 0x2s

.field public static final whitelist test-api CDATA_SECTION_NODE:S = 0x4s

.field public static final whitelist test-api COMMENT_NODE:S = 0x8s

.field public static final whitelist test-api DOCUMENT_FRAGMENT_NODE:S = 0xbs

.field public static final whitelist test-api DOCUMENT_NODE:S = 0x9s

.field public static final whitelist test-api DOCUMENT_POSITION_CONTAINED_BY:S = 0x10s

.field public static final whitelist test-api DOCUMENT_POSITION_CONTAINS:S = 0x8s

.field public static final whitelist test-api DOCUMENT_POSITION_DISCONNECTED:S = 0x1s

.field public static final whitelist test-api DOCUMENT_POSITION_FOLLOWING:S = 0x4s

.field public static final whitelist test-api DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC:S = 0x20s

.field public static final whitelist test-api DOCUMENT_POSITION_PRECEDING:S = 0x2s

.field public static final whitelist test-api DOCUMENT_TYPE_NODE:S = 0xas

.field public static final whitelist test-api ELEMENT_NODE:S = 0x1s

.field public static final whitelist test-api ENTITY_NODE:S = 0x6s

.field public static final whitelist test-api ENTITY_REFERENCE_NODE:S = 0x5s

.field public static final whitelist test-api NOTATION_NODE:S = 0xcs

.field public static final whitelist test-api PROCESSING_INSTRUCTION_NODE:S = 0x7s

.field public static final whitelist test-api TEXT_NODE:S = 0x3s


# virtual methods
.method public abstract whitelist test-api appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api cloneNode(Z)Lorg/w3c/dom/Node;
.end method

.method public abstract whitelist test-api compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getAttributes()Lorg/w3c/dom/NamedNodeMap;
.end method

.method public abstract whitelist test-api getBaseURI()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getChildNodes()Lorg/w3c/dom/NodeList;
.end method

.method public abstract whitelist test-api getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract whitelist test-api getFirstChild()Lorg/w3c/dom/Node;
.end method

.method public abstract whitelist test-api getLastChild()Lorg/w3c/dom/Node;
.end method

.method public abstract whitelist test-api getLocalName()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getNamespaceURI()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getNextSibling()Lorg/w3c/dom/Node;
.end method

.method public abstract whitelist test-api getNodeName()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getNodeType()S
.end method

.method public abstract whitelist test-api getNodeValue()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getOwnerDocument()Lorg/w3c/dom/Document;
.end method

.method public abstract whitelist test-api getParentNode()Lorg/w3c/dom/Node;
.end method

.method public abstract whitelist test-api getPrefix()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getPreviousSibling()Lorg/w3c/dom/Node;
.end method

.method public abstract whitelist test-api getTextContent()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getUserData(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract whitelist test-api hasAttributes()Z
.end method

.method public abstract whitelist test-api hasChildNodes()Z
.end method

.method public abstract whitelist test-api insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api isDefaultNamespace(Ljava/lang/String;)Z
.end method

.method public abstract whitelist test-api isEqualNode(Lorg/w3c/dom/Node;)Z
.end method

.method public abstract whitelist test-api isSameNode(Lorg/w3c/dom/Node;)Z
.end method

.method public abstract whitelist test-api isSupported(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract whitelist test-api lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract whitelist test-api lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract whitelist test-api normalize()V
.end method

.method public abstract whitelist test-api removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setNodeValue(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setPrefix(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setTextContent(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
.end method
