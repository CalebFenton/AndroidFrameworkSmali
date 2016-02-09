.class final Landroid/net/wifi/WifiLinkLayerStats$1;
.super Ljava/lang/Object;
.source "WifiLinkLayerStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiLinkLayerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/WifiLinkLayerStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiLinkLayerStats;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 190
    new-instance v0, Landroid/net/wifi/WifiLinkLayerStats;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiLinkLayerStats;-><init>()V

    #@5
    .line 191
    .local v0, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    iput-object v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->SSID:Ljava/lang/String;

    #@b
    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    iput-object v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->BSSID:Ljava/lang/String;

    #@11
    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v1

    #@15
    iput v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    #@17
    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v1

    #@1b
    iput v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    #@1d
    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v1

    #@21
    iput v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    #@23
    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v1

    #@27
    iput v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->on_time_scan:I

    #@29
    .line 197
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 189
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiLinkLayerStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiLinkLayerStats;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiLinkLayerStats;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 200
    new-array v0, p1, [Landroid/net/wifi/WifiLinkLayerStats;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 199
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiLinkLayerStats$1;->newArray(I)[Landroid/net/wifi/WifiLinkLayerStats;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
