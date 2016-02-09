.class public Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;
.super Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
.source "WifiP2pUpnpServiceResponse.java"


# instance fields
.field private mUniqueServiceNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:I


# direct methods
.method protected constructor <init>(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "transId"    # I
    .param p3, "dev"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p4, "data"    # [B

    #@0
    .prologue
    .line 82
    const/4 v1, 0x2

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
    .line 84
    invoke-direct {p0}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->parse()Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "Malformed upnp service response"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 81
    :cond_0
    return-void
.end method

.method static newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;
    .locals 3
    .param p0, "status"    # I
    .param p1, "transId"    # I
    .param p2, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p3, "data"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 148
    if-eqz p0, :cond_0

    #@3
    .line 149
    new-instance v1, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    #@5
    invoke-direct {v1, p0, p1, p2, v2}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;-><init>(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

    #@8
    return-object v1

    #@9
    .line 153
    :cond_0
    :try_start_0
    new-instance v1, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    #@b
    invoke-direct {v1, p0, p1, p2, p3}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;-><init>(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    return-object v1

    #@f
    .line 154
    :catch_0
    move-exception v0

    #@10
    .line 155
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    #@13
    .line 157
    return-object v2
.end method

.method private parse()Z
    .locals 7

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 101
    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mData:[B

    #@4
    if-nez v3, :cond_0

    #@6
    .line 103
    return v6

    #@7
    .line 106
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mData:[B

    #@9
    array-length v3, v3

    #@a
    if-ge v3, v6, :cond_1

    #@c
    .line 107
    return v2

    #@d
    .line 110
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mData:[B

    #@f
    aget-byte v3, v3, v2

    #@11
    and-int/lit16 v3, v3, 0xff

    #@13
    iput v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mVersion:I

    #@15
    .line 111
    new-instance v3, Ljava/lang/String;

    #@17
    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mData:[B

    #@19
    iget-object v5, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mData:[B

    #@1b
    array-length v5, v5

    #@1c
    add-int/lit8 v5, v5, -0x1

    #@1e
    invoke-direct {v3, v4, v6, v5}, Ljava/lang/String;-><init>([BII)V

    #@21
    const-string/jumbo v4, ","

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 112
    .local v1, "names":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    #@2a
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@2d
    iput-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mUniqueServiceNames:Ljava/util/List;

    #@2f
    .line 113
    array-length v3, v1

    #@30
    :goto_0
    if-ge v2, v3, :cond_2

    #@32
    aget-object v0, v1, v2

    #@34
    .line 114
    .local v0, "name":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mUniqueServiceNames:Ljava/util/List;

    #@36
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@39
    .line 113
    add-int/lit8 v2, v2, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 116
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    return v6
.end method


# virtual methods
.method public getUniqueServiceNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mUniqueServiceNames:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 51
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mVersion:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 121
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 122
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "serviceType:UPnP("

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    move-result-object v3

    #@c
    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mServiceType:I

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, ")"

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    .line 123
    const-string/jumbo v3, " status:"

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    move-result-object v3

    #@1f
    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mStatus:I

    #@21
    invoke-static {v4}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$Status;->toString(I)Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@28
    .line 124
    const-string/jumbo v3, " srcAddr:"

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2e
    move-result-object v3

    #@2f
    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@31
    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@36
    .line 125
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
    iget v6, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mVersion:I

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
    .line 126
    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mUniqueServiceNames:Ljava/util/List;

    #@55
    if-eqz v3, :cond_0

    #@57
    .line 127
    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mUniqueServiceNames:Ljava/util/List;

    #@59
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5c
    move-result-object v1

    #@5d
    .local v1, "name$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@60
    move-result v3

    #@61
    if-eqz v3, :cond_0

    #@63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@66
    move-result-object v0

    #@67
    check-cast v0, Ljava/lang/String;

    #@69
    .line 128
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v3, " usn:"

    #@6c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@73
    goto :goto_0

    #@74
    .line 131
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "name$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    return-object v3
.end method
