.class public Lcom/android/server/wifi/ConfigurationMap;
.super Ljava/lang/Object;
.source "ConfigurationMap.java"


# instance fields
.field private final mPerConfigKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mPerFQDN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPerID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 18
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    #@a
    .line 19
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerConfigKey:Ljava/util/Map;

    #@11
    .line 20
    new-instance v0, Ljava/util/HashMap;

    #@13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerFQDN:Ljava/util/Map;

    #@18
    .line 17
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@5
    .line 86
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerConfigKey:Ljava/util/Map;

    #@7
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@a
    .line 87
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerFQDN:Ljava/util/Map;

    #@c
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@f
    .line 84
    return-void
.end method

.method public get(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "netid"    # I

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@c
    return-object v0
.end method

.method public getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 109
    if-nez p1, :cond_0

    #@3
    .line 110
    return-object v3

    #@4
    .line 112
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    #@6
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_2

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@1a
    .line 113
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_1

    #@24
    .line 114
    return-object v0

    #@25
    .line 117
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    return-object v3
.end method

.method public getByConfigKeyID(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerConfigKey:Ljava/util/Map;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@c
    return-object v0
.end method

.method public getByFQDN(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "fqdn"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 104
    iget-object v2, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerFQDN:Ljava/util/Map;

    #@3
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/Integer;

    #@9
    .line 105
    .local v0, "id":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@b
    iget-object v1, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    #@d
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    #@13
    :cond_0
    return-object v1
.end method

.method public getEnabledNetworks()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 125
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 126
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v3, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    #@7
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@a
    move-result-object v3

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@1b
    .line 127
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@1d
    const/4 v4, 0x1

    #@1e
    if-eq v3, v4, :cond_0

    #@20
    .line 128
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@23
    goto :goto_0

    #@24
    .line 131
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return-object v2
.end method

.method public getEphemeral(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 135
    iget-object v2, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    #@2
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@16
    .line 136
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@18
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 137
    return-object v0

    #@23
    .line 140
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const/4 v2, 0x0

    #@24
    return-object v2
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 100
    iget-object v1, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    #@3
    invoke-interface {v1}, Ljava/util/Map;->size()I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public populatePasspointData(Ljava/util/Collection;Lcom/android/server/wifi/WifiNative;)V
    .locals 17
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;",
            "Lcom/android/server/wifi/WifiNative;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 33
    .local p1, "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v14, v0, Lcom/android/server/wifi/ConfigurationMap;->mPerFQDN:Ljava/util/Map;

    #@4
    invoke-interface {v14}, Ljava/util/Map;->clear()V

    #@7
    .line 35
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v6

    #@b
    .local v6, "homeSp$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v14

    #@f
    if-eqz v14, :cond_4

    #@11
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v5

    #@15
    check-cast v5, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@17
    .line 36
    .local v5, "homeSp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    .line 37
    .local v4, "fqdn":Ljava/lang/String;
    const-string/jumbo v14, "WifiConfigStore"

    #@1e
    new-instance v15, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v16, "Looking for "

    #@26
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v15

    #@2a
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v15

    #@2e
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v15

    #@32
    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 38
    move-object/from16 v0, p0

    #@37
    iget-object v14, v0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    #@39
    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@3c
    move-result-object v14

    #@3d
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@40
    move-result-object v3

    #@41
    .local v3, "config$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@44
    move-result v14

    #@45
    if-eqz v14, :cond_0

    #@47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4a
    move-result-object v2

    #@4b
    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    #@4d
    .line 39
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    const-string/jumbo v14, "WifiConfigStore"

    #@50
    new-instance v15, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v16, "Testing "

    #@58
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v15

    #@5c
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@5e
    move-object/from16 v16, v0

    #@60
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v15

    #@64
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v15

    #@68
    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    .line 42
    iget v14, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@6d
    const-string/jumbo v15, "id_str"

    #@70
    .line 41
    move-object/from16 v0, p2

    #@72
    invoke-virtual {v0, v14, v15}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@75
    move-result-object v14

    #@76
    invoke-static {v14}, Lcom/android/server/wifi/hotspot2/Utils;->unquote(Ljava/lang/String;)Ljava/lang/String;

    #@79
    move-result-object v11

    #@7a
    .line 43
    .local v11, "id_str":Ljava/lang/String;
    if-eqz v11, :cond_1

    #@7c
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v14

    #@80
    if-eqz v14, :cond_1

    #@82
    iget-object v14, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@84
    if-eqz v14, :cond_1

    #@86
    .line 44
    const-string/jumbo v14, "WifiConfigStore"

    #@89
    new-instance v15, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v16, "Matched "

    #@91
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v15

    #@95
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v15

    #@99
    const-string/jumbo v16, " with "

    #@9c
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v15

    #@a0
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@a2
    move/from16 v16, v0

    #@a4
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v15

    #@a8
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v15

    #@ac
    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@af
    .line 45
    iput-object v4, v2, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@b1
    .line 46
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFriendlyName()Ljava/lang/String;

    #@b4
    move-result-object v14

    #@b5
    iput-object v14, v2, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@b7
    .line 48
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getRoamingConsortiums()Ljava/util/HashSet;

    #@ba
    move-result-object v13

    #@bb
    .line 49
    .local v13, "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    #@be
    move-result v14

    #@bf
    new-array v14, v14, [J

    #@c1
    iput-object v14, v2, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@c3
    .line 50
    const/4 v7, 0x0

    #@c4
    .line 51
    .local v7, "i":I
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c7
    move-result-object v10

    #@c8
    .local v10, "id$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@cb
    move-result v14

    #@cc
    if-eqz v14, :cond_2

    #@ce
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d1
    move-result-object v14

    #@d2
    check-cast v14, Ljava/lang/Long;

    #@d4
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    #@d7
    move-result-wide v8

    #@d8
    .line 52
    .local v8, "id":J
    iget-object v14, v2, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@da
    aput-wide v8, v14, v7

    #@dc
    .line 53
    add-int/lit8 v7, v7, 0x1

    #@de
    goto :goto_1

    #@df
    .line 55
    .end local v8    # "id":J
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@e2
    move-result-object v14

    #@e3
    invoke-virtual {v14}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getImsi()Lcom/android/server/wifi/IMSIParameter;

    #@e6
    move-result-object v12

    #@e7
    .line 56
    .local v12, "imsiParameter":Lcom/android/server/wifi/IMSIParameter;
    iget-object v15, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@e9
    .line 57
    if-eqz v12, :cond_3

    #@eb
    invoke-virtual {v12}, Lcom/android/server/wifi/IMSIParameter;->toString()Ljava/lang/String;

    #@ee
    move-result-object v14

    #@ef
    .line 56
    :goto_2
    invoke-virtual {v15, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPlmn(Ljava/lang/String;)V

    #@f2
    .line 58
    iget-object v14, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@f4
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@f7
    move-result-object v15

    #@f8
    invoke-virtual {v15}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    #@fb
    move-result-object v15

    #@fc
    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setRealm(Ljava/lang/String;)V

    #@ff
    .line 59
    move-object/from16 v0, p0

    #@101
    iget-object v14, v0, Lcom/android/server/wifi/ConfigurationMap;->mPerFQDN:Ljava/util/Map;

    #@103
    iget v15, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@105
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@108
    move-result-object v15

    #@109
    invoke-interface {v14, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10c
    goto/16 :goto_0

    #@10e
    .line 57
    :cond_3
    const/4 v14, 0x0

    #@10f
    goto :goto_2

    #@110
    .line 64
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "config$iterator":Ljava/util/Iterator;
    .end local v4    # "fqdn":Ljava/lang/String;
    .end local v5    # "homeSp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v7    # "i":I
    .end local v10    # "id$iterator":Ljava/util/Iterator;
    .end local v11    # "id_str":Ljava/lang/String;
    .end local v12    # "imsiParameter":Lcom/android/server/wifi/IMSIParameter;
    .end local v13    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_4
    const-string/jumbo v14, "WifiConfigStore"

    #@113
    new-instance v15, Ljava/lang/StringBuilder;

    #@115
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@118
    const-string/jumbo v16, "loaded "

    #@11b
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v15

    #@11f
    move-object/from16 v0, p0

    #@121
    iget-object v0, v0, Lcom/android/server/wifi/ConfigurationMap;->mPerFQDN:Ljava/util/Map;

    #@123
    move-object/from16 v16, v0

    #@125
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    #@128
    move-result v16

    #@129
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v15

    #@12d
    const-string/jumbo v16, " passpoint configs"

    #@130
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v15

    #@134
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@137
    move-result-object v15

    #@138
    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13b
    .line 32
    return-void
.end method

.method public put(ILandroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "netid"    # I
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 24
    iget-object v1, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@c
    .line 25
    .local v0, "current":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerConfigKey:Ljava/util/Map;

    #@e
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@15
    move-result v2

    #@16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 26
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@1f
    if-eqz v1, :cond_0

    #@21
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@23
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@26
    move-result v1

    #@27
    if-lez v1, :cond_0

    #@29
    .line 27
    iget-object v1, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerFQDN:Ljava/util/Map;

    #@2b
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@2d
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v3

    #@31
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    .line 29
    :cond_0
    return-object v0
.end method

.method public remove(I)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .param p1, "netID"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 68
    iget-object v2, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    #@3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v3

    #@7
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@d
    .line 69
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    #@f
    .line 70
    return-object v4

    #@10
    .line 72
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerConfigKey:Ljava/util/Map;

    #@12
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    #@19
    move-result v3

    #@1a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v3

    #@1e
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 74
    iget-object v2, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerFQDN:Ljava/util/Map;

    #@23
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@26
    move-result-object v2

    #@27
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v1

    #@2b
    .line 75
    .local v1, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_2

    #@31
    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    check-cast v2, Ljava/util/Map$Entry;

    #@37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3a
    move-result-object v2

    #@3b
    check-cast v2, Ljava/lang/Integer;

    #@3d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@40
    move-result v2

    #@41
    if-ne v2, p1, :cond_1

    #@43
    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@46
    .line 81
    :cond_2
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
