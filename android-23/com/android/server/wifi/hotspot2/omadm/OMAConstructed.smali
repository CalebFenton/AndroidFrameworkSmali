.class public Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
.super Lcom/android/server/wifi/hotspot2/omadm/OMANode;
.source "OMAConstructed.java"


# instance fields
.field private final mChildren:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/omadm/OMANode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Ljava/lang/String;

    #@0
    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 17
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Ljava/util/Map;

    #@a
    .line 15
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
    const/4 v7, 0x0

    #@1
    .line 22
    if-nez p4, :cond_1

    #@3
    .line 23
    if-eqz p3, :cond_0

    #@5
    .line 24
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;

    #@7
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 26
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Ljava/util/Map;

    #@c
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 27
    return-object v0

    #@14
    .line 25
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_0
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@16
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .restart local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    goto :goto_0

    #@1a
    .line 29
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_1
    move-object v2, p0

    #@1b
    .line 30
    .local v2, "target":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getParent()Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@1e
    move-result-object v3

    #@1f
    if-eqz v3, :cond_2

    #@21
    .line 31
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getParent()Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@24
    move-result-object v2

    #@25
    goto :goto_1

    #@26
    .line 33
    :cond_2
    const-string/jumbo v3, "/"

    #@29
    invoke-virtual {p4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    const/4 v3, 0x0

    #@2e
    array-length v5, v4

    #@2f
    :goto_2
    if-ge v3, v5, :cond_5

    #@31
    aget-object v1, v4, v3

    #@33
    .line 34
    .local v1, "element":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@36
    move-result-object v2

    #@37
    .line 35
    if-nez v2, :cond_3

    #@39
    .line 36
    new-instance v3, Ljava/io/IOException;

    #@3b
    new-instance v4, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v5, "No child node \'"

    #@43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    const-string/jumbo v5, "\' in "

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getPathString()Ljava/lang/String;

    #@55
    move-result-object v5

    #@56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@61
    throw v3

    #@62
    .line 37
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    #@65
    move-result v6

    #@66
    if-eqz v6, :cond_4

    #@68
    .line 38
    new-instance v3, Ljava/io/IOException;

    #@6a
    new-instance v4, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v5, "Cannot add child to leaf node: "

    #@72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getPathString()Ljava/lang/String;

    #@79
    move-result-object v5

    #@7a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v4

    #@7e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v4

    #@82
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@85
    throw v3

    #@86
    .line 33
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@88
    goto :goto_2

    #@89
    .line 40
    .end local v1    # "element":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2, p1, p2, p3, v7}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@8c
    move-result-object v3

    #@8d
    return-object v3
.end method

.method public getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Ljava/util/Map;

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@c
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
    .line 78
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;"
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
    const/4 v4, 0x0

    #@1
    .line 59
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 60
    return-object p0

    #@8
    .line 62
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/lang/String;

    #@e
    .line 63
    .local v1, "tag":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Ljava/util/Map;

    #@10
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@1a
    .line 64
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v0, :cond_1

    #@1c
    .line 65
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@1f
    move-result-object v2

    #@20
    return-object v2

    #@21
    .line 67
    :cond_1
    return-object v4
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
    const/4 v4, 0x0

    #@1
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 46
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
    .line 48
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Ljava/lang/String;

    #@2b
    .line 49
    .local v1, "tag":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Ljava/util/Map;

    #@2d
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@37
    .line 50
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v0, :cond_1

    #@39
    .line 51
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    return-object v2

    #@3e
    .line 53
    :cond_1
    return-object v4
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 87
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
    .line 73
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
    .line 105
    invoke-static {p2, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->indent(ILjava/io/OutputStream;)V

    #@3
    .line 106
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getName()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->serializeString(Ljava/lang/String;Ljava/io/OutputStream;)V

    #@a
    .line 107
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getContext()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 108
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
    .line 110
    :cond_0
    const/4 v2, 0x2

    #@2b
    new-array v2, v2, [B

    #@2d
    fill-array-data v2, :array_0

    #@30
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    #@33
    .line 112
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Ljava/util/Map;

    #@35
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

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
    .line 113
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    add-int/lit8 v2, p2, 0x1

    #@4b
    invoke-virtual {v0, p1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->marshal(Ljava/io/OutputStream;I)V

    #@4e
    goto :goto_0

    #@4f
    .line 115
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_1
    invoke-static {p2, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->indent(ILjava/io/OutputStream;)V

    #@52
    .line 116
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
    .line 104
    return-void

    #@5f
    .line 110
    nop

    #@60
    :array_0
    .array-data 1
        0x2bt
        0xat
    .end array-data
.end method

.method public toString(Ljava/lang/StringBuilder;I)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "level"    # I

    #@0
    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getPathString()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7
    .line 93
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getContext()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 94
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
    .line 96
    :cond_0
    const/16 v2, 0xa

    #@23
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    .line 98
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Ljava/util/Map;

    #@28
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

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
    .line 99
    .local v0, "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    add-int/lit8 v2, p2, 0x1

    #@3e
    invoke-virtual {v0, p1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->toString(Ljava/lang/StringBuilder;I)V

    #@41
    goto :goto_0

    #@42
    .line 91
    .end local v0    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_1
    return-void
.end method
