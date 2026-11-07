.class Landroid/net/connectivity/android/net/LocalNetworkConfig$1;
.super Ljava/lang/Object;
.source "LocalNetworkConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/LocalNetworkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/connectivity/android/net/LocalNetworkConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/android/net/LocalNetworkConfig;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    .line 105
    .local v1, "upstreamSelector":Landroid/net/NetworkRequest;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    .line 106
    .local v2, "upstreamConfig":Landroid/net/connectivity/android/net/MulticastRoutingConfig;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    .line 107
    .local v3, "downstreamConfig":Landroid/net/connectivity/android/net/MulticastRoutingConfig;
    new-instance v4, Landroid/net/connectivity/android/net/LocalNetworkConfig;

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/net/connectivity/android/net/LocalNetworkConfig;-><init>(Landroid/net/NetworkRequest;Landroid/net/connectivity/android/net/MulticastRoutingConfig;Landroid/net/connectivity/android/net/MulticastRoutingConfig;Landroid/net/connectivity/android/net/LocalNetworkConfig-IA;)V

    return-object v4
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

    .line 102
    invoke-virtual {p0, p1}, Landroid/net/connectivity/android/net/LocalNetworkConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/android/net/LocalNetworkConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/connectivity/android/net/LocalNetworkConfig;
    .registers 3
    .param p1, "size"    # I

    .line 113
    new-array v0, p1, [Landroid/net/connectivity/android/net/LocalNetworkConfig;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, Landroid/net/connectivity/android/net/LocalNetworkConfig$1;->newArray(I)[Landroid/net/connectivity/android/net/LocalNetworkConfig;

    move-result-object p1

    return-object p1
.end method
