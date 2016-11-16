.class public Lcom/android/server/wifi/util/TelephonyUtil;
.super Ljava/lang/Object;
.source "TelephonyUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static buildIdentity(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "eapMethod"    # I
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "mccMnc"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x6

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, 0x3

    #@4
    .line 57
    if-eqz p1, :cond_0

    #@6
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 58
    :cond_0
    return-object v5

    #@d
    .line 62
    :cond_1
    const/4 v3, 0x4

    #@e
    if-ne p0, v3, :cond_4

    #@10
    .line 63
    const-string/jumbo v2, "1"

    #@13
    .line 75
    .local v2, "prefix":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_2

    #@15
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_7

    #@1b
    .line 83
    :cond_2
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 84
    .local v0, "mcc":Ljava/lang/String;
    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 87
    .local v1, "mnc":Ljava/lang/String;
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    const-string/jumbo v4, "@wlan.mnc"

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    const-string/jumbo v4, ".mcc"

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    const-string/jumbo v4, ".3gppnetwork.org"

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    return-object v3

    #@52
    .line 64
    .end local v0    # "mcc":Ljava/lang/String;
    .end local v1    # "mnc":Ljava/lang/String;
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x5

    #@53
    if-ne p0, v3, :cond_5

    #@55
    .line 65
    const-string/jumbo v2, "0"

    #@58
    .restart local v2    # "prefix":Ljava/lang/String;
    goto :goto_0

    #@59
    .line 66
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_5
    if-ne p0, v7, :cond_6

    #@5b
    .line 67
    const-string/jumbo v2, "6"

    #@5e
    .restart local v2    # "prefix":Ljava/lang/String;
    goto :goto_0

    #@5f
    .line 69
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_6
    return-object v5

    #@60
    .line 76
    .restart local v2    # "prefix":Ljava/lang/String;
    :cond_7
    invoke-virtual {p2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    .line 77
    .restart local v0    # "mcc":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    .line 78
    .restart local v1    # "mnc":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@6b
    move-result v3

    #@6c
    const/4 v4, 0x2

    #@6d
    if-ne v3, v4, :cond_3

    #@6f
    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v4, "0"

    #@77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v3

    #@7b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v3

    #@7f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v1

    #@83
    goto :goto_1
.end method

.method public static getSimIdentity(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eapMethod"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 33
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@4
    move-result-object v2

    #@5
    .line 34
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_1

    #@7
    .line 35
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 36
    .local v0, "imsi":Ljava/lang/String;
    const-string/jumbo v1, ""

    #@e
    .line 38
    .local v1, "mccMnc":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    #@11
    move-result v3

    #@12
    const/4 v4, 0x5

    #@13
    if-ne v3, v4, :cond_0

    #@15
    .line 39
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 42
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/util/TelephonyUtil;->buildIdentity(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    return-object v3

    #@1e
    .line 44
    .end local v0    # "imsi":Ljava/lang/String;
    .end local v1    # "mccMnc":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public static isSimConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 97
    if-eqz p0, :cond_0

    #@2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@4
    if-nez v0, :cond_1

    #@6
    .line 98
    :cond_0
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 101
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@a
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@d
    move-result v0

    #@e
    invoke-static {v0}, Lcom/android/server/wifi/util/TelephonyUtil;->isSimEapMethod(I)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public static isSimEapMethod(I)Z
    .locals 2
    .param p0, "eapMethod"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 111
    const/4 v1, 0x4

    #@2
    if-eq p0, v1, :cond_0

    #@4
    .line 112
    const/4 v1, 0x5

    #@5
    if-ne p0, v1, :cond_1

    #@7
    .line 111
    :cond_0
    :goto_0
    return v0

    #@8
    .line 113
    :cond_1
    const/4 v1, 0x6

    #@9
    if-eq p0, v1, :cond_0

    #@b
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method
