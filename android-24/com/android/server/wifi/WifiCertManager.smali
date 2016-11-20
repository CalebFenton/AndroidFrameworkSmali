.class public Lcom/android/server/wifi/WifiCertManager;
.super Ljava/lang/Object;
.source "WifiCertManager.java"


# static fields
.field private static final CONFIG_FILE:Ljava/lang/String;

.field private static final SEP:Ljava/lang/String; = "\n"

.field private static final TAG:Ljava/lang/String; = "WifiCertManager"


# instance fields
.field private final mAffiliatedUserOnlyCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigFile:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mWriter:Lcom/android/server/net/DelayedDiskWrite;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 53
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
    const-string/jumbo v1, "/misc/wifi/affiliatedcerts.txt"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 52
    sput-object v0, Lcom/android/server/wifi/WifiCertManager;->CONFIG_FILE:Ljava/lang/String;

    #@1a
    .line 44
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 59
    sget-object v0, Lcom/android/server/wifi/WifiCertManager;->CONFIG_FILE:Ljava/lang/String;

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiCertManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@5
    .line 58
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configFile"    # Ljava/lang/String;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    new-instance v3, Ljava/util/HashSet;

    #@5
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v3, p0, Lcom/android/server/wifi/WifiCertManager;->mAffiliatedUserOnlyCerts:Ljava/util/Set;

    #@a
    .line 55
    new-instance v3, Lcom/android/server/net/DelayedDiskWrite;

    #@c
    invoke-direct {v3}, Lcom/android/server/net/DelayedDiskWrite;-><init>()V

    #@f
    iput-object v3, p0, Lcom/android/server/wifi/WifiCertManager;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    #@11
    .line 63
    iput-object p1, p0, Lcom/android/server/wifi/WifiCertManager;->mContext:Landroid/content/Context;

    #@13
    .line 64
    iput-object p2, p0, Lcom/android/server/wifi/WifiCertManager;->mConfigFile:Ljava/lang/String;

    #@15
    .line 65
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiCertManager;->readConfigFile()[B

    #@18
    move-result-object v0

    #@19
    .line 66
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    #@1b
    .line 68
    return-void

    #@1c
    .line 71
    :cond_0
    new-instance v3, Ljava/lang/String;

    #@1e
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@20
    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@23
    const-string/jumbo v4, "\n"

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    .line 72
    .local v2, "keys":[Ljava/lang/String;
    const/4 v3, 0x0

    #@2b
    array-length v4, v2

    #@2c
    :goto_0
    if-ge v3, v4, :cond_1

    #@2e
    aget-object v1, v2, v3

    #@30
    .line 73
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/WifiCertManager;->mAffiliatedUserOnlyCerts:Ljava/util/Set;

    #@32
    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@35
    .line 72
    add-int/lit8 v3, v3, 0x1

    #@37
    goto :goto_0

    #@38
    .line 77
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiCertManager;->mAffiliatedUserOnlyCerts:Ljava/util/Set;

    #@3a
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiCertManager;->listClientCertsForAllUsers()[Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@41
    move-result-object v4

    #@42
    invoke-interface {v3, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    #@45
    move-result v3

    #@46
    if-eqz v3, :cond_2

    #@48
    .line 78
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCertManager;->writeConfig()V

    #@4b
    .line 62
    :cond_2
    return-void
.end method

.method private writeConfig()V
    .locals 4

    #@0
    .prologue
    .line 108
    iget-object v2, p0, Lcom/android/server/wifi/WifiCertManager;->mAffiliatedUserOnlyCerts:Ljava/util/Set;

    #@2
    iget-object v3, p0, Lcom/android/server/wifi/WifiCertManager;->mAffiliatedUserOnlyCerts:Ljava/util/Set;

    #@4
    invoke-interface {v3}, Ljava/util/Set;->size()I

    #@7
    move-result v3

    #@8
    new-array v3, v3, [Ljava/lang/String;

    #@a
    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, [Ljava/lang/String;

    #@10
    .line 109
    .local v1, "values":[Ljava/lang/String;
    const-string/jumbo v2, "\n"

    #@13
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 110
    .local v0, "value":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@19
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiCertManager;->writeConfigFile([B)V

    #@20
    .line 106
    return-void
.end method


# virtual methods
.method public hideCertFromUnaffiliatedUsers(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/wifi/WifiCertManager;->mAffiliatedUserOnlyCerts:Ljava/util/Set;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "USRPKEY_"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 85
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCertManager;->writeConfig()V

    #@1f
    .line 83
    :cond_0
    return-void
.end method

.method protected isAffiliatedUser()Z
    .locals 5

    #@0
    .prologue
    .line 147
    const-string/jumbo v3, "device_policy"

    #@3
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v3

    #@7
    .line 146
    invoke-static {v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    #@a
    move-result-object v1

    #@b
    .line 148
    .local v1, "pm":Landroid/app/admin/IDevicePolicyManager;
    const/4 v2, 0x0

    #@c
    .line 150
    .local v2, "result":Z
    :try_start_0
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->isAffiliatedUser()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v2

    #@10
    .line 154
    .end local v2    # "result":Z
    :goto_0
    return v2

    #@11
    .line 151
    .restart local v2    # "result":Z
    :catch_0
    move-exception v0

    #@12
    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WifiCertManager"

    #@15
    const-string/jumbo v4, "failed to check user affiliation"

    #@18
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    goto :goto_0
.end method

.method protected listClientCertsForAllUsers()[Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 142
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "USRPKEY_"

    #@7
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@a
    move-result v2

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public listClientCertsForCurrentUser()[Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 91
    new-instance v2, Ljava/util/HashSet;

    #@2
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 93
    .local v2, "results":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiCertManager;->listClientCertsForAllUsers()[Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 94
    .local v1, "keys":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiCertManager;->isAffiliatedUser()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 95
    return-object v1

    #@10
    .line 98
    :cond_0
    const/4 v3, 0x0

    #@11
    array-length v4, v1

    #@12
    :goto_0
    if-ge v3, v4, :cond_2

    #@14
    aget-object v0, v1, v3

    #@16
    .line 99
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/WifiCertManager;->mAffiliatedUserOnlyCerts:Ljava/util/Set;

    #@18
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1b
    move-result v5

    #@1c
    if-nez v5, :cond_1

    #@1e
    .line 100
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@21
    .line 98
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@23
    goto :goto_0

    #@24
    .line 103
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    #@27
    move-result v3

    #@28
    new-array v3, v3, [Ljava/lang/String;

    #@2a
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    check-cast v3, [Ljava/lang/String;

    #@30
    return-object v3
.end method

.method protected readConfigFile()[B
    .locals 9

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 114
    const/4 v0, 0x0

    #@3
    .line 116
    .local v0, "bytes":[B
    :try_start_0
    new-instance v2, Ljava/io/File;

    #@5
    iget-object v8, p0, Lcom/android/server/wifi/WifiCertManager;->mConfigFile:Ljava/lang/String;

    #@7
    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@a
    .line 117
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@d
    move-result v8

    #@e
    if-eqz v8, :cond_1

    #@10
    invoke-virtual {v2}, Ljava/io/File;->length()J

    #@13
    move-result-wide v4

    #@14
    .line 118
    .local v4, "fileSize":J
    :goto_0
    cmp-long v6, v4, v6

    #@16
    if-eqz v6, :cond_0

    #@18
    const-wide/32 v6, 0x7fffffff

    #@1b
    cmp-long v6, v4, v6

    #@1d
    if-ltz v6, :cond_2

    #@1f
    .line 120
    :cond_0
    return-object v0

    #@20
    .end local v4    # "fileSize":J
    :cond_1
    move-wide v4, v6

    #@21
    .line 117
    goto :goto_0

    #@22
    .line 123
    .restart local v4    # "fileSize":J
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->length()J

    #@25
    move-result-wide v6

    #@26
    long-to-int v6, v6

    #@27
    new-array v0, v6, [B

    #@29
    .line 124
    .local v0, "bytes":[B
    new-instance v3, Ljava/io/DataInputStream;

    #@2b
    new-instance v6, Ljava/io/FileInputStream;

    #@2d
    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@30
    invoke-direct {v3, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@33
    .line 125
    .local v3, "stream":Ljava/io/DataInputStream;
    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 129
    .end local v0    # "bytes":[B
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "stream":Ljava/io/DataInputStream;
    .end local v4    # "fileSize":J
    :goto_1
    return-object v0

    #@37
    .line 126
    :catch_0
    move-exception v1

    #@38
    .line 127
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v6, "WifiCertManager"

    #@3b
    new-instance v7, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v8, "readConfigFile: failed to read "

    #@43
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v7

    #@4b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v7

    #@4f
    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@52
    goto :goto_1
.end method

.method protected writeConfigFile([B)V
    .locals 4
    .param p1, "payload"    # [B

    #@0
    .prologue
    .line 133
    move-object v0, p1

    #@1
    .line 134
    .local v0, "data":[B
    iget-object v1, p0, Lcom/android/server/wifi/WifiCertManager;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    #@3
    iget-object v2, p0, Lcom/android/server/wifi/WifiCertManager;->mConfigFile:Ljava/lang/String;

    #@5
    new-instance v3, Lcom/android/server/wifi/WifiCertManager$1;

    #@7
    invoke-direct {v3, p0, p1}, Lcom/android/server/wifi/WifiCertManager$1;-><init>(Lcom/android/server/wifi/WifiCertManager;[B)V

    #@a
    invoke-virtual {v1, v2, v3}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    #@d
    .line 132
    return-void
.end method
