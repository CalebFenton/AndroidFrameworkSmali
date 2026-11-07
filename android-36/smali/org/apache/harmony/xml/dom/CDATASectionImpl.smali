.class public final Lorg/apache/harmony/xml/dom/CDATASectionImpl;
.super Lorg/apache/harmony/xml/dom/TextImpl;
.source "CDATASectionImpl.java"

# interfaces
.implements Lorg/w3c/dom/CDATASection;


# direct methods
.method public constructor blacklist <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "data"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/TextImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 2

    .line 40
    const-string v0, "#cdata-section"

    return-object v0
.end method

.method public whitelist test-api getNodeType()S
    .registers 2

    .line 45
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist needsSplitting()Z
    .registers 3

    .line 72
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public blacklist replaceWithText()Lorg/apache/harmony/xml/dom/TextImpl;
    .registers 4

    .line 82
    new-instance v0, Lorg/apache/harmony/xml/dom/TextImpl;

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xml/dom/TextImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    .line 83
    .local v0, "replacement":Lorg/apache/harmony/xml/dom/TextImpl;
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    invoke-virtual {v1, v0, p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 84
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 85
    return-object v0
.end method

.method public blacklist split()V
    .registers 9

    .line 53
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->needsSplitting()Z

    move-result v0

    if-nez v0, :cond_7

    .line 54
    return-void

    .line 57
    :cond_7
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 58
    .local v0, "parent":Lorg/w3c/dom/Node;
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->getData()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\]\\]>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "parts":[Ljava/lang/String;
    new-instance v2, Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    iget-object v3, p0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    invoke-interface {v0, v2, p0}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 60
    const/4 v2, 0x1

    .local v2, "p":I
    :goto_36
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    const-string v4, ">"

    if-ge v2, v3, :cond_61

    .line 61
    new-instance v3, Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    iget-object v6, p0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v7, v1, v2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    invoke-interface {v0, v3, p0}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 63
    .end local v2    # "p":I
    :cond_61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->setData(Ljava/lang/String;)V

    .line 64
    return-void
.end method
