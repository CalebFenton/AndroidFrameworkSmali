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
.field private m_attribute:Lorg/apache/xalan/templates/AVT;

.field private m_owner:Lorg/w3c/dom/Element;

.field final synthetic this$0:Lorg/apache/xalan/templates/ElemLiteralResult;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/ElemLiteralResult;Lorg/apache/xalan/templates/AVT;Lorg/w3c/dom/Element;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/xalan/templates/ElemLiteralResult;
    .param p2, "avt"    # Lorg/apache/xalan/templates/AVT;
    .param p3, "elem"    # Lorg/w3c/dom/Element;

    #@0
    .prologue
    .line 739
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 734
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    #@8
    .line 740
    iput-object p2, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    #@a
    .line 741
    iput-object p3, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    #@c
    .line 739
    return-void
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 755
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@2
    .line 756
    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    #@5
    .line 755
    const/4 v2, 0x7

    #@6
    invoke-virtual {v0, v2, v1}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    #@9
    .line 757
    const/4 v0, 0x0

    #@a
    return-object v0
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 4
    .param p1, "deep"    # Z

    #@0
    .prologue
    .line 770
    new-instance v0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;

    #@2
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@4
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    #@6
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    #@8
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;-><init>(Lorg/apache/xalan/templates/ElemLiteralResult;Lorg/apache/xalan/templates/AVT;Lorg/w3c/dom/Element;)V

    #@b
    return-object v0
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
    .line 1136
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    #@0
    .prologue
    .line 780
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1140
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 1

    #@0
    .prologue
    .line 790
    new-instance v0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute$1;

    #@2
    invoke-direct {v0, p0}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute$1;-><init>(Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;)V

    #@5
    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1102
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .end local p0    # "this":Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;
    :goto_0
    return-object p0

    #@7
    .restart local p0    # "this":Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;
    :cond_0
    const/4 p0, 0x0

    #@8
    goto :goto_0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 807
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 817
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 827
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    #@2
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1046
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    #@2
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 838
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    #@2
    invoke-virtual {v1}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 839
    .local v0, "uri":Ljava/lang/String;
    const-string/jumbo v1, ""

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    const/4 v0, 0x0

    #@10
    .end local v0    # "uri":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 849
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 859
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    #@2
    invoke-virtual {v2}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 860
    .local v1, "uri":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->getLocalName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 861
    .local v0, "localName":Ljava/lang/String;
    const-string/jumbo v2, ""

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .end local v0    # "localName":Ljava/lang/String;
    :goto_0
    return-object v0

    #@14
    .restart local v0    # "localName":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, ":"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    goto :goto_0
.end method

.method public getNodeType()S
    .locals 1

    #@0
    .prologue
    .line 871
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 883
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    #@2
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getSimpleString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    #@0
    .prologue
    .line 893
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    #@2
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .locals 1

    #@0
    .prologue
    .line 1063
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    #@2
    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 903
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    #@2
    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 914
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    #@2
    invoke-virtual {v2}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 915
    .local v1, "uri":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    #@8
    invoke-virtual {v2}, Lorg/apache/xalan/templates/AVT;->getRawName()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 916
    .local v0, "rawName":Ljava/lang/String;
    const-string/jumbo v2, ""

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 917
    const/4 v2, 0x0

    #@16
    .line 916
    :goto_0
    return-object v2

    #@17
    .line 917
    :cond_0
    const-string/jumbo v2, ":"

    #@1a
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1d
    move-result v2

    #@1e
    const/4 v3, 0x0

    #@1f
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    goto :goto_0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 927
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 1

    #@0
    .prologue
    .line 1087
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSpecified()Z
    .locals 1

    #@0
    .prologue
    .line 1071
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1132
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->getNodeValue()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1098
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1054
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    #@2
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getSimpleString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    #@0
    .prologue
    .line 937
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    #@0
    .prologue
    .line 947
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "refChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 963
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@2
    .line 964
    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    #@5
    .line 963
    const/4 v2, 0x7

    #@6
    invoke-virtual {v0, v2, v1}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    #@9
    .line 965
    const/4 v0, 0x0

    #@a
    return-object v0
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1114
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 1
    .param p1, "arg"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 1106
    if-ne p1, p0, :cond_0

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

.method public isId()Z
    .locals 1

    #@0
    .prologue
    .line 1089
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 1
    .param p1, "other"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 1123
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

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    #@0
    .prologue
    .line 976
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "specifiedPrefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1110
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1118
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public normalize()V
    .locals 0

    #@0
    .prologue
    .line 980
    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "oldChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 993
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@2
    .line 994
    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    #@5
    .line 993
    const/4 v2, 0x7

    #@6
    invoke-virtual {v0, v2, v1}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    #@9
    .line 995
    const/4 v0, 0x0

    #@a
    return-object v0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "oldChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1010
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@2
    .line 1011
    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    #@5
    .line 1010
    const/4 v2, 0x7

    #@6
    invoke-virtual {v0, v2, v1}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    #@9
    .line 1012
    const/4 v0, 0x0

    #@a
    return-object v0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "nodeValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1024
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@2
    .line 1025
    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    #@5
    .line 1024
    const/4 v2, 0x7

    #@6
    invoke-virtual {v0, v2, v1}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    #@9
    .line 1022
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1037
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@2
    .line 1038
    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    #@5
    .line 1037
    const/4 v2, 0x7

    #@6
    invoke-virtual {v0, v2, v1}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    #@9
    .line 1035
    return-void
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
    .line 1128
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->setNodeValue(Ljava/lang/String;)V

    #@3
    .line 1127
    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "handler"    # Lorg/w3c/dom/UserDataHandler;

    #@0
    .prologue
    .line 1094
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1, p2, p3}, Lorg/w3c/dom/Document;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1083
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@2
    .line 1084
    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    #@5
    .line 1083
    const/4 v2, 0x7

    #@6
    invoke-virtual {v0, v2, v1}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    #@9
    .line 1081
    return-void
.end method
