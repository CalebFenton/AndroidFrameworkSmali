.class public Lcom/android/server/net/IpConfigStore;
.super Ljava/lang/Object;
.source "IpConfigStore.java"


# static fields
.field private static synthetic -android_net_IpConfiguration$IpAssignmentSwitchesValues:[I = null

.field private static synthetic -android_net_IpConfiguration$ProxySettingsSwitchesValues:[I = null

.field private static final DBG:Z = true

.field protected static final DNS_KEY:Ljava/lang/String; = "dns"

.field protected static final EOS:Ljava/lang/String; = "eos"

.field protected static final EXCLUSION_LIST_KEY:Ljava/lang/String; = "exclusionList"

.field protected static final GATEWAY_KEY:Ljava/lang/String; = "gateway"

.field protected static final ID_KEY:Ljava/lang/String; = "id"

.field protected static final IPCONFIG_FILE_VERSION:I = 0x2

.field protected static final IP_ASSIGNMENT_KEY:Ljava/lang/String; = "ipAssignment"

.field protected static final LINK_ADDRESS_KEY:Ljava/lang/String; = "linkAddress"

.field protected static final PROXY_HOST_KEY:Ljava/lang/String; = "proxyHost"

.field protected static final PROXY_PAC_FILE:Ljava/lang/String; = "proxyPac"

.field protected static final PROXY_PORT_KEY:Ljava/lang/String; = "proxyPort"

.field protected static final PROXY_SETTINGS_KEY:Ljava/lang/String; = "proxySettings"

.field private static final TAG:Ljava/lang/String; = "IpConfigStore"


# instance fields
.field protected final mWriter:Lcom/android/server/net/DelayedDiskWrite;


# direct methods
.method private static synthetic -getandroid_net_IpConfiguration$IpAssignmentSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/net/IpConfigStore;->-android_net_IpConfiguration$IpAssignmentSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/net/IpConfigStore;->-android_net_IpConfiguration$IpAssignmentSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/net/IpConfiguration$IpAssignment;->values()[Landroid/net/IpConfiguration$IpAssignment;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    #@10
    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    #@19
    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    #@22
    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Lcom/android/server/net/IpConfigStore;->-android_net_IpConfiguration$IpAssignmentSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method private static synthetic -getandroid_net_IpConfiguration$ProxySettingsSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/net/IpConfigStore;->-android_net_IpConfiguration$ProxySettingsSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/net/IpConfigStore;->-android_net_IpConfiguration$ProxySettingsSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/net/IpConfiguration$ProxySettings;->values()[Landroid/net/IpConfiguration$ProxySettings;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    #@10
    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    #@19
    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    #@22
    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    #@2b
    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    #@32
    :goto_3
    sput-object v0, Lcom/android/server/net/IpConfigStore;->-android_net_IpConfiguration$ProxySettingsSwitchesValues:[I

    #@34
    return-object v0

    #@35
    :catch_0
    move-exception v1

    #@36
    goto :goto_3

    #@37
    :catch_1
    move-exception v1

    #@38
    goto :goto_2

    #@39
    :catch_2
    move-exception v1

    #@3a
    goto :goto_1

    #@3b
    :catch_3
    move-exception v1

    #@3c
    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/server/net/IpConfigStore;Ljava/io/DataOutputStream;ILandroid/net/IpConfiguration;)Z
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .param p2, "configKey"    # I
    .param p3, "config"    # Landroid/net/IpConfiguration;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/IpConfigStore;->writeConfig(Ljava/io/DataOutputStream;ILandroid/net/IpConfiguration;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    new-instance v0, Lcom/android/server/net/DelayedDiskWrite;

    #@5
    invoke-direct {v0}, Lcom/android/server/net/DelayedDiskWrite;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    #@a
    .line 62
    return-void
.end method

.method private writeConfig(Ljava/io/DataOutputStream;ILandroid/net/IpConfiguration;)Z
    .locals 11
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .param p2, "configKey"    # I
    .param p3, "config"    # Landroid/net/IpConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    const/4 v8, 0x0

    #@1
    .line 71
    .local v8, "written":Z
    :try_start_0
    invoke-static {}, Lcom/android/server/net/IpConfigStore;->-getandroid_net_IpConfiguration$IpAssignmentSwitchesValues()[I

    #@4
    move-result-object v9

    #@5
    iget-object v10, p3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    #@7
    invoke-virtual {v10}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    #@a
    move-result v10

    #@b
    aget v9, v9, v10

    #@d
    packed-switch v9, :pswitch_data_0

    #@10
    .line 105
    const-string/jumbo v9, "Ignore invalid ip assignment while writing"

    #@13
    invoke-virtual {p0, v9}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    #@16
    .line 109
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/android/server/net/IpConfigStore;->-getandroid_net_IpConfiguration$ProxySettingsSwitchesValues()[I

    #@19
    move-result-object v9

    #@1a
    iget-object v10, p3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    #@1c
    invoke-virtual {v10}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    #@1f
    move-result v10

    #@20
    aget v9, v9, v10

    #@22
    packed-switch v9, :pswitch_data_1

    #@25
    .line 142
    const-string/jumbo v9, "Ignore invalid proxy settings while writing"

    #@28
    invoke-virtual {p0, v9}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    #@2b
    .line 146
    :goto_1
    :pswitch_1
    if-eqz v8, :cond_0

    #@2d
    .line 147
    const-string/jumbo v9, "id"

    #@30
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@33
    .line 148
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 153
    :cond_0
    :goto_2
    const-string/jumbo v9, "eos"

    #@39
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@3c
    .line 155
    return v8

    #@3d
    .line 73
    :pswitch_2
    :try_start_1
    const-string/jumbo v9, "ipAssignment"

    #@40
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@43
    .line 74
    iget-object v9, p3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    #@45
    invoke-virtual {v9}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    #@48
    move-result-object v9

    #@49
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@4c
    .line 75
    iget-object v7, p3, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    #@4e
    .line 76
    .local v7, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    if-eqz v7, :cond_3

    #@50
    .line 77
    iget-object v9, v7, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    #@52
    if-eqz v9, :cond_1

    #@54
    .line 78
    iget-object v4, v7, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    #@56
    .line 79
    .local v4, "ipAddress":Landroid/net/LinkAddress;
    const-string/jumbo v9, "linkAddress"

    #@59
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@5c
    .line 80
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@5f
    move-result-object v9

    #@60
    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@63
    move-result-object v9

    #@64
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@67
    .line 81
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getPrefixLength()I

    #@6a
    move-result v9

    #@6b
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@6e
    .line 83
    .end local v4    # "ipAddress":Landroid/net/LinkAddress;
    :cond_1
    iget-object v9, v7, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    #@70
    if-eqz v9, :cond_2

    #@72
    .line 84
    const-string/jumbo v9, "gateway"

    #@75
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@78
    .line 85
    const/4 v9, 0x0

    #@79
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@7c
    .line 86
    const/4 v9, 0x1

    #@7d
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@80
    .line 87
    iget-object v9, v7, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    #@82
    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@85
    move-result-object v9

    #@86
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@89
    .line 89
    :cond_2
    iget-object v9, v7, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    #@8b
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8e
    move-result-object v3

    #@8f
    .local v3, "inetAddr$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@92
    move-result v9

    #@93
    if-eqz v9, :cond_3

    #@95
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@98
    move-result-object v2

    #@99
    check-cast v2, Ljava/net/InetAddress;

    #@9b
    .line 90
    .local v2, "inetAddr":Ljava/net/InetAddress;
    const-string/jumbo v9, "dns"

    #@9e
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@a1
    .line 91
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@a4
    move-result-object v9

    #@a5
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    #@a8
    goto :goto_3

    #@a9
    .line 150
    .end local v2    # "inetAddr":Ljava/net/InetAddress;
    .end local v3    # "inetAddr$iterator":Ljava/util/Iterator;
    .end local v7    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :catch_0
    move-exception v0

    #@aa
    .line 151
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v10, "Failure in writing "

    #@b2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v9

    #@b6
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v9

    #@ba
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v9

    #@be
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v9

    #@c2
    invoke-virtual {p0, v9}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    #@c5
    goto/16 :goto_2

    #@c7
    .line 94
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v7    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :cond_3
    const/4 v8, 0x1

    #@c8
    .line 95
    goto/16 :goto_0

    #@ca
    .line 97
    .end local v7    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :pswitch_3
    :try_start_2
    const-string/jumbo v9, "ipAssignment"

    #@cd
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@d0
    .line 98
    iget-object v9, p3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    #@d2
    invoke-virtual {v9}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    #@d5
    move-result-object v9

    #@d6
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@d9
    .line 99
    const/4 v8, 0x1

    #@da
    .line 100
    goto/16 :goto_0

    #@dc
    .line 111
    :pswitch_4
    iget-object v6, p3, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    #@de
    .line 112
    .local v6, "proxyProperties":Landroid/net/ProxyInfo;
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    #@e1
    move-result-object v1

    #@e2
    .line 113
    .local v1, "exclusionList":Ljava/lang/String;
    const-string/jumbo v9, "proxySettings"

    #@e5
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@e8
    .line 114
    iget-object v9, p3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    #@ea
    invoke-virtual {v9}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    #@ed
    move-result-object v9

    #@ee
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@f1
    .line 115
    const-string/jumbo v9, "proxyHost"

    #@f4
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@f7
    .line 116
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    #@fa
    move-result-object v9

    #@fb
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@fe
    .line 117
    const-string/jumbo v9, "proxyPort"

    #@101
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@104
    .line 118
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getPort()I

    #@107
    move-result v9

    #@108
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@10b
    .line 119
    if-eqz v1, :cond_4

    #@10d
    .line 120
    const-string/jumbo v9, "exclusionList"

    #@110
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@113
    .line 121
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@116
    .line 123
    :cond_4
    const/4 v8, 0x1

    #@117
    .line 124
    goto/16 :goto_1

    #@119
    .line 126
    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v6    # "proxyProperties":Landroid/net/ProxyInfo;
    :pswitch_5
    iget-object v5, p3, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    #@11b
    .line 127
    .local v5, "proxyPacProperties":Landroid/net/ProxyInfo;
    const-string/jumbo v9, "proxySettings"

    #@11e
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@121
    .line 128
    iget-object v9, p3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    #@123
    invoke-virtual {v9}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    #@126
    move-result-object v9

    #@127
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@12a
    .line 129
    const-string/jumbo v9, "proxyPac"

    #@12d
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@130
    .line 130
    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@133
    move-result-object v9

    #@134
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@137
    move-result-object v9

    #@138
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@13b
    .line 131
    const/4 v8, 0x1

    #@13c
    .line 132
    goto/16 :goto_1

    #@13e
    .line 134
    .end local v5    # "proxyPacProperties":Landroid/net/ProxyInfo;
    :pswitch_6
    const-string/jumbo v9, "proxySettings"

    #@141
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@144
    .line 135
    iget-object v9, p3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    #@146
    invoke-virtual {v9}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    #@149
    move-result-object v9

    #@14a
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    #@14d
    .line 136
    const/4 v8, 0x1

    #@14e
    .line 137
    goto/16 :goto_1

    #@150
    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    #@15a
    .line 109
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 331
    const-string/jumbo v0, "IpConfigStore"

    #@3
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 330
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 327
    const-string/jumbo v0, "IpConfigStore"

    #@3
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 326
    return-void
.end method

.method public readIpAndProxyConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 29
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 171
    new-instance v17, Landroid/util/SparseArray;

    #@2
    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    #@5
    .line 173
    .local v17, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    const/4 v12, 0x0

    #@6
    .line 175
    .local v12, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v13, Ljava/io/DataInputStream;

    #@8
    new-instance v27, Ljava/io/BufferedInputStream;

    #@a
    new-instance v28, Ljava/io/FileInputStream;

    #@c
    move-object/from16 v0, v28

    #@e
    move-object/from16 v1, p1

    #@10
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    #@13
    invoke-direct/range {v27 .. v28}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@16
    move-object/from16 v0, v27

    #@18
    invoke-direct {v13, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1b
    .line 177
    .end local v12    # "in":Ljava/io/DataInputStream;
    .local v13, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    #@1e
    move-result v26

    #@1f
    .line 178
    .local v26, "version":I
    const/16 v27, 0x2

    #@21
    move/from16 v0, v26

    #@23
    move/from16 v1, v27

    #@25
    if-eq v0, v1, :cond_1

    #@27
    const/16 v27, 0x1

    #@29
    move/from16 v0, v26

    #@2b
    move/from16 v1, v27

    #@2d
    if-eq v0, v1, :cond_1

    #@2f
    .line 179
    const-string/jumbo v27, "Bad version on IP configuration file, ignore read"

    #@32
    move-object/from16 v0, p0

    #@34
    move-object/from16 v1, v27

    #@36
    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    .line 180
    const/16 v27, 0x0

    #@3b
    .line 316
    if-eqz v13, :cond_0

    #@3d
    .line 318
    :try_start_2
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@40
    .line 180
    :cond_0
    :goto_0
    return-object v27

    #@41
    .line 319
    :catch_0
    move-exception v6

    #@42
    .local v6, "e":Ljava/lang/Exception;
    goto :goto_0

    #@43
    .line 287
    .end local v6    # "e":Ljava/lang/Exception;
    .local v3, "config":Landroid/net/IpConfiguration;
    .local v10, "id":I
    .local v14, "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .local v15, "key":Ljava/lang/String;
    .local v22, "proxyPort":I
    .local v23, "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .local v25, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :pswitch_0
    :try_start_3
    new-instance v20, Landroid/net/ProxyInfo;

    #@45
    move-object/from16 v0, v20

    #@47
    move-object/from16 v1, v19

    #@49
    move/from16 v2, v22

    #@4b
    invoke-direct {v0, v1, v2, v8}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@4e
    .line 288
    .local v20, "proxyInfo":Landroid/net/ProxyInfo;
    move-object/from16 v0, v23

    #@50
    iput-object v0, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    #@52
    .line 289
    move-object/from16 v0, v20

    #@54
    iput-object v0, v3, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    #@56
    .line 184
    .end local v3    # "config":Landroid/net/IpConfiguration;
    .end local v10    # "id":I
    .end local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v15    # "key":Ljava/lang/String;
    .end local v20    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v22    # "proxyPort":I
    .end local v23    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v25    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :cond_1
    :goto_1
    const/4 v10, -0x1

    #@57
    .line 186
    .restart local v10    # "id":I
    sget-object v14, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    #@59
    .line 187
    .restart local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    sget-object v23, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    #@5b
    .line 188
    .restart local v23    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    new-instance v25, Landroid/net/StaticIpConfiguration;

    #@5d
    invoke-direct/range {v25 .. v25}, Landroid/net/StaticIpConfiguration;-><init>()V

    #@60
    .line 189
    .restart local v25    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    const/16 v19, 0x0

    #@62
    .line 190
    .local v19, "proxyHost":Ljava/lang/String;
    const/16 v18, 0x0

    #@64
    .line 191
    .local v18, "pacFileUrl":Ljava/lang/String;
    const/16 v22, -0x1

    #@66
    .line 192
    .restart local v22    # "proxyPort":I
    const/4 v8, 0x0

    #@67
    .line 196
    .end local v18    # "pacFileUrl":Ljava/lang/String;
    .end local v19    # "proxyHost":Ljava/lang/String;
    :goto_2
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6a
    move-result-object v15

    #@6b
    .line 198
    .restart local v15    # "key":Ljava/lang/String;
    :try_start_4
    const-string/jumbo v27, "id"

    #@6e
    move-object/from16 v0, v27

    #@70
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v27

    #@74
    if-eqz v27, :cond_2

    #@76
    .line 199
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    #@79
    move-result v10

    #@7a
    goto :goto_2

    #@7b
    .line 200
    :cond_2
    const-string/jumbo v27, "ipAssignment"

    #@7e
    move-object/from16 v0, v27

    #@80
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@83
    move-result v27

    #@84
    if-eqz v27, :cond_3

    #@86
    .line 201
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@89
    move-result-object v27

    #@8a
    invoke-static/range {v27 .. v27}, Landroid/net/IpConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$IpAssignment;

    #@8d
    move-result-object v14

    #@8e
    goto :goto_2

    #@8f
    .line 202
    :cond_3
    const-string/jumbo v27, "linkAddress"

    #@92
    move-object/from16 v0, v27

    #@94
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@97
    move-result v27

    #@98
    if-eqz v27, :cond_6

    #@9a
    .line 203
    new-instance v16, Landroid/net/LinkAddress;

    #@9c
    .line 204
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@9f
    move-result-object v27

    #@a0
    invoke-static/range {v27 .. v27}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@a3
    move-result-object v27

    #@a4
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    #@a7
    move-result v28

    #@a8
    .line 203
    move-object/from16 v0, v16

    #@aa
    move-object/from16 v1, v27

    #@ac
    move/from16 v2, v28

    #@ae
    invoke-direct {v0, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    #@b1
    .line 205
    .local v16, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@b4
    move-result-object v27

    #@b5
    move-object/from16 v0, v27

    #@b7
    instance-of v0, v0, Ljava/net/Inet4Address;

    #@b9
    move/from16 v27, v0

    #@bb
    if-eqz v27, :cond_5

    #@bd
    .line 206
    move-object/from16 v0, v25

    #@bf
    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    #@c1
    move-object/from16 v27, v0

    #@c3
    if-nez v27, :cond_5

    #@c5
    .line 207
    move-object/from16 v0, v16

    #@c7
    move-object/from16 v1, v25

    #@c9
    iput-object v0, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@cb
    goto :goto_2

    #@cc
    .line 257
    .end local v16    # "linkAddr":Landroid/net/LinkAddress;
    :catch_1
    move-exception v7

    #@cd
    .line 258
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    new-instance v27, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    const-string/jumbo v28, "Ignore invalid address while reading"

    #@d5
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v27

    #@d9
    move-object/from16 v0, v27

    #@db
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v27

    #@df
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v27

    #@e3
    move-object/from16 v0, p0

    #@e5
    move-object/from16 v1, v27

    #@e7
    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@ea
    goto/16 :goto_2

    #@ec
    .line 312
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v10    # "id":I
    .end local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v15    # "key":Ljava/lang/String;
    .end local v22    # "proxyPort":I
    .end local v23    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v25    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v26    # "version":I
    :catch_2
    move-exception v11

    #@ed
    .local v11, "ignore":Ljava/io/EOFException;
    move-object v12, v13

    #@ee
    .line 316
    .end local v13    # "in":Ljava/io/DataInputStream;
    :goto_3
    if-eqz v12, :cond_4

    #@f0
    .line 318
    :try_start_6
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    #@f3
    .line 323
    .end local v11    # "ignore":Ljava/io/EOFException;
    :cond_4
    :goto_4
    return-object v17

    #@f4
    .line 209
    .restart local v10    # "id":I
    .restart local v13    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v16    # "linkAddr":Landroid/net/LinkAddress;
    .restart local v22    # "proxyPort":I
    .restart local v23    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v25    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v26    # "version":I
    :cond_5
    :try_start_7
    new-instance v27, Ljava/lang/StringBuilder;

    #@f6
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@f9
    const-string/jumbo v28, "Non-IPv4 or duplicate address: "

    #@fc
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v27

    #@100
    move-object/from16 v0, v27

    #@102
    move-object/from16 v1, v16

    #@104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v27

    #@108
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b
    move-result-object v27

    #@10c
    move-object/from16 v0, p0

    #@10e
    move-object/from16 v1, v27

    #@110
    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@113
    goto/16 :goto_2

    #@115
    .line 313
    .end local v10    # "id":I
    .end local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v15    # "key":Ljava/lang/String;
    .end local v16    # "linkAddr":Landroid/net/LinkAddress;
    .end local v22    # "proxyPort":I
    .end local v23    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v25    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v26    # "version":I
    :catch_3
    move-exception v5

    #@116
    .local v5, "e":Ljava/io/IOException;
    move-object v12, v13

    #@117
    .line 314
    .end local v13    # "in":Ljava/io/DataInputStream;
    :goto_5
    :try_start_8
    new-instance v27, Ljava/lang/StringBuilder;

    #@119
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@11c
    const-string/jumbo v28, "Error parsing configuration: "

    #@11f
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v27

    #@123
    move-object/from16 v0, v27

    #@125
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v27

    #@129
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12c
    move-result-object v27

    #@12d
    move-object/from16 v0, p0

    #@12f
    move-object/from16 v1, v27

    #@131
    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@134
    .line 316
    if-eqz v12, :cond_4

    #@136
    .line 318
    :try_start_9
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    #@139
    goto :goto_4

    #@13a
    .line 319
    :catch_4
    move-exception v6

    #@13b
    .restart local v6    # "e":Ljava/lang/Exception;
    goto :goto_4

    #@13c
    .line 211
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v10    # "id":I
    .restart local v13    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v22    # "proxyPort":I
    .restart local v23    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v25    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v26    # "version":I
    :cond_6
    :try_start_a
    const-string/jumbo v27, "gateway"

    #@13f
    move-object/from16 v0, v27

    #@141
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@144
    move-result v27

    #@145
    if-eqz v27, :cond_d

    #@147
    .line 212
    const/4 v4, 0x0

    #@148
    .line 213
    .local v4, "dest":Landroid/net/LinkAddress;
    const/4 v9, 0x0

    #@149
    .line 214
    .local v9, "gateway":Ljava/net/InetAddress;
    const/16 v27, 0x1

    #@14b
    move/from16 v0, v26

    #@14d
    move/from16 v1, v27

    #@14f
    if-ne v0, v1, :cond_9

    #@151
    .line 216
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@154
    move-result-object v27

    #@155
    invoke-static/range {v27 .. v27}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@158
    move-result-object v9

    #@159
    .line 217
    .local v9, "gateway":Ljava/net/InetAddress;
    move-object/from16 v0, v25

    #@15b
    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    #@15d
    move-object/from16 v27, v0

    #@15f
    if-nez v27, :cond_8

    #@161
    .line 218
    move-object/from16 v0, v25

    #@163
    iput-object v9, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@165
    goto/16 :goto_2

    #@167
    .line 315
    .end local v4    # "dest":Landroid/net/LinkAddress;
    .end local v9    # "gateway":Ljava/net/InetAddress;
    .end local v10    # "id":I
    .end local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v15    # "key":Ljava/lang/String;
    .end local v22    # "proxyPort":I
    .end local v23    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v25    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v26    # "version":I
    :catchall_0
    move-exception v27

    #@168
    move-object v12, v13

    #@169
    .line 316
    .end local v13    # "in":Ljava/io/DataInputStream;
    :goto_6
    if-eqz v12, :cond_7

    #@16b
    .line 318
    :try_start_b
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    #@16e
    .line 315
    :cond_7
    :goto_7
    throw v27

    #@16f
    .line 220
    .restart local v4    # "dest":Landroid/net/LinkAddress;
    .restart local v9    # "gateway":Ljava/net/InetAddress;
    .restart local v10    # "id":I
    .restart local v13    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v22    # "proxyPort":I
    .restart local v23    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v25    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v26    # "version":I
    :cond_8
    :try_start_c
    new-instance v27, Ljava/lang/StringBuilder;

    #@171
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@174
    const-string/jumbo v28, "Duplicate gateway: "

    #@177
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v27

    #@17b
    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@17e
    move-result-object v28

    #@17f
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182
    move-result-object v27

    #@183
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@186
    move-result-object v27

    #@187
    move-object/from16 v0, p0

    #@189
    move-object/from16 v1, v27

    #@18b
    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    #@18e
    goto/16 :goto_2

    #@190
    .line 223
    .local v9, "gateway":Ljava/net/InetAddress;
    :cond_9
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    #@193
    move-result v27

    #@194
    const/16 v28, 0x1

    #@196
    move/from16 v0, v27

    #@198
    move/from16 v1, v28

    #@19a
    if-ne v0, v1, :cond_a

    #@19c
    .line 224
    new-instance v4, Landroid/net/LinkAddress;

    #@19e
    .line 225
    .end local v4    # "dest":Landroid/net/LinkAddress;
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@1a1
    move-result-object v27

    #@1a2
    invoke-static/range {v27 .. v27}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@1a5
    move-result-object v27

    #@1a6
    .line 226
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    #@1a9
    move-result v28

    #@1aa
    .line 224
    move-object/from16 v0, v27

    #@1ac
    move/from16 v1, v28

    #@1ae
    invoke-direct {v4, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    #@1b1
    .line 228
    :cond_a
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    #@1b4
    move-result v27

    #@1b5
    const/16 v28, 0x1

    #@1b7
    move/from16 v0, v27

    #@1b9
    move/from16 v1, v28

    #@1bb
    if-ne v0, v1, :cond_b

    #@1bd
    .line 229
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@1c0
    move-result-object v27

    #@1c1
    invoke-static/range {v27 .. v27}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@1c4
    move-result-object v9

    #@1c5
    .line 231
    .end local v9    # "gateway":Ljava/net/InetAddress;
    :cond_b
    new-instance v24, Landroid/net/RouteInfo;

    #@1c7
    move-object/from16 v0, v24

    #@1c9
    invoke-direct {v0, v4, v9}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    #@1cc
    .line 232
    .local v24, "route":Landroid/net/RouteInfo;
    invoke-virtual/range {v24 .. v24}, Landroid/net/RouteInfo;->isIPv4Default()Z

    #@1cf
    move-result v27

    #@1d0
    if-eqz v27, :cond_c

    #@1d2
    .line 233
    move-object/from16 v0, v25

    #@1d4
    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    #@1d6
    move-object/from16 v27, v0

    #@1d8
    if-nez v27, :cond_c

    #@1da
    .line 234
    move-object/from16 v0, v25

    #@1dc
    iput-object v9, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    #@1de
    goto/16 :goto_2

    #@1e0
    .line 236
    :cond_c
    new-instance v27, Ljava/lang/StringBuilder;

    #@1e2
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@1e5
    const-string/jumbo v28, "Non-IPv4 default or duplicate route: "

    #@1e8
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1eb
    move-result-object v27

    #@1ec
    move-object/from16 v0, v27

    #@1ee
    move-object/from16 v1, v24

    #@1f0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f3
    move-result-object v27

    #@1f4
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f7
    move-result-object v27

    #@1f8
    move-object/from16 v0, p0

    #@1fa
    move-object/from16 v1, v27

    #@1fc
    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    #@1ff
    goto/16 :goto_2

    #@201
    .line 239
    .end local v24    # "route":Landroid/net/RouteInfo;
    :cond_d
    const-string/jumbo v27, "dns"

    #@204
    move-object/from16 v0, v27

    #@206
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@209
    move-result v27

    #@20a
    if-eqz v27, :cond_e

    #@20c
    .line 240
    move-object/from16 v0, v25

    #@20e
    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    #@210
    move-object/from16 v27, v0

    #@212
    .line 241
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@215
    move-result-object v28

    #@216
    invoke-static/range {v28 .. v28}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@219
    move-result-object v28

    #@21a
    .line 240
    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21d
    goto/16 :goto_2

    #@21f
    .line 242
    :cond_e
    const-string/jumbo v27, "proxySettings"

    #@222
    move-object/from16 v0, v27

    #@224
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@227
    move-result v27

    #@228
    if-eqz v27, :cond_f

    #@22a
    .line 243
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@22d
    move-result-object v27

    #@22e
    invoke-static/range {v27 .. v27}, Landroid/net/IpConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$ProxySettings;

    #@231
    move-result-object v23

    #@232
    goto/16 :goto_2

    #@234
    .line 244
    :cond_f
    const-string/jumbo v27, "proxyHost"

    #@237
    move-object/from16 v0, v27

    #@239
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23c
    move-result v27

    #@23d
    if-eqz v27, :cond_10

    #@23f
    .line 245
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@242
    move-result-object v19

    #@243
    .local v19, "proxyHost":Ljava/lang/String;
    goto/16 :goto_2

    #@245
    .line 246
    .end local v19    # "proxyHost":Ljava/lang/String;
    :cond_10
    const-string/jumbo v27, "proxyPort"

    #@248
    move-object/from16 v0, v27

    #@24a
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24d
    move-result v27

    #@24e
    if-eqz v27, :cond_11

    #@250
    .line 247
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    #@253
    move-result v22

    #@254
    goto/16 :goto_2

    #@256
    .line 248
    :cond_11
    const-string/jumbo v27, "proxyPac"

    #@259
    move-object/from16 v0, v27

    #@25b
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25e
    move-result v27

    #@25f
    if-eqz v27, :cond_12

    #@261
    .line 249
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@264
    move-result-object v18

    #@265
    .local v18, "pacFileUrl":Ljava/lang/String;
    goto/16 :goto_2

    #@267
    .line 250
    .end local v18    # "pacFileUrl":Ljava/lang/String;
    :cond_12
    const-string/jumbo v27, "exclusionList"

    #@26a
    move-object/from16 v0, v27

    #@26c
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26f
    move-result v27

    #@270
    if-eqz v27, :cond_13

    #@272
    .line 251
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@275
    move-result-object v8

    #@276
    .local v8, "exclusionList":Ljava/lang/String;
    goto/16 :goto_2

    #@278
    .line 252
    .end local v8    # "exclusionList":Ljava/lang/String;
    :cond_13
    const-string/jumbo v27, "eos"

    #@27b
    move-object/from16 v0, v27

    #@27d
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@280
    move-result v27

    #@281
    if-eqz v27, :cond_14

    #@283
    .line 262
    const/16 v27, -0x1

    #@285
    move/from16 v0, v27

    #@287
    if-eq v10, v0, :cond_15

    #@289
    .line 263
    :try_start_d
    new-instance v3, Landroid/net/IpConfiguration;

    #@28b
    invoke-direct {v3}, Landroid/net/IpConfiguration;-><init>()V

    #@28e
    .line 264
    .restart local v3    # "config":Landroid/net/IpConfiguration;
    move-object/from16 v0, v17

    #@290
    invoke-virtual {v0, v10, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@293
    .line 266
    invoke-static {}, Lcom/android/server/net/IpConfigStore;->-getandroid_net_IpConfiguration$IpAssignmentSwitchesValues()[I

    #@296
    move-result-object v27

    #@297
    invoke-virtual {v14}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    #@29a
    move-result v28

    #@29b
    aget v27, v27, v28

    #@29d
    packed-switch v27, :pswitch_data_0

    #@2a0
    .line 279
    const-string/jumbo v27, "Ignore invalid ip assignment while reading."

    #@2a3
    move-object/from16 v0, p0

    #@2a5
    move-object/from16 v1, v27

    #@2a7
    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    #@2aa
    .line 280
    sget-object v27, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    #@2ac
    move-object/from16 v0, v27

    #@2ae
    iput-object v0, v3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    #@2b0
    .line 284
    :goto_8
    invoke-static {}, Lcom/android/server/net/IpConfigStore;->-getandroid_net_IpConfiguration$ProxySettingsSwitchesValues()[I

    #@2b3
    move-result-object v27

    #@2b4
    invoke-virtual/range {v23 .. v23}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    #@2b7
    move-result v28

    #@2b8
    aget v27, v27, v28

    #@2ba
    packed-switch v27, :pswitch_data_1

    #@2bd
    .line 304
    const-string/jumbo v27, "Ignore invalid proxy settings while reading"

    #@2c0
    move-object/from16 v0, p0

    #@2c2
    move-object/from16 v1, v27

    #@2c4
    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    #@2c7
    .line 305
    sget-object v27, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    #@2c9
    move-object/from16 v0, v27

    #@2cb
    iput-object v0, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@2cd
    goto/16 :goto_1

    #@2cf
    .line 255
    .end local v3    # "config":Landroid/net/IpConfiguration;
    :cond_14
    :try_start_e
    new-instance v27, Ljava/lang/StringBuilder;

    #@2d1
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@2d4
    const-string/jumbo v28, "Ignore unknown key "

    #@2d7
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2da
    move-result-object v27

    #@2db
    move-object/from16 v0, v27

    #@2dd
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e0
    move-result-object v27

    #@2e1
    const-string/jumbo v28, "while reading"

    #@2e4
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e7
    move-result-object v27

    #@2e8
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2eb
    move-result-object v27

    #@2ec
    move-object/from16 v0, p0

    #@2ee
    move-object/from16 v1, v27

    #@2f0
    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@2f3
    goto/16 :goto_2

    #@2f5
    .line 268
    .restart local v3    # "config":Landroid/net/IpConfiguration;
    :pswitch_1
    :try_start_f
    move-object/from16 v0, v25

    #@2f7
    iput-object v0, v3, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    #@2f9
    .line 269
    iput-object v14, v3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    #@2fb
    goto :goto_8

    #@2fc
    .line 272
    :pswitch_2
    iput-object v14, v3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    #@2fe
    goto :goto_8

    #@2ff
    .line 275
    :pswitch_3
    const-string/jumbo v27, "BUG: Found UNASSIGNED IP on file, use DHCP"

    #@302
    move-object/from16 v0, p0

    #@304
    move-object/from16 v1, v27

    #@306
    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    #@309
    .line 276
    sget-object v27, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    #@30b
    move-object/from16 v0, v27

    #@30d
    iput-object v0, v3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    #@30f
    goto :goto_8

    #@310
    .line 292
    :pswitch_4
    new-instance v21, Landroid/net/ProxyInfo;

    #@312
    move-object/from16 v0, v21

    #@314
    move-object/from16 v1, v18

    #@316
    invoke-direct {v0, v1}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    #@319
    .line 293
    .local v21, "proxyPacProperties":Landroid/net/ProxyInfo;
    move-object/from16 v0, v23

    #@31b
    iput-object v0, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    #@31d
    .line 294
    move-object/from16 v0, v21

    #@31f
    iput-object v0, v3, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    #@321
    goto/16 :goto_1

    #@323
    .line 297
    .end local v21    # "proxyPacProperties":Landroid/net/ProxyInfo;
    :pswitch_5
    move-object/from16 v0, v23

    #@325
    iput-object v0, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    #@327
    goto/16 :goto_1

    #@329
    .line 300
    :pswitch_6
    const-string/jumbo v27, "BUG: Found UNASSIGNED proxy on file, use NONE"

    #@32c
    move-object/from16 v0, p0

    #@32e
    move-object/from16 v1, v27

    #@330
    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    #@333
    .line 301
    sget-object v27, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    #@335
    move-object/from16 v0, v27

    #@337
    iput-object v0, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    #@339
    goto/16 :goto_1

    #@33b
    .line 309
    .end local v3    # "config":Landroid/net/IpConfiguration;
    :cond_15
    const-string/jumbo v27, "Missing id while parsing configuration"

    #@33e
    move-object/from16 v0, p0

    #@340
    move-object/from16 v1, v27

    #@342
    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->log(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@345
    goto/16 :goto_1

    #@347
    .line 319
    .end local v10    # "id":I
    .end local v13    # "in":Ljava/io/DataInputStream;
    .end local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v15    # "key":Ljava/lang/String;
    .end local v22    # "proxyPort":I
    .end local v23    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v25    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v26    # "version":I
    .restart local v11    # "ignore":Ljava/io/EOFException;
    :catch_5
    move-exception v6

    #@348
    .restart local v6    # "e":Ljava/lang/Exception;
    goto/16 :goto_4

    #@34a
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v11    # "ignore":Ljava/io/EOFException;
    :catch_6
    move-exception v6

    #@34b
    .restart local v6    # "e":Ljava/lang/Exception;
    goto/16 :goto_7

    #@34d
    .line 315
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v27

    #@34e
    goto/16 :goto_6

    #@350
    .line 312
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catch_7
    move-exception v11

    #@351
    .restart local v11    # "ignore":Ljava/io/EOFException;
    goto/16 :goto_3

    #@353
    .line 313
    .end local v11    # "ignore":Ljava/io/EOFException;
    :catch_8
    move-exception v5

    #@354
    .restart local v5    # "e":Ljava/io/IOException;
    goto/16 :goto_5

    #@356
    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    #@360
    .line 284
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public writeIpAndProxyConfigurations(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/IpConfiguration;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 160
    .local p2, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    iget-object v0, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    #@2
    new-instance v1, Lcom/android/server/net/IpConfigStore$1;

    #@4
    invoke-direct {v1, p0, p2}, Lcom/android/server/net/IpConfigStore$1;-><init>(Lcom/android/server/net/IpConfigStore;Landroid/util/SparseArray;)V

    #@7
    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    #@a
    .line 159
    return-void
.end method
