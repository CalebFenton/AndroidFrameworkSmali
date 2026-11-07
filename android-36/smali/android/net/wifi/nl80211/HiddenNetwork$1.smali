.class Landroid/net/wifi/nl80211/HiddenNetwork$1;
.super Ljava/lang/Object;
.source "HiddenNetwork.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/HiddenNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/nl80211/HiddenNetwork;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nl80211/HiddenNetwork;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 77
    new-instance v0, Landroid/net/wifi/nl80211/HiddenNetwork;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/HiddenNetwork;-><init>()V

    .line 78
    .local v0, "result":Landroid/net/wifi/nl80211/HiddenNetwork;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/nl80211/HiddenNetwork;->ssid:[B

    .line 79
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

    .line 71
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/HiddenNetwork$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nl80211/HiddenNetwork;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/nl80211/HiddenNetwork;
    .registers 3
    .param p1, "size"    # I

    .line 84
    new-array v0, p1, [Landroid/net/wifi/nl80211/HiddenNetwork;

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

    .line 71
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/HiddenNetwork$1;->newArray(I)[Landroid/net/wifi/nl80211/HiddenNetwork;

    move-result-object p1

    return-object p1
.end method
