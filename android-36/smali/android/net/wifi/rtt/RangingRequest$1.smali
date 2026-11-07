.class Landroid/net/wifi/rtt/RangingRequest$1;
.super Ljava/lang/Object;
.source "RangingRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/rtt/RangingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/rtt/RangingRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/rtt/RangingRequest;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 242
    new-instance v0, Landroid/net/wifi/rtt/RangingRequest;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 243
    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readOuiKeyedDataList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/rtt/RangingRequest;-><init>(Ljava/util/List;IILjava/util/List;Landroid/net/wifi/rtt/RangingRequest-IA;)V

    .line 242
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

    .line 234
    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/RangingRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/rtt/RangingRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/rtt/RangingRequest;
    .registers 3
    .param p1, "size"    # I

    .line 237
    new-array v0, p1, [Landroid/net/wifi/rtt/RangingRequest;

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

    .line 234
    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/RangingRequest$1;->newArray(I)[Landroid/net/wifi/rtt/RangingRequest;

    move-result-object p1

    return-object p1
.end method
