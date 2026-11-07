.class Landroid/net/wifi/WifiScanner$ScanSettings$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$ScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiScanner$ScanSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ScanSettings;
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 839
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 840
    .local v0, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 841
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 842
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 843
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    .line 844
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    .line 845
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    .line 846
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    .line 847
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_39

    move v1, v3

    goto :goto_3a

    :cond_39
    move v1, v2

    :goto_3a
    iput-boolean v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    .line 848
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    .line 849
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_4a

    move v1, v3

    goto :goto_4b

    :cond_4a
    move v1, v2

    :goto_4b
    iput-boolean v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->ignoreLocationSettings:Z

    .line 850
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_55

    move v1, v3

    goto :goto_56

    :cond_55
    move v1, v2

    :goto_56
    iput-boolean v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->hideFromAppOps:Z

    .line 851
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiScanner$ScanSettings;->-$$Nest$fputmRnrSetting(Landroid/net/wifi/WifiScanner$ScanSettings;I)V

    .line 852
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiScanner$ScanSettings;->-$$Nest$fputmEnable6GhzPsc(Landroid/net/wifi/WifiScanner$ScanSettings;Z)V

    .line 853
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 854
    .local v1, "num_channels":I
    new-array v4, v1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v4, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 855
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6f
    if-ge v4, v1, :cond_92

    .line 856
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 857
    .local v5, "frequency":I
    new-instance v6, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-direct {v6, v5}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    .line 858
    .local v6, "spec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiScanner$ChannelSpec;->dwellTimeMS:I

    .line 859
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-ne v7, v3, :cond_88

    move v7, v3

    goto :goto_89

    :cond_88
    move v7, v2

    :goto_89
    iput-boolean v7, v6, Landroid/net/wifi/WifiScanner$ChannelSpec;->passive:Z

    .line 860
    iget-object v7, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aput-object v6, v7, v4

    .line 855
    .end local v5    # "frequency":I
    .end local v6    # "spec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    .line 862
    .end local v4    # "i":I
    :cond_92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 863
    .local v2, "numNetworks":I
    iget-object v3, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 864
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9c
    if-ge v3, v2, :cond_af

    .line 865
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 866
    .local v4, "ssid":Ljava/lang/String;
    iget-object v5, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:Ljava/util/List;

    new-instance v6, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    invoke-direct {v6, v4}, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    .end local v4    # "ssid":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9c

    .line 868
    .end local v3    # "i":I
    :cond_af
    invoke-static {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;->-$$Nest$fgetmVendorIes(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/util/List;

    move-result-object v3

    sget-object v4, Landroid/net/wifi/ScanResult$InformationElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 870
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

    .line 837
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ScanSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/WifiScanner$ScanSettings;
    .registers 3
    .param p1, "size"    # I

    .line 874
    new-array v0, p1, [Landroid/net/wifi/WifiScanner$ScanSettings;

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

    .line 837
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ScanSettings$1;->newArray(I)[Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object p1

    return-object p1
.end method
