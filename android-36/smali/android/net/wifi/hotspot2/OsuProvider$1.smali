.class Landroid/net/wifi/hotspot2/OsuProvider$1;
.super Ljava/lang/Object;
.source "OsuProvider.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/OsuProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/hotspot2/OsuProvider;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/OsuProvider;
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 252
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/wifi/WifiSsid;

    .line 253
    .local v3, "osuSsid":Landroid/net/wifi/WifiSsid;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, "serviceDescription":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/net/Uri;

    .line 255
    .local v6, "serverUri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 256
    .local v7, "nai":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v8, "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p1, v8, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 259
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "friendlyNameMap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/HashMap;

    .line 261
    .local v4, "friendlyNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Landroid/net/wifi/hotspot2/OsuProvider;

    invoke-direct/range {v2 .. v8}, Landroid/net/wifi/hotspot2/OsuProvider;-><init>(Landroid/net/wifi/WifiSsid;Ljava/util/Map;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V

    return-object v2
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

    .line 249
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/OsuProvider$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/OsuProvider;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/hotspot2/OsuProvider;
    .registers 3
    .param p1, "size"    # I

    .line 267
    new-array v0, p1, [Landroid/net/wifi/hotspot2/OsuProvider;

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

    .line 249
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/OsuProvider$1;->newArray(I)[Landroid/net/wifi/hotspot2/OsuProvider;

    move-result-object p1

    return-object p1
.end method
