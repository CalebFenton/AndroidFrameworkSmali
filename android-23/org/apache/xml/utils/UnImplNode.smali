.class public Lorg/apache/xml/utils/UnImplNode;
.super Ljava/lang/Object;
.source "UnImplNode.java"

# interfaces
.implements Lorg/w3c/dom/Node;
.implements Lorg/w3c/dom/Element;
.implements Lorg/w3c/dom/NodeList;
.implements Lorg/w3c/dom/Document;


# instance fields
.field protected actualEncoding:Ljava/lang/String;

.field protected fDocumentURI:Ljava/lang/String;

.field private xmlEncoding:Ljava/lang/String;

.field private xmlStandalone:Z

.field private xmlVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "source"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1127
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 1129
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 99
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public appendData(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1053
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 1051
    return-void
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "deep"    # Z

    #@0
    .prologue
    .line 536
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 538
    const/4 v0, 0x0

    #@7
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
    .line 1713
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 916
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 918
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 993
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 995
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 880
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 882
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 863
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 865
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .locals 1

    #@0
    .prologue
    .line 833
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 835
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 820
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 822
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 974
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 976
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 934
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 936
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 899
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 901
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 848
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 850
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public deleteData(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1079
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 1077
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 66
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "DOM ERROR! class: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@21
    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    #@23
    const/4 v1, 0x0

    #@24
    invoke-static {p1, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 80
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "DOM ERROR! class: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@21
    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    #@23
    invoke-static {p1, p2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0
.end method

.method public getActualEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1808
    iget-object v0, p0, Lorg/apache/xml/utils/UnImplNode;->actualEncoding:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 399
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 401
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 508
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 510
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 359
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 361
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 462
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 464
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    #@0
    .prologue
    .line 641
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 643
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1741
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 1

    #@0
    .prologue
    .line 149
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 151
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getDoctype()Lorg/w3c/dom/DocumentType;
    .locals 1

    #@0
    .prologue
    .line 777
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 779
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getDocumentElement()Lorg/w3c/dom/Element;
    .locals 1

    #@0
    .prologue
    .line 803
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 805
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getDocumentURI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1793
    iget-object v0, p0, Lorg/apache/xml/utils/UnImplNode;->fDocumentURI:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .locals 1

    #@0
    .prologue
    .line 1769
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .param p1, "elementId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1008
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 1010
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 276
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 278
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 429
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 431
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1253
    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/utils/UnImplNode;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .end local p0    # "this":Lorg/apache/xml/utils/UnImplNode;
    :goto_0
    return-object p0

    #@7
    .restart local p0    # "this":Lorg/apache/xml/utils/UnImplNode;
    :cond_0
    const/4 p0, 0x0

    #@8
    goto :goto_0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 162
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 164
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    #@0
    .prologue
    .line 790
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 792
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1146
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 1148
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 175
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 177
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 201
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 203
    const/4 v0, 0x0

    #@7
    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 764
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 766
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 726
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 728
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 188
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 190
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 255
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 257
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    #@0
    .prologue
    .line 123
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 125
    const/4 v0, 0x0

    #@7
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
    .line 551
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 553
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    #@0
    .prologue
    .line 229
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 231
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .locals 1

    #@0
    .prologue
    .line 615
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 617
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 136
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 138
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 739
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 741
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 521
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 523
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 1

    #@0
    .prologue
    .line 1944
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSpecified()Z
    .locals 1

    #@0
    .prologue
    .line 628
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 630
    const/4 v0, 0x0

    #@7
    return v0
.end method

.method public getStrictErrorChecking()Z
    .locals 1

    #@0
    .prologue
    .line 1185
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 1187
    const/4 v0, 0x0

    #@7
    return v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 242
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 244
    const/4 v0, 0x0

    #@7
    return-object v0
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
    .line 1701
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeValue()Ljava/lang/String;

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
    .line 1227
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getWholeText()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1895
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1953
    iget-object v0, p0, Lorg/apache/xml/utils/UnImplNode;->xmlEncoding:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getXmlStandalone()Z
    .locals 1

    #@0
    .prologue
    .line 1961
    iget-boolean v0, p0, Lorg/apache/xml/utils/UnImplNode;->xmlStandalone:Z

    #@2
    return v0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1970
    iget-object v0, p0, Lorg/apache/xml/utils/UnImplNode;->xmlVersion:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 326
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 328
    const/4 v0, 0x0

    #@7
    return v0
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/String;

    #@0
    .prologue
    .line 343
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 345
    const/4 v0, 0x0

    #@7
    return v0
.end method

.method public hasAttributes()Z
    .locals 1

    #@0
    .prologue
    .line 412
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 414
    const/4 v0, 0x0

    #@7
    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    #@0
    .prologue
    .line 110
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 112
    const/4 v0, 0x0

    #@7
    return v0
.end method

.method public importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "importedNode"    # Lorg/w3c/dom/Node;
    .param p2, "deep"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 955
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 957
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "refChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 659
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 661
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public insertData(ILjava/lang/String;)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1066
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 1064
    return-void
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1526
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
    .line 1299
    if-ne p1, p0, :cond_0

    #@4
    .line 1300
    return v3

    #@5
    .line 1302
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@8
    move-result v0

    #@9
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeType()S

    #@c
    move-result v1

    #@d
    if-eq v0, v1, :cond_1

    #@f
    .line 1303
    return v2

    #@10
    .line 1307
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeName()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    if-nez v0, :cond_2

    #@16
    .line 1308
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    if-eqz v0, :cond_3

    #@1c
    .line 1309
    return v2

    #@1d
    .line 1312
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeName()Ljava/lang/String;

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
    .line 1313
    return v2

    #@2c
    .line 1316
    :cond_3
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getLocalName()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    if-nez v0, :cond_4

    #@32
    .line 1317
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    if-eqz v0, :cond_5

    #@38
    .line 1318
    return v2

    #@39
    .line 1321
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getLocalName()Ljava/lang/String;

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
    .line 1322
    return v2

    #@48
    .line 1325
    :cond_5
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNamespaceURI()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    if-nez v0, :cond_6

    #@4e
    .line 1326
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    if-eqz v0, :cond_7

    #@54
    .line 1327
    return v2

    #@55
    .line 1330
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNamespaceURI()Ljava/lang/String;

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
    .line 1331
    return v2

    #@64
    .line 1334
    :cond_7
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getPrefix()Ljava/lang/String;

    #@67
    move-result-object v0

    #@68
    if-nez v0, :cond_8

    #@6a
    .line 1335
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    #@6d
    move-result-object v0

    #@6e
    if-eqz v0, :cond_9

    #@70
    .line 1336
    return v2

    #@71
    .line 1339
    :cond_8
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getPrefix()Ljava/lang/String;

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
    .line 1340
    return v2

    #@80
    .line 1343
    :cond_9
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeValue()Ljava/lang/String;

    #@83
    move-result-object v0

    #@84
    if-nez v0, :cond_a

    #@86
    .line 1344
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@89
    move-result-object v0

    #@8a
    if-eqz v0, :cond_b

    #@8c
    .line 1345
    return v2

    #@8d
    .line 1348
    :cond_a
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeValue()Ljava/lang/String;

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
    .line 1349
    return v2

    #@9c
    .line 1362
    :cond_b
    return v3
.end method

.method public isId()Z
    .locals 1

    #@0
    .prologue
    .line 1948
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 1
    .param p1, "other"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 1602
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
    .line 715
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isWhitespaceInElementContent()Z
    .locals 1

    #@0
    .prologue
    .line 1905
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 216
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 218
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "specifiedPrefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 1375
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeType()S

    #@4
    move-result v7

    #@5
    .line 1376
    .local v7, "type":S
    packed-switch v7, :pswitch_data_0

    #@8
    .line 1450
    :pswitch_0
    return-object v11

    #@9
    .line 1379
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNamespaceURI()Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    .line 1380
    .local v5, "namespace":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getPrefix()Ljava/lang/String;

    #@10
    move-result-object v6

    #@11
    .line 1381
    .local v6, "prefix":Ljava/lang/String;
    if-eqz v5, :cond_1

    #@13
    .line 1383
    if-nez p1, :cond_0

    #@15
    if-ne v6, p1, :cond_0

    #@17
    .line 1385
    return-object v5

    #@18
    .line 1386
    :cond_0
    if-eqz v6, :cond_1

    #@1a
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v9

    #@1e
    if-eqz v9, :cond_1

    #@20
    .line 1388
    return-object v5

    #@21
    .line 1391
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->hasAttributes()Z

    #@24
    move-result v9

    #@25
    if-eqz v9, :cond_4

    #@27
    .line 1392
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    #@2a
    move-result-object v4

    #@2b
    .line 1393
    .local v4, "map":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@2e
    move-result v3

    #@2f
    .line 1394
    .local v3, "length":I
    const/4 v2, 0x0

    #@30
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    #@32
    .line 1395
    invoke-interface {v4, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@35
    move-result-object v0

    #@36
    .line 1396
    .local v0, "attr":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    .line 1397
    .local v1, "attrPrefix":Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@3d
    move-result-object v8

    #@3e
    .line 1398
    .local v8, "value":Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    .line 1399
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
    .line 1401
    if-nez p1, :cond_2

    #@4f
    .line 1402
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
    .line 1401
    if-eqz v9, :cond_2

    #@5c
    .line 1404
    return-object v8

    #@5d
    .line 1405
    :cond_2
    if-eqz v1, :cond_3

    #@5f
    .line 1406
    const-string/jumbo v9, "xmlns"

    #@62
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v9

    #@66
    .line 1405
    if-eqz v9, :cond_3

    #@68
    .line 1407
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@6b
    move-result-object v9

    #@6c
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v9

    #@70
    .line 1405
    if-eqz v9, :cond_3

    #@72
    .line 1409
    return-object v8

    #@73
    .line 1394
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@75
    goto :goto_0

    #@76
    .line 1421
    .end local v0    # "attr":Lorg/w3c/dom/Node;
    .end local v1    # "attrPrefix":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    return-object v11

    #@77
    .line 1435
    .end local v5    # "namespace":Ljava/lang/String;
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_2
    return-object v11

    #@78
    .line 1437
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getOwnerElement()Lorg/w3c/dom/Element;

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
    .line 1438
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getOwnerElement()Lorg/w3c/dom/Element;

    #@86
    move-result-object v9

    #@87
    invoke-interface {v9, p1}, Lorg/w3c/dom/Element;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    #@8a
    move-result-object v9

    #@8b
    return-object v9

    #@8c
    .line 1441
    :cond_5
    return-object v11

    #@8d
    .line 1376
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
    .line 1543
    if-nez p1, :cond_0

    #@3
    .line 1544
    return-object v3

    #@4
    .line 1547
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeType()S

    #@7
    move-result v0

    #@8
    .line 1549
    .local v0, "type":S
    packed-switch v0, :pswitch_data_0

    #@b
    .line 1581
    :pswitch_0
    return-object v3

    #@c
    .line 1566
    :pswitch_1
    return-object v3

    #@d
    .line 1568
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getOwnerElement()Lorg/w3c/dom/Element;

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
    .line 1569
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getOwnerElement()Lorg/w3c/dom/Element;

    #@1b
    move-result-object v1

    #@1c
    invoke-interface {v1, p1}, Lorg/w3c/dom/Element;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    return-object v1

    #@21
    .line 1572
    :cond_1
    return-object v3

    #@22
    .line 1549
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

.method public normalize()V
    .locals 1

    #@0
    .prologue
    .line 263
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 261
    return-void
.end method

.method public normalizeDocument()V
    .locals 0

    #@0
    .prologue
    .line 1759
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 373
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 371
    return-void
.end method

.method public removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 478
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 476
    return-void
.end method

.method public removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 1
    .param p1, "oldAttr"    # Lorg/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 293
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 295
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "oldChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 694
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 696
    const/4 v0, 0x0

    #@7
    return-object v0
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
    .line 1752
    return-object p1
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "oldChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 677
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 679
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public replaceData(IILjava/lang/String;)V
    .locals 1
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
    .line 1094
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 1092
    return-void
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
    .line 1870
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public setActualEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1820
    iput-object p1, p0, Lorg/apache/xml/utils/UnImplNode;->actualEncoding:Ljava/lang/String;

    #@2
    .line 1819
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 386
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 384
    return-void
.end method

.method public setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
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
    .line 494
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 492
    return-void
.end method

.method public setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 1
    .param p1, "newAttr"    # Lorg/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 310
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 312
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 1
    .param p1, "newAttr"    # Lorg/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 446
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 448
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1023
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 1021
    return-void
.end method

.method public setDocumentURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "documentURI"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1781
    iput-object p1, p0, Lorg/apache/xml/utils/UnImplNode;->fDocumentURI:Ljava/lang/String;

    #@2
    .line 1779
    return-void
.end method

.method public setIdAttribute(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "makeId"    # Z

    #@0
    .prologue
    .line 1920
    return-void
.end method

.method public setIdAttribute(Z)V
    .locals 0
    .param p1, "id"    # Z

    #@0
    .prologue
    .line 1913
    return-void
.end method

.method public setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "makeId"    # Z

    #@0
    .prologue
    .line 1935
    return-void
.end method

.method public setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V
    .locals 0
    .param p1, "at"    # Lorg/w3c/dom/Attr;
    .param p2, "makeId"    # Z

    #@0
    .prologue
    .line 1927
    return-void
.end method

.method public setInputEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1164
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 1162
    return-void
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "nodeValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 565
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 563
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 753
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 751
    return-void
.end method

.method public setStrictErrorChecking(Z)V
    .locals 1
    .param p1, "strictErrorChecking"    # Z

    #@0
    .prologue
    .line 1207
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 1205
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
    .line 1652
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->setNodeValue(Ljava/lang/String;)V

    #@3
    .line 1651
    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "handler"    # Lorg/w3c/dom/UserDataHandler;

    #@0
    .prologue
    .line 1214
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getOwnerDocument()Lorg/w3c/dom/Document;

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
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 593
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 591
    return-void
.end method

.method public setXmlEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "xmlEncoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1956
    iput-object p1, p0, Lorg/apache/xml/utils/UnImplNode;->xmlEncoding:Ljava/lang/String;

    #@2
    .line 1955
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
    .line 1965
    iput-boolean p1, p0, Lorg/apache/xml/utils/UnImplNode;->xmlStandalone:Z

    #@2
    .line 1964
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
    .line 1974
    iput-object p1, p0, Lorg/apache/xml/utils/UnImplNode;->xmlVersion:Ljava/lang/String;

    #@2
    .line 1973
    return-void
.end method

.method public splitText(I)Lorg/w3c/dom/Text;
    .locals 1
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1109
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 1111
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 1039
    const-string/jumbo v0, "ER_FUNCTION_NOT_SUPPORTED"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    #@6
    .line 1041
    const/4 v0, 0x0

    #@7
    return-object v0
.end method
