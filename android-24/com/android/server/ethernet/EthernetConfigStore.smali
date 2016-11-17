.class public Lcom/android/server/ethernet/EthernetConfigStore;
.super Lcom/android/server/net/IpConfigStore;
.source "EthernetConfigStore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EthernetConfigStore"

.field private static final ipConfigFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 35
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
    .line 36
    const-string/jumbo v1, "/misc/ethernet/ipconfig.txt"

    #@10
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    sput-object v0, Lcom/android/server/ethernet/EthernetConfigStore;->ipConfigFile:Ljava/lang/String;

    #@1a
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/server/net/IpConfigStore;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public readIpAndProxyConfigurations()Landroid/net/IpConfiguration;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 42
    sget-object v1, Lcom/android/server/ethernet/EthernetConfigStore;->ipConfigFile:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v1}, Lcom/android/server/ethernet/EthernetConfigStore;->readIpAndProxyConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;

    #@7
    move-result-object v0

    #@8
    .line 44
    .local v0, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 45
    const-string/jumbo v1, "EthernetConfigStore"

    #@11
    const-string/jumbo v2, "No Ethernet configuration found. Using default."

    #@14
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 46
    new-instance v1, Landroid/net/IpConfiguration;

    #@19
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    #@1b
    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    #@1d
    invoke-direct {v1, v2, v3, v4, v4}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    #@20
    return-object v1

    #@21
    .line 49
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@24
    move-result v1

    #@25
    const/4 v2, 0x1

    #@26
    if-le v1, v2, :cond_1

    #@28
    .line 51
    const-string/jumbo v1, "EthernetConfigStore"

    #@2b
    const-string/jumbo v2, "Multiple Ethernet configurations detected. Only reading first one."

    #@2e
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 54
    :cond_1
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Landroid/net/IpConfiguration;

    #@37
    return-object v1
.end method

.method public writeIpAndProxyConfigurations(Landroid/net/IpConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/IpConfiguration;

    #@0
    .prologue
    .line 58
    new-instance v0, Landroid/util/SparseArray;

    #@2
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@5
    .line 59
    .local v0, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    const/4 v1, 0x0

    #@6
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@9
    .line 60
    sget-object v1, Lcom/android/server/ethernet/EthernetConfigStore;->ipConfigFile:Ljava/lang/String;

    #@b
    invoke-virtual {p0, v1, v0}, Lcom/android/server/ethernet/EthernetConfigStore;->writeIpAndProxyConfigurations(Ljava/lang/String;Landroid/util/SparseArray;)V

    #@e
    .line 57
    return-void
.end method
