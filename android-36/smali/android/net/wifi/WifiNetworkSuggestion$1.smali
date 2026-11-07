.class Landroid/net/wifi/WifiNetworkSuggestion$1;
.super Ljava/lang/Object;
.source "WifiNetworkSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiNetworkSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiNetworkSuggestion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiNetworkSuggestion;
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1388
    new-instance v0, Landroid/net/wifi/WifiNetworkSuggestion;

    .line 1389
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 1390
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 1391
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1392
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1393
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1394
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    invoke-direct/range {v0 .. v7}, Landroid/net/wifi/WifiNetworkSuggestion;-><init>(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/hotspot2/PasspointConfiguration;ZZZZI)V

    .line 1388
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

    .line 1385
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkSuggestion$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiNetworkSuggestion;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/WifiNetworkSuggestion;
    .registers 3
    .param p1, "size"    # I

    .line 1401
    new-array v0, p1, [Landroid/net/wifi/WifiNetworkSuggestion;

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

    .line 1385
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkSuggestion$1;->newArray(I)[Landroid/net/wifi/WifiNetworkSuggestion;

    move-result-object p1

    return-object p1
.end method
