.class Landroid/net/wifi/hotspot2/pps/HomeSp$1;
.super Ljava/lang/Object;
.source "HomeSp.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/HomeSp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/hotspot2/pps/HomeSp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist readHomeNetworkIds(Landroid/os/Parcel;)Ljava/util/Map;
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 531
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 532
    .local v0, "size":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 533
    const/4 v1, 0x0

    return-object v1

    .line 535
    :cond_9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 536
    .local v1, "networkIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_2a

    .line 537
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 538
    .local v3, "key":Ljava/lang/String;
    const/4 v4, 0x0

    .line 539
    .local v4, "value":Ljava/lang/Long;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 540
    .local v5, "readValue":J
    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_24

    .line 541
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 543
    :cond_24
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Long;
    .end local v5    # "readValue":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 545
    .end local v2    # "i":I
    :cond_2a
    return-object v1
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/HomeSp;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 507
    new-instance v0, Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;-><init>()V

    .line 508
    .local v0, "homeSp":Landroid/net/wifi/hotspot2/pps/HomeSp;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFqdn(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFriendlyName(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setIconUrl(Ljava/lang/String;)V

    .line 511
    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/pps/HomeSp$1;->readHomeNetworkIds(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setHomeNetworkIds(Ljava/util/Map;)V

    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setMatchAllOis([J)V

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setMatchAnyOis([J)V

    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setOtherHomePartners([Ljava/lang/String;)V

    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setRoamingConsortiumOis([J)V

    .line 516
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

    .line 504
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/HomeSp$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/hotspot2/pps/HomeSp;
    .registers 3
    .param p1, "size"    # I

    .line 521
    new-array v0, p1, [Landroid/net/wifi/hotspot2/pps/HomeSp;

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

    .line 504
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/HomeSp$1;->newArray(I)[Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p1

    return-object p1
.end method
