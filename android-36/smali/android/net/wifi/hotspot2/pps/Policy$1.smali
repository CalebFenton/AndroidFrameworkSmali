.class Landroid/net/wifi/hotspot2/pps/Policy$1;
.super Ljava/lang/Object;
.source "Policy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/hotspot2/pps/Policy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist readProtoPortMap(Landroid/os/Parcel;)Ljava/util/Map;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 529
    .local v0, "size":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 530
    const/4 v1, 0x0

    return-object v1

    .line 532
    :cond_9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 533
    .local v1, "protoPortMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_23

    .line 534
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 535
    .local v3, "key":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 536
    .local v4, "value":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    .end local v3    # "key":I
    .end local v4    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 538
    .end local v2    # "i":I
    :cond_23
    return-object v1
.end method

.method private blacklist readRoamingPartnerList(Landroid/os/Parcel;)Ljava/util/List;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;"
        }
    .end annotation

    .line 548
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 549
    .local v0, "size":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    .line 550
    return-object v2

    .line 552
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .local v1, "partnerList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v0, :cond_1d

    .line 554
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 556
    .end local v3    # "i":I
    :cond_1d
    return-object v1
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Policy;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 503
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Policy;-><init>()V

    .line 504
    .local v0, "policy":Landroid/net/wifi/hotspot2/pps/Policy;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinHomeDownlinkBandwidth(J)V

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinHomeUplinkBandwidth(J)V

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinRoamingDownlinkBandwidth(J)V

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinRoamingUplinkBandwidth(J)V

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy;->setExcludedSsidList([Ljava/lang/String;)V

    .line 509
    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/pps/Policy$1;->readProtoPortMap(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy;->setRequiredProtoPortMap(Ljava/util/Map;)V

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy;->setMaximumBssLoadValue(I)V

    .line 511
    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/pps/Policy$1;->readRoamingPartnerList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy;->setPreferredRoamingPartnerList(Ljava/util/List;)V

    .line 512
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy;->setPolicyUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    .line 513
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 500
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Policy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Policy;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/hotspot2/pps/Policy;
    .registers 3
    .param p1, "size"    # I

    .line 518
    new-array v0, p1, [Landroid/net/wifi/hotspot2/pps/Policy;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 500
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Policy$1;->newArray(I)[Landroid/net/wifi/hotspot2/pps/Policy;

    move-result-object p1

    return-object p1
.end method
