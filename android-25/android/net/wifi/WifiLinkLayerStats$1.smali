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
    .line 194
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
    .line 196
    new-instance v0, Landroid/net/wifi/WifiLinkLayerStats;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiLinkLayerStats;-><init>()V

    #@5
    .line 197
    .local v0, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    iput-object v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->SSID:Ljava/lang/String;

    #@b
    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    iput-object v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->BSSID:Ljava/lang/String;

    #@11
    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v1

    #@15
    iput v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    #@17
    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v1

    #@1b
    iput v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    #@1d
    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@20
    move-result-object v1

    #@21
    iput-object v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time_per_level:[I

    #@23
    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v1

    #@27
    iput v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    #@29
    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v1

    #@2d
    iput v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->on_time_scan:I

    #@2f
    .line 204
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 195
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
    .line 207
    new-array v0, p1, [Landroid/net/wifi/WifiLinkLayerStats;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 206
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiLinkLayerStats$1;->newArray(I)[Landroid/net/wifi/WifiLinkLayerStats;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
