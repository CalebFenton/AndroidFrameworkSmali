.class public interface abstract Lorg/w3c/dom/Document;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Lorg/w3c/dom/Node;


# virtual methods
.method public abstract whitelist test-api adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
.end method

.method public abstract whitelist test-api createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
.end method

.method public abstract whitelist test-api createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
.end method

.method public abstract whitelist test-api getDoctype()Lorg/w3c/dom/DocumentType;
.end method

.method public abstract whitelist test-api getDocumentElement()Lorg/w3c/dom/Element;
.end method

.method public abstract whitelist test-api getDocumentURI()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getDomConfig()Lorg/w3c/dom/DOMConfiguration;
.end method

.method public abstract whitelist test-api getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
.end method

.method public abstract whitelist test-api getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
.end method

.method public abstract whitelist test-api getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
.end method

.method public abstract whitelist test-api getImplementation()Lorg/w3c/dom/DOMImplementation;
.end method

.method public abstract whitelist test-api getInputEncoding()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getStrictErrorChecking()Z
.end method

.method public abstract whitelist test-api getXmlEncoding()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getXmlStandalone()Z
.end method

.method public abstract whitelist test-api getXmlVersion()Ljava/lang/String;
.end method

.method public abstract whitelist test-api importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api normalizeDocument()V
.end method

.method public abstract whitelist test-api renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setDocumentURI(Ljava/lang/String;)V
.end method

.method public abstract whitelist test-api setStrictErrorChecking(Z)V
.end method

.method public abstract whitelist test-api setXmlStandalone(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setXmlVersion(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method
