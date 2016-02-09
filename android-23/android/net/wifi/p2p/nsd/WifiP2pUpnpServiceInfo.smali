.class public Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceInfo;
.super Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
.source "WifiP2pUpnpServiceInfo.java"


# static fields
.field public static final VERSION_1_0:I = 0x10


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 50
    .local p1, "queryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;-><init>(Ljava/util/List;)V

    #@3
    .line 49
    return-void
.end method

.method private static createSupplicantQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 101
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "upnp "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    .line 102
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@d
    const-string/jumbo v2, "%02x "

    #@10
    const/4 v3, 0x1

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const/16 v4, 0x10

    #@15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v4

    #@19
    const/4 v5, 0x0

    #@1a
    aput-object v4, v3, v5

    #@1c
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    .line 103
    const-string/jumbo v1, "uuid:"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29
    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2c
    .line 105
    if-eqz p1, :cond_0

    #@2e
    .line 106
    const-string/jumbo v1, "::"

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@34
    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@37
    .line 109
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceInfo;
    .locals 5
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "device"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceInfo;"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@1
    .line 73
    if-eqz p0, :cond_0

    #@3
    if-nez p1, :cond_1

    #@5
    .line 74
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v4, "uuid or device cannnot be null"

    #@a
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3

    #@e
    .line 76
    :cond_1
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@11
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    .line 80
    .local v0, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0, v3}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceInfo;->createSupplicantQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1d
    .line 81
    const-string/jumbo v3, "upnp:rootdevice"

    #@20
    invoke-static {p0, v3}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceInfo;->createSupplicantQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@27
    .line 82
    invoke-static {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceInfo;->createSupplicantQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2e
    .line 83
    if-eqz p2, :cond_2

    #@30
    .line 84
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object v2

    #@34
    .local v2, "service$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_2

    #@3a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v1

    #@3e
    check-cast v1, Ljava/lang/String;

    #@40
    .line 85
    .local v1, "service":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceInfo;->createSupplicantQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@47
    goto :goto_0

    #@48
    .line 89
    .end local v1    # "service":Ljava/lang/String;
    .end local v2    # "service$iterator":Ljava/util/Iterator;
    :cond_2
    new-instance v3, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceInfo;

    #@4a
    invoke-direct {v3, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceInfo;-><init>(Ljava/util/List;)V

    #@4d
    return-object v3
.end method
