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
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 243
    new-instance v3, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@4
    invoke-direct {v3}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    #@7
    .line 244
    .local v3, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v5

    #@b
    iput v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@d
    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v5

    #@11
    iput v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@13
    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v5

    #@17
    iput v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    #@19
    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v5

    #@1d
    iput v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    #@1f
    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v5

    #@23
    iput v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    #@25
    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v5

    #@29
    iput v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    #@2b
    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v5

    #@2f
    iput v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    #@31
    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v5

    #@35
    if-ne v5, v6, :cond_0

    #@37
    move v5, v6

    #@38
    :goto_0
    iput-boolean v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    #@3a
    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v2

    #@3e
    .line 253
    .local v2, "num_channels":I
    new-array v5, v2, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@40
    iput-object v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@42
    .line 254
    const/4 v1, 0x0

    #@43
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    #@45
    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v0

    #@49
    .line 256
    .local v0, "frequency":I
    new-instance v4, Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@4b
    invoke-direct {v4, v0}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    #@4e
    .line 257
    .local v4, "spec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v5

    #@52
    iput v5, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->dwellTimeMS:I

    #@54
    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v5

    #@58
    if-ne v5, v6, :cond_1

    #@5a
    move v5, v6

    #@5b
    :goto_2
    iput-boolean v5, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->passive:Z

    #@5d
    .line 259
    iget-object v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@5f
    aput-object v4, v5, v1

    #@61
    .line 254
    add-int/lit8 v1, v1, 0x1

    #@63
    goto :goto_1

    #@64
    .end local v0    # "frequency":I
    .end local v1    # "i":I
    .end local v2    # "num_channels":I
    .end local v4    # "spec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_0
    move v5, v7

    #@65
    .line 251
    goto :goto_0

    #@66
    .restart local v0    # "frequency":I
    .restart local v1    # "i":I
    .restart local v2    # "num_channels":I
    .restart local v4    # "spec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_1
    move v5, v7

    #@67
    .line 258
    goto :goto_2

    #@68
    .line 261
    .end local v0    # "frequency":I
    .end local v4    # "spec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@6b
    move-result-object v5

    #@6c
    iput-object v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    #@6e
    .line 262
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 242
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
    .line 266
    new-array v0, p1, [Landroid/net/wifi/WifiScanner$ScanSettings;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 265
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ScanSettings$1;->newArray(I)[Landroid/net/wifi/WifiScanner$ScanSettings;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
