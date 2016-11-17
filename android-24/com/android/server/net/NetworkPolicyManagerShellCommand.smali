.class Lcom/android/server/net/NetworkPolicyManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "NetworkPolicyManagerShellCommand.java"


# instance fields
.field private final mInterface:Landroid/net/INetworkPolicyManager;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/INetworkPolicyManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/INetworkPolicyManager;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    #@3
    .line 47
    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    #@5
    .line 48
    const-string/jumbo v0, "wifi"

    #@8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/net/wifi/WifiManager;

    #@e
    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    #@10
    .line 46
    return-void
.end method

.method private addRestrictBackgroundBlacklist()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 264
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    #@4
    move-result v0

    #@5
    .line 265
    .local v0, "uid":I
    if-gez v0, :cond_0

    #@7
    .line 266
    return v0

    #@8
    .line 268
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    #@a
    const/4 v2, 0x1

    #@b
    invoke-interface {v1, v0, v2}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V

    #@e
    .line 269
    return v3
.end method

.method private addRestrictBackgroundWhitelist()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 246
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    #@4
    move-result v0

    #@5
    .line 247
    .local v0, "uid":I
    if-gez v0, :cond_0

    #@7
    .line 248
    return v0

    #@8
    .line 250
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    #@a
    invoke-interface {v1, v0}, Landroid/net/INetworkPolicyManager;->addRestrictBackgroundWhitelistedUid(I)V

    #@d
    .line 251
    return v2
.end method

.method private getNetworkId(Landroid/net/NetworkPolicy;)Ljava/lang/String;
    .locals 1
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    #@0
    .prologue
    .line 379
    iget-object v0, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@2
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method private getNextBooleanArg()I
    .locals 3

    #@0
    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v1

    #@4
    .line 384
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 385
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    #@a
    .line 386
    const-string/jumbo v2, "Error: didn\'t specify BOOLEAN"

    #@d
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10
    .line 387
    const/4 v2, -0x1

    #@11
    return v2

    #@12
    .line 389
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_1

    #@1c
    const/4 v2, 0x1

    #@1d
    :goto_0
    return v2

    #@1e
    :cond_1
    const/4 v2, 0x0

    #@1f
    goto :goto_0
.end method

.method private getRestrictBackground()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    .line 231
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "Restrict background status: "

    #@7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a
    .line 232
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    #@c
    invoke-interface {v1}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    const-string/jumbo v1, "enabled"

    #@15
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18
    .line 233
    const/4 v1, 0x0

    #@19
    return v1

    #@1a
    .line 232
    :cond_0
    const-string/jumbo v1, "disabled"

    #@1d
    goto :goto_0
.end method

.method private getUidFromNextArg()I
    .locals 5

    #@0
    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v2

    #@4
    .line 394
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 395
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    #@a
    .line 396
    const-string/jumbo v3, "Error: didn\'t specify UID"

    #@d
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10
    .line 397
    const/4 v3, -0x1

    #@11
    return v3

    #@12
    .line 400
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v3

    #@16
    return v3

    #@17
    .line 401
    :catch_0
    move-exception v1

    #@18
    .line 402
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Error: UID ("

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    const-string/jumbo v4, ") should be a number"

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@36
    .line 403
    const/4 v3, -0x2

    #@37
    return v3
.end method

.method private getWifiPolicies()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 345
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    #@3
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    #@6
    move-result-object v2

    #@7
    .line 346
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_0

    #@9
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@c
    move-result v6

    #@d
    .line 347
    .local v6, "size":I
    :goto_0
    new-instance v9, Ljava/util/HashSet;

    #@f
    invoke-direct {v9, v6}, Ljava/util/HashSet;-><init>(I)V

    #@12
    .line 348
    .local v9, "ssids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    #@14
    .line 349
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    .local v1, "config$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v11

    #@1c
    if-eqz v11, :cond_1

    #@1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@24
    .line 350
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@26
    invoke-static {v11}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v11

    #@2a
    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2d
    goto :goto_1

    #@2e
    .line 346
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "config$iterator":Ljava/util/Iterator;
    .end local v6    # "size":I
    .end local v9    # "ssids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const/4 v6, 0x0

    #@2f
    .restart local v6    # "size":I
    goto :goto_0

    #@30
    .line 355
    .restart local v9    # "ssids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    #@32
    invoke-interface {v11, v12}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    #@35
    move-result-object v4

    #@36
    .line 356
    .local v4, "policies":[Landroid/net/NetworkPolicy;
    new-instance v10, Ljava/util/ArrayList;

    #@38
    array-length v11, v4

    #@39
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    #@3c
    .line 357
    .local v10, "wifiPolicies":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkPolicy;>;"
    const/4 v11, 0x0

    #@3d
    array-length v12, v4

    #@3e
    :goto_2
    if-ge v11, v12, :cond_3

    #@40
    aget-object v5, v4, v11

    #@42
    .line 358
    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-object v13, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@44
    invoke-virtual {v13}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    #@47
    move-result v13

    #@48
    if-nez v13, :cond_2

    #@4a
    .line 359
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4d
    .line 360
    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNetworkId(Landroid/net/NetworkPolicy;)Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    .line 361
    .local v3, "netId":Ljava/lang/String;
    invoke-interface {v9, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@54
    .line 357
    .end local v3    # "netId":Ljava/lang/String;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    #@56
    goto :goto_2

    #@57
    .line 365
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    :cond_3
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5a
    move-result-object v8

    #@5b
    .local v8, "ssid$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@5e
    move-result v11

    #@5f
    if-eqz v11, :cond_4

    #@61
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@64
    move-result-object v7

    #@65
    check-cast v7, Ljava/lang/String;

    #@67
    .line 366
    .local v7, "ssid":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->newPolicy(Ljava/lang/String;)Landroid/net/NetworkPolicy;

    #@6a
    move-result-object v5

    #@6b
    .line 367
    .restart local v5    # "policy":Landroid/net/NetworkPolicy;
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6e
    goto :goto_3

    #@6f
    .line 369
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    .end local v7    # "ssid":Ljava/lang/String;
    :cond_4
    return-object v10
.end method

.method private listRestrictBackgroundBlacklist()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 212
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@4
    move-result-object v1

    #@5
    .line 214
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    #@7
    const/4 v5, 0x1

    #@8
    invoke-interface {v4, v5}, Landroid/net/INetworkPolicyManager;->getUidsWithPolicy(I)[I

    #@b
    move-result-object v3

    #@c
    .line 215
    .local v3, "uids":[I
    const-string/jumbo v4, "Restrict background blacklisted UIDs: "

    #@f
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    .line 216
    array-length v4, v3

    #@13
    if-nez v4, :cond_1

    #@15
    .line 217
    const-string/jumbo v4, "none"

    #@18
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b
    .line 225
    :cond_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    #@1e
    .line 226
    return v6

    #@1f
    .line 219
    :cond_1
    const/4 v0, 0x0

    #@20
    .local v0, "i":I
    :goto_0
    array-length v4, v3

    #@21
    if-ge v0, v4, :cond_0

    #@23
    .line 220
    aget v2, v3, v0

    #@25
    .line 221
    .local v2, "uid":I
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@28
    .line 222
    const/16 v4, 0x20

    #@2a
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    #@2d
    .line 219
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0
.end method

.method private listRestrictBackgroundWhitelist()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 195
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@4
    move-result-object v1

    #@5
    .line 196
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    #@7
    invoke-interface {v4}, Landroid/net/INetworkPolicyManager;->getRestrictBackgroundWhitelistedUids()[I

    #@a
    move-result-object v3

    #@b
    .line 197
    .local v3, "uids":[I
    const-string/jumbo v4, "Restrict background whitelisted UIDs: "

    #@e
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    .line 198
    array-length v4, v3

    #@12
    if-nez v4, :cond_1

    #@14
    .line 199
    const-string/jumbo v4, "none"

    #@17
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a
    .line 207
    :cond_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    #@1d
    .line 208
    return v5

    #@1e
    .line 201
    :cond_1
    const/4 v0, 0x0

    #@1f
    .local v0, "i":I
    :goto_0
    array-length v4, v3

    #@20
    if-ge v0, v4, :cond_0

    #@22
    .line 202
    aget v2, v3, v0

    #@24
    .line 203
    .local v2, "uid":I
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@27
    .line 204
    const/16 v4, 0x20

    #@29
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    #@2c
    .line 201
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0
.end method

.method private listWifiNetworks()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v4

    #@4
    .line 283
    .local v4, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 284
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_2

    #@a
    const/4 v1, 0x0

    #@b
    .line 285
    :goto_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getWifiPolicies()Ljava/util/List;

    #@e
    move-result-object v5

    #@f
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v3

    #@13
    .local v3, "policy$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_3

    #@19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Landroid/net/NetworkPolicy;

    #@1f
    .line 286
    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-eqz v1, :cond_1

    #@21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@24
    move-result v5

    #@25
    iget-boolean v6, v2, Landroid/net/NetworkPolicy;->metered:Z

    #@27
    if-ne v5, v6, :cond_0

    #@29
    .line 289
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNetworkId(Landroid/net/NetworkPolicy;)Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30
    .line 290
    const/16 v5, 0x3b

    #@32
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(C)V

    #@35
    .line 291
    iget-boolean v5, v2, Landroid/net/NetworkPolicy;->metered:Z

    #@37
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@3a
    goto :goto_1

    #@3b
    .line 284
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    .end local v3    # "policy$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@3e
    move-result-object v1

    #@3f
    .local v1, "filter":Ljava/lang/Boolean;
    goto :goto_0

    #@40
    .line 293
    .end local v1    # "filter":Ljava/lang/Boolean;
    .restart local v3    # "policy$iterator":Ljava/util/Iterator;
    :cond_3
    const/4 v5, 0x0

    #@41
    return v5
.end method

.method private newPolicy(Ljava/lang/String;)Landroid/net/NetworkPolicy;
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 373
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    #@3
    move-result-object v1

    #@4
    .line 374
    .local v1, "template":Landroid/net/NetworkTemplate;
    const/4 v2, 0x0

    #@5
    invoke-static {v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->newWifiPolicy(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkPolicy;

    #@8
    move-result-object v0

    #@9
    .line 375
    .local v0, "policy":Landroid/net/NetworkPolicy;
    return-object v0
.end method

.method private removeRestrictBackgroundBlacklist()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 273
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    #@4
    move-result v0

    #@5
    .line 274
    .local v0, "uid":I
    if-gez v0, :cond_0

    #@7
    .line 275
    return v0

    #@8
    .line 277
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    #@a
    invoke-interface {v1, v0, v2}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V

    #@d
    .line 278
    return v2
.end method

.method private removeRestrictBackgroundWhitelist()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 255
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    #@4
    move-result v0

    #@5
    .line 256
    .local v0, "uid":I
    if-gez v0, :cond_0

    #@7
    .line 257
    return v0

    #@8
    .line 259
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    #@a
    invoke-interface {v1, v0}, Landroid/net/INetworkPolicyManager;->removeRestrictBackgroundWhitelistedUid(I)V

    #@d
    .line 260
    return v2
.end method

.method private runAdd()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 161
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@4
    move-result-object v0

    #@5
    .line 162
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 163
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_0

    #@b
    .line 164
    const-string/jumbo v2, "Error: didn\'t specify type of data to add"

    #@e
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11
    .line 165
    return v4

    #@12
    .line 167
    :cond_0
    const-string/jumbo v2, "restrict-background-whitelist"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 169
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->addRestrictBackgroundWhitelist()I

    #@1e
    move-result v2

    #@1f
    return v2

    #@20
    .line 167
    :cond_1
    const-string/jumbo v2, "restrict-background-blacklist"

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_2

    #@29
    .line 171
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->addRestrictBackgroundBlacklist()I

    #@2c
    move-result v2

    #@2d
    return v2

    #@2e
    .line 173
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v3, "Error: unknown add type \'"

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    const-string/jumbo v3, "\'"

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4c
    .line 174
    return v4
.end method

.method private runGet()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 110
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@4
    move-result-object v0

    #@5
    .line 111
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 112
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_0

    #@b
    .line 113
    const-string/jumbo v2, "Error: didn\'t specify type of data to get"

    #@e
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11
    .line 114
    return v4

    #@12
    .line 116
    :cond_0
    const-string/jumbo v2, "restrict-background"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 118
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getRestrictBackground()I

    #@1e
    move-result v2

    #@1f
    return v2

    #@20
    .line 120
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v3, "Error: unknown get type \'"

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    const-string/jumbo v3, "\'"

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3e
    .line 121
    return v4
.end method

.method private runList()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 142
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@4
    move-result-object v0

    #@5
    .line 143
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 144
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_0

    #@b
    .line 145
    const-string/jumbo v2, "Error: didn\'t specify type of data to list"

    #@e
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11
    .line 146
    return v4

    #@12
    .line 148
    :cond_0
    const-string/jumbo v2, "wifi-networks"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 150
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listWifiNetworks()I

    #@1e
    move-result v2

    #@1f
    return v2

    #@20
    .line 148
    :cond_1
    const-string/jumbo v2, "restrict-background-whitelist"

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_2

    #@29
    .line 152
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listRestrictBackgroundWhitelist()I

    #@2c
    move-result v2

    #@2d
    return v2

    #@2e
    .line 148
    :cond_2
    const-string/jumbo v2, "restrict-background-blacklist"

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_3

    #@37
    .line 154
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listRestrictBackgroundBlacklist()I

    #@3a
    move-result v2

    #@3b
    return v2

    #@3c
    .line 156
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v3, "Error: unknown list type \'"

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    const-string/jumbo v3, "\'"

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a
    .line 157
    return v4
.end method

.method private runRemove()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 178
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@4
    move-result-object v0

    #@5
    .line 179
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 180
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_0

    #@b
    .line 181
    const-string/jumbo v2, "Error: didn\'t specify type of data to remove"

    #@e
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11
    .line 182
    return v4

    #@12
    .line 184
    :cond_0
    const-string/jumbo v2, "restrict-background-whitelist"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 186
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->removeRestrictBackgroundWhitelist()I

    #@1e
    move-result v2

    #@1f
    return v2

    #@20
    .line 184
    :cond_1
    const-string/jumbo v2, "restrict-background-blacklist"

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_2

    #@29
    .line 188
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->removeRestrictBackgroundBlacklist()I

    #@2c
    move-result v2

    #@2d
    return v2

    #@2e
    .line 190
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v3, "Error: unknown remove type \'"

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    const-string/jumbo v3, "\'"

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4c
    .line 191
    return v4
.end method

.method private runSet()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 125
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@4
    move-result-object v0

    #@5
    .line 126
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 127
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_0

    #@b
    .line 128
    const-string/jumbo v2, "Error: didn\'t specify type of data to set"

    #@e
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11
    .line 129
    return v4

    #@12
    .line 131
    :cond_0
    const-string/jumbo v2, "metered-network"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 133
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->setMeteredWifiNetwork()I

    #@1e
    move-result v2

    #@1f
    return v2

    #@20
    .line 131
    :cond_1
    const-string/jumbo v2, "restrict-background"

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_2

    #@29
    .line 135
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->setRestrictBackground()I

    #@2c
    move-result v2

    #@2d
    return v2

    #@2e
    .line 137
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v3, "Error: unknown set type \'"

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    const-string/jumbo v3, "\'"

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4c
    .line 138
    return v4
.end method

.method private setMeteredWifiNetwork()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v11

    #@4
    .line 298
    .local v11, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@7
    move-result-object v5

    #@8
    .line 299
    .local v5, "id":Ljava/lang/String;
    if-nez v5, :cond_0

    #@a
    .line 300
    const-string/jumbo v13, "Error: didn\'t specify ID"

    #@d
    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10
    .line 301
    const/4 v13, -0x1

    #@11
    return v13

    #@12
    .line 303
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 304
    .local v1, "arg":Ljava/lang/String;
    if-nez v1, :cond_1

    #@18
    .line 305
    const-string/jumbo v13, "Error: didn\'t specify BOOLEAN"

    #@1b
    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e
    .line 306
    const/4 v13, -0x1

    #@1f
    return v13

    #@20
    .line 308
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@23
    move-result-object v13

    #@24
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    #@27
    move-result v6

    #@28
    .line 309
    .local v6, "metered":Z
    move-object/from16 v0, p0

    #@2a
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    #@2c
    const/4 v14, 0x0

    #@2d
    invoke-interface {v13, v14}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    #@30
    move-result-object v9

    #@31
    .line 310
    .local v9, "policies":[Landroid/net/NetworkPolicy;
    const/4 v2, 0x0

    #@32
    .line 312
    .local v2, "changed":Z
    const/4 v13, 0x0

    #@33
    array-length v14, v9

    #@34
    :goto_0
    if-ge v13, v14, :cond_4

    #@36
    aget-object v10, v9, v13

    #@38
    .line 313
    .local v10, "policy":Landroid/net/NetworkPolicy;
    iget-object v15, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@3a
    invoke-virtual {v15}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    #@3d
    move-result v15

    #@3e
    if-nez v15, :cond_2

    #@40
    iget-boolean v15, v10, Landroid/net/NetworkPolicy;->metered:Z

    #@42
    if-ne v15, v6, :cond_3

    #@44
    .line 312
    :cond_2
    :goto_1
    add-int/lit8 v13, v13, 0x1

    #@46
    goto :goto_0

    #@47
    .line 316
    :cond_3
    move-object/from16 v0, p0

    #@49
    invoke-direct {v0, v10}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNetworkId(Landroid/net/NetworkPolicy;)Ljava/lang/String;

    #@4c
    move-result-object v7

    #@4d
    .line 317
    .local v7, "networkId":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v15

    #@51
    if-eqz v15, :cond_2

    #@53
    .line 318
    const-string/jumbo v15, "NetworkPolicy"

    #@56
    new-instance v16, Ljava/lang/StringBuilder;

    #@58
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v17, "Changing "

    #@5e
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v16

    #@62
    move-object/from16 v0, v16

    #@64
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v16

    #@68
    const-string/jumbo v17, " metered status to "

    #@6b
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v16

    #@6f
    move-object/from16 v0, v16

    #@71
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@74
    move-result-object v16

    #@75
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v16

    #@79
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7c
    .line 319
    iput-boolean v6, v10, Landroid/net/NetworkPolicy;->metered:Z

    #@7e
    .line 320
    const/4 v2, 0x1

    #@7f
    goto :goto_1

    #@80
    .line 323
    .end local v7    # "networkId":Ljava/lang/String;
    .end local v10    # "policy":Landroid/net/NetworkPolicy;
    :cond_4
    if-eqz v2, :cond_5

    #@82
    .line 324
    move-object/from16 v0, p0

    #@84
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    #@86
    invoke-interface {v13, v9}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    #@89
    .line 325
    const/4 v13, 0x0

    #@8a
    return v13

    #@8b
    .line 328
    :cond_5
    move-object/from16 v0, p0

    #@8d
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    #@8f
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    #@92
    move-result-object v13

    #@93
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@96
    move-result-object v4

    #@97
    .local v4, "config$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@9a
    move-result v13

    #@9b
    if-eqz v13, :cond_7

    #@9d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a0
    move-result-object v3

    #@a1
    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    #@a3
    .line 329
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@a5
    invoke-static {v13}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    #@a8
    move-result-object v12

    #@a9
    .line 330
    .local v12, "ssid":Ljava/lang/String;
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ac
    move-result v13

    #@ad
    if-eqz v13, :cond_6

    #@af
    .line 331
    move-object/from16 v0, p0

    #@b1
    invoke-direct {v0, v12}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->newPolicy(Ljava/lang/String;)Landroid/net/NetworkPolicy;

    #@b4
    move-result-object v10

    #@b5
    .line 332
    .restart local v10    # "policy":Landroid/net/NetworkPolicy;
    const/4 v13, 0x1

    #@b6
    iput-boolean v13, v10, Landroid/net/NetworkPolicy;->metered:Z

    #@b8
    .line 333
    const-string/jumbo v13, "NetworkPolicy"

    #@bb
    new-instance v14, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v15, "Creating new policy for "

    #@c3
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v14

    #@c7
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v14

    #@cb
    const-string/jumbo v15, ": "

    #@ce
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v14

    #@d2
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v14

    #@d6
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v14

    #@da
    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@dd
    .line 334
    array-length v13, v9

    #@de
    add-int/lit8 v13, v13, 0x1

    #@e0
    new-array v8, v13, [Landroid/net/NetworkPolicy;

    #@e2
    .line 335
    .local v8, "newPolicies":[Landroid/net/NetworkPolicy;
    array-length v13, v9

    #@e3
    const/4 v14, 0x0

    #@e4
    const/4 v15, 0x0

    #@e5
    invoke-static {v9, v14, v8, v15, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@e8
    .line 336
    array-length v13, v8

    #@e9
    add-int/lit8 v13, v13, -0x1

    #@eb
    aput-object v10, v8, v13

    #@ed
    .line 337
    move-object/from16 v0, p0

    #@ef
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    #@f1
    invoke-interface {v13, v8}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    #@f4
    goto :goto_2

    #@f5
    .line 340
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "newPolicies":[Landroid/net/NetworkPolicy;
    .end local v10    # "policy":Landroid/net/NetworkPolicy;
    .end local v12    # "ssid":Ljava/lang/String;
    :cond_7
    const/4 v13, 0x0

    #@f6
    return v13
.end method

.method private setRestrictBackground()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 237
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextBooleanArg()I

    #@4
    move-result v0

    #@5
    .line 238
    .local v0, "enabled":I
    if-gez v0, :cond_0

    #@7
    .line 239
    return v0

    #@8
    .line 241
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Landroid/net/INetworkPolicyManager;

    #@a
    if-lez v0, :cond_1

    #@c
    const/4 v1, 0x1

    #@d
    :goto_0
    invoke-interface {v3, v1}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V

    #@10
    .line 242
    return v2

    #@11
    :cond_1
    move v1, v2

    #@12
    .line 241
    goto :goto_0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    if-nez p1, :cond_0

    #@2
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    #@5
    move-result v2

    #@6
    return v2

    #@7
    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@a
    move-result-object v1

    #@b
    .line 58
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string/jumbo v2, "get"

    #@e
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 60
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runGet()I

    #@17
    move-result v2

    #@18
    return v2

    #@19
    .line 58
    :cond_1
    const-string/jumbo v2, "set"

    #@1c
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_2

    #@22
    .line 62
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runSet()I

    #@25
    move-result v2

    #@26
    return v2

    #@27
    .line 58
    :cond_2
    const-string/jumbo v2, "list"

    #@2a
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_3

    #@30
    .line 64
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runList()I

    #@33
    move-result v2

    #@34
    return v2

    #@35
    .line 58
    :cond_3
    const-string/jumbo v2, "add"

    #@38
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_4

    #@3e
    .line 66
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runAdd()I

    #@41
    move-result v2

    #@42
    return v2

    #@43
    .line 58
    :cond_4
    const-string/jumbo v2, "remove"

    #@46
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v2

    #@4a
    if-eqz v2, :cond_5

    #@4c
    .line 68
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runRemove()I

    #@4f
    move-result v2

    #@50
    return v2

    #@51
    .line 70
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@54
    move-result v2

    #@55
    return v2

    #@56
    .line 72
    :catch_0
    move-exception v0

    #@57
    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v3, "Remote exception: "

    #@5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6e
    .line 75
    const/4 v2, -0x1

    #@6f
    return v2
.end method

.method public onHelp()V
    .locals 2

    #@0
    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    .line 81
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "Network policy manager (netpolicy) commands:"

    #@7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a
    .line 82
    const-string/jumbo v1, "  help"

    #@d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10
    .line 83
    const-string/jumbo v1, "    Print this help text."

    #@13
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16
    .line 84
    const-string/jumbo v1, ""

    #@19
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c
    .line 85
    const-string/jumbo v1, "  add restrict-background-whitelist UID"

    #@1f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 86
    const-string/jumbo v1, "    Adds a UID to the whitelist for restrict background usage."

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28
    .line 87
    const-string/jumbo v1, "  add restrict-background-blacklist UID"

    #@2b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e
    .line 88
    const-string/jumbo v1, "    Adds a UID to the blacklist for restrict background usage."

    #@31
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@34
    .line 89
    const-string/jumbo v1, "  get restrict-background"

    #@37
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a
    .line 90
    const-string/jumbo v1, "    Gets the global restrict background usage status."

    #@3d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@40
    .line 91
    const-string/jumbo v1, "  list wifi-networks [BOOLEAN]"

    #@43
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@46
    .line 92
    const-string/jumbo v1, "    Lists all saved wifi networks and whether they are metered or not."

    #@49
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4c
    .line 93
    const-string/jumbo v1, "    If a boolean argument is passed, filters just the metered (or unmetered)"

    #@4f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@52
    .line 94
    const-string/jumbo v1, "    networks."

    #@55
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@58
    .line 95
    const-string/jumbo v1, "  list restrict-background-whitelist"

    #@5b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5e
    .line 96
    const-string/jumbo v1, "    Lists UIDs that are whitelisted for restrict background usage."

    #@61
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@64
    .line 97
    const-string/jumbo v1, "  list restrict-background-blacklist"

    #@67
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6a
    .line 98
    const-string/jumbo v1, "    Lists UIDs that are blacklisted for restrict background usage."

    #@6d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@70
    .line 99
    const-string/jumbo v1, "  remove restrict-background-whitelist UID"

    #@73
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@76
    .line 100
    const-string/jumbo v1, "    Removes a UID from the whitelist for restrict background usage."

    #@79
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7c
    .line 101
    const-string/jumbo v1, "  remove restrict-background-blacklist UID"

    #@7f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@82
    .line 102
    const-string/jumbo v1, "    Removes a UID from the blacklist for restrict background usage."

    #@85
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@88
    .line 103
    const-string/jumbo v1, "  set metered-network ID BOOLEAN"

    #@8b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8e
    .line 104
    const-string/jumbo v1, "    Toggles whether the given wi-fi network is metered."

    #@91
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@94
    .line 105
    const-string/jumbo v1, "  set restrict-background BOOLEAN"

    #@97
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9a
    .line 106
    const-string/jumbo v1, "    Sets the global restrict background usage status."

    #@9d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a0
    .line 79
    return-void
.end method
