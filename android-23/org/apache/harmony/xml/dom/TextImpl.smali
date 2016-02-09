.class public Lorg/apache/harmony/xml/dom/TextImpl;
.super Lorg/apache/harmony/xml/dom/CharacterDataImpl;
.source "TextImpl.java"

# interfaces
.implements Lorg/w3c/dom/Text;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/CharacterDataImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    #@3
    .line 35
    return-void
.end method

.method private firstTextNodeInCurrentRun()Lorg/apache/harmony/xml/dom/TextImpl;
    .locals 4

    #@0
    .prologue
    .line 116
    move-object v0, p0

    #@1
    .line 117
    .local v0, "firstTextInCurrentRun":Lorg/apache/harmony/xml/dom/TextImpl;
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getPreviousSibling()Lorg/w3c/dom/Node;

    #@4
    move-result-object v2

    #@5
    .local v2, "p":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v2, :cond_1

    #@7
    .line 118
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    #@a
    move-result v1

    #@b
    .line 119
    .local v1, "nodeType":S
    const/4 v3, 0x3

    #@c
    if-eq v1, v3, :cond_0

    #@e
    const/4 v3, 0x4

    #@f
    if-ne v1, v3, :cond_1

    #@11
    :cond_0
    move-object v0, v2

    #@12
    .line 120
    check-cast v0, Lorg/apache/harmony/xml/dom/TextImpl;

    #@14
    .line 117
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    #@17
    move-result-object v2

    #@18
    goto :goto_0

    #@19
    .line 125
    .end local v1    # "nodeType":S
    :cond_1
    return-object v0
.end method

.method private nextTextNode()Lorg/apache/harmony/xml/dom/TextImpl;
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 133
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getNextSibling()Lorg/w3c/dom/Node;

    #@4
    move-result-object v0

    #@5
    .line 134
    .local v0, "nextSibling":Lorg/w3c/dom/Node;
    if-nez v0, :cond_0

    #@7
    .line 135
    return-object v2

    #@8
    .line 138
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    #@b
    move-result v1

    #@c
    .line 139
    .local v1, "nodeType":S
    const/4 v3, 0x3

    #@d
    if-eq v1, v3, :cond_1

    #@f
    const/4 v3, 0x4

    #@10
    if-ne v1, v3, :cond_2

    #@12
    .line 140
    :cond_1
    check-cast v0, Lorg/apache/harmony/xml/dom/TextImpl;

    #@14
    .line 139
    .end local v0    # "nextSibling":Lorg/w3c/dom/Node;
    :goto_0
    return-object v0

    #@15
    .restart local v0    # "nextSibling":Lorg/w3c/dom/Node;
    :cond_2
    move-object v0, v2

    #@16
    .line 141
    goto :goto_0
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 41
    const-string/jumbo v0, "#text"

    #@3
    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    #@0
    .prologue
    .line 46
    const/4 v0, 0x3

    #@1
    return v0
.end method

.method public final getWholeText()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 78
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->firstTextNodeInCurrentRun()Lorg/apache/harmony/xml/dom/TextImpl;

    #@8
    move-result-object v0

    #@9
    .local v0, "n":Lorg/apache/harmony/xml/dom/TextImpl;
    :goto_0
    if-eqz v0, :cond_0

    #@b
    .line 79
    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/dom/TextImpl;->appendDataTo(Ljava/lang/StringBuilder;)V

    #@e
    .line 78
    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/TextImpl;->nextTextNode()Lorg/apache/harmony/xml/dom/TextImpl;

    #@11
    move-result-object v0

    #@12
    goto :goto_0

    #@13
    .line 81
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    return-object v2
.end method

.method public final isElementContentWhitespace()Z
    .locals 1

    #@0
    .prologue
    .line 69
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final minimize()Lorg/apache/harmony/xml/dom/TextImpl;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 157
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getLength()I

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 158
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/TextImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    #@9
    invoke-virtual {v2, p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@c
    .line 159
    return-object v3

    #@d
    .line 162
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getPreviousSibling()Lorg/w3c/dom/Node;

    #@10
    move-result-object v0

    #@11
    .line 163
    .local v0, "previous":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_1

    #@13
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    #@16
    move-result v2

    #@17
    const/4 v3, 0x3

    #@18
    if-eq v2, v3, :cond_2

    #@1a
    .line 164
    :cond_1
    return-object p0

    #@1b
    :cond_2
    move-object v1, v0

    #@1c
    .line 167
    check-cast v1, Lorg/apache/harmony/xml/dom/TextImpl;

    #@1e
    .line 168
    .local v1, "previousText":Lorg/apache/harmony/xml/dom/TextImpl;
    iget-object v2, v1, Lorg/apache/harmony/xml/dom/TextImpl;->buffer:Ljava/lang/StringBuffer;

    #@20
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/TextImpl;->buffer:Ljava/lang/StringBuffer;

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@25
    .line 169
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/TextImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    #@27
    invoke-virtual {v2, p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@2a
    .line 170
    return-object v1
.end method

.method public final replaceWholeText(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 5
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getParentNode()Lorg/w3c/dom/Node;

    #@3
    move-result-object v1

    #@4
    .line 90
    .local v1, "parent":Lorg/w3c/dom/Node;
    const/4 v2, 0x0

    #@5
    .line 93
    .local v2, "result":Lorg/w3c/dom/Text;
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->firstTextNodeInCurrentRun()Lorg/apache/harmony/xml/dom/TextImpl;

    #@8
    move-result-object v0

    #@9
    .end local v2    # "result":Lorg/w3c/dom/Text;
    .local v0, "n":Lorg/apache/harmony/xml/dom/TextImpl;
    :goto_0
    if-eqz v0, :cond_1

    #@b
    .line 96
    if-ne v0, p0, :cond_0

    #@d
    if-eqz p1, :cond_0

    #@f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@12
    move-result v4

    #@13
    if-lez v4, :cond_0

    #@15
    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/TextImpl;->setData(Ljava/lang/String;)V

    #@18
    .line 98
    move-object v2, p0

    #@19
    .line 99
    .local v2, "result":Lorg/w3c/dom/Text;
    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/TextImpl;->nextTextNode()Lorg/apache/harmony/xml/dom/TextImpl;

    #@1c
    move-result-object v0

    #@1d
    goto :goto_0

    #@1e
    .line 102
    .end local v2    # "result":Lorg/w3c/dom/Text;
    :cond_0
    move-object v3, v0

    #@1f
    .line 103
    .local v3, "toRemove":Lorg/w3c/dom/Node;
    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/TextImpl;->nextTextNode()Lorg/apache/harmony/xml/dom/TextImpl;

    #@22
    move-result-object v0

    #@23
    .line 104
    invoke-interface {v1, v3}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@26
    goto :goto_0

    #@27
    .line 108
    .end local v3    # "toRemove":Lorg/w3c/dom/Node;
    :cond_1
    return-object v2
.end method

.method public final splitText(I)Lorg/w3c/dom/Text;
    .locals 4
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 50
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/TextImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@2
    .line 51
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getLength()I

    #@5
    move-result v3

    #@6
    sub-int/2addr v3, p1

    #@7
    invoke-virtual {p0, p1, v3}, Lorg/apache/harmony/xml/dom/TextImpl;->substringData(II)Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    .line 50
    invoke-virtual {v2, v3}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/TextImpl;

    #@e
    move-result-object v0

    #@f
    .line 52
    .local v0, "newText":Lorg/w3c/dom/Text;
    const/4 v2, 0x0

    #@10
    invoke-virtual {p0, v2, p1}, Lorg/apache/harmony/xml/dom/TextImpl;->deleteData(II)V

    #@13
    .line 54
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getNextSibling()Lorg/w3c/dom/Node;

    #@16
    move-result-object v1

    #@17
    .line 55
    .local v1, "refNode":Lorg/w3c/dom/Node;
    if-nez v1, :cond_0

    #@19
    .line 56
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getParentNode()Lorg/w3c/dom/Node;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {v2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@20
    .line 61
    :goto_0
    return-object p0

    #@21
    .line 58
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getParentNode()Lorg/w3c/dom/Node;

    #@24
    move-result-object v2

    #@25
    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@28
    goto :goto_0
.end method
