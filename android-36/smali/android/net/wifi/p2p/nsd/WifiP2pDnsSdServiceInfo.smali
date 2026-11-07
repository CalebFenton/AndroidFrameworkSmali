.class public Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;
.super Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
.source "WifiP2pDnsSdServiceInfo.java"


# static fields
.field public static final greylist-max-o DNS_TYPE_PTR:I = 0xc

.field public static final greylist-max-o DNS_TYPE_TXT:I = 0x10

.field public static final greylist-max-o VERSION_1:I = 0x1

.field private static final greylist-max-o sVmPacket:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->sVmPacket:Ljava/util/Map;

    .line 69
    sget-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->sVmPacket:Ljava/util/Map;

    const-string v1, "_tcp.local."

    const-string v2, "c00c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->sVmPacket:Ljava/util/Map;

    const-string v1, "local."

    const-string v2, "c011"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->sVmPacket:Ljava/util/Map;

    const-string v1, "_udp.local."

    const-string v2, "c01c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p1, "queryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;-><init>(Ljava/util/List;)V

    .line 81
    return-void
.end method

.method private static greylist-max-o compressDnsName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "dnsName"    # Ljava/lang/String;

    .line 209
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 214
    .local v0, "sb":Ljava/lang/StringBuffer;
    :goto_5
    sget-object v1, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->sVmPacket:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 215
    .local v1, "data":Ljava/lang/String;
    if-eqz v1, :cond_13

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    goto :goto_4a

    .line 219
    :cond_13
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 220
    .local v2, "i":I
    const/4 v3, -0x1

    const-string v4, "%02x"

    if-ne v2, v3, :cond_4f

    .line 221
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_44

    .line 222
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->bin2HexStr([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    :cond_44
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    nop

    .line 235
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "i":I
    :goto_4a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 230
    .restart local v1    # "data":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_4f
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 232
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->bin2HexStr([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_5
.end method

.method private static greylist-max-o createPtrServiceQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "instanceName"    # Ljava/lang/String;
    .param p1, "serviceType"    # Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "bonjour "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".local."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->createRequest(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 133
    .local v1, "data":[B
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02x"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-static {v1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->bin2HexStr([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    const-string v2, "c027"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static greylist-max-p createRequest(Ljava/lang/String;II)Ljava/lang/String;
    .registers 7
    .param p0, "dnsName"    # Ljava/lang/String;
    .param p1, "dnsType"    # I
    .param p2, "version"    # I

    .line 181
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 190
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/16 v1, 0x10

    if-ne p1, v1, :cond_f

    .line 191
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 193
    :cond_f
    invoke-static {p0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->compressDnsName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%04x"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02x"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist createTxtServiceQuery(Ljava/lang/String;Ljava/lang/String;Lcom/android/wifi/x/com/android/net/module/util/DnsSdTxtRecord;)Ljava/lang/String;
    .registers 7
    .param p0, "instanceName"    # Ljava/lang/String;
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "txtRecord"    # Lcom/android/wifi/x/com/android/net/module/util/DnsSdTxtRecord;

    .line 156
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 157
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "bonjour "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".local."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->createRequest(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {p2}, Lcom/android/wifi/x/com/android/net/module/util/DnsSdTxtRecord;->getRawData()[B

    move-result-object v1

    .line 163
    .local v1, "rawData":[B
    array-length v2, v1

    if-nez v2, :cond_43

    .line 164
    const-string v2, "00"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4a

    .line 166
    :cond_43
    invoke-static {v1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->bin2HexStr([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    :goto_4a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;
    .registers 7
    .param p0, "instanceName"    # Ljava/lang/String;
    .param p1, "serviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;"
        }
    .end annotation

    .line 96
    .local p2, "txtMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 101
    new-instance v0, Lcom/android/wifi/x/com/android/net/module/util/DnsSdTxtRecord;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/net/module/util/DnsSdTxtRecord;-><init>()V

    .line 102
    .local v0, "txtRecord":Lcom/android/wifi/x/com/android/net/module/util/DnsSdTxtRecord;
    if-eqz p2, :cond_31

    .line 103
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 104
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/wifi/x/com/android/net/module/util/DnsSdTxtRecord;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_1b

    .line 108
    :cond_31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v1, "queries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->createPtrServiceQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-static {p0, p1, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->createTxtServiceQuery(Ljava/lang/String;Ljava/lang/String;Lcom/android/wifi/x/com/android/net/module/util/DnsSdTxtRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v2, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;

    invoke-direct {v2, v1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;-><init>(Ljava/util/List;)V

    return-object v2

    .line 97
    .end local v0    # "txtRecord":Lcom/android/wifi/x/com/android/net/module/util/DnsSdTxtRecord;
    .end local v1    # "queries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "instance name or service type cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
