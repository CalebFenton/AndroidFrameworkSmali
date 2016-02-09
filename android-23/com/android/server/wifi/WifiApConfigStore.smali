.class Lcom/android/server/wifi/WifiApConfigStore;
.super Lcom/android/internal/util/StateMachine;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiApConfigStore$DefaultState;,
        Lcom/android/server/wifi/WifiApConfigStore$InactiveState;,
        Lcom/android/server/wifi/WifiApConfigStore$ActiveState;
    }
.end annotation


# static fields
.field private static final AP_CONFIG_FILE:Ljava/lang/String;

.field private static final AP_CONFIG_FILE_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WifiApConfigStore"


# instance fields
.field public allowed2GChannel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveState:Lcom/android/internal/util/State;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mInactiveState:Lcom/android/internal/util/State;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiApConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiApConfigStore;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->deferMessage(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 52
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
    .line 53
    const-string/jumbo v1, "/misc/wifi/softap.conf"

    #@10
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    sput-object v0, Lcom/android/server/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    #@1a
    .line 47
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 66
    const-string/jumbo v3, "WifiApConfigStore"

    #@4
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@7
    move-result-object v4

    #@8
    invoke-direct {p0, v3, v4}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    #@b
    .line 57
    new-instance v3, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;

    #@d
    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;-><init>(Lcom/android/server/wifi/WifiApConfigStore;)V

    #@10
    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    #@12
    .line 58
    new-instance v3, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;

    #@14
    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;-><init>(Lcom/android/server/wifi/WifiApConfigStore;)V

    #@17
    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    #@19
    .line 59
    new-instance v3, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;

    #@1b
    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;-><init>(Lcom/android/server/wifi/WifiApConfigStore;)V

    #@1e
    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    #@20
    .line 61
    iput-object v5, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    #@22
    .line 62
    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    #@24
    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@27
    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    #@29
    .line 63
    iput-object v5, p0, Lcom/android/server/wifi/WifiApConfigStore;->allowed2GChannel:Ljava/util/ArrayList;

    #@2b
    .line 68
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    #@2d
    .line 69
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    #@2f
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;)V

    #@32
    .line 70
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    #@34
    iget-object v4, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    #@36
    invoke-virtual {p0, v3, v4}, Lcom/android/server/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@39
    .line 71
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    #@3b
    iget-object v4, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    #@3d
    invoke-virtual {p0, v3, v4}, Lcom/android/server/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@40
    .line 73
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    #@42
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiApConfigStore;->setInitialState(Lcom/android/internal/util/State;)V

    #@45
    .line 74
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    #@47
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4a
    move-result-object v3

    #@4b
    .line 75
    const v4, 0x104001f

    #@4e
    .line 74
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    .line 76
    .local v0, "ap2GChannelListStr":Ljava/lang/String;
    const-string/jumbo v3, "WifiApConfigStore"

    #@55
    new-instance v4, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v5, "2G band allowed channels are:"

    #@5d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v4

    #@69
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 78
    if-eqz v0, :cond_0

    #@6e
    .line 79
    new-instance v3, Ljava/util/ArrayList;

    #@70
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@73
    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->allowed2GChannel:Ljava/util/ArrayList;

    #@75
    .line 80
    const-string/jumbo v3, ","

    #@78
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@7b
    move-result-object v1

    #@7c
    .line 81
    .local v1, "channelList":[Ljava/lang/String;
    const/4 v3, 0x0

    #@7d
    array-length v4, v1

    #@7e
    :goto_0
    if-ge v3, v4, :cond_0

    #@80
    aget-object v2, v1, v3

    #@82
    .line 82
    .local v2, "tmp":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/WifiApConfigStore;->allowed2GChannel:Ljava/util/ArrayList;

    #@84
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@87
    move-result v6

    #@88
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8b
    move-result-object v6

    #@8c
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8f
    .line 81
    add-int/lit8 v3, v3, 0x1

    #@91
    goto :goto_0

    #@92
    .line 65
    .end local v1    # "channelList":[Ljava/lang/String;
    .end local v2    # "tmp":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static makeWifiApConfigStore(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/wifi/WifiApConfigStore;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 88
    new-instance v0, Lcom/android/server/wifi/WifiApConfigStore;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    #@5
    .line 89
    .local v0, "s":Lcom/android/server/wifi/WifiApConfigStore;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->start()V

    #@8
    .line 90
    return-object v0
.end method

.method private setDefaultApConfiguration()V
    .locals 5

    #@0
    .prologue
    .line 231
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    #@5
    .line 232
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    #@7
    const v3, 0x1040399

    #@a
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@10
    .line 233
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@12
    const/4 v3, 0x4

    #@13
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    #@16
    .line 234
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 236
    .local v1, "randomUUID":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const/4 v3, 0x0

    #@24
    const/16 v4, 0x8

    #@26
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    const/16 v3, 0x9

    #@30
    const/16 v4, 0xd

    #@32
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@40
    .line 237
    const v2, 0x20019

    #@43
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wifi/WifiApConfigStore;->sendMessage(ILjava/lang/Object;)V

    #@46
    .line 230
    return-void
.end method

.method private writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 201
    const/4 v2, 0x0

    #@1
    .line 203
    .local v2, "out":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    #@3
    new-instance v4, Ljava/io/BufferedOutputStream;

    #@5
    .line 204
    new-instance v5, Ljava/io/FileOutputStream;

    #@7
    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    #@9
    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@c
    .line 203
    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@f
    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 206
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .local v3, "out":Ljava/io/DataOutputStream;
    const/4 v4, 0x2

    #@13
    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@16
    .line 207
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@18
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@1b
    .line 208
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    #@1d
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@20
    .line 209
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@22
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@25
    .line 210
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    #@28
    move-result v0

    #@29
    .line 211
    .local v0, "authType":I
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@2c
    .line 212
    if-eqz v0, :cond_0

    #@2e
    .line 213
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@30
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@33
    .line 218
    :cond_0
    if-eqz v3, :cond_1

    #@35
    .line 220
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@38
    :cond_1
    :goto_0
    move-object v2, v3

    #@39
    .line 200
    .end local v0    # "authType":I
    .end local v3    # "out":Ljava/io/DataOutputStream;
    :cond_2
    :goto_1
    return-void

    #@3a
    .line 221
    .restart local v0    # "authType":I
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v1

    #@3b
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    #@3c
    .line 215
    .end local v0    # "authType":I
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v1

    #@3d
    .line 216
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v4, "WifiApConfigStore"

    #@40
    new-instance v5, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v6, "Error writing hotspot configuration"

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@57
    .line 218
    if-eqz v2, :cond_2

    #@59
    .line 220
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@5c
    goto :goto_1

    #@5d
    .line 221
    :catch_2
    move-exception v1

    #@5e
    goto :goto_1

    #@5f
    .line 217
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@60
    .line 218
    :goto_3
    if-eqz v2, :cond_3

    #@62
    .line 220
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@65
    .line 217
    :cond_3
    :goto_4
    throw v4

    #@66
    .line 221
    :catch_3
    move-exception v1

    #@67
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_4

    #@68
    .line 217
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v4

    #@69
    move-object v2, v3

    #@6a
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .local v2, "out":Ljava/io/DataOutputStream;
    goto :goto_3

    #@6b
    .line 215
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v1

    #@6c
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v3

    #@6d
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto :goto_2
.end method


# virtual methods
.method getMessenger()Landroid/os/Messenger;
    .locals 2

    #@0
    .prologue
    .line 197
    new-instance v0, Landroid/os/Messenger;

    #@2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getHandler()Landroid/os/Handler;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@9
    return-object v0
.end method

.method loadApConfiguration()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    .line 159
    const/4 v4, 0x0

    #@2
    .line 161
    .local v4, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    #@4
    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    #@7
    .line 162
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v5, Ljava/io/DataInputStream;

    #@9
    new-instance v7, Ljava/io/BufferedInputStream;

    #@b
    new-instance v8, Ljava/io/FileInputStream;

    #@d
    .line 163
    sget-object v9, Lcom/android/server/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    #@f
    .line 162
    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    #@12
    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@15
    invoke-direct {v5, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 165
    .local v5, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    #@1b
    .end local v4    # "in":Ljava/io/DataInputStream;
    move-result v6

    #@1c
    .line 166
    .local v6, "version":I
    const/4 v7, 0x1

    #@1d
    if-eq v6, v7, :cond_1

    #@1f
    if-eq v6, v10, :cond_1

    #@21
    .line 167
    const-string/jumbo v7, "WifiApConfigStore"

    #@24
    const-string/jumbo v8, "Bad version on hotspot configuration file, set defaults"

    #@27
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 168
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2d
    .line 188
    if-eqz v5, :cond_0

    #@2f
    .line 190
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@32
    .line 169
    :cond_0
    :goto_0
    return-void

    #@33
    .line 191
    :catch_0
    move-exception v2

    #@34
    .local v2, "e":Ljava/io/IOException;
    goto :goto_0

    #@35
    .line 171
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@38
    move-result-object v7

    #@39
    iput-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@3b
    .line 173
    if-lt v6, v10, :cond_2

    #@3d
    .line 174
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    #@40
    move-result v7

    #@41
    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    #@43
    .line 175
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    #@46
    move-result v7

    #@47
    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@49
    .line 178
    :cond_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    #@4c
    move-result v0

    #@4d
    .line 179
    .local v0, "authType":I
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@4f
    invoke-virtual {v7, v0}, Ljava/util/BitSet;->set(I)V

    #@52
    .line 180
    if-eqz v0, :cond_3

    #@54
    .line 181
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@57
    move-result-object v7

    #@58
    iput-object v7, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@5a
    .line 184
    :cond_3
    iput-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@5c
    .line 188
    if-eqz v5, :cond_4

    #@5e
    .line 190
    :try_start_4
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@61
    :cond_4
    :goto_1
    move-object v4, v5

    #@62
    .line 158
    .end local v0    # "authType":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "in":Ljava/io/DataInputStream;
    .end local v6    # "version":I
    :cond_5
    :goto_2
    return-void

    #@63
    .line 191
    .restart local v0    # "authType":I
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "version":I
    :catch_1
    move-exception v2

    #@64
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    #@65
    .line 185
    .end local v0    # "authType":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "in":Ljava/io/DataInputStream;
    .end local v6    # "version":I
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catch_2
    move-exception v3

    #@66
    .line 186
    .end local v4    # "in":Ljava/io/DataInputStream;
    .local v3, "ignore":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@69
    .line 188
    if-eqz v4, :cond_5

    #@6b
    .line 190
    :try_start_6
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@6e
    goto :goto_2

    #@6f
    .line 191
    :catch_3
    move-exception v2

    #@70
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    #@71
    .line 187
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ignore":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    #@72
    .line 188
    :goto_4
    if-eqz v4, :cond_6

    #@74
    .line 190
    :try_start_7
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    #@77
    .line 187
    :cond_6
    :goto_5
    throw v7

    #@78
    .line 191
    :catch_4
    move-exception v2

    #@79
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_5

    #@7a
    .line 187
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v7

    #@7b
    move-object v4, v5

    #@7c
    .end local v5    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    goto :goto_4

    #@7d
    .line 185
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :catch_5
    move-exception v3

    #@7e
    .restart local v3    # "ignore":Ljava/io/IOException;
    move-object v4, v5

    #@7f
    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    goto :goto_3
.end method
