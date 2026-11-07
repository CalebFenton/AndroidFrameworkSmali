.class Landroid/net/wifi/nl80211/SingleScanSettings$1;
.super Ljava/lang/Object;
.source "SingleScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/SingleScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/nl80211/SingleScanSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nl80211/SingleScanSettings;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 110
    new-instance v0, Landroid/net/wifi/nl80211/SingleScanSettings;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/SingleScanSettings;-><init>()V

    .line 111
    .local v0, "result":Landroid/net/wifi/nl80211/SingleScanSettings;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/nl80211/SingleScanSettings;->scanType:I

    .line 112
    iget v1, v0, Landroid/net/wifi/nl80211/SingleScanSettings;->scanType:I

    invoke-static {v1}, Landroid/net/wifi/nl80211/SingleScanSettings;->-$$Nest$smisValidScanType(I)Z

    move-result v1

    const-string v2, "SingleScanSettings"

    if-nez v1, :cond_2d

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid scan type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Landroid/net/wifi/nl80211/SingleScanSettings;->scanType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_2d
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/wifi/nl80211/SingleScanSettings;->enable6GhzRnr:Z

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/net/wifi/nl80211/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    .line 117
    iget-object v1, v0, Landroid/net/wifi/nl80211/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    sget-object v3, Landroid/net/wifi/nl80211/ChannelSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/net/wifi/nl80211/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    .line 119
    iget-object v1, v0, Landroid/net/wifi/nl80211/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    sget-object v3, Landroid/net/wifi/nl80211/HiddenNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/nl80211/SingleScanSettings;->vendorIes:[B

    .line 121
    iget-object v1, v0, Landroid/net/wifi/nl80211/SingleScanSettings;->vendorIes:[B

    if-nez v1, :cond_5e

    .line 122
    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/net/wifi/nl80211/SingleScanSettings;->vendorIes:[B

    .line 124
    :cond_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-eqz v1, :cond_69

    .line 125
    const-string v1, "Found trailing data after parcel parsing."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_69
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

    .line 104
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/SingleScanSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nl80211/SingleScanSettings;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/nl80211/SingleScanSettings;
    .registers 3
    .param p1, "size"    # I

    .line 132
    new-array v0, p1, [Landroid/net/wifi/nl80211/SingleScanSettings;

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

    .line 104
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/SingleScanSettings$1;->newArray(I)[Landroid/net/wifi/nl80211/SingleScanSettings;

    move-result-object p1

    return-object p1
.end method
