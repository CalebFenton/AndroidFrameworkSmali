.class Landroid/net/wifi/WifiManager$AddNetworkResult$1;
.super Ljava/lang/Object;
.source "WifiManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager$AddNetworkResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiManager$AddNetworkResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 2993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiManager$AddNetworkResult;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2995
    new-instance v0, Landroid/net/wifi/WifiManager$AddNetworkResult;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiManager$AddNetworkResult;-><init>(II)V

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

    .line 2993
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager$AddNetworkResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiManager$AddNetworkResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/WifiManager$AddNetworkResult;
    .registers 3
    .param p1, "size"    # I

    .line 2999
    new-array v0, p1, [Landroid/net/wifi/WifiManager$AddNetworkResult;

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

    .line 2993
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager$AddNetworkResult$1;->newArray(I)[Landroid/net/wifi/WifiManager$AddNetworkResult;

    move-result-object p1

    return-object p1
.end method
