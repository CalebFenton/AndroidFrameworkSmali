.class public final Lorg/apache/harmony/xml/dom/CDATASectionImpl;
.super Lorg/apache/harmony/xml/dom/TextImpl;
.source "CDATASectionImpl.java"

# interfaces
.implements Lorg/w3c/dom/CDATASection;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/TextImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    #@3
    .line 34
    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 40
    const-string/jumbo v0, "#cdata-section"

    #@3
    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    #@0
    .prologue
    .line 45
    const/4 v0, 0x4

    #@1
    return v0
.end method

.method public needsSplitting()Z
    .locals 2

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->buffer:Ljava/lang/StringBuffer;

    #@2
    const-string/jumbo v1, "]]>"

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    const/4 v1, -0x1

    #@a
    if-eq v0, v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public replaceWithText()Lorg/apache/harmony/xml/dom/TextImpl;
    .locals 3

    #@0
    .prologue
    .line 82
    new-instance v0, Lorg/apache/harmony/xml/dom/TextImpl;

    #@2
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@4
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->getData()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xml/dom/TextImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    #@b
    .line 83
    .local v0, "replacement":Lorg/apache/harmony/xml/dom/TextImpl;
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    #@d
    invoke-virtual {v1, v0, p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@10
    .line 84
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    #@12
    invoke-virtual {v1, p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@15
    .line 85
    return-object v0
.end method

.method public split()V
    .locals 7

    #@0
    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->needsSplitting()Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 54
    return-void

    #@7
    .line 57
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->getParentNode()Lorg/w3c/dom/Node;

    #@a
    move-result-object v1

    #@b
    .line 58
    .local v1, "parent":Lorg/w3c/dom/Node;
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->getData()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    const-string/jumbo v4, "\\]\\]>"

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    .line 59
    .local v2, "parts":[Ljava/lang/String;
    new-instance v3, Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    #@18
    iget-object v4, p0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@1a
    new-instance v5, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const/4 v6, 0x0

    #@20
    aget-object v6, v2, v6

    #@22
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    const-string/jumbo v6, "]]"

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    #@34
    invoke-interface {v1, v3, p0}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@37
    .line 60
    const/4 v0, 0x1

    #@38
    .local v0, "p":I
    :goto_0
    array-length v3, v2

    #@39
    add-int/lit8 v3, v3, -0x1

    #@3b
    if-ge v0, v3, :cond_1

    #@3d
    .line 61
    new-instance v3, Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    #@3f
    iget-object v4, p0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@41
    new-instance v5, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v6, ">"

    #@49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    aget-object v6, v2, v0

    #@4f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    const-string/jumbo v6, "]]"

    #@56
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v5

    #@5e
    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    #@61
    invoke-interface {v1, v3, p0}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@64
    .line 60
    add-int/lit8 v0, v0, 0x1

    #@66
    goto :goto_0

    #@67
    .line 63
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v4, ">"

    #@6f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v3

    #@73
    array-length v4, v2

    #@74
    add-int/lit8 v4, v4, -0x1

    #@76
    aget-object v4, v2, v4

    #@78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v3

    #@80
    invoke-virtual {p0, v3}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->setData(Ljava/lang/String;)V

    #@83
    .line 52
    return-void
.end method
