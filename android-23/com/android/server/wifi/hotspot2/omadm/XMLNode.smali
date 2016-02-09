.class public Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
.super Ljava/lang/Object;
.source "XMLNode.java"


# instance fields
.field private final mAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/XMLNode;",
            ">;"
        }
    .end annotation
.end field

.field private mMO:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

.field private final mParent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

.field private final mTag:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTextBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 24
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    #@5
    .line 26
    new-instance v1, Ljava/util/HashMap;

    #@7
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@a
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    #@c
    .line 28
    invoke-interface {p3}, Lorg/xml/sax/Attributes;->getLength()I

    #@f
    move-result v1

    #@10
    if-lez v1, :cond_0

    #@12
    .line 29
    const/4 v0, 0x0

    #@13
    .local v0, "n":I
    :goto_0
    invoke-interface {p3}, Lorg/xml/sax/Attributes;->getLength()I

    #@16
    move-result v1

    #@17
    if-ge v0, v1, :cond_0

    #@19
    .line 30
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    #@1b
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    new-instance v3, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;

    #@21
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    .line 31
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    .line 30
    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@30
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 29
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_0

    #@36
    .line 34
    .end local v0    # "n":I
    :cond_0
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mParent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@38
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    #@3a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@3d
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    #@3f
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    #@46
    .line 23
    return-void
.end method

.method private toString([CLjava/lang/StringBuilder;)V
    .locals 6
    .param p1, "indent"    # [C
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/16 v5, 0xa

    #@2
    .line 106
    const/16 v3, 0x20

    #@4
    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([CC)V

    #@7
    .line 108
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    #@a
    move-result-object v3

    #@b
    const/16 v4, 0x3c

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    move-result-object v3

    #@11
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    const-string/jumbo v4, "> "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    #@20
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    .line 110
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mMO:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@29
    if-eqz v3, :cond_1

    #@2b
    .line 111
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mMO:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    .line 115
    :cond_0
    :goto_0
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    .line 117
    array-length v3, p1

    #@38
    add-int/lit8 v3, v3, 0x2

    #@3a
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([CI)[C

    #@3d
    move-result-object v2

    #@3e
    .line 118
    .local v2, "subIndent":[C
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    #@40
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@43
    move-result-object v1

    #@44
    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@47
    move-result v3

    #@48
    if-eqz v3, :cond_2

    #@4a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4d
    move-result-object v0

    #@4e
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@50
    .line 119
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-direct {v0, v2, p2}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->toString([CLjava/lang/StringBuilder;)V

    #@53
    goto :goto_1

    #@54
    .line 112
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v1    # "child$iterator":Ljava/util/Iterator;
    .end local v2    # "subIndent":[C
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    #@56
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@59
    move-result v3

    #@5a
    if-nez v3, :cond_0

    #@5c
    .line 113
    const-string/jumbo v3, ", text: "

    #@5f
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    #@65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    goto :goto_0

    #@69
    .line 105
    .restart local v1    # "child$iterator":Ljava/util/Iterator;
    .restart local v2    # "subIndent":[C
    :cond_2
    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;)V
    .locals 1
    .param p1, "child"    # Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 53
    return-void
.end method

.method public addText([CII)V
    .locals 5
    .param p1, "chs"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    const/16 v4, 0x20

    #@2
    const/4 v3, 0x0

    #@3
    .line 41
    new-instance v0, Ljava/lang/String;

    #@5
    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    #@8
    .line 42
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 43
    .local v1, "trimmed":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 44
    return-void

    #@13
    .line 46
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v2

    #@17
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v3

    #@1b
    if-eq v2, v3, :cond_1

    #@1d
    .line 47
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    #@1f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    .line 48
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    #@24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@2a
    move-result v2

    #@2b
    add-int/lit8 v2, v2, -0x1

    #@2d
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@30
    move-result v2

    #@31
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@34
    move-result v3

    #@35
    add-int/lit8 v3, v3, -0x1

    #@37
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v3

    #@3b
    if-eq v2, v3, :cond_2

    #@3d
    .line 50
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    #@3f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@42
    .line 40
    :cond_2
    return-void
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5
    move-result-object v6

    #@6
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    .line 59
    .local v4, "text":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@f
    move-result v6

    #@10
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@13
    .line 60
    .local v1, "filtered":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@14
    .local v2, "n":I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@17
    move-result v6

    #@18
    if-ge v2, v6, :cond_1

    #@1a
    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v0

    #@1e
    .line 62
    .local v0, "ch":C
    const/16 v6, 0x20

    #@20
    if-lt v0, v6, :cond_0

    #@22
    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    .line 60
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 66
    .end local v0    # "ch":C
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v6

    #@2c
    iput-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    #@2e
    .line 67
    const/4 v6, 0x0

    #@2f
    iput-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    #@31
    .line 69
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    #@33
    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->isMOContainer(Ljava/lang/String;)Z

    #@36
    move-result v6

    #@37
    if-eqz v6, :cond_2

    #@39
    .line 70
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    #@3b
    const-string/jumbo v7, "spp:moURN"

    #@3e
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    move-result-object v5

    #@42
    check-cast v5, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;

    #@44
    .line 71
    .local v5, "urn":Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;
    new-instance v3, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;

    #@46
    invoke-direct {v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;-><init>()V

    #@49
    .line 72
    .local v3, "omaParser":Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    #@4b
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->getValue()Ljava/lang/String;

    #@4e
    move-result-object v7

    #@4f
    invoke-virtual {v3, v6, v7}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@52
    move-result-object v6

    #@53
    iput-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mMO:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@55
    .line 57
    .end local v3    # "omaParser":Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
    .end local v5    # "urn":Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;
    :cond_2
    return-void
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 93
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    #@3
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;

    #@9
    .line 94
    .local v0, "nodeAttribute":Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->getValue()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    :cond_0
    return-object v1
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mAttributes:Ljava/util/Map;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/XMLNode;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getMOTree()Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mMO:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@2
    return-object v0
.end method

.method public getParent()Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mParent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@2
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 125
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@6
    new-array v1, v1, [C

    #@8
    invoke-direct {p0, v1, v0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->toString([CLjava/lang/StringBuilder;)V

    #@b
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method
