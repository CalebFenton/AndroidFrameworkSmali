.class Landroid/net/wifi/WifiScanner$ParcelableScanResults$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$ParcelableScanResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiScanner$ParcelableScanResults;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1132
    .local v0, "n":I
    new-array v1, v0, [Landroid/net/wifi/ScanResult;

    .line 1133
    .local v1, "results":[Landroid/net/wifi/ScanResult;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_16

    .line 1134
    sget-object v3, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    aput-object v3, v1, v2

    .line 1133
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1136
    .end local v2    # "i":I
    :cond_16
    new-instance v2, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-direct {v2, v1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;-><init>([Landroid/net/wifi/ScanResult;)V

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

    .line 1129
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    .registers 3
    .param p1, "size"    # I

    .line 1140
    new-array v0, p1, [Landroid/net/wifi/WifiScanner$ParcelableScanResults;

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

    .line 1129
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults$1;->newArray(I)[Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    move-result-object p1

    return-object p1
.end method
