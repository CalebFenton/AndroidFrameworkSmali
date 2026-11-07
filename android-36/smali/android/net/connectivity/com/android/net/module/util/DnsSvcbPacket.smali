.class public Landroid/net/connectivity/com/android/net/module/util/DnsSvcbPacket;
.super Landroid/net/connectivity/com/android/net/module/util/DnsPacket;
.source "DnsSvcbPacket.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist TYPE_SVCB:I = 0x40


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    const-class v0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbPacket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbPacket;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>([B)V
    .registers 7
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/net/module/util/DnsPacket;-><init>([B)V

    .line 49
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbPacket;->mHeader:Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->getRecordCount(I)I

    move-result v0

    .line 50
    .local v0, "questions":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_37

    .line 53
    iget-object v2, p0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbPacket;->mRecords:[Ljava/util/List;

    aget-object v2, v2, v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsRecord;

    iget v1, v1, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    .line 54
    .local v1, "nsType":I
    const/16 v2, 0x40

    if-ne v1, v2, :cond_1e

    .line 57
    return-void

    .line 55
    :cond_1e
    new-instance v2, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected query type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    .end local v1    # "nsType":I
    :cond_37
    new-instance v1, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected question count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist findSvcbRecord(Ljava/lang/String;)Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;
    .registers 6
    .param p1, "alpn"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbPacket;->mRecords:[Ljava/util/List;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsRecord;

    .line 127
    .local v1, "record":Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsRecord;
    instance-of v2, v1, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;

    if-eqz v2, :cond_27

    .line 128
    move-object v2, v1

    check-cast v2, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;

    .line 129
    .local v2, "svcbRecord":Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;
    invoke-virtual {v2}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;->getAlpns()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 130
    return-object v2

    .line 133
    .end local v1    # "record":Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsRecord;
    .end local v2    # "svcbRecord":Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;
    :cond_27
    goto :goto_9

    .line 134
    :cond_28
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist fromResponse([B)Landroid/net/connectivity/com/android/net/module/util/DnsSvcbPacket;
    .registers 4
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 164
    new-instance v0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbPacket;

    invoke-direct {v0, p0}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbPacket;-><init>([B)V

    .line 165
    .local v0, "out":Landroid/net/connectivity/com/android/net/module/util/DnsSvcbPacket;
    invoke-virtual {v0}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbPacket;->isResponse()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 168
    return-object v0

    .line 166
    :cond_c
    new-instance v1, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;

    const-string v2, "Not an answer packet"

    invoke-direct {v1, v2}, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getAddressesFromAdditionalSection()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbPacket;->mHeader:Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->getRecordCount(I)I

    move-result v1

    if-nez v1, :cond_f

    .line 144
    return-object v0

    .line 146
    :cond_f
    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbPacket;->mRecords:[Ljava/util/List;

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsRecord;

    .line 147
    .local v2, "record":Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsRecord;
    iget v3, v2, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_49

    iget v3, v2, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    const/16 v4, 0x1c

    if-eq v3, v4, :cond_49

    .line 148
    sget-object v3, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbPacket;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found type other than A/AAAA in Additional section: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    goto :goto_17

    .line 152
    :cond_49
    :try_start_49
    invoke-virtual {v2}, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsRecord;->getRR()[B

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catch Ljava/net/UnknownHostException; {:try_start_49 .. :try_end_54} :catch_55

    .line 155
    goto :goto_5d

    .line 153
    :catch_55
    move-exception v3

    .line 154
    .local v3, "e":Ljava/net/UnknownHostException;
    sget-object v4, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbPacket;->TAG:Ljava/lang/String;

    const-string v5, "Failed to parse address"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v2    # "record":Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsRecord;
    .end local v3    # "e":Ljava/net/UnknownHostException;
    :goto_5d
    goto :goto_17

    .line 157
    :cond_5e
    return-object v0
.end method


# virtual methods
.method public blacklist getAddresses(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "alpn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbPacket;->findSvcbRecord(Ljava/lang/String;)Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;

    move-result-object v0

    .line 99
    .local v0, "record":Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;
    if-nez v0, :cond_9

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1

    .line 104
    :cond_9
    invoke-direct {p0}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbPacket;->getAddressesFromAdditionalSection()Ljava/util/List;

    move-result-object v1

    .line 105
    .local v1, "out":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_14

    return-object v1

    .line 107
    :cond_14
    invoke-virtual {v0}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;->getAddresses()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getDohPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "alpn"    # Ljava/lang/String;

    .line 116
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbPacket;->findSvcbRecord(Ljava/lang/String;)Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;

    move-result-object v0

    .line 117
    .local v0, "record":Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;->getDohPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public blacklist getPort(Ljava/lang/String;)I
    .registers 4
    .param p1, "alpn"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbPacket;->findSvcbRecord(Ljava/lang/String;)Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;

    move-result-object v0

    .line 89
    .local v0, "record":Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;->getPort()I

    move-result v1

    goto :goto_c

    :cond_b
    const/4 v1, -0x1

    :goto_c
    return v1
.end method

.method public blacklist getTargetName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "alpn"    # Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbPacket;->findSvcbRecord(Ljava/lang/String;)Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;

    move-result-object v0

    .line 80
    .local v0, "record":Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;->getTargetName()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public blacklist isResponse()Z
    .registers 2

    .line 63
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbPacket;->mHeader:Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;

    invoke-virtual {v0}, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->isResponse()Z

    move-result v0

    return v0
.end method

.method public blacklist isSupported(Ljava/lang/String;)Z
    .registers 3
    .param p1, "alpn"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbPacket;->findSvcbRecord(Ljava/lang/String;)Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
