.class final Landroid/net/wifi/passpoint/WifiPasspointInfo$1;
.super Ljava/lang/Object;
.source "WifiPasspointInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointInfo;
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
        "Landroid/net/wifi/passpoint/WifiPasspointInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/passpoint/WifiPasspointInfo;
    .locals 12
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 457
    new-instance v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;

    #@2
    invoke-direct {v5}, Landroid/net/wifi/passpoint/WifiPasspointInfo;-><init>()V

    #@5
    .line 460
    .local v5, "p":Landroid/net/wifi/passpoint/WifiPasspointInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v8

    #@9
    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->bssid:Ljava/lang/String;

    #@b
    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e
    move-result-object v8

    #@f
    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->venueName:Ljava/lang/String;

    #@11
    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v3

    #@15
    .line 464
    .local v3, "n":I
    if-lez v3, :cond_0

    #@17
    .line 465
    new-instance v8, Ljava/util/ArrayList;

    #@19
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@1c
    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->networkAuthTypeList:Ljava/util/List;

    #@1e
    .line 466
    const/4 v1, 0x0

    #@1f
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@21
    .line 467
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;

    #@23
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;-><init>()V

    #@26
    .line 468
    .local v0, "auth":Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v8

    #@2a
    iput v8, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;->type:I

    #@2c
    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2f
    move-result-object v8

    #@30
    iput-object v8, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;->redirectUrl:Ljava/lang/String;

    #@32
    .line 470
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->networkAuthTypeList:Ljava/util/List;

    #@34
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@37
    .line 466
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 474
    .end local v0    # "auth":Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v3

    #@3e
    .line 475
    if-lez v3, :cond_1

    #@40
    .line 476
    new-instance v8, Ljava/util/ArrayList;

    #@42
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@45
    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->roamingConsortiumList:Ljava/util/List;

    #@47
    .line 477
    const/4 v1, 0x0

    #@48
    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    #@4a
    .line 478
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->roamingConsortiumList:Ljava/util/List;

    #@4c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4f
    move-result-object v9

    #@50
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@53
    .line 477
    add-int/lit8 v1, v1, 0x1

    #@55
    goto :goto_1

    #@56
    .line 481
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@59
    move-result v3

    #@5a
    .line 482
    const/4 v8, -0x1

    #@5b
    if-eq v3, v8, :cond_2

    #@5d
    .line 483
    new-instance v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;

    #@5f
    invoke-direct {v8}, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;-><init>()V

    #@62
    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->ipAddrTypeAvailability:Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;

    #@64
    .line 484
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->ipAddrTypeAvailability:Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;

    #@66
    iput v3, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;->availability:I

    #@68
    .line 487
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6b
    move-result v3

    #@6c
    .line 488
    if-lez v3, :cond_3

    #@6e
    .line 489
    new-instance v8, Ljava/util/ArrayList;

    #@70
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@73
    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->naiRealmList:Ljava/util/List;

    #@75
    .line 490
    const/4 v1, 0x0

    #@76
    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v3, :cond_3

    #@78
    .line 491
    new-instance v7, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;

    #@7a
    invoke-direct {v7}, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;-><init>()V

    #@7d
    .line 492
    .local v7, "realm":Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@80
    move-result v8

    #@81
    iput v8, v7, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;->encoding:I

    #@83
    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@86
    move-result-object v8

    #@87
    iput-object v8, v7, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;->realm:Ljava/lang/String;

    #@89
    .line 494
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->naiRealmList:Ljava/util/List;

    #@8b
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8e
    .line 490
    add-int/lit8 v1, v1, 0x1

    #@90
    goto :goto_2

    #@91
    .line 498
    .end local v1    # "i":I
    .end local v7    # "realm":Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@94
    move-result v3

    #@95
    .line 499
    if-lez v3, :cond_4

    #@97
    .line 500
    new-instance v8, Ljava/util/ArrayList;

    #@99
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@9c
    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->cellularNetworkList:Ljava/util/List;

    #@9e
    .line 501
    const/4 v1, 0x0

    #@9f
    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v3, :cond_4

    #@a1
    .line 502
    new-instance v6, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;

    #@a3
    invoke-direct {v6}, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;-><init>()V

    #@a6
    .line 503
    .local v6, "plmn":Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a9
    move-result-object v8

    #@aa
    iput-object v8, v6, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;->mcc:Ljava/lang/String;

    #@ac
    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@af
    move-result-object v8

    #@b0
    iput-object v8, v6, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;->mnc:Ljava/lang/String;

    #@b2
    .line 505
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->cellularNetworkList:Ljava/util/List;

    #@b4
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b7
    .line 501
    add-int/lit8 v1, v1, 0x1

    #@b9
    goto :goto_3

    #@ba
    .line 509
    .end local v1    # "i":I
    .end local v6    # "plmn":Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@bd
    move-result v3

    #@be
    .line 510
    if-lez v3, :cond_5

    #@c0
    .line 511
    new-instance v8, Ljava/util/ArrayList;

    #@c2
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@c5
    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->domainNameList:Ljava/util/List;

    #@c7
    .line 512
    const/4 v1, 0x0

    #@c8
    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v3, :cond_5

    #@ca
    .line 513
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->domainNameList:Ljava/util/List;

    #@cc
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cf
    move-result-object v9

    #@d0
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d3
    .line 512
    add-int/lit8 v1, v1, 0x1

    #@d5
    goto :goto_4

    #@d6
    .line 516
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d9
    move-result-object v8

    #@da
    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->operatorFriendlyName:Ljava/lang/String;

    #@dc
    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@df
    move-result v3

    #@e0
    .line 519
    if-lez v3, :cond_6

    #@e2
    .line 520
    new-instance v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    #@e4
    invoke-direct {v8}, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;-><init>()V

    #@e7
    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    #@e9
    .line 521
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    #@eb
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@ee
    move-result v9

    #@ef
    iput v9, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->wanInfo:I

    #@f1
    .line 522
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    #@f3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@f6
    move-result-wide v10

    #@f7
    iput-wide v10, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->downlinkSpeed:J

    #@f9
    .line 523
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    #@fb
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@fe
    move-result-wide v10

    #@ff
    iput-wide v10, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->uplinkSpeed:J

    #@101
    .line 524
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    #@103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@106
    move-result v9

    #@107
    iput v9, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->downlinkLoad:I

    #@109
    .line 525
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    #@10b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10e
    move-result v9

    #@10f
    iput v9, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->uplinkLoad:I

    #@111
    .line 526
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    #@113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@116
    move-result v9

    #@117
    iput v9, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->lmd:I

    #@119
    .line 529
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11c
    move-result v3

    #@11d
    .line 530
    if-lez v3, :cond_7

    #@11f
    .line 531
    new-instance v8, Ljava/util/ArrayList;

    #@121
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@124
    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->connectionCapabilityList:Ljava/util/List;

    #@126
    .line 532
    const/4 v1, 0x0

    #@127
    .restart local v1    # "i":I
    :goto_5
    if-ge v1, v3, :cond_7

    #@129
    .line 533
    new-instance v2, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;

    #@12b
    invoke-direct {v2}, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;-><init>()V

    #@12e
    .line 534
    .local v2, "ip":Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@131
    move-result v8

    #@132
    iput v8, v2, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;->proto:I

    #@134
    .line 535
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@137
    move-result v8

    #@138
    iput v8, v2, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;->port:I

    #@13a
    .line 536
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13d
    move-result v8

    #@13e
    iput v8, v2, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;->status:I

    #@140
    .line 537
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->connectionCapabilityList:Ljava/util/List;

    #@142
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@145
    .line 532
    add-int/lit8 v1, v1, 0x1

    #@147
    goto :goto_5

    #@148
    .line 541
    .end local v1    # "i":I
    .end local v2    # "ip":Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14b
    move-result v3

    #@14c
    .line 542
    if-lez v3, :cond_8

    #@14e
    .line 543
    new-instance v8, Ljava/util/ArrayList;

    #@150
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@153
    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->osuProviderList:Ljava/util/List;

    #@155
    .line 544
    const/4 v1, 0x0

    #@156
    .restart local v1    # "i":I
    :goto_6
    if-ge v1, v3, :cond_8

    #@158
    .line 545
    sget-object v8, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15a
    invoke-interface {v8, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@15d
    move-result-object v4

    #@15e
    check-cast v4, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;

    #@160
    .line 547
    .local v4, "osu":Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->osuProviderList:Ljava/util/List;

    #@162
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@165
    .line 544
    add-int/lit8 v1, v1, 0x1

    #@167
    goto :goto_6

    #@168
    .line 551
    .end local v1    # "i":I
    .end local v4    # "osu":Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
    :cond_8
    return-object v5
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 456
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/passpoint/WifiPasspointInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/passpoint/WifiPasspointInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 556
    new-array v0, p1, [Landroid/net/wifi/passpoint/WifiPasspointInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 555
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointInfo$1;->newArray(I)[Landroid/net/wifi/passpoint/WifiPasspointInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
