.class public Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;
.super Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
.source "WifiP2pDnsSdServiceResponse.java"


# static fields
.field private static final greylist-max-o sVmpack:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mDnsQueryName:Ljava/lang/String;

.field private greylist-max-o mDnsType:I

.field private greylist-max-o mInstanceName:Ljava/lang/String;

.field private final greylist-max-o mTxtRecord:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->sVmpack:Ljava/util/Map;

    .line 82
    sget-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->sVmpack:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_tcp.local."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->sVmpack:Ljava/util/Map;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "local."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->sVmpack:Ljava/util/Map;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_udp.local."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method protected constructor greylist-max-o <init>(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    .registers 11
    .param p1, "status"    # I
    .param p2, "tranId"    # I
    .param p3, "dev"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p4, "data"    # [B

    .line 154
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "status":I
    .end local p2    # "tranId":I
    .end local p3    # "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local p4    # "data":[B
    .local v2, "status":I
    .local v3, "tranId":I
    .local v4, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    .local v5, "data":[B
    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;-><init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

    .line 70
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    .line 156
    invoke-direct {p0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->parse()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 159
    return-void

    .line 157
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Malformed bonjour service response"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static greylist-max-o newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;
    .registers 6
    .param p0, "status"    # I
    .param p1, "transId"    # I
    .param p2, "dev"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p3, "data"    # [B

    .line 297
    const/4 v0, 0x0

    if-eqz p0, :cond_9

    .line 298
    new-instance v1, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;-><init>(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

    return-object v1

    .line 302
    :cond_9
    :try_start_9
    new-instance v1, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;-><init>(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_e} :catch_f

    return-object v1

    .line 304
    :catch_f
    move-exception v1

    .line 305
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 307
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    return-object v0
.end method

.method private greylist-max-o parse()Z
    .registers 7

    .line 176
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mData:[B

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 178
    return v1

    .line 181
    :cond_6
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mData:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 183
    .local v0, "dis":Ljava/io/DataInputStream;
    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->readDnsName(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    .line 184
    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_1e

    .line 185
    return v3

    .line 189
    :cond_1e
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsType:I

    .line 190
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    iput v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mVersion:I
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2a} :catch_66

    .line 194
    nop

    .line 196
    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsType:I

    const/16 v4, 0xc

    if-ne v2, v4, :cond_5a

    .line 197
    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->readDnsName(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "rData":Ljava/lang/String;
    if-nez v2, :cond_38

    .line 199
    return v3

    .line 201
    :cond_38
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_45

    .line 202
    return v3

    .line 205
    :cond_45
    nop

    .line 206
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    .line 205
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mInstanceName:Ljava/lang/String;

    .line 207
    .end local v2    # "rData":Ljava/lang/String;
    nop

    .line 213
    return v1

    .line 207
    :cond_5a
    iget v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsType:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_65

    .line 208
    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->readTxtData(Ljava/io/DataInputStream;)Z

    move-result v1

    return v1

    .line 210
    :cond_65
    return v3

    .line 191
    :catch_66
    move-exception v1

    .line 192
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 193
    return v3
.end method

.method private greylist-max-o readDnsName(Ljava/io/DataInputStream;)Ljava/lang/String;
    .registers 8
    .param p1, "dis"    # Ljava/io/DataInputStream;

    .line 223
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 226
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->sVmpack:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 227
    .local v1, "vmpack":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 228
    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_1b
    :goto_1b
    const/4 v2, 0x0

    :try_start_1c
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    .line 233
    .local v3, "i":I
    if-nez v3, :cond_27

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 235
    :cond_27
    const/16 v4, 0xc0

    if-ne v3, v4, :cond_44

    .line 237
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 238
    .local v4, "ref":Ljava/lang/String;
    if-nez v4, :cond_3c

    .line 240
    return-object v2

    .line 242
    :cond_3c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 245
    .end local v4    # "ref":Ljava/lang/String;
    :cond_44
    new-array v4, v3, [B

    .line 246
    .local v4, "data":[B
    invoke-virtual {p1, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 247
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_56} :catch_58

    .line 250
    nop

    .end local v3    # "i":I
    .end local v4    # "data":[B
    goto :goto_1b

    .line 251
    :catch_58
    move-exception v3

    .line 252
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 254
    .end local v3    # "e":Ljava/io/IOException;
    return-object v2
.end method

.method private greylist-max-o readTxtData(Ljava/io/DataInputStream;)Z
    .registers 9
    .param p1, "dis"    # Ljava/io/DataInputStream;

    .line 265
    nop

    :goto_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->available()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_30

    .line 266
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    .line 267
    .local v1, "len":I
    if-nez v1, :cond_10

    .line 268
    goto :goto_30

    .line 270
    :cond_10
    new-array v3, v1, [B

    .line 271
    .local v3, "data":[B
    invoke-virtual {p1, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 272
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "keyVal":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_25

    .line 274
    return v0

    .line 276
    :cond_25
    iget-object v5, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    aget-object v6, v4, v0

    aget-object v2, v4, v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2e} :catch_31

    .line 277
    nop

    .end local v1    # "len":I
    .end local v3    # "data":[B
    .end local v4    # "keyVal":[Ljava/lang/String;
    goto :goto_1

    .line 278
    :cond_30
    :goto_30
    return v2

    .line 279
    :catch_31
    move-exception v1

    .line 280
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 282
    .end local v1    # "e":Ljava/io/IOException;
    return v0
.end method


# virtual methods
.method public greylist-max-o getDnsQueryName()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getDnsType()I
    .registers 2

    .line 100
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsType:I

    return v0
.end method

.method public greylist-max-o getInstanceName()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mInstanceName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getTxtRecord()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    return-object v0
.end method

.method public greylist-max-o getVersion()I
    .registers 2

    .line 108
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mVersion:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "serviceType:DnsSd("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mServiceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mStatus:I

    invoke-static {v2}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$Status;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const-string v1, " srcAddr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const-string v1, " version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    const-string v1, " dnsName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    const-string v1, " TxtRecord:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_65
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 137
    .local v2, "key":Ljava/lang/String;
    const-string v3, " key:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_65

    .line 139
    :cond_8d
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mInstanceName:Ljava/lang/String;

    if-eqz v1, :cond_9c

    .line 140
    const-string v1, " InsName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    :cond_9c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
