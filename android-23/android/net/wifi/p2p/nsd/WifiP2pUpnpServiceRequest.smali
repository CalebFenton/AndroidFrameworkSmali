.class public Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;
.super Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
.source "WifiP2pUpnpServiceRequest.java"


# direct methods
.method protected constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 48
    const/4 v0, 0x2

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, v1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(ILjava/lang/String;)V

    #@5
    .line 47
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    #@0
    .prologue
    .line 40
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(ILjava/lang/String;)V

    #@4
    .line 39
    return-void
.end method

.method public static newInstance()Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;
    .locals 1

    #@0
    .prologue
    .line 57
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;-><init>()V

    #@5
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;
    .locals 6
    .param p0, "st"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    if-nez p0, :cond_0

    #@2
    .line 75
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "search target cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 77
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@10
    .line 78
    .local v0, "sb":Ljava/lang/StringBuffer;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@12
    const-string/jumbo v2, "%02x"

    #@15
    const/4 v3, 0x1

    #@16
    new-array v3, v3, [Ljava/lang/Object;

    #@18
    const/16 v4, 0x10

    #@1a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v4

    #@1e
    const/4 v5, 0x0

    #@1f
    aput-object v4, v3, v5

    #@21
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@28
    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->bin2HexStr([B)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@33
    .line 80
    new-instance v1, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;

    #@35
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-direct {v1, v2}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;-><init>(Ljava/lang/String;)V

    #@3c
    return-object v1
.end method
