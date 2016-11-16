.class public Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
.super Lcom/android/server/wifi/hotspot2/omadm/OMANode;
.source "OMAConstructed.java"


# instance fields
.field private final mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/OMANode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;Ljava/util/Map;)V
    .locals 0
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/OMANode;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 20
    .local p4, "children":Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;, "Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap<Lcom/android/server/wifi/hotspot2/omadm/OMANode;>;"
    .local p5, "avps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    #@3
    .line 21
    iput-object p4, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    #@5
    .line 19
    return-void
.end method

.method public varargs constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Ljava/lang/String;
    .param p4, "avps"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 15
    new-instance v4, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    #@2
    invoke-direct {v4}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;-><init>()V

    #@5
    invoke-static {p4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->buildAttributes([Ljava/lang/String;)Ljava/util/Map;

    #@8
    move-result-object v5

    #@9
    move-object v0, p0

    #@a
    move-object v1, p1

    #@b
    move-object v2, p2

    #@c
    move-object v3, p3

    #@d
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;Ljava/util/Map;)V

    #@10
    .line 14
    return-void
.end method


# virtual methods
.method public addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "pathString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 27
    if-nez p4, :cond_1

    #@4
    .line 28
    if-eqz p3, :cond_0

    #@6
    .line 29
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;

    #@8
    new-array v5, v1, [Ljava/lang/String;

    #@a
    move-object v1, p0

    #@b
    move-object v2, p1

    #@c
    move-object v3, p2

    #@d
    move-object v4, p3

    #@e
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@11
    .line 31
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    #@13
    invoke-virtual {v1, p1, v0}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@16
    .line 32
    return-object v0

    #@17
    .line 30
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_0
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@19
    new-array v1, v1, [Ljava/lang/String;

    #@1b
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@1e
    .restart local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    goto :goto_0

    #@1f
    .line 34
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_1
    move-object v7, p0

    #@20
    .line 35
    .local v7, "target":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :goto_1
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getParent()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@23
    move-result-object v2

    #@24
    if-eqz v2, :cond_2

    #@26
    .line 36
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getParent()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@29
    move-result-object v7

    #@2a
    goto :goto_1

    #@2b
    .line 38
    :cond_2
    const-string/jumbo v2, "/"

    #@2e
    invoke-virtual {p4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    array-length v3, v2

    #@33
    :goto_2
    if-ge v1, v3, :cond_5

    #@35
    aget-object v6, v2, v1

    #@37
    .line 39
    .local v6, "element":Ljava/lang/String;
    invoke-virtual {v7, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@3a
    move-result-object v7

    #@3b
    .line 40
    if-nez v7, :cond_3

    #@3d
    .line 41
    new-instance v1, Ljava/io/IOException;

    #@3f
    new-instance v2, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v3, "No child node \'"

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    const-string/jumbo v3, "\' in "

    #@52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getPathString()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@65
    throw v1

    #@66
    .line 42
    :cond_3
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    #@69
    move-result v4

    #@6a
    if-eqz v4, :cond_4

    #@6c
    .line 43
    new-instance v1, Ljava/io/IOException;

    #@6e
    new-instance v2, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v3, "Cannot add child to leaf node: "

    #@76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getPathString()Ljava/lang/String;

    #@7d
    move-result-object v3

    #@7e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v2

    #@82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v2

    #@86
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@89
    throw v1

    #@8a
    .line 38
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@8c
    goto :goto_2

    #@8d
    .line 45
    .end local v6    # "element":Ljava/lang/String;
    :cond_5
    invoke-virtual {v7, p1, p2, p3, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@90
    move-result-object v1

    #@91
    return-object v1
.end method

.method public addChild(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V
    .locals 3
    .param p1, "child"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    #@2
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p1, p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->reparent(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@d
    .line 54
    return-void
.end method

.method public fillPayload(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/16 v4, 0x3c

    #@2
    .line 158
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getContext()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 159
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    const-string/jumbo v3, "RTProperties"

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    const-string/jumbo v3, ">\n"

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 160
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, "Type"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    const-string/jumbo v3, ">\n"

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 161
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    const-string/jumbo v3, "DDFName"

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    const-string/jumbo v3, ">"

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 162
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getContext()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 163
    const-string/jumbo v2, "</"

    #@45
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    const-string/jumbo v3, "DDFName"

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    const-string/jumbo v3, ">\n"

    #@53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 164
    const-string/jumbo v2, "</"

    #@59
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v2

    #@5d
    const-string/jumbo v3, "Type"

    #@60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    const-string/jumbo v3, ">\n"

    #@67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    .line 165
    const-string/jumbo v2, "</"

    #@6d
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v2

    #@71
    const-string/jumbo v3, "RTProperties"

    #@74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v2

    #@78
    const-string/jumbo v3, ">\n"

    #@7b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChildren()Ljava/util/Collection;

    #@81
    move-result-object v2

    #@82
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@85
    move-result-object v1

    #@86
    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@89
    move-result v2

    #@8a
    if-eqz v2, :cond_1

    #@8c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8f
    move-result-object v0

    #@90
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@92
    .line 169
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->toXml(Ljava/lang/StringBuilder;)V

    #@95
    goto :goto_0

    #@96
    .line 157
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_1
    return-void
.end method

.method public getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@8
    return-object v0
.end method

.method public getChildren()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/OMANode;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/wifi/hotspot2/omadm/OMANode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "path":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@1
    .line 73
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 74
    return-object v3

    #@8
    .line 76
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/lang/String;

    #@e
    .line 78
    .local v1, "tag":Ljava/lang/String;
    const-string/jumbo v2, "?"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 79
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    #@19
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->getSingletonValue()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@1f
    .line 85
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :goto_0
    if-nez v0, :cond_2

    #@21
    .line 86
    return-object v3

    #@22
    .line 82
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    #@24
    invoke-virtual {v2, v1}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@2a
    .restart local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    goto :goto_0

    #@2b
    .line 88
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_3

    #@31
    .line 89
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@34
    move-result-object v2

    #@35
    return-object v2

    #@36
    .line 91
    :cond_3
    return-object v0
.end method

.method public getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "path":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@1
    .line 59
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 60
    new-instance v2, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@9
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v4, "Path too short for "

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getPathString()Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-direct {v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@24
    throw v2

    #@25
    .line 62
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Ljava/lang/String;

    #@2b
    .line 63
    .local v1, "tag":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    #@2d
    invoke-virtual {v2, v1}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@33
    .line 64
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v0, :cond_1

    #@35
    .line 65
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    return-object v2

    #@3a
    .line 67
    :cond_1
    return-object v3
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 124
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public isLeaf()Z
    .locals 1

    #@0
    .prologue
    .line 97
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public marshal(Ljava/io/OutputStream;I)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    invoke-static {p2, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->indent(ILjava/io/OutputStream;)V

    #@3
    .line 143
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getName()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->serializeString(Ljava/lang/String;Ljava/io/OutputStream;)V

    #@a
    .line 144
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getContext()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 145
    const-string/jumbo v2, "(%s)"

    #@13
    const/4 v3, 0x1

    #@14
    new-array v3, v3, [Ljava/lang/Object;

    #@16
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getContext()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    const/4 v5, 0x0

    #@1b
    aput-object v4, v3, v5

    #@1d
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@26
    move-result-object v2

    #@27
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    #@2a
    .line 147
    :cond_0
    const/4 v2, 0x2

    #@2b
    new-array v2, v2, [B

    #@2d
    fill-array-data v2, :array_0

    #@30
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    #@33
    .line 149
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    #@35
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->values()Ljava/util/Collection;

    #@38
    move-result-object v2

    #@39
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3c
    move-result-object v1

    #@3d
    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_1

    #@43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    move-result-object v0

    #@47
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@49
    .line 150
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    add-int/lit8 v2, p2, 0x1

    #@4b
    invoke-virtual {v0, p1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->marshal(Ljava/io/OutputStream;I)V

    #@4e
    goto :goto_0

    #@4f
    .line 152
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_1
    invoke-static {p2, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->indent(ILjava/io/OutputStream;)V

    #@52
    .line 153
    const-string/jumbo v2, ".\n"

    #@55
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@57
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    #@5e
    .line 141
    return-void

    #@5f
    .line 147
    nop

    #@60
    :array_0
    .array-data 1
        0x2bt
        0xat
    .end array-data
.end method

.method public removeNode(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@0
    .prologue
    .line 114
    const-string/jumbo v0, "?"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 115
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    #@b
    invoke-virtual {v0, p2}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@11
    return-object v0

    #@12
    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    #@14
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->remove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@1a
    return-object v0
.end method

.method public reparent(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .locals 6
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@0
    .prologue
    .line 51
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@2
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getName()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getContext()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    #@c
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getAttributes()Ljava/util/Map;

    #@f
    move-result-object v5

    #@10
    move-object v1, p1

    #@11
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;Ljava/util/Map;)V

    #@14
    return-object v0
.end method

.method public bridge synthetic reparent(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 1
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@0
    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->reparent(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public replaceNode(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 2
    .param p1, "oldNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p2, "newNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    #@2
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->replace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@c
    return-object v0
.end method

.method public toString(Ljava/lang/StringBuilder;I)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "level"    # I

    #@0
    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getPathString()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7
    .line 130
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getContext()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 131
    const-string/jumbo v2, " ("

    #@10
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getContext()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const/16 v3, 0x29

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    .line 133
    :cond_0
    const/16 v2, 0xa

    #@23
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    .line 135
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    #@28
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->values()Ljava/util/Collection;

    #@2b
    move-result-object v2

    #@2c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v1

    #@30
    .local v1, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_1

    #@36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@3c
    .line 136
    .local v0, "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    add-int/lit8 v2, p2, 0x1

    #@3e
    invoke-virtual {v0, p1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->toString(Ljava/lang/StringBuilder;I)V

    #@41
    goto :goto_0

    #@42
    .line 128
    .end local v0    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_1
    return-void
.end method
