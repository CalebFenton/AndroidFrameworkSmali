.class public abstract Lcom/android/server/wifi/hotspot2/omadm/OMANode;
.super Ljava/lang/Object;
.source "OMANode.java"


# instance fields
.field private final mContext:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mParent:Lcom/android/server/wifi/hotspot2/omadm/OMANode;


# direct methods
.method protected constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Ljava/lang/String;

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 17
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mParent:Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@5
    .line 18
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mName:Ljava/lang/String;

    #@7
    .line 19
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mContext:Ljava/lang/String;

    #@9
    .line 16
    return-void
.end method

.method private static buildNode(Ljava/io/InputStream;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 98
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->deserializeString(Ljava/io/InputStream;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 99
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 100
    return-object v5

    #@8
    .line 103
    :cond_0
    const/4 v2, 0x0

    #@9
    .line 104
    .local v2, "urn":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@c
    move-result v1

    #@d
    .line 105
    .local v1, "next":I
    const/16 v4, 0x28

    #@f
    if-ne v1, v4, :cond_1

    #@11
    .line 106
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->readURN(Ljava/io/InputStream;)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 107
    .local v2, "urn":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@18
    move-result v1

    #@19
    .line 110
    .end local v2    # "urn":Ljava/lang/String;
    :cond_1
    const/16 v4, 0x3d

    #@1b
    if-ne v1, v4, :cond_2

    #@1d
    .line 111
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->deserializeString(Ljava/io/InputStream;)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    .line 112
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p1, v0, v2, v3, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@24
    move-result-object v4

    #@25
    return-object v4

    #@26
    .line 113
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    const/16 v4, 0x2b

    #@28
    if-ne v1, v4, :cond_4

    #@2a
    .line 114
    if-eqz p1, :cond_3

    #@2c
    .line 115
    invoke-virtual {p1, v0, v2, v5, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@2f
    move-result-object v4

    #@30
    return-object v4

    #@31
    .line 117
    :cond_3
    new-instance v4, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@33
    invoke-direct {v4, v5, v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/String;)V

    #@36
    return-object v4

    #@37
    .line 121
    :cond_4
    new-instance v4, Ljava/io/IOException;

    #@39
    const-string/jumbo v5, "Parse error: expected = or + after node name"

    #@3c
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v4
.end method

.method public static unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 77
    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->buildNode(Ljava/io/InputStream;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@4
    move-result-object v0

    #@5
    .line 78
    .local v0, "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 79
    :cond_0
    new-instance v1, Ljava/io/IOException;

    #@f
    const-string/jumbo v2, "Bad OMA tree"

    #@12
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    :cond_1
    move-object v1, v0

    #@17
    .line 81
    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@19
    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->unmarshal(Ljava/io/InputStream;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    #@1c
    .line 82
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@1e
    .end local v0    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    return-object v0
.end method

.method private static unmarshal(Ljava/io/InputStream;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    :cond_0
    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->buildNode(Ljava/io/InputStream;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@3
    move-result-object v0

    #@4
    .line 88
    .local v0, "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v0, :cond_1

    #@6
    .line 89
    return-void

    #@7
    .line 91
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 92
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@f
    .end local v0    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-static {p0, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->unmarshal(Ljava/io/InputStream;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    #@12
    goto :goto_0
.end method


# virtual methods
.method public abstract addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
.end method

.method public abstract getChildren()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/OMANode;",
            ">;"
        }
    .end annotation
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mContext:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public abstract getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
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
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getParent()Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 1

    #@0
    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mParent:Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@2
    return-object v0
.end method

.method public getPath()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 35
    new-instance v1, Ljava/util/LinkedList;

    #@2
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    #@5
    .line 36
    .local v1, "path":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    move-object v0, p0

    #@6
    .local v0, "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :goto_0
    if-eqz v0, :cond_0

    #@8
    .line 37
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    #@f
    .line 36
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getParent()Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@12
    move-result-object v0

    #@13
    goto :goto_0

    #@14
    .line 39
    :cond_0
    return-object v1
.end method

.method public getPathString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 44
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getPath()Ljava/util/List;

    #@8
    move-result-object v3

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/lang/String;

    #@19
    .line 45
    .local v0, "element":Ljava/lang/String;
    const/16 v3, 0x2f

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    goto :goto_0

    #@23
    .line 47
    .end local v0    # "element":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    return-object v3
.end method

.method public abstract getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;
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
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract isLeaf()Z
.end method

.method public abstract marshal(Ljava/io/OutputStream;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 72
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->toString(Ljava/lang/StringBuilder;I)V

    #@9
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method

.method public abstract toString(Ljava/lang/StringBuilder;I)V
.end method
