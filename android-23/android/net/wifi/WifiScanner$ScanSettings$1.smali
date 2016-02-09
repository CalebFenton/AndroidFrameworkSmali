.class final Landroid/net/wifi/WifiScanner$ScanSettings$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$ScanSettings;
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
        "Landroid/net/wifi/WifiScanner$ScanSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 203
    new-instance v3, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@3
    invoke-direct {v3}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    #@6
    .line 204
    .local v3, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v5

    #@a
    iput v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@c
    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v5

    #@10
    iput v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@12
    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v5

    #@16
    iput v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    #@18
    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v5

    #@1c
    iput v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    #@1e
    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v5

    #@22
    iput v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    #@24
    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v2

    #@28
    .line 210
    .local v2, "num_channels":I
    new-array v5, v2, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@2a
    iput-object v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@2c
    .line 211
    const/4 v1, 0x0

    #@2d
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@2f
    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v0

    #@33
    .line 214
    .local v0, "frequency":I
    new-instance v4, Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@35
    invoke-direct {v4, v0}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    #@38
    .line 215
    .local v4, "spec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v5

    #@3c
    iput v5, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->dwellTimeMS:I

    #@3e
    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v5

    #@42
    if-ne v5, v6, :cond_0

    #@44
    move v5, v6

    #@45
    :goto_1
    iput-boolean v5, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->passive:Z

    #@47
    .line 217
    iget-object v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@49
    aput-object v4, v5, v1

    #@4b
    .line 211
    add-int/lit8 v1, v1, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 216
    :cond_0
    const/4 v5, 0x0

    #@4f
    goto :goto_1

    #@50
    .line 220
    .end local v0    # "frequency":I
    .end local v4    # "spec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_1
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 201
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ScanSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ScanSettings;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 224
    new-array v0, p1, [Landroid/net/wifi/WifiScanner$ScanSettings;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 223
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ScanSettings$1;->newArray(I)[Landroid/net/wifi/WifiScanner$ScanSettings;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
