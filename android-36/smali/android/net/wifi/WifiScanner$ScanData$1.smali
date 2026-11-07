.class Landroid/net/wifi/WifiScanner$ScanData$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$ScanData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiScanner$ScanData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ScanData;
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1033
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1034
    .local v1, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1035
    .local v2, "flags":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1036
    .local v3, "bucketsScanned":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1037
    .local v4, "bandsScanned":I
    sget-object v0, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    .line 1038
    invoke-interface {v0, p1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    .line 1039
    .local v6, "parceledListSlice":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/ScanResult;>;"
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanData;

    .line 1040
    invoke-virtual {v6}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(IIIILjava/util/List;)V

    .line 1039
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

    .line 1031
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ScanData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/WifiScanner$ScanData;
    .registers 3
    .param p1, "size"    # I

    .line 1044
    new-array v0, p1, [Landroid/net/wifi/WifiScanner$ScanData;

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

    .line 1031
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ScanData$1;->newArray(I)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object p1

    return-object p1
.end method
