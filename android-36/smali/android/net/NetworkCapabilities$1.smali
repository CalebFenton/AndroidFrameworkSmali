.class Landroid/net/NetworkCapabilities$1;
.super Ljava/lang/Object;
.source "NetworkCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/NetworkCapabilities;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 2429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist readParcelableArraySet(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/util/ArraySet;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 2473
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2474
    .local v0, "size":I
    if-gez v0, :cond_8

    .line 2475
    const/4 v1, 0x0

    return-object v1

    .line 2477
    :cond_8
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 2478
    .local v1, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_1a

    .line 2479
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    .line 2480
    .local v3, "value":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2478
    .end local v3    # "value":Landroid/os/Parcelable;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2482
    .end local v2    # "i":I
    :cond_1a
    return-object v1
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkCapabilities;
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2432
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 2434
    .local v0, "netCap":Landroid/net/NetworkCapabilities;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    const-wide v3, 0x3fffffffffL

    and-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/net/NetworkCapabilities;->-$$Nest$fputmNetworkCapabilities(Landroid/net/NetworkCapabilities;J)V

    .line 2435
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    and-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/net/NetworkCapabilities;->-$$Nest$fputmForbiddenNetworkCapabilities(Landroid/net/NetworkCapabilities;J)V

    .line 2436
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {}, Landroid/net/NetworkCapabilities;->-$$Nest$sfgetALL_VALID_TRANSPORTS()I

    move-result v3

    int-to-long v3, v3

    and-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/net/NetworkCapabilities;->-$$Nest$fputmTransportTypes(Landroid/net/NetworkCapabilities;J)V

    .line 2437
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/NetworkCapabilities;->-$$Nest$fputmLinkUpBandwidthKbps(Landroid/net/NetworkCapabilities;I)V

    .line 2438
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/NetworkCapabilities;->-$$Nest$fputmLinkDownBandwidthKbps(Landroid/net/NetworkCapabilities;I)V

    .line 2439
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkSpecifier;

    invoke-static {v0, v2}, Landroid/net/NetworkCapabilities;->-$$Nest$fputmNetworkSpecifier(Landroid/net/NetworkCapabilities;Landroid/net/NetworkSpecifier;)V

    .line 2440
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/TransportInfo;

    invoke-static {v0, v2}, Landroid/net/NetworkCapabilities;->-$$Nest$fputmTransportInfo(Landroid/net/NetworkCapabilities;Landroid/net/TransportInfo;)V

    .line 2441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v0, v2}, Landroid/net/NetworkCapabilities;->-$$Nest$fputmSignalStrength(Landroid/net/NetworkCapabilities;I)V

    .line 2442
    invoke-direct {p0, p1, v1}, Landroid/net/NetworkCapabilities$1;->readParcelableArraySet(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkCapabilities;->-$$Nest$fputmUids(Landroid/net/NetworkCapabilities;Landroid/util/ArraySet;)V

    .line 2443
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 2444
    .local v1, "allowedUids":[I
    invoke-static {v0}, Landroid/net/NetworkCapabilities;->-$$Nest$fgetmAllowedUids(Landroid/net/NetworkCapabilities;)Landroid/util/ArraySet;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 2445
    array-length v2, v1

    const/4 v3, 0x0

    :goto_64
    if-ge v3, v2, :cond_76

    aget v4, v1, v3

    .line 2446
    .local v4, "uid":I
    invoke-static {v0}, Landroid/net/NetworkCapabilities;->-$$Nest$fgetmAllowedUids(Landroid/net/NetworkCapabilities;)Landroid/util/ArraySet;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2445
    .end local v4    # "uid":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    .line 2448
    :cond_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/NetworkCapabilities;->-$$Nest$fputmSSID(Landroid/net/NetworkCapabilities;Ljava/lang/String;)V

    .line 2449
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-static {v0, v2}, Landroid/net/NetworkCapabilities;->-$$Nest$fputmPrivateDnsBroken(Landroid/net/NetworkCapabilities;Z)V

    .line 2450
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->setAdministratorUids([I)Landroid/net/NetworkCapabilities;

    .line 2451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v0, v2}, Landroid/net/NetworkCapabilities;->-$$Nest$fputmOwnerUid(Landroid/net/NetworkCapabilities;I)V

    .line 2452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v0, v2}, Landroid/net/NetworkCapabilities;->-$$Nest$fputmRequestorUid(Landroid/net/NetworkCapabilities;I)V

    .line 2453
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/NetworkCapabilities;->-$$Nest$fputmRequestorPackageName(Landroid/net/NetworkCapabilities;Ljava/lang/String;)V

    .line 2454
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-static {v0, v2}, Landroid/net/NetworkCapabilities;->-$$Nest$fputmSubIds(Landroid/net/NetworkCapabilities;Landroid/util/ArraySet;)V

    .line 2455
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 2456
    .local v2, "subIdInts":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b3
    array-length v4, v2

    if-ge v3, v4, :cond_c6

    .line 2457
    invoke-static {v0}, Landroid/net/NetworkCapabilities;->-$$Nest$fgetmSubIds(Landroid/net/NetworkCapabilities;)Landroid/util/ArraySet;

    move-result-object v4

    aget v5, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2456
    add-int/lit8 v3, v3, 0x1

    goto :goto_b3

    .line 2459
    .end local v3    # "i":I
    :cond_c6
    sget-object v3, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->setUnderlyingNetworks(Ljava/util/List;)V

    .line 2460
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {}, Landroid/net/NetworkCapabilities;->-$$Nest$sfgetALL_VALID_ENTERPRISE_IDS()I

    move-result v4

    and-int/2addr v3, v4

    invoke-static {v0, v3}, Landroid/net/NetworkCapabilities;->-$$Nest$fputmEnterpriseId(Landroid/net/NetworkCapabilities;I)V

    .line 2461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v0, v3}, Landroid/net/NetworkCapabilities;->-$$Nest$fputmReservationId(Landroid/net/NetworkCapabilities;I)V

    .line 2462
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-static {v0, v3}, Landroid/net/NetworkCapabilities;->-$$Nest$fputmMatchNonThreadLocalNetworks(Landroid/net/NetworkCapabilities;Z)V

    .line 2463
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

    .line 2429
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/NetworkCapabilities;
    .registers 3
    .param p1, "size"    # I

    .line 2468
    new-array v0, p1, [Landroid/net/NetworkCapabilities;

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

    .line 2429
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities$1;->newArray(I)[Landroid/net/NetworkCapabilities;

    move-result-object p1

    return-object p1
.end method
