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
    .line 1608
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
    .line 1610
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    #@5
    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    #@8
    .line 1611
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v3

    #@c
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@e
    .line 1612
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v3

    #@12
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@14
    .line 1613
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v3

    #@18
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    #@1a
    .line 1614
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@20
    .line 1615
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@26
    .line 1616
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v3

    #@2a
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    #@2c
    .line 1617
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v3

    #@30
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@32
    .line 1618
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    #@38
    .line 1619
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@3e
    .line 1620
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@44
    .line 1621
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v2

    #@48
    .line 1622
    .local v2, "numRoamingConsortiumIds":I
    new-array v3, v2, [J

    #@4a
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@4c
    .line 1623
    const/4 v1, 0x0

    #@4d
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@4f
    .line 1624
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@54
    move-result-wide v6

    #@55
    aput-wide v6, v3, v1

    #@57
    .line 1623
    add-int/lit8 v1, v1, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 1626
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@60
    .line 1627
    const/4 v1, 0x0

    #@61
    :goto_1
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@63
    array-length v3, v3

    #@64
    if-ge v1, v3, :cond_1

    #@66
    .line 1628
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6b
    move-result-object v6

    #@6c
    aput-object v6, v3, v1

    #@6e
    .line 1627
    add-int/lit8 v1, v1, 0x1

    #@70
    goto :goto_1

    #@71
    .line 1630
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@74
    move-result v3

    #@75
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    #@77
    .line 1631
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7a
    move-result v3

    #@7b
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@7d
    .line 1632
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@80
    move-result v3

    #@81
    if-eqz v3, :cond_2

    #@83
    move v3, v4

    #@84
    :goto_2
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@86
    .line 1633
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@89
    move-result v3

    #@8a
    if-eqz v3, :cond_3

    #@8c
    move v3, v4

    #@8d
    :goto_3
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    #@8f
    .line 1634
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@92
    move-result-object v3

    #@93
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    #@95
    .line 1636
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-wrap0(Landroid/os/Parcel;)Ljava/util/BitSet;

    #@98
    move-result-object v3

    #@99
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@9b
    .line 1637
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-wrap0(Landroid/os/Parcel;)Ljava/util/BitSet;

    #@9e
    move-result-object v3

    #@9f
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@a1
    .line 1638
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-wrap0(Landroid/os/Parcel;)Ljava/util/BitSet;

    #@a4
    move-result-object v3

    #@a5
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@a7
    .line 1639
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-wrap0(Landroid/os/Parcel;)Ljava/util/BitSet;

    #@aa
    move-result-object v3

    #@ab
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    #@ad
    .line 1640
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-wrap0(Landroid/os/Parcel;)Ljava/util/BitSet;

    #@b0
    move-result-object v3

    #@b1
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    #@b3
    .line 1642
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@b6
    move-result-object v3

    #@b7
    check-cast v3, Landroid/net/wifi/WifiEnterpriseConfig;

    #@b9
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@bb
    .line 1644
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@be
    move-result-object v3

    #@bf
    check-cast v3, Landroid/net/IpConfiguration;

    #@c1
    invoke-static {v0, v3}, Landroid/net/wifi/WifiConfiguration;->-set0(Landroid/net/wifi/WifiConfiguration;Landroid/net/IpConfiguration;)Landroid/net/IpConfiguration;

    #@c4
    .line 1645
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c7
    move-result-object v3

    #@c8
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->dhcpServer:Ljava/lang/String;

    #@ca
    .line 1646
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cd
    move-result-object v3

    #@ce
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@d0
    .line 1647
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d3
    move-result v3

    #@d4
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@d6
    .line 1648
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d9
    move-result v3

    #@da
    if-eqz v3, :cond_4

    #@dc
    move v3, v4

    #@dd
    :goto_4
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@df
    .line 1649
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e2
    move-result v3

    #@e3
    if-eqz v3, :cond_5

    #@e5
    move v3, v4

    #@e6
    :goto_5
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    #@e8
    .line 1650
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@eb
    move-result v3

    #@ec
    if-eqz v3, :cond_6

    #@ee
    move v3, v4

    #@ef
    :goto_6
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@f1
    .line 1651
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f4
    move-result v3

    #@f5
    if-eqz v3, :cond_7

    #@f7
    move v3, v4

    #@f8
    :goto_7
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@fa
    .line 1652
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@fd
    move-result v3

    #@fe
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@100
    .line 1653
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@103
    move-result v3

    #@104
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@106
    .line 1654
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@109
    move-result v3

    #@10a
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@10c
    .line 1655
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10f
    move-result-object v3

    #@110
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@112
    .line 1656
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@115
    move-result-object v3

    #@116
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@118
    .line 1657
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@11b
    move-result-wide v6

    #@11c
    iput-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    #@11e
    .line 1658
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@121
    move-result-wide v6

    #@122
    iput-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    #@124
    .line 1659
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@127
    move-result-wide v6

    #@128
    iput-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    #@12a
    .line 1660
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12d
    move-result v3

    #@12e
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    #@130
    .line 1661
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@133
    move-result-wide v6

    #@134
    iput-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    #@136
    .line 1662
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@139
    move-result v3

    #@13a
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    #@13c
    .line 1663
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13f
    move-result v3

    #@140
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    #@142
    .line 1664
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@145
    move-result v3

    #@146
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    #@148
    .line 1665
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14b
    move-result v3

    #@14c
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    #@14e
    .line 1666
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@151
    move-result v3

    #@152
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    #@154
    .line 1667
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@157
    move-result v3

    #@158
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@15a
    .line 1668
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15d
    move-result v3

    #@15e
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@160
    .line 1669
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@163
    move-result v3

    #@164
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    #@166
    .line 1670
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@169
    move-result v3

    #@16a
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@16c
    .line 1671
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16f
    move-result v3

    #@170
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    #@172
    .line 1672
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@175
    move-result v3

    #@176
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    #@178
    .line 1673
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17b
    move-result v3

    #@17c
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    #@17e
    .line 1674
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@181
    move-result v3

    #@182
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    #@184
    .line 1675
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@187
    move-result v3

    #@188
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    #@18a
    .line 1676
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18d
    move-result v3

    #@18e
    if-eqz v3, :cond_8

    #@190
    move v3, v4

    #@191
    :goto_8
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    #@193
    .line 1677
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@196
    move-result v3

    #@197
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@199
    .line 1678
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19c
    move-result v3

    #@19d
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@19f
    .line 1679
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a2
    move-result v3

    #@1a3
    if-eqz v3, :cond_9

    #@1a5
    :goto_9
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    #@1a7
    .line 1680
    return-object v0

    #@1a8
    :cond_2
    move v3, v5

    #@1a9
    .line 1632
    goto/16 :goto_2

    #@1ab
    :cond_3
    move v3, v5

    #@1ac
    .line 1633
    goto/16 :goto_3

    #@1ae
    :cond_4
    move v3, v5

    #@1af
    .line 1648
    goto/16 :goto_4

    #@1b1
    :cond_5
    move v3, v5

    #@1b2
    .line 1649
    goto/16 :goto_5

    #@1b4
    :cond_6
    move v3, v5

    #@1b5
    .line 1650
    goto/16 :goto_6

    #@1b7
    :cond_7
    move v3, v5

    #@1b8
    .line 1651
    goto/16 :goto_7

    #@1ba
    :cond_8
    move v3, v5

    #@1bb
    .line 1676
    goto :goto_8

    #@1bc
    :cond_9
    move v4, v5

    #@1bd
    .line 1679
    goto :goto_9
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1609
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
    .line 1684
    new-array v0, p1, [Landroid/net/wifi/WifiConfiguration;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1683
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration$1;->newArray(I)[Landroid/net/wifi/WifiConfiguration;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
