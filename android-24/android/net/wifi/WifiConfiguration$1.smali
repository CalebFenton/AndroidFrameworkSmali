.class final Landroid/net/wifi/WifiConfiguration$1;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiConfiguration;
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 1986
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    #@5
    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    #@8
    .line 1987
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v3

    #@c
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@e
    .line 1988
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v3

    #@12
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@14
    .line 1989
    invoke-static {v0}, Landroid/net/wifi/WifiConfiguration;->-get0(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->readFromParcel(Landroid/os/Parcel;)V

    #@1b
    .line 1990
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@21
    .line 1991
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@27
    .line 1992
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v3

    #@2b
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    #@2d
    .line 1993
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v3

    #@31
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@33
    .line 1994
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@39
    .line 1995
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@3f
    .line 1996
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v2

    #@43
    .line 1997
    .local v2, "numRoamingConsortiumIds":I
    new-array v3, v2, [J

    #@45
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@47
    .line 1998
    const/4 v1, 0x0

    #@48
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@4a
    .line 1999
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@4c
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@4f
    move-result-wide v6

    #@50
    aput-wide v6, v3, v1

    #@52
    .line 1998
    add-int/lit8 v1, v1, 0x1

    #@54
    goto :goto_0

    #@55
    .line 2001
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@5b
    .line 2002
    const/4 v1, 0x0

    #@5c
    :goto_1
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@5e
    array-length v3, v3

    #@5f
    if-ge v1, v3, :cond_1

    #@61
    .line 2003
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@66
    move-result-object v6

    #@67
    aput-object v6, v3, v1

    #@69
    .line 2002
    add-int/lit8 v1, v1, 0x1

    #@6b
    goto :goto_1

    #@6c
    .line 2005
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6f
    move-result v3

    #@70
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    #@72
    .line 2006
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@75
    move-result v3

    #@76
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@78
    .line 2007
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7b
    move-result v3

    #@7c
    if-eqz v3, :cond_2

    #@7e
    move v3, v4

    #@7f
    :goto_2
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@81
    .line 2008
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@84
    move-result v3

    #@85
    if-eqz v3, :cond_3

    #@87
    move v3, v4

    #@88
    :goto_3
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    #@8a
    .line 2009
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8d
    move-result-object v3

    #@8e
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    #@90
    .line 2011
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-wrap0(Landroid/os/Parcel;)Ljava/util/BitSet;

    #@93
    move-result-object v3

    #@94
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@96
    .line 2012
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-wrap0(Landroid/os/Parcel;)Ljava/util/BitSet;

    #@99
    move-result-object v3

    #@9a
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@9c
    .line 2013
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-wrap0(Landroid/os/Parcel;)Ljava/util/BitSet;

    #@9f
    move-result-object v3

    #@a0
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@a2
    .line 2014
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-wrap0(Landroid/os/Parcel;)Ljava/util/BitSet;

    #@a5
    move-result-object v3

    #@a6
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    #@a8
    .line 2015
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-wrap0(Landroid/os/Parcel;)Ljava/util/BitSet;

    #@ab
    move-result-object v3

    #@ac
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    #@ae
    .line 2017
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@b1
    move-result-object v3

    #@b2
    check-cast v3, Landroid/net/wifi/WifiEnterpriseConfig;

    #@b4
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@b6
    .line 2018
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@b9
    move-result-object v3

    #@ba
    check-cast v3, Landroid/net/IpConfiguration;

    #@bc
    invoke-static {v0, v3}, Landroid/net/wifi/WifiConfiguration;->-set0(Landroid/net/wifi/WifiConfiguration;Landroid/net/IpConfiguration;)Landroid/net/IpConfiguration;

    #@bf
    .line 2019
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c2
    move-result-object v3

    #@c3
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->dhcpServer:Ljava/lang/String;

    #@c5
    .line 2020
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c8
    move-result-object v3

    #@c9
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@cb
    .line 2021
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@ce
    move-result v3

    #@cf
    if-eqz v3, :cond_4

    #@d1
    move v3, v4

    #@d2
    :goto_4
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@d4
    .line 2022
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d7
    move-result v3

    #@d8
    if-eqz v3, :cond_5

    #@da
    move v3, v4

    #@db
    :goto_5
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    #@dd
    .line 2023
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e0
    move-result v3

    #@e1
    if-eqz v3, :cond_6

    #@e3
    move v3, v4

    #@e4
    :goto_6
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@e6
    .line 2024
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e9
    move-result v3

    #@ea
    if-eqz v3, :cond_7

    #@ec
    move v3, v4

    #@ed
    :goto_7
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@ef
    .line 2025
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f2
    move-result v3

    #@f3
    if-eqz v3, :cond_8

    #@f5
    move v3, v4

    #@f6
    :goto_8
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    #@f8
    .line 2026
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@fb
    move-result v3

    #@fc
    if-eqz v3, :cond_9

    #@fe
    move v3, v4

    #@ff
    :goto_9
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    #@101
    .line 2027
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@104
    move-result v3

    #@105
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@107
    .line 2028
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10a
    move-result v3

    #@10b
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@10d
    .line 2029
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@110
    move-result v3

    #@111
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@113
    .line 2030
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@116
    move-result-object v3

    #@117
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@119
    .line 2031
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11c
    move-result-object v3

    #@11d
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@11f
    .line 2032
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@122
    move-result-wide v6

    #@123
    iput-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    #@125
    .line 2033
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@128
    move-result-wide v6

    #@129
    iput-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    #@12b
    .line 2034
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12e
    move-result v3

    #@12f
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    #@131
    .line 2035
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@134
    move-result-wide v6

    #@135
    iput-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    #@137
    .line 2036
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13a
    move-result v3

    #@13b
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    #@13d
    .line 2037
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@140
    move-result v3

    #@141
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    #@143
    .line 2038
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@146
    move-result v3

    #@147
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@149
    .line 2039
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14c
    move-result v3

    #@14d
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@14f
    .line 2040
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@152
    move-result v3

    #@153
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    #@155
    .line 2041
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@158
    move-result v3

    #@159
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@15b
    .line 2042
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15e
    move-result v3

    #@15f
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    #@161
    .line 2043
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@164
    move-result v3

    #@165
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    #@167
    .line 2044
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16a
    move-result v3

    #@16b
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    #@16d
    .line 2045
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@170
    move-result v3

    #@171
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    #@173
    .line 2046
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@176
    move-result v3

    #@177
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@179
    .line 2047
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17c
    move-result v3

    #@17d
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@17f
    .line 2048
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@182
    move-result v3

    #@183
    if-eqz v3, :cond_a

    #@185
    move v3, v4

    #@186
    :goto_a
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    #@188
    .line 2049
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18b
    move-result v3

    #@18c
    if-eqz v3, :cond_b

    #@18e
    :goto_b
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    #@190
    .line 2050
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@193
    move-result-object v3

    #@194
    invoke-static {v0, v3}, Landroid/net/wifi/WifiConfiguration;->-set1(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Ljava/lang/String;

    #@197
    .line 2051
    return-object v0

    #@198
    :cond_2
    move v3, v5

    #@199
    .line 2007
    goto/16 :goto_2

    #@19b
    :cond_3
    move v3, v5

    #@19c
    .line 2008
    goto/16 :goto_3

    #@19e
    :cond_4
    move v3, v5

    #@19f
    .line 2021
    goto/16 :goto_4

    #@1a1
    :cond_5
    move v3, v5

    #@1a2
    .line 2022
    goto/16 :goto_5

    #@1a4
    :cond_6
    move v3, v5

    #@1a5
    .line 2023
    goto/16 :goto_6

    #@1a7
    :cond_7
    move v3, v5

    #@1a8
    .line 2024
    goto/16 :goto_7

    #@1aa
    :cond_8
    move v3, v5

    #@1ab
    .line 2025
    goto/16 :goto_8

    #@1ad
    :cond_9
    move v3, v5

    #@1ae
    .line 2026
    goto/16 :goto_9

    #@1b0
    :cond_a
    move v3, v5

    #@1b1
    .line 2048
    goto :goto_a

    #@1b2
    :cond_b
    move v4, v5

    #@1b3
    .line 2049
    goto :goto_b
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1985
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiConfiguration;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 2055
    new-array v0, p1, [Landroid/net/wifi/WifiConfiguration;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 2054
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration$1;->newArray(I)[Landroid/net/wifi/WifiConfiguration;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
