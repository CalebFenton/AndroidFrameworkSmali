.class Landroid/net/wifi/nl80211/PnoNetwork$1;
.super Ljava/lang/Object;
.source "PnoNetwork.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/PnoNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/nl80211/PnoNetwork;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nl80211/PnoNetwork;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 153
    new-instance v0, Landroid/net/wifi/nl80211/PnoNetwork;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/PnoNetwork;-><init>()V

    .line 154
    .local v0, "result":Landroid/net/wifi/nl80211/PnoNetwork;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/PnoNetwork;->-$$Nest$fputmIsHidden(Landroid/net/wifi/nl80211/PnoNetwork;Z)V

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/PnoNetwork;->-$$Nest$fputmSsid(Landroid/net/wifi/nl80211/PnoNetwork;[B)V

    .line 156
    invoke-static {v0}, Landroid/net/wifi/nl80211/PnoNetwork;->-$$Nest$fgetmSsid(Landroid/net/wifi/nl80211/PnoNetwork;)[B

    move-result-object v1

    if-nez v1, :cond_24

    .line 157
    new-array v1, v2, [B

    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/PnoNetwork;->-$$Nest$fputmSsid(Landroid/net/wifi/nl80211/PnoNetwork;[B)V

    .line 159
    :cond_24
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/PnoNetwork;->-$$Nest$fputmFrequencies(Landroid/net/wifi/nl80211/PnoNetwork;[I)V

    .line 160
    invoke-static {v0}, Landroid/net/wifi/nl80211/PnoNetwork;->-$$Nest$fgetmFrequencies(Landroid/net/wifi/nl80211/PnoNetwork;)[I

    move-result-object v1

    if-nez v1, :cond_36

    .line 161
    new-array v1, v2, [I

    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/PnoNetwork;->-$$Nest$fputmFrequencies(Landroid/net/wifi/nl80211/PnoNetwork;[I)V

    .line 163
    :cond_36
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

    .line 150
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/PnoNetwork$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nl80211/PnoNetwork;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/nl80211/PnoNetwork;
    .registers 3
    .param p1, "size"    # I

    .line 168
    new-array v0, p1, [Landroid/net/wifi/nl80211/PnoNetwork;

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

    .line 150
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/PnoNetwork$1;->newArray(I)[Landroid/net/wifi/nl80211/PnoNetwork;

    move-result-object p1

    return-object p1
.end method
