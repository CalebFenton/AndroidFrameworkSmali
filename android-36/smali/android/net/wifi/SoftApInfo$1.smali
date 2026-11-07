.class Landroid/net/wifi/SoftApInfo$1;
.super Ljava/lang/Object;
.source "SoftApInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SoftApInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/SoftApInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/SoftApInfo;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 428
    new-instance v0, Landroid/net/wifi/SoftApInfo;

    invoke-direct {v0}, Landroid/net/wifi/SoftApInfo;-><init>()V

    .line 429
    .local v0, "info":Landroid/net/wifi/SoftApInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/SoftApInfo;->-$$Nest$fputmFrequency(Landroid/net/wifi/SoftApInfo;I)V

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/SoftApInfo;->-$$Nest$fputmBandwidth(Landroid/net/wifi/SoftApInfo;I)V

    .line 431
    const-class v1, Landroid/net/MacAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/MacAddress;

    invoke-static {v0, v1}, Landroid/net/wifi/SoftApInfo;->-$$Nest$fputmBssid(Landroid/net/wifi/SoftApInfo;Landroid/net/MacAddress;)V

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/SoftApInfo;->-$$Nest$fputmWifiStandard(Landroid/net/wifi/SoftApInfo;I)V

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/SoftApInfo;->-$$Nest$fputmApInstanceIdentifier(Landroid/net/wifi/SoftApInfo;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/net/wifi/SoftApInfo;->-$$Nest$fputmIdleShutdownTimeoutMillis(Landroid/net/wifi/SoftApInfo;J)V

    .line 435
    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readOuiKeyedDataList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/SoftApInfo;->-$$Nest$fputmVendorData(Landroid/net/wifi/SoftApInfo;Ljava/util/List;)V

    .line 436
    const-class v1, Landroid/net/MacAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/MacAddress;

    invoke-static {v0, v1}, Landroid/net/wifi/SoftApInfo;->-$$Nest$fputmMldAddress(Landroid/net/wifi/SoftApInfo;Landroid/net/MacAddress;)V

    .line 437
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

    .line 426
    invoke-virtual {p0, p1}, Landroid/net/wifi/SoftApInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/SoftApInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/SoftApInfo;
    .registers 3
    .param p1, "size"    # I

    .line 441
    new-array v0, p1, [Landroid/net/wifi/SoftApInfo;

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

    .line 426
    invoke-virtual {p0, p1}, Landroid/net/wifi/SoftApInfo$1;->newArray(I)[Landroid/net/wifi/SoftApInfo;

    move-result-object p1

    return-object p1
.end method
