.class public Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceRequest;
.super Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
.source "WifiP2pDnsSdServiceRequest.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 46
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, v1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(ILjava/lang/String;)V

    #@5
    .line 45
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    #@0
    .prologue
    .line 38
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(ILjava/lang/String;)V

    #@4
    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "dnsQuery"    # Ljava/lang/String;
    .param p2, "dnsType"    # I
    .param p3, "version"    # I

    #@0
    .prologue
    .line 50
    invoke-static {p1, p2, p3}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->createRequest(Ljava/lang/String;II)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-direct {p0, v1, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(ILjava/lang/String;)V

    #@8
    .line 49
    return-void
.end method

.method public static newInstance()Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceRequest;
    .locals 1

    #@0
    .prologue
    .line 62
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceRequest;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceRequest;-><init>()V

    #@5
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceRequest;
    .locals 4
    .param p0, "serviceType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 76
    if-nez p0, :cond_0

    #@2
    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "service type cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 79
    :cond_0
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceRequest;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, ".local."

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 80
    const/16 v2, 0xc

    #@23
    .line 81
    const/4 v3, 0x1

    #@24
    .line 79
    invoke-direct {v0, v1, v2, v3}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceRequest;-><init>(Ljava/lang/String;II)V

    #@27
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceRequest;
    .locals 4
    .param p0, "instanceName"    # Ljava/lang/String;
    .param p1, "serviceType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 98
    if-eqz p0, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 99
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6
    .line 100
    const-string/jumbo v2, "instance name or service type cannot be null"

    #@9
    .line 99
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 102
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, "."

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    const-string/jumbo v2, ".local."

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    .line 103
    .local v0, "fullDomainName":Ljava/lang/String;
    new-instance v1, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceRequest;

    #@2e
    .line 104
    const/16 v2, 0x10

    #@30
    .line 105
    const/4 v3, 0x1

    #@31
    .line 103
    invoke-direct {v1, v0, v2, v3}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceRequest;-><init>(Ljava/lang/String;II)V

    #@34
    return-object v1
.end method
