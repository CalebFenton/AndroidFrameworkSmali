.class public Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;
.super Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
.source "WifiP2pDnsSdServiceResponse.java"


# static fields
.field private static final sVmpack:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDnsQueryName:Ljava/lang/String;

.field private mDnsType:I

.field private mInstanceName:Ljava/lang/String;

.field private final mTxtRecord:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 81
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->sVmpack:Ljava/util/Map;

    #@7
    .line 82
    sget-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->sVmpack:Ljava/util/Map;

    #@9
    const/16 v1, 0xc

    #@b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, "_tcp.local."

    #@12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 83
    sget-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->sVmpack:Ljava/util/Map;

    #@17
    const/16 v1, 0x11

    #@19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, "local."

    #@20
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 84
    sget-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->sVmpack:Ljava/util/Map;

    #@25
    const/16 v1, 0x1c

    #@27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v1

    #@2b
    const-string/jumbo v2, "_udp.local."

    #@2e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 32
    return-void
.end method

.method protected constructor <init>(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "tranId"    # I
    .param p3, "dev"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p4, "data"    # [B

    #@0
    .prologue
    .line 154
    const/4 v1, 0x1

    #@1
    move-object v0, p0

    #@2
    move v2, p1

    #@3
    move v3, p2

    #@4
    move-object v4, p3

    #@5
    move-object v5, p4

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;-><init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

    #@9
    .line 70
    new-instance v0, Ljava/util/HashMap;

    #@b
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@e
    iput-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    #@10
    .line 156
    invoke-direct {p0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->parse()Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_0

    #@16
    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "Malformed bonjour service response"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 153
    :cond_0
    return-void
.end method

.method static newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;
    .locals 3
    .param p0, "status"    # I
    .param p1, "transId"    # I
    .param p2, "dev"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p3, "data"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 297
    if-eqz p0, :cond_0

    #@3
    .line 298
    new-instance v1, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    #@5
    invoke-direct {v1, p0, p1, p2, v2}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;-><init>(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

    #@8
    return-object v1

    #@9
    .line 302
    :cond_0
    :try_start_0
    new-instance v1, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    #@b
    invoke-direct {v1, p0, p1, p2, p3}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;-><init>(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    return-object v1

    #@f
    .line 304
    :catch_0
    move-exception v0

    #@10
    .line 305
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    #@13
    .line 307
    return-object v2
.end method

.method private parse()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 176
    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mData:[B

    #@4
    if-nez v3, :cond_0

    #@6
    .line 178
    return v6

    #@7
    .line 181
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    #@9
    new-instance v3, Ljava/io/ByteArrayInputStream;

    #@b
    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mData:[B

    #@d
    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@10
    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@13
    .line 183
    .local v0, "dis":Ljava/io/DataInputStream;
    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->readDnsName(Ljava/io/DataInputStream;)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    iput-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    #@19
    .line 184
    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    #@1b
    if-nez v3, :cond_1

    #@1d
    .line 185
    return v5

    #@1e
    .line 189
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    #@21
    move-result v3

    #@22
    iput v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsType:I

    #@24
    .line 190
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    #@27
    move-result v3

    #@28
    iput v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mVersion:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 196
    iget v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsType:I

    #@2c
    const/16 v4, 0xc

    #@2e
    if-ne v3, v4, :cond_4

    #@30
    .line 197
    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->readDnsName(Ljava/io/DataInputStream;)Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    .line 198
    .local v2, "rData":Ljava/lang/String;
    if-nez v2, :cond_2

    #@36
    .line 199
    return v5

    #@37
    .line 191
    .end local v2    # "rData":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@38
    .line 192
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    #@3b
    .line 193
    return v5

    #@3c
    .line 201
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "rData":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@3f
    move-result v3

    #@40
    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    #@42
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@45
    move-result v4

    #@46
    if-gt v3, v4, :cond_3

    #@48
    .line 202
    return v5

    #@49
    .line 206
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@4c
    move-result v3

    #@4d
    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    #@4f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@52
    move-result v4

    #@53
    sub-int/2addr v3, v4

    #@54
    add-int/lit8 v3, v3, -0x1

    #@56
    .line 205
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    iput-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mInstanceName:Ljava/lang/String;

    #@5c
    .line 213
    return v6

    #@5d
    .line 207
    .end local v2    # "rData":Ljava/lang/String;
    :cond_4
    iget v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsType:I

    #@5f
    const/16 v4, 0x10

    #@61
    if-ne v3, v4, :cond_5

    #@63
    .line 208
    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->readTxtData(Ljava/io/DataInputStream;)Z

    #@66
    move-result v3

    #@67
    return v3

    #@68
    .line 210
    :cond_5
    return v5
.end method

.method private readDnsName(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 9
    .param p1, "dis"    # Ljava/io/DataInputStream;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 223
    new-instance v4, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    .line 226
    .local v4, "sb":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/util/HashMap;

    #@8
    sget-object v6, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->sVmpack:Ljava/util/Map;

    #@a
    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@d
    .line 227
    .local v5, "vmpack":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v6, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    #@f
    if-eqz v6, :cond_0

    #@11
    .line 228
    const/16 v6, 0x27

    #@13
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v6

    #@17
    iget-object v7, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    #@19
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 232
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    #@1f
    move-result v2

    #@20
    .line 233
    .local v2, "i":I
    if-nez v2, :cond_1

    #@22
    .line 234
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@25
    move-result-object v6

    #@26
    return-object v6

    #@27
    .line 235
    :cond_1
    const/16 v6, 0xc0

    #@29
    if-ne v2, v6, :cond_3

    #@2b
    .line 237
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    #@2e
    move-result v6

    #@2f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    move-result-object v3

    #@37
    check-cast v3, Ljava/lang/String;

    #@39
    .line 238
    .local v3, "ref":Ljava/lang/String;
    if-nez v3, :cond_2

    #@3b
    .line 240
    return-object v8

    #@3c
    .line 242
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3f
    .line 243
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    return-object v6

    #@44
    .line 245
    .end local v3    # "ref":Ljava/lang/String;
    :cond_3
    new-array v0, v2, [B

    #@46
    .line 246
    .local v0, "data":[B
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    #@49
    .line 247
    new-instance v6, Ljava/lang/String;

    #@4b
    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    #@4e
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@51
    .line 248
    const-string/jumbo v6, "."

    #@54
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    goto :goto_0

    #@58
    .line 251
    .end local v0    # "data":[B
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    #@59
    .line 252
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    #@5c
    .line 254
    return-object v8
.end method

.method private readTxtData(Ljava/io/DataInputStream;)Z
    .locals 9
    .param p1, "dis"    # Ljava/io/DataInputStream;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 265
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->available()I

    #@5
    move-result v4

    #@6
    if-lez v4, :cond_0

    #@8
    .line 266
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    #@b
    move-result v3

    #@c
    .line 267
    .local v3, "len":I
    if-nez v3, :cond_1

    #@e
    .line 278
    .end local v3    # "len":I
    :cond_0
    return v8

    #@f
    .line 270
    .restart local v3    # "len":I
    :cond_1
    new-array v0, v3, [B

    #@11
    .line 271
    .local v0, "data":[B
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    #@14
    .line 272
    new-instance v4, Ljava/lang/String;

    #@16
    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    #@19
    const-string/jumbo v5, "="

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    .line 273
    .local v2, "keyVal":[Ljava/lang/String;
    array-length v4, v2

    #@21
    const/4 v5, 0x2

    #@22
    if-eq v4, v5, :cond_2

    #@24
    .line 274
    return v7

    #@25
    .line 276
    :cond_2
    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    #@27
    const/4 v5, 0x0

    #@28
    aget-object v5, v2, v5

    #@2a
    const/4 v6, 0x1

    #@2b
    aget-object v6, v2, v6

    #@2d
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    goto :goto_0

    #@31
    .line 279
    .end local v0    # "data":[B
    .end local v2    # "keyVal":[Ljava/lang/String;
    .end local v3    # "len":I
    :catch_0
    move-exception v1

    #@32
    .line 280
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    #@35
    .line 282
    return v7
.end method


# virtual methods
.method public getDnsQueryName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDnsType()I
    .locals 1

    #@0
    .prologue
    .line 100
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsType:I

    #@2
    return v0
.end method

.method public getInstanceName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mInstanceName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTxtRecord()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 108
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mVersion:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 129
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 130
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "serviceType:DnsSd("

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    move-result-object v3

    #@c
    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mServiceType:I

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, ")"

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    .line 131
    const-string/jumbo v3, " status:"

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    move-result-object v3

    #@1f
    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mStatus:I

    #@21
    invoke-static {v4}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$Status;->toString(I)Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@28
    .line 132
    const-string/jumbo v3, " srcAddr:"

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2e
    move-result-object v3

    #@2f
    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@31
    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@36
    .line 133
    const-string/jumbo v3, " version:"

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3c
    move-result-object v3

    #@3d
    const-string/jumbo v4, "%02x"

    #@40
    const/4 v5, 0x1

    #@41
    new-array v5, v5, [Ljava/lang/Object;

    #@43
    iget v6, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mVersion:I

    #@45
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@48
    move-result-object v6

    #@49
    const/4 v7, 0x0

    #@4a
    aput-object v6, v5, v7

    #@4c
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@53
    .line 134
    const-string/jumbo v3, " dnsName:"

    #@56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@59
    move-result-object v3

    #@5a
    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    #@5c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5f
    .line 135
    const-string/jumbo v3, " TxtRecord:"

    #@62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@65
    .line 136
    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    #@67
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@6a
    move-result-object v3

    #@6b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6e
    move-result-object v1

    #@6f
    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@72
    move-result v3

    #@73
    if-eqz v3, :cond_0

    #@75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@78
    move-result-object v0

    #@79
    check-cast v0, Ljava/lang/String;

    #@7b
    .line 137
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v3, " key:"

    #@7e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@81
    move-result-object v3

    #@82
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@85
    move-result-object v3

    #@86
    const-string/jumbo v4, " value:"

    #@89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8c
    move-result-object v4

    #@8d
    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    #@8f
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@92
    move-result-object v3

    #@93
    check-cast v3, Ljava/lang/String;

    #@95
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@98
    goto :goto_0

    #@99
    .line 139
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mInstanceName:Ljava/lang/String;

    #@9b
    if-eqz v3, :cond_1

    #@9d
    .line 140
    const-string/jumbo v3, " InsName:"

    #@a0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a3
    move-result-object v3

    #@a4
    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mInstanceName:Ljava/lang/String;

    #@a6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a9
    .line 142
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@ac
    move-result-object v3

    #@ad
    return-object v3
.end method
