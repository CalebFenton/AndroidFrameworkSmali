.class final Landroid/net/wifi/WifiScanner$ParcelableScanData$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$ParcelableScanData;
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
        "Landroid/net/wifi/WifiScanner$ParcelableScanData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ParcelableScanData;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v1

    #@4
    .line 350
    .local v1, "n":I
    new-array v2, v1, [Landroid/net/wifi/WifiScanner$ScanData;

    #@6
    .line 351
    .local v2, "results":[Landroid/net/wifi/WifiScanner$ScanData;
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@9
    .line 352
    sget-object v3, Landroid/net/wifi/WifiScanner$ScanData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b
    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/net/wifi/WifiScanner$ScanData;

    #@11
    aput-object v3, v2, v0

    #@13
    .line 351
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 354
    :cond_0
    new-instance v3, Landroid/net/wifi/WifiScanner$ParcelableScanData;

    #@18
    invoke-direct {v3, v2}, Landroid/net/wifi/WifiScanner$ParcelableScanData;-><init>([Landroid/net/wifi/WifiScanner$ScanData;)V

    #@1b
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 348
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ParcelableScanData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ParcelableScanData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiScanner$ParcelableScanData;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 358
    new-array v0, p1, [Landroid/net/wifi/WifiScanner$ParcelableScanData;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 357
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ParcelableScanData$1;->newArray(I)[Landroid/net/wifi/WifiScanner$ParcelableScanData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
