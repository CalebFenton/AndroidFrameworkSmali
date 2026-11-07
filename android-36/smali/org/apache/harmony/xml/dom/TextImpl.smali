.class public Lorg/apache/harmony/xml/dom/TextImpl;
.super Lorg/apache/harmony/xml/dom/CharacterDataImpl;
.source "TextImpl.java"

# interfaces
.implements Lorg/w3c/dom/Text;


# direct methods
.method public constructor blacklist <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "data"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/CharacterDataImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private blacklist firstTextNodeInCurrentRun()Lorg/apache/harmony/xml/dom/TextImpl;
    .registers 5

    .line 116
    move-object v0, p0

    .line 117
    .local v0, "firstTextInCurrentRun":Lorg/apache/harmony/xml/dom/TextImpl;
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .local v1, "p":Lorg/w3c/dom/Node;
    :goto_5
    if-eqz v1, :cond_19

    .line 118
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    .line 119
    .local v2, "nodeType":S
    const/4 v3, 0x3

    if-eq v2, v3, :cond_11

    const/4 v3, 0x4

    if-ne v2, v3, :cond_19

    .line 120
    :cond_11
    move-object v0, v1

    check-cast v0, Lorg/apache/harmony/xml/dom/TextImpl;

    .line 117
    .end local v2    # "nodeType":S
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_5

    .line 125
    .end local v1    # "p":Lorg/w3c/dom/Node;
    :cond_19
    return-object v0
.end method

.method private blacklist nextTextNode()Lorg/apache/harmony/xml/dom/TextImpl;
    .registers 5

    .line 133
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 134
    .local v0, "nextSibling":Lorg/w3c/dom/Node;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 135
    return-object v1

    .line 138
    :cond_8
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    .line 139
    .local v2, "nodeType":S
    const/4 v3, 0x3

    if-eq v2, v3, :cond_14

    const/4 v3, 0x4

    if-ne v2, v3, :cond_13

    goto :goto_14

    .line 141
    :cond_13
    goto :goto_17

    .line 140
    :cond_14
    :goto_14
    move-object v1, v0

    check-cast v1, Lorg/apache/harmony/xml/dom/TextImpl;

    .line 139
    :goto_17
    return-object v1
.end method


# virtual methods
.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 2

    .line 41
    const-string v0, "#text"

    return-object v0
.end method

.method public whitelist test-api getNodeType()S
    .registers 2

    .line 46
    const/4 v0, 0x3

    return v0
.end method

.method public final whitelist test-api getWholeText()Ljava/lang/String;
    .registers 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->firstTextNodeInCurrentRun()Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v1

    .local v1, "n":Lorg/apache/harmony/xml/dom/TextImpl;
    :goto_9
    if-eqz v1, :cond_13

    .line 79
    invoke-virtual {v1, v0}, Lorg/apache/harmony/xml/dom/TextImpl;->appendDataTo(Ljava/lang/StringBuilder;)V

    .line 78
    invoke-direct {v1}, Lorg/apache/harmony/xml/dom/TextImpl;->nextTextNode()Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v1

    goto :goto_9

    .line 81
    .end local v1    # "n":Lorg/apache/harmony/xml/dom/TextImpl;
    :cond_13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist test-api isElementContentWhitespace()Z
    .registers 2

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist minimize()Lorg/apache/harmony/xml/dom/TextImpl;
    .registers 5

    .line 157
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getLength()I

    move-result v0

    if-nez v0, :cond_d

    .line 158
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/TextImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 159
    const/4 v0, 0x0

    return-object v0

    .line 162
    :cond_d
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 163
    .local v0, "previous":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_2b

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1b

    goto :goto_2b

    .line 167
    :cond_1b
    move-object v1, v0

    check-cast v1, Lorg/apache/harmony/xml/dom/TextImpl;

    .line 168
    .local v1, "previousText":Lorg/apache/harmony/xml/dom/TextImpl;
    iget-object v2, v1, Lorg/apache/harmony/xml/dom/TextImpl;->buffer:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/harmony/xml/dom/TextImpl;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 169
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/TextImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    invoke-virtual {v2, p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 170
    return-object v1

    .line 164
    .end local v1    # "previousText":Lorg/apache/harmony/xml/dom/TextImpl;
    :cond_2b
    :goto_2b
    return-object p0
.end method

.method public final whitelist test-api replaceWholeText(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .registers 6
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 90
    .local v0, "parent":Lorg/w3c/dom/Node;
    const/4 v1, 0x0

    .line 93
    .local v1, "result":Lorg/w3c/dom/Text;
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->firstTextNodeInCurrentRun()Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v2

    .local v2, "n":Lorg/apache/harmony/xml/dom/TextImpl;
    :goto_9
    if-eqz v2, :cond_27

    .line 96
    if-ne v2, p0, :cond_1e

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1e

    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/TextImpl;->setData(Ljava/lang/String;)V

    .line 98
    move-object v1, p0

    .line 99
    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/TextImpl;->nextTextNode()Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v2

    goto :goto_9

    .line 102
    :cond_1e
    move-object v3, v2

    .line 103
    .local v3, "toRemove":Lorg/w3c/dom/Node;
    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/TextImpl;->nextTextNode()Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v2

    .line 104
    invoke-interface {v0, v3}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 105
    .end local v3    # "toRemove":Lorg/w3c/dom/Node;
    goto :goto_9

    .line 108
    .end local v2    # "n":Lorg/apache/harmony/xml/dom/TextImpl;
    :cond_27
    return-object v1
.end method

.method public final whitelist test-api splitText(I)Lorg/w3c/dom/Text;
    .registers 5
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/TextImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    .line 51
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getLength()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p0, p1, v1}, Lorg/apache/harmony/xml/dom/TextImpl;->substringData(II)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v0

    .line 52
    .local v0, "newText":Lorg/w3c/dom/Text;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lorg/apache/harmony/xml/dom/TextImpl;->deleteData(II)V

    .line 54
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 55
    .local v1, "refNode":Lorg/w3c/dom/Node;
    if-nez v1, :cond_21

    .line 56
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_28

    .line 58
    :cond_21
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 61
    :goto_28
    return-object p0
.end method
