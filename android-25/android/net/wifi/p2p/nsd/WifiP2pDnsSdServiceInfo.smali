.class public Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;
.super Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
.source "WifiP2pDnsSdServiceInfo.java"


# static fields
.field public static final DNS_TYPE_PTR:I = 0xc

.field public static final DNS_TYPE_TXT:I = 0x10

.field public static final VERSION_1:I = 0x1

.field private static final sVmPacket:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 65
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->sVmPacket:Ljava/util/Map;

    #@7
    .line 66
    sget-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->sVmPacket:Ljava/util/Map;

    #@9
    const-string/jumbo v1, "_tcp.local."

    #@c
    const-string/jumbo v2, "c00c"

    #@f
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 67
    sget-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->sVmPacket:Ljava/util/Map;

    #@14
    const-string/jumbo v1, "local."

    #@17
    const-string/jumbo v2, "c011"

    #@1a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 68
    sget-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->sVmPacket:Ljava/util/Map;

    #@1f
    const-string/jumbo v1, "_udp.local."

    #@22
    const-string/jumbo v2, "c01c"

    #@25
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 37
    return-void
.end method

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
    .line 77
    .local p1, "queryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;-><init>(Ljava/util/List;)V

    #@3
    .line 76
    return-void
.end method

.method private static compressDnsName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "dnsName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 205
    new-instance v3, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 210
    .local v3, "sb":Ljava/lang/StringBuffer;
    :goto_0
    sget-object v4, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->sVmPacket:Ljava/util/Map;

    #@9
    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/lang/String;

    #@f
    .line 211
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@11
    .line 212
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14
    .line 231
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    return-object v4

    #@19
    .line 215
    :cond_0
    const/16 v4, 0x2e

    #@1b
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    #@1e
    move-result v1

    #@1f
    .line 216
    .local v1, "i":I
    const/4 v4, -0x1

    #@20
    if-ne v1, v4, :cond_2

    #@22
    .line 217
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@25
    move-result v4

    #@26
    if-lez v4, :cond_1

    #@28
    .line 218
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2a
    const-string/jumbo v5, "%02x"

    #@2d
    new-array v6, v9, [Ljava/lang/Object;

    #@2f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@32
    move-result v7

    #@33
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v7

    #@37
    aput-object v7, v6, v8

    #@39
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@40
    .line 219
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@43
    move-result-object v4

    #@44
    invoke-static {v4}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->bin2HexStr([B)Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4b
    .line 222
    :cond_1
    const-string/jumbo v4, "00"

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@51
    goto :goto_1

    #@52
    .line 226
    :cond_2
    invoke-virtual {p0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    .line 227
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    #@58
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5b
    move-result-object p0

    #@5c
    .line 228
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@5e
    const-string/jumbo v5, "%02x"

    #@61
    new-array v6, v9, [Ljava/lang/Object;

    #@63
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@66
    move-result v7

    #@67
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6a
    move-result-object v7

    #@6b
    aput-object v7, v6, v8

    #@6d
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@74
    .line 229
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    #@77
    move-result-object v4

    #@78
    invoke-static {v4}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->bin2HexStr([B)Ljava/lang/String;

    #@7b
    move-result-object v4

    #@7c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7f
    goto :goto_0
.end method

.method private static createPtrServiceQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "instanceName"    # Ljava/lang/String;
    .param p1, "serviceType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 124
    new-instance v1, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    .line 125
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "bonjour "

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c
    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    const-string/jumbo v3, ".local."

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    const/16 v3, 0xc

    #@22
    invoke-static {v2, v3, v4}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->createRequest(Ljava/lang/String;II)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29
    .line 127
    const-string/jumbo v2, " "

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2f
    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@32
    move-result-object v0

    #@33
    .line 130
    .local v0, "data":[B
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@35
    const-string/jumbo v3, "%02x"

    #@38
    new-array v4, v4, [Ljava/lang/Object;

    #@3a
    array-length v5, v0

    #@3b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e
    move-result-object v5

    #@3f
    const/4 v6, 0x0

    #@40
    aput-object v5, v4, v6

    #@42
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@49
    .line 131
    invoke-static {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->bin2HexStr([B)Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@50
    .line 134
    const-string/jumbo v2, "c027"

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@56
    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    return-object v2
.end method

.method static createRequest(Ljava/lang/String;II)Ljava/lang/String;
    .locals 7
    .param p0, "dnsName"    # Ljava/lang/String;
    .param p1, "dnsType"    # I
    .param p2, "version"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 177
    new-instance v0, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 186
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/16 v1, 0x10

    #@9
    if-ne p1, v1, :cond_0

    #@b
    .line 187
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@d
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@10
    move-result-object p0

    #@11
    .line 189
    :cond_0
    invoke-static {p0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->compressDnsName(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    .line 190
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@1a
    const-string/jumbo v2, "%04x"

    #@1d
    new-array v3, v6, [Ljava/lang/Object;

    #@1f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v4

    #@23
    aput-object v4, v3, v5

    #@25
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2c
    .line 191
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2e
    const-string/jumbo v2, "%02x"

    #@31
    new-array v3, v6, [Ljava/lang/Object;

    #@33
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v4

    #@37
    aput-object v4, v3, v5

    #@39
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@40
    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    return-object v1
.end method

.method private static createTxtServiceQuery(Ljava/lang/String;Ljava/lang/String;Landroid/net/nsd/DnsSdTxtRecord;)Ljava/lang/String;
    .locals 5
    .param p0, "instanceName"    # Ljava/lang/String;
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "txtRecord"    # Landroid/net/nsd/DnsSdTxtRecord;

    #@0
    .prologue
    .line 153
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 154
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "bonjour "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, "."

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    const-string/jumbo v3, ".local."

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    .line 157
    const/16 v3, 0x10

    #@2c
    const/4 v4, 0x1

    #@2d
    .line 156
    invoke-static {v2, v3, v4}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->createRequest(Ljava/lang/String;II)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@34
    .line 158
    const-string/jumbo v2, " "

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3a
    .line 159
    invoke-virtual {p2}, Landroid/net/nsd/DnsSdTxtRecord;->getRawData()[B

    #@3d
    move-result-object v0

    #@3e
    .line 160
    .local v0, "rawData":[B
    array-length v2, v0

    #@3f
    if-nez v2, :cond_0

    #@41
    .line 161
    const-string/jumbo v2, "00"

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@47
    .line 165
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    return-object v2

    #@4c
    .line 163
    :cond_0
    invoke-static {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->bin2HexStr([B)Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@53
    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;
    .locals 6
    .param p0, "instanceName"    # Ljava/lang/String;
    .param p1, "serviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;"
        }
    .end annotation

    #@0
    .prologue
    .line 93
    .local p2, "txtMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_1

    #@c
    .line 94
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@e
    .line 95
    const-string/jumbo v5, "instance name or service type cannot be empty"

    #@11
    .line 94
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v4

    #@15
    .line 98
    :cond_1
    new-instance v3, Landroid/net/nsd/DnsSdTxtRecord;

    #@17
    invoke-direct {v3}, Landroid/net/nsd/DnsSdTxtRecord;-><init>()V

    #@1a
    .line 99
    .local v3, "txtRecord":Landroid/net/nsd/DnsSdTxtRecord;
    if-eqz p2, :cond_2

    #@1c
    .line 100
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@1f
    move-result-object v4

    #@20
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v1

    #@24
    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_2

    #@2a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Ljava/lang/String;

    #@30
    .line 101
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v4

    #@34
    check-cast v4, Ljava/lang/String;

    #@36
    invoke-virtual {v3, v0, v4}, Landroid/net/nsd/DnsSdTxtRecord;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@39
    goto :goto_0

    #@3a
    .line 105
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    #@3c
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@3f
    .line 106
    .local v2, "queries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->createPtrServiceQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@46
    .line 107
    invoke-static {p0, p1, v3}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->createTxtServiceQuery(Ljava/lang/String;Ljava/lang/String;Landroid/net/nsd/DnsSdTxtRecord;)Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4d
    .line 109
    new-instance v4, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;

    #@4f
    invoke-direct {v4, v2}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;-><init>(Ljava/util/List;)V

    #@52
    return-object v4
.end method
