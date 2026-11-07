.class public Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;
.super Ljava/lang/Object;
.source "ElemLiteralResult.java"

# interfaces
.implements Lorg/w3c/dom/Attr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xalan/templates/ElemLiteralResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Attribute"
.end annotation


# instance fields
.field private greylist m_attribute:Lorg/apache/xalan/templates/AVT;

.field private greylist m_owner:Lorg/w3c/dom/Element;

.field final synthetic greylist this$0:Lorg/apache/xalan/templates/ElemLiteralResult;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xalan/templates/ElemLiteralResult;Lorg/apache/xalan/templates/AVT;Lorg/w3c/dom/Element;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 739
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    iput-object p2, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    .line 741
    iput-object p3, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    return-void
.end method


# virtual methods
.method public whitelist test-api appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 755
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 p1, 0x7

    const-string v0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api cloneNode(Z)Lorg/w3c/dom/Node;
    .registers 4

    .line 770
    new-instance p1, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    invoke-direct {p1, v0, v1, p0}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;-><init>(Lorg/apache/xalan/templates/ElemLiteralResult;Lorg/apache/xalan/templates/AVT;Lorg/w3c/dom/Element;)V

    return-object p1
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

.method public whitelist test-api getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .registers 1

    .line 0
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

    .line 790
    new-instance v0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute$1;

    invoke-direct {v0, p0}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute$1;-><init>(Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;)V

    return-object v0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 1102
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getFirstChild()Lorg/w3c/dom/Node;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getLastChild()Lorg/w3c/dom/Node;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getLocalName()Ljava/lang/String;
    .registers 1

    .line 827
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 1

    .line 1046
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getNamespaceURI()Ljava/lang/String;
    .registers 2

    .line 838
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object p0

    .line 839
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 p0, 0x0

    :cond_f
    return-object p0
.end method

.method public whitelist test-api getNextSibling()Lorg/w3c/dom/Node;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 3

    .line 859
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 860
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->getLocalName()Ljava/lang/String;

    move-result-object p0

    .line 861
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    return-object p0

    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getNodeType()S
    .registers 1

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public whitelist test-api getNodeValue()Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 883
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/AVT;->getSimpleString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getOwnerDocument()Lorg/w3c/dom/Document;
    .registers 1

    .line 893
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getOwnerElement()Lorg/w3c/dom/Element;
    .registers 1

    .line 1063
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public whitelist test-api getParentNode()Lorg/w3c/dom/Node;
    .registers 1

    .line 903
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public whitelist test-api getPrefix()Ljava/lang/String;
    .registers 3

    .line 914
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 915
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/AVT;->getRawName()Ljava/lang/String;

    move-result-object p0

    .line 916
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p0, 0x0

    return-object p0

    .line 917
    :cond_16
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getPreviousSibling()Lorg/w3c/dom/Node;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getSpecified()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api getTextContent()Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1132
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1098
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getValue()Ljava/lang/String;
    .registers 1

    .line 1054
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/AVT;->getSimpleString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api hasAttributes()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hasChildNodes()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 963
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 p1, 0x7

    const-string p2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api isDefaultNamespace(Ljava/lang/String;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api isEqualNode(Lorg/w3c/dom/Node;)Z
    .registers 2

    .line 0
    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
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

.method public whitelist test-api isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api normalize()V
    .registers 1

    .line 0
    return-void
.end method

.method public whitelist test-api removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 993
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 p1, 0x7

    const-string v0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1010
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 p1, 0x7

    const-string p2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api setNodeValue(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1024
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 p1, 0x7

    const-string v0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    return-void
.end method

.method public whitelist test-api setPrefix(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1037
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 p1, 0x7

    const-string v0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    return-void
.end method

.method public whitelist test-api setTextContent(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1128
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->setNodeValue(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .registers 4

    .line 1094
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/w3c/dom/Document;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api setValue(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1083
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 p1, 0x7

    const-string v0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    return-void
.end method
