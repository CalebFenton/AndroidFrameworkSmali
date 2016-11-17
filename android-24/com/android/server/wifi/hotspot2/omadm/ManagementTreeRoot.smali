.class public Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;
.super Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
.source "ManagementTreeRoot.java"


# instance fields
.field private final mDtdRev:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)V
    .locals 6
    .param p1, "node"    # Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .param p2, "dtdRev"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 29
    const-string/jumbo v2, "MgmtTree"

    #@4
    new-instance v4, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    #@6
    invoke-direct {v4}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;-><init>()V

    #@9
    .line 30
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTextualAttributes()Ljava/util/Map;

    #@c
    move-result-object v5

    #@d
    move-object v0, p0

    #@e
    move-object v3, v1

    #@f
    .line 29
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;Ljava/util/Map;)V

    #@12
    .line 31
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;->mDtdRev:Ljava/lang/String;

    #@14
    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "dtdRev"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 35
    const-string/jumbo v0, "MgmtTree"

    #@4
    const/4 v1, 0x2

    #@5
    new-array v1, v1, [Ljava/lang/String;

    #@7
    const-string/jumbo v2, "xmlns"

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    const-string/jumbo v2, "syncml:dmddf1.2"

    #@10
    const/4 v3, 0x1

    #@11
    aput-object v2, v1, v3

    #@13
    invoke-direct {p0, v4, v0, v4, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@16
    .line 36
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;->mDtdRev:Ljava/lang/String;

    #@18
    .line 34
    return-void
.end method


# virtual methods
.method public toXml(Ljava/lang/StringBuilder;)V
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/16 v6, 0x3c

    #@2
    .line 41
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5
    move-result-object v4

    #@6
    const-string/jumbo v5, "MgmtTree"

    #@9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 42
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;->getAttributes()Ljava/util/Map;

    #@f
    move-result-object v4

    #@10
    if-eqz v4, :cond_0

    #@12
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;->getAttributes()Ljava/util/Map;

    #@15
    move-result-object v4

    #@16
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_1

    #@1c
    .line 48
    :cond_0
    const-string/jumbo v4, ">\n"

    #@1f
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 50
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    const-string/jumbo v5, "VerDTD"

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    .line 51
    const/16 v5, 0x3e

    #@2f
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    .line 51
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;->mDtdRev:Ljava/lang/String;

    #@35
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    .line 52
    const-string/jumbo v5, "</"

    #@3c
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    .line 52
    const-string/jumbo v5, "VerDTD"

    #@43
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    .line 52
    const-string/jumbo v5, ">\n"

    #@4a
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 53
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;->getChildren()Ljava/util/Collection;

    #@50
    move-result-object v4

    #@51
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@54
    move-result-object v3

    #@55
    .local v3, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@58
    move-result v4

    #@59
    if-eqz v4, :cond_2

    #@5b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5e
    move-result-object v2

    #@5f
    check-cast v2, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@61
    .line 54
    .local v2, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v2, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->toXml(Ljava/lang/StringBuilder;)V

    #@64
    goto :goto_0

    #@65
    .line 43
    .end local v2    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v3    # "child$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;->getAttributes()Ljava/util/Map;

    #@68
    move-result-object v4

    #@69
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@6c
    move-result-object v4

    #@6d
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@70
    move-result-object v1

    #@71
    .local v1, "avp$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@74
    move-result v4

    #@75
    if-eqz v4, :cond_0

    #@77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7a
    move-result-object v0

    #@7b
    check-cast v0, Ljava/util/Map$Entry;

    #@7d
    .line 44
    .local v0, "avp":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v4, 0x20

    #@7f
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@82
    move-result-object v5

    #@83
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@86
    move-result-object v4

    #@87
    check-cast v4, Ljava/lang/String;

    #@89
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v4

    #@8d
    const-string/jumbo v5, "=\""

    #@90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v5

    #@94
    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@97
    move-result-object v4

    #@98
    check-cast v4, Ljava/lang/String;

    #@9a
    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;->escape(Ljava/lang/String;)Ljava/lang/String;

    #@9d
    move-result-object v4

    #@9e
    .line 44
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v4

    #@a2
    .line 45
    const/16 v5, 0x22

    #@a4
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a7
    goto :goto_1

    #@a8
    .line 56
    .end local v0    # "avp":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "avp$iterator":Ljava/util/Iterator;
    .restart local v3    # "child$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v4, "</"

    #@ab
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v4

    #@af
    const-string/jumbo v5, "MgmtTree"

    #@b2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v4

    #@b6
    const-string/jumbo v5, ">\n"

    #@b9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    .line 40
    return-void
.end method
