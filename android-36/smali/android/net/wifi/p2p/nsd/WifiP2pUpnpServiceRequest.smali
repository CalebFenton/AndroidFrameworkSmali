.class public Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;
.super Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
.source "WifiP2pUpnpServiceRequest.java"


# direct methods
.method protected constructor greylist-max-o <init>()V
    .registers 3

    .line 48
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(ILjava/lang/String;)V

    .line 49
    return-void
.end method

.method protected constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "query"    # Ljava/lang/String;

    .line 40
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(ILjava/lang/String;)V

    .line 41
    return-void
.end method

.method public static whitelist newInstance()Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;
    .registers 1

    .line 57
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;

    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;-><init>()V

    return-object v0
.end method

.method public static whitelist newInstance(Ljava/lang/String;)Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;
    .registers 5
    .param p0, "st"    # Ljava/lang/String;

    .line 74
    if-eqz p0, :cond_31

    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    .local v0, "sb":Ljava/lang/StringBuffer;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02x"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->bin2HexStr([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    new-instance v1, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 75
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "search target cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
