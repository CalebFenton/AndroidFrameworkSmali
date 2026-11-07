.class Landroid/location/GnssCapabilities$1;
.super Ljava/lang/Object;
.source "GnssCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssCapabilities;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssCapabilities;
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 537
    new-instance v0, Landroid/location/GnssCapabilities;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 538
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget-object v5, Landroid/location/GnssSignalType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/location/GnssCapabilities;-><init>(IZIILjava/util/List;Landroid/location/GnssCapabilities-IA;)V

    .line 537
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

    .line 534
    invoke-virtual {p0, p1}, Landroid/location/GnssCapabilities$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssCapabilities;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GnssCapabilities;
    .registers 3
    .param p1, "size"    # I

    .line 543
    new-array v0, p1, [Landroid/location/GnssCapabilities;

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

    .line 534
    invoke-virtual {p0, p1}, Landroid/location/GnssCapabilities$1;->newArray(I)[Landroid/location/GnssCapabilities;

    move-result-object p1

    return-object p1
.end method
