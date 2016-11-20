.class public Lcom/android/server/wifi/ConfigurationMap;
.super Ljava/lang/Object;
.source "ConfigurationMap.java"


# instance fields
.field private mCurrentUserId:I

.field private final mHiddenNetworkIdsForCurrentUser:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mPerFQDNForCurrentUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
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

.field private final mPerIDForCurrentUser:Ljava/util/Map;
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

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Landroid/os/UserManager;)V
    .locals 1
    .param p1, "userManager"    # Landroid/os/UserManager;

    #@0
    .prologue
    .line 33
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
    .line 21
    new-instance v0, Ljava/util/HashMap;

    #@13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    #@18
    .line 22
    new-instance v0, Ljava/util/HashMap;

    #@1a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerFQDNForCurrentUser:Ljava/util/Map;

    #@1f
    .line 27
    new-instance v0, Ljava/util/HashSet;

    #@21
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mHiddenNetworkIdsForCurrentUser:Ljava/util/Set;

    #@26
    .line 31
    const/4 v0, 0x0

    #@27
    iput v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mCurrentUserId:I

    #@29
    .line 34
    iput-object p1, p0, Lcom/android/server/wifi/ConfigurationMap;->mUserManager:Landroid/os/UserManager;

    #@2b
    .line 33
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@5
    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerConfigKey:Ljava/util/Map;

    #@7
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@a
    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    #@c
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@f
    .line 78
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerFQDNForCurrentUser:Ljava/util/Map;

    #@11
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@14
    .line 79
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mHiddenNetworkIdsForCurrentUser:Ljava/util/Set;

    #@16
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@19
    .line 74
    return-void
.end method

.method public getByConfigKeyForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 140
    if-nez p1, :cond_0

    #@3
    .line 141
    return-object v3

    #@4
    .line 143
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

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
    .line 144
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
    .line 145
    return-object v0

    #@25
    .line 148
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    return-object v3
.end method

.method public getByConfigKeyIDForAllUsers(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 152
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

.method public getByFQDNForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "fqdn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerFQDNForCurrentUser:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@8
    return-object v0
.end method

.method public getEnabledNetworksForCurrentUser()Ljava/util/Collection;
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
    .line 156
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 157
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v3, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

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
    .line 158
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@1d
    const/4 v4, 0x1

    #@1e
    if-eq v3, v4, :cond_0

    #@20
    .line 159
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@23
    goto :goto_0

    #@24
    .line 162
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return-object v2
.end method

.method public getEphemeralForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 166
    iget-object v2, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

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
    .line 167
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
    .line 168
    return-object v0

    #@23
    .line 171
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const/4 v2, 0x0

    #@24
    return-object v2
.end method

.method public getForAllUsers(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "netid"    # I

    #@0
    .prologue
    .line 120
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

.method public getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "netid"    # I

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

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

.method public getHiddenNetworkIdsForCurrentUser()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mHiddenNetworkIdsForCurrentUser:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public handleUserSwitch(I)Ljava/util/List;
    .locals 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 91
    iget-object v6, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    #@2
    invoke-interface {v6}, Ljava/util/Map;->clear()V

    #@5
    .line 92
    iget-object v6, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerFQDNForCurrentUser:Ljava/util/Map;

    #@7
    invoke-interface {v6}, Ljava/util/Map;->clear()V

    #@a
    .line 93
    iget-object v6, p0, Lcom/android/server/wifi/ConfigurationMap;->mHiddenNetworkIdsForCurrentUser:Ljava/util/Set;

    #@c
    invoke-interface {v6}, Ljava/util/Set;->clear()V

    #@f
    .line 95
    iget-object v6, p0, Lcom/android/server/wifi/ConfigurationMap;->mUserManager:Landroid/os/UserManager;

    #@11
    iget v7, p0, Lcom/android/server/wifi/ConfigurationMap;->mCurrentUserId:I

    #@13
    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@16
    move-result-object v5

    #@17
    .line 96
    .local v5, "previousUserProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iput p1, p0, Lcom/android/server/wifi/ConfigurationMap;->mCurrentUserId:I

    #@19
    .line 97
    iget-object v6, p0, Lcom/android/server/wifi/ConfigurationMap;->mUserManager:Landroid/os/UserManager;

    #@1b
    iget v7, p0, Lcom/android/server/wifi/ConfigurationMap;->mCurrentUserId:I

    #@1d
    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@20
    move-result-object v1

    #@21
    .line 99
    .local v1, "currentUserProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    #@23
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@26
    .line 100
    .local v4, "hiddenConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v6, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    #@28
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@2b
    move-result-object v6

    #@2c
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v3

    #@30
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@33
    move-result v6

    #@34
    if-eqz v6, :cond_3

    #@36
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v2

    #@3a
    check-cast v2, Ljava/util/Map$Entry;

    #@3c
    .line 101
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@42
    .line 102
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConfigurationUtil;->isVisibleToAnyProfile(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Z

    #@45
    move-result v6

    #@46
    if-eqz v6, :cond_2

    #@48
    .line 103
    iget-object v7, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    #@4a
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@4d
    move-result-object v6

    #@4e
    check-cast v6, Ljava/lang/Integer;

    #@50
    invoke-interface {v7, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    .line 104
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@55
    if-eqz v6, :cond_1

    #@57
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@59
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@5c
    move-result v6

    #@5d
    if-lez v6, :cond_1

    #@5f
    .line 105
    iget-object v6, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerFQDNForCurrentUser:Ljava/util/Map;

    #@61
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@63
    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@66
    .line 107
    :cond_1
    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@68
    if-eqz v6, :cond_0

    #@6a
    .line 108
    iget-object v6, p0, Lcom/android/server/wifi/ConfigurationMap;->mHiddenNetworkIdsForCurrentUser:Ljava/util/Set;

    #@6c
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@6e
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@71
    move-result-object v7

    #@72
    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@75
    goto :goto_0

    #@76
    .line 110
    :cond_2
    invoke-static {v0, v5}, Lcom/android/server/wifi/WifiConfigurationUtil;->isVisibleToAnyProfile(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Z

    #@79
    move-result v6

    #@7a
    if-eqz v6, :cond_0

    #@7c
    .line 111
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7f
    goto :goto_0

    #@80
    .line 115
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiConfiguration;>;"
    :cond_3
    return-object v4
.end method

.method public put(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 39
    iget-object v1, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    #@2
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@e
    .line 40
    .local v0, "current":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerConfigKey:Ljava/util/Map;

    #@10
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@17
    move-result v2

    #@18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v2

    #@1c
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 42
    iget-object v1, p0, Lcom/android/server/wifi/ConfigurationMap;->mUserManager:Landroid/os/UserManager;

    #@21
    iget v2, p0, Lcom/android/server/wifi/ConfigurationMap;->mCurrentUserId:I

    #@23
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@26
    move-result-object v1

    #@27
    .line 41
    invoke-static {p1, v1}, Lcom/android/server/wifi/WifiConfigurationUtil;->isVisibleToAnyProfile(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_1

    #@2d
    .line 43
    iget-object v1, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    #@2f
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@34
    move-result-object v2

    #@35
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 44
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@3a
    if-eqz v1, :cond_0

    #@3c
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@3e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@41
    move-result v1

    #@42
    if-lez v1, :cond_0

    #@44
    .line 45
    iget-object v1, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerFQDNForCurrentUser:Ljava/util/Map;

    #@46
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@48
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    .line 47
    :cond_0
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@4d
    if-eqz v1, :cond_1

    #@4f
    .line 48
    iget-object v1, p0, Lcom/android/server/wifi/ConfigurationMap;->mHiddenNetworkIdsForCurrentUser:Ljava/util/Set;

    #@51
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@56
    move-result-object v2

    #@57
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5a
    .line 51
    :cond_1
    return-object v0
.end method

.method public remove(I)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .param p1, "netID"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 55
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
    .line 56
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    #@f
    .line 57
    return-object v4

    #@10
    .line 59
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
    .line 61
    iget-object v2, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    #@23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v3

    #@27
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    .line 63
    iget-object v2, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerFQDNForCurrentUser:Ljava/util/Map;

    #@2c
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@2f
    move-result-object v2

    #@30
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object v1

    #@34
    .line 64
    .local v1, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_2

    #@3a
    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v2

    #@3e
    check-cast v2, Ljava/util/Map$Entry;

    #@40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@43
    move-result-object v2

    #@44
    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    #@46
    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@48
    if-ne v2, p1, :cond_1

    #@4a
    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@4d
    .line 70
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/ConfigurationMap;->mHiddenNetworkIdsForCurrentUser:Ljava/util/Set;

    #@4f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@52
    move-result-object v3

    #@53
    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@56
    .line 71
    return-object v0
.end method

.method public sizeForAllUsers()I
    .locals 1

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public sizeForCurrentUser()I
    .locals 1

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public valuesForAllUsers()Ljava/util/Collection;
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
    .line 175
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public valuesForCurrentUser()Ljava/util/Collection;
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
    .line 179
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
