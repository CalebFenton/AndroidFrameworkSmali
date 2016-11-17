.class public abstract Lcom/android/server/wifi/hotspot2/omadm/OMANode;
.super Ljava/lang/Object;
.source "OMANode.java"


# static fields
.field private static final sEscapes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mParent:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->sEscapes:Ljava/util/Map;

    #@7
    .line 22
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->sEscapes:Ljava/util/Map;

    #@9
    const/16 v1, 0x22

    #@b
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, "&quot;"

    #@12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 23
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->sEscapes:Ljava/util/Map;

    #@17
    const/16 v1, 0x27

    #@19
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, "&apos;"

    #@20
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 24
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->sEscapes:Ljava/util/Map;

    #@25
    const/16 v1, 0x3c

    #@27
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@2a
    move-result-object v1

    #@2b
    const-string/jumbo v2, "&lt;"

    #@2e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 25
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->sEscapes:Ljava/util/Map;

    #@33
    const/16 v1, 0x3e

    #@35
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@38
    move-result-object v1

    #@39
    const-string/jumbo v2, "&gt;"

    #@3c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 26
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->sEscapes:Ljava/util/Map;

    #@41
    const/16 v1, 0x26

    #@43
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@46
    move-result-object v1

    #@47
    const-string/jumbo v2, "&amp;"

    #@4a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    .line 13
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 29
    .local p4, "avps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mParent:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@5
    .line 31
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mName:Ljava/lang/String;

    #@7
    .line 32
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mContext:Ljava/lang/String;

    #@9
    .line 33
    iput-object p4, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mAttributes:Ljava/util/Map;

    #@b
    .line 29
    return-void
.end method

.method protected static buildAttributes([Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p0, "avps"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 37
    if-nez p0, :cond_0

    #@3
    .line 38
    return-object v2

    #@4
    .line 40
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    #@6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@9
    .line 41
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@a
    .local v1, "n":I
    :goto_0
    array-length v2, p0

    #@b
    if-ge v1, v2, :cond_1

    #@d
    .line 42
    aget-object v2, p0, v1

    #@f
    add-int/lit8 v3, v1, 0x1

    #@11
    aget-object v3, p0, v3

    #@13
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 41
    add-int/lit8 v1, v1, 0x2

    #@18
    goto :goto_0

    #@19
    .line 44
    :cond_1
    return-object v0
.end method

.method private static buildNode(Ljava/io/InputStream;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 169
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->deserializeString(Ljava/io/InputStream;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 170
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 171
    return-object v6

    #@8
    .line 174
    :cond_0
    const/4 v2, 0x0

    #@9
    .line 175
    .local v2, "urn":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@c
    move-result v1

    #@d
    .line 176
    .local v1, "next":I
    const/16 v4, 0x28

    #@f
    if-ne v1, v4, :cond_1

    #@11
    .line 177
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->readURN(Ljava/io/InputStream;)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 178
    .local v2, "urn":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@18
    move-result v1

    #@19
    .line 181
    .end local v2    # "urn":Ljava/lang/String;
    :cond_1
    const/16 v4, 0x3d

    #@1b
    if-ne v1, v4, :cond_2

    #@1d
    .line 182
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->deserializeString(Ljava/io/InputStream;)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    .line 183
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p1, v0, v2, v3, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@24
    move-result-object v4

    #@25
    return-object v4

    #@26
    .line 184
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    const/16 v4, 0x2b

    #@28
    if-ne v1, v4, :cond_4

    #@2a
    .line 185
    if-eqz p1, :cond_3

    #@2c
    .line 186
    invoke-virtual {p1, v0, v2, v6, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@2f
    move-result-object v4

    #@30
    return-object v4

    #@31
    .line 188
    :cond_3
    new-instance v4, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@33
    const/4 v5, 0x0

    #@34
    new-array v5, v5, [Ljava/lang/String;

    #@36
    invoke-direct {v4, v6, v0, v2, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@39
    return-object v4

    #@3a
    .line 192
    :cond_4
    new-instance v4, Ljava/io/IOException;

    #@3c
    const-string/jumbo v5, "Parse error: expected = or + after node name"

    #@3f
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@42
    throw v4
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v4

    #@6
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 86
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@a
    .local v2, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d
    move-result v4

    #@e
    if-ge v2, v4, :cond_1

    #@10
    .line 87
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v0

    #@14
    .line 88
    .local v0, "ch":C
    sget-object v4, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->sEscapes:Ljava/util/Map;

    #@16
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@19
    move-result-object v5

    #@1a
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Ljava/lang/String;

    #@20
    .line 89
    .local v1, "escape":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@22
    .line 90
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 86
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 92
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b
    goto :goto_1

    #@2c
    .line 95
    .end local v0    # "ch":C
    .end local v1    # "escape":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    return-object v4
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
    .line 148
    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->buildNode(Ljava/io/InputStream;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@4
    move-result-object v0

    #@5
    .line 149
    .local v0, "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 150
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
    .line 152
    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@19
    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->unmarshal(Ljava/io/InputStream;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    #@1c
    .line 153
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
    .line 158
    :cond_0
    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->buildNode(Ljava/io/InputStream;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@3
    move-result-object v0

    #@4
    .line 159
    .local v0, "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v0, :cond_1

    #@6
    .line 160
    return-void

    #@7
    .line 162
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 163
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

.method public abstract fillPayload(Ljava/lang/StringBuilder;)V
.end method

.method protected getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mAttributes:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public abstract getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation
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
    .line 60
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mContext:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public abstract getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
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
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getParent()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .locals 1

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mParent:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

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
    .line 64
    new-instance v1, Ljava/util/LinkedList;

    #@2
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    #@5
    .line 65
    .local v1, "path":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    move-object v0, p0

    #@6
    .local v0, "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :goto_0
    if-eqz v0, :cond_0

    #@8
    .line 66
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    #@f
    .line 65
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getParent()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@12
    move-result-object v0

    #@13
    goto :goto_0

    #@14
    .line 68
    :cond_0
    return-object v1
.end method

.method public getPathString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 73
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
    .line 74
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
    .line 76
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

.method public abstract reparent(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 143
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->toString(Ljava/lang/StringBuilder;I)V

    #@9
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method

.method public abstract toString(Ljava/lang/StringBuilder;I)V
.end method

.method public toXml(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/16 v4, 0x3c

    #@2
    .line 122
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5
    move-result-object v2

    #@6
    const-string/jumbo v3, "Node"

    #@9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 123
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mAttributes:Ljava/util/Map;

    #@e
    if-eqz v2, :cond_0

    #@10
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mAttributes:Ljava/util/Map;

    #@12
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 129
    :cond_0
    const-string/jumbo v2, ">\n"

    #@1b
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 131
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, "NodeName"

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    const/16 v3, 0x3e

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2e
    .line 132
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getName()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 133
    const-string/jumbo v2, "</"

    #@38
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    const-string/jumbo v3, "NodeName"

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    const-string/jumbo v3, ">\n"

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 135
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->fillPayload(Ljava/lang/StringBuilder;)V

    #@4c
    .line 137
    const-string/jumbo v2, "</"

    #@4f
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    const-string/jumbo v3, "Node"

    #@56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    const-string/jumbo v3, ">\n"

    #@5d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    .line 121
    return-void

    #@61
    .line 124
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mAttributes:Ljava/util/Map;

    #@63
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@66
    move-result-object v2

    #@67
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6a
    move-result-object v1

    #@6b
    .local v1, "avp$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@6e
    move-result v2

    #@6f
    if-eqz v2, :cond_0

    #@71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@74
    move-result-object v0

    #@75
    check-cast v0, Ljava/util/Map$Entry;

    #@77
    .line 125
    .local v0, "avp":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x20

    #@79
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v3

    #@7d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@80
    move-result-object v2

    #@81
    check-cast v2, Ljava/lang/String;

    #@83
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    const-string/jumbo v3, "=\""

    #@8a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v3

    #@8e
    .line 126
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@91
    move-result-object v2

    #@92
    check-cast v2, Ljava/lang/String;

    #@94
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->escape(Ljava/lang/String;)Ljava/lang/String;

    #@97
    move-result-object v2

    #@98
    .line 125
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v2

    #@9c
    .line 126
    const/16 v3, 0x22

    #@9e
    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a1
    goto :goto_0
.end method
