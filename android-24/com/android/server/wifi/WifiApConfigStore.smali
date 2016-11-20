.class public Lcom/android/server/wifi/WifiApConfigStore;
.super Ljava/lang/Object;
.source "WifiApConfigStore.java"


# static fields
.field private static final AP_CONFIG_FILE_VERSION:I = 0x2

.field private static final DEFAULT_AP_CONFIG_FILE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WifiApConfigStore"


# instance fields
.field private mAllowed2GChannel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mApConfigFile:Ljava/lang/String;

.field private final mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

.field private final mContext:Landroid/content/Context;

.field private mWifiApConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "/misc/wifi/softap.conf"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 44
    sput-object v0, Lcom/android/server/wifi/WifiApConfigStore;->DEFAULT_AP_CONFIG_FILE:Ljava/lang/String;

    #@1a
    .line 40
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/BackupManagerProxy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backupManagerProxy"    # Lcom/android/server/wifi/BackupManagerProxy;

    #@0
    .prologue
    .line 58
    sget-object v0, Lcom/android/server/wifi/WifiApConfigStore;->DEFAULT_AP_CONFIG_FILE:Ljava/lang/String;

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wifi/WifiApConfigStore;-><init>(Landroid/content/Context;Lcom/android/server/wifi/BackupManagerProxy;Ljava/lang/String;)V

    #@5
    .line 57
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/BackupManagerProxy;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backupManagerProxy"    # Lcom/android/server/wifi/BackupManagerProxy;
    .param p3, "apConfigFile"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 49
    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    #@6
    .line 51
    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mAllowed2GChannel:Ljava/util/ArrayList;

    #@8
    .line 64
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    #@a
    .line 65
    iput-object p2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    #@c
    .line 66
    iput-object p3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mApConfigFile:Ljava/lang/String;

    #@e
    .line 68
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@13
    move-result-object v3

    #@14
    .line 69
    const v4, 0x1040039

    #@17
    .line 68
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 70
    .local v0, "ap2GChannelListStr":Ljava/lang/String;
    const-string/jumbo v3, "WifiApConfigStore"

    #@1e
    new-instance v4, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v5, "2G band allowed channels are:"

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 72
    if-eqz v0, :cond_0

    #@37
    .line 73
    new-instance v3, Ljava/util/ArrayList;

    #@39
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@3c
    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mAllowed2GChannel:Ljava/util/ArrayList;

    #@3e
    .line 74
    const-string/jumbo v3, ","

    #@41
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    .line 75
    .local v1, "channelList":[Ljava/lang/String;
    const/4 v3, 0x0

    #@46
    array-length v4, v1

    #@47
    :goto_0
    if-ge v3, v4, :cond_0

    #@49
    aget-object v2, v1, v3

    #@4b
    .line 76
    .local v2, "tmp":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/WifiApConfigStore;->mAllowed2GChannel:Ljava/util/ArrayList;

    #@4d
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@50
    move-result v6

    #@51
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@58
    .line 75
    add-int/lit8 v3, v3, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 81
    .end local v1    # "channelList":[Ljava/lang/String;
    .end local v2    # "tmp":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mApConfigFile:Ljava/lang/String;

    #@5d
    invoke-static {v3}, Lcom/android/server/wifi/WifiApConfigStore;->loadApConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@60
    move-result-object v3

    #@61
    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    #@63
    .line 82
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    #@65
    if-nez v3, :cond_1

    #@67
    .line 84
    const-string/jumbo v3, "WifiApConfigStore"

    #@6a
    const-string/jumbo v4, "Fallback to use default AP configuration"

    #@6d
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    .line 85
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getDefaultApConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@73
    move-result-object v3

    #@74
    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    #@76
    .line 88
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mApConfigFile:Ljava/lang/String;

    #@78
    iget-object v4, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    #@7a
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiApConfigStore;->writeApConfiguration(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    #@7d
    .line 63
    :cond_1
    return-void
.end method

.method private getDefaultApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    #@0
    .prologue
    .line 192
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    #@5
    .line 193
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v2

    #@b
    .line 194
    const v3, 0x10403d7

    #@e
    .line 193
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@14
    .line 195
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@16
    const/4 v3, 0x4

    #@17
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    #@1a
    .line 196
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    .line 198
    .local v1, "randomUUID":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const/4 v3, 0x0

    #@28
    const/16 v4, 0x8

    #@2a
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    const/16 v3, 0x9

    #@34
    const/16 v4, 0xd

    #@36
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@44
    .line 199
    return-object v0
.end method

.method private static loadApConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 11
    .param p0, "filename"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    const/4 v10, 0x0

    #@2
    .line 125
    const/4 v1, 0x0

    #@3
    .line 126
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v4, 0x0

    #@4
    .line 128
    .local v4, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    #@6
    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 129
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    :try_start_1
    new-instance v5, Ljava/io/DataInputStream;

    #@b
    .line 130
    new-instance v7, Ljava/io/BufferedInputStream;

    #@d
    new-instance v8, Ljava/io/FileInputStream;

    #@f
    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    #@12
    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@15
    .line 129
    invoke-direct {v5, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@18
    .line 132
    .local v5, "in":Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    #@1b
    .end local v4    # "in":Ljava/io/DataInputStream;
    move-result v6

    #@1c
    .line 133
    .local v6, "version":I
    const/4 v7, 0x1

    #@1d
    if-eq v6, v7, :cond_1

    #@1f
    if-eq v6, v9, :cond_1

    #@21
    .line 134
    const-string/jumbo v7, "WifiApConfigStore"

    #@24
    const-string/jumbo v8, "Bad version on hotspot configuration file"

    #@27
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@2a
    .line 153
    if-eqz v5, :cond_0

    #@2c
    .line 155
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@2f
    .line 135
    :cond_0
    :goto_0
    return-object v10

    #@30
    .line 156
    :catch_0
    move-exception v3

    #@31
    .line 157
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v7, "WifiApConfigStore"

    #@34
    new-instance v8, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v9, "Error closing hotspot configuration during read"

    #@3c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v8

    #@40
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v8

    #@44
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v8

    #@48
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    goto :goto_0

    #@4c
    .line 137
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_4
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@4f
    move-result-object v7

    #@50
    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@52
    .line 139
    if-lt v6, v9, :cond_2

    #@54
    .line 140
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    #@57
    move-result v7

    #@58
    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->apBand:I

    #@5a
    .line 141
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    #@5d
    move-result v7

    #@5e
    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@60
    .line 144
    :cond_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    #@63
    move-result v0

    #@64
    .line 145
    .local v0, "authType":I
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@66
    invoke-virtual {v7, v0}, Ljava/util/BitSet;->set(I)V

    #@69
    .line 146
    if-eqz v0, :cond_3

    #@6b
    .line 147
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@6e
    move-result-object v7

    #@6f
    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@71
    .line 153
    :cond_3
    if-eqz v5, :cond_4

    #@73
    .line 155
    :try_start_5
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    #@76
    :cond_4
    :goto_1
    move-object v4, v5

    #@77
    .end local v5    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    move-object v1, v2

    #@78
    .line 161
    .end local v0    # "authType":I
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v6    # "version":I
    :cond_5
    :goto_2
    return-object v1

    #@79
    .line 156
    .restart local v0    # "authType":I
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "version":I
    :catch_1
    move-exception v3

    #@7a
    .line 157
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "WifiApConfigStore"

    #@7d
    new-instance v8, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v9, "Error closing hotspot configuration during read"

    #@85
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v8

    #@89
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v8

    #@8d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v8

    #@91
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@94
    goto :goto_1

    #@95
    .line 149
    .end local v0    # "authType":I
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "in":Ljava/io/DataInputStream;
    .end local v6    # "version":I
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .local v4, "in":Ljava/io/DataInputStream;
    :catch_2
    move-exception v3

    #@96
    .line 150
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string/jumbo v7, "WifiApConfigStore"

    #@99
    new-instance v8, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v9, "Error reading hotspot configuration "

    #@a1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v8

    #@a5
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v8

    #@a9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v8

    #@ad
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@b0
    .line 151
    const/4 v1, 0x0

    #@b1
    .line 153
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v4, :cond_5

    #@b3
    .line 155
    :try_start_7
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    #@b6
    goto :goto_2

    #@b7
    .line 156
    :catch_3
    move-exception v3

    #@b8
    .line 157
    const-string/jumbo v7, "WifiApConfigStore"

    #@bb
    new-instance v8, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v9, "Error closing hotspot configuration during read"

    #@c3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v8

    #@c7
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v8

    #@cb
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v8

    #@cf
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d2
    goto :goto_2

    #@d3
    .line 152
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    #@d4
    .line 153
    :goto_4
    if-eqz v4, :cond_6

    #@d6
    .line 155
    :try_start_8
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    #@d9
    .line 152
    :cond_6
    :goto_5
    throw v7

    #@da
    .line 156
    :catch_4
    move-exception v3

    #@db
    .line 157
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "WifiApConfigStore"

    #@de
    new-instance v9, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    const-string/jumbo v10, "Error closing hotspot configuration during read"

    #@e6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v9

    #@ea
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v9

    #@ee
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v9

    #@f2
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f5
    goto :goto_5

    #@f6
    .line 152
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v7

    #@f7
    move-object v1, v2

    #@f8
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_4

    #@f9
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :catchall_2
    move-exception v7

    #@fa
    move-object v4, v5

    #@fb
    .end local v5    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    move-object v1, v2

    #@fc
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_4

    #@fd
    .line 149
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .local v4, "in":Ljava/io/DataInputStream;
    :catch_5
    move-exception v3

    #@fe
    .restart local v3    # "e":Ljava/io/IOException;
    move-object v1, v2

    #@ff
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_3

    #@100
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :catch_6
    move-exception v3

    #@101
    .restart local v3    # "e":Ljava/io/IOException;
    move-object v4, v5

    #@102
    .end local v5    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    move-object v1, v2

    #@103
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_3
.end method

.method private static writeApConfiguration(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .locals 8
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 169
    const/4 v2, 0x0

    #@2
    .local v2, "out":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    #@4
    new-instance v4, Ljava/io/BufferedOutputStream;

    #@6
    .line 170
    new-instance v6, Ljava/io/FileOutputStream;

    #@8
    invoke-direct {v6, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@b
    .line 169
    invoke-direct {v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@e
    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@11
    .line 171
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .local v3, "out":Ljava/io/DataOutputStream;
    const/4 v4, 0x2

    #@12
    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@15
    .line 172
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@17
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@1a
    .line 173
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    #@1c
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@1f
    .line 174
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@21
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@24
    .line 175
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    #@27
    move-result v0

    #@28
    .line 176
    .local v0, "authType":I
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@2b
    .line 177
    if-eqz v0, :cond_0

    #@2d
    .line 178
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@2f
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@32
    .line 182
    :cond_0
    if-eqz v3, :cond_1

    #@34
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@37
    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    #@39
    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@3a
    .line 180
    :catch_0
    move-exception v1

    #@3b
    .local v1, "e":Ljava/io/IOException;
    move-object v2, v3

    #@3c
    .line 181
    .end local v0    # "authType":I
    .end local v3    # "out":Ljava/io/DataOutputStream;
    :goto_1
    const-string/jumbo v4, "WifiApConfigStore"

    #@3f
    new-instance v5, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v6, "Error writing hotspot configuration"

    #@47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 168
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    #@57
    .line 182
    .restart local v0    # "authType":I
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v5

    #@58
    goto :goto_0

    #@59
    :cond_2
    move-object v2, v3

    #@5a
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .local v2, "out":Ljava/io/DataOutputStream;
    goto :goto_2

    #@5b
    .end local v0    # "authType":I
    .local v2, "out":Ljava/io/DataOutputStream;
    :catch_2
    move-exception v4

    #@5c
    .end local v2    # "out":Ljava/io/DataOutputStream;
    :goto_3
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@5d
    :catchall_0
    move-exception v5

    #@5e
    move-object v7, v5

    #@5f
    move-object v5, v4

    #@60
    move-object v4, v7

    #@61
    :goto_4
    if-eqz v2, :cond_3

    #@63
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@66
    :cond_3
    :goto_5
    if-eqz v5, :cond_5

    #@68
    :try_start_6
    throw v5

    #@69
    .line 180
    :catch_3
    move-exception v1

    #@6a
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    #@6b
    .line 182
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    #@6c
    if-nez v5, :cond_4

    #@6e
    move-object v5, v6

    #@6f
    goto :goto_5

    #@70
    :cond_4
    if-eq v5, v6, :cond_3

    #@72
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@75
    goto :goto_5

    #@76
    :cond_5
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@77
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v4

    #@78
    goto :goto_4

    #@79
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v4

    #@7a
    move-object v2, v3

    #@7b
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .local v2, "out":Ljava/io/DataOutputStream;
    goto :goto_4

    #@7c
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catch_5
    move-exception v4

    #@7d
    move-object v2, v3

    #@7e
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto :goto_3
.end method


# virtual methods
.method public getAllowed2GChannel()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mAllowed2GChannel:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public declared-synchronized getApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized setApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 106
    if-nez p1, :cond_0

    #@3
    .line 107
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getDefaultApConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    #@9
    .line 111
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mApConfigFile:Ljava/lang/String;

    #@b
    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    #@d
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiApConfigStore;->writeApConfiguration(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    #@10
    .line 114
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    #@12
    invoke-virtual {v0}, Lcom/android/server/wifi/BackupManagerProxy;->notifyDataChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit p0

    #@16
    .line 105
    return-void

    #@17
    .line 109
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    goto :goto_0

    #@1a
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit p0

    #@1c
    throw v0
.end method
