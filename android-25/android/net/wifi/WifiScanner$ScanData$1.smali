.class final Landroid/net/wifi/WifiScanner$ScanData$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$ScanData;
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
        "Landroid/net/wifi/WifiScanner$ScanData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ScanData;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v1

    #@4
    .line 378
    .local v1, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v2

    #@8
    .line 379
    .local v2, "flags":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v3

    #@c
    .line 380
    .local v3, "bucketsScanned":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    const/4 v4, 0x1

    #@13
    .line 381
    .local v4, "allChannelsScanned":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v7

    #@17
    .line 382
    .local v7, "n":I
    new-array v5, v7, [Landroid/net/wifi/ScanResult;

    #@19
    .line 383
    .local v5, "results":[Landroid/net/wifi/ScanResult;
    const/4 v6, 0x0

    #@1a
    .local v6, "i":I
    :goto_1
    if-ge v6, v7, :cond_1

    #@1c
    .line 384
    sget-object v0, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/net/wifi/ScanResult;

    #@24
    aput-object v0, v5, v6

    #@26
    .line 383
    add-int/lit8 v6, v6, 0x1

    #@28
    goto :goto_1

    #@29
    .line 380
    .end local v4    # "allChannelsScanned":Z
    .end local v5    # "results":[Landroid/net/wifi/ScanResult;
    .end local v6    # "i":I
    .end local v7    # "n":I
    :cond_0
    const/4 v4, 0x0

    #@2a
    .restart local v4    # "allChannelsScanned":Z
    goto :goto_0

    #@2b
    .line 386
    .restart local v5    # "results":[Landroid/net/wifi/ScanResult;
    .restart local v6    # "i":I
    .restart local v7    # "n":I
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanData;

    #@2d
    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(IIIZ[Landroid/net/wifi/ScanResult;)V

    #@30
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 376
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ScanData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ScanData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 390
    new-array v0, p1, [Landroid/net/wifi/WifiScanner$ScanData;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 389
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ScanData$1;->newArray(I)[Landroid/net/wifi/WifiScanner$ScanData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
