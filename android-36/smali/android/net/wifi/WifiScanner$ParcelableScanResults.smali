.class public Landroid/net/wifi/WifiScanner$ParcelableScanResults;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParcelableScanResults"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiScanner$ParcelableScanResults;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist mResults:[Landroid/net/wifi/ScanResult;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1128
    new-instance v0, Landroid/net/wifi/WifiScanner$ParcelableScanResults$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ParcelableScanResults$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>([Landroid/net/wifi/ScanResult;)V
    .registers 2
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .line 1101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1102
    iput-object p1, p0, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->mResults:[Landroid/net/wifi/ScanResult;

    .line 1103
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1111
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getResults()[Landroid/net/wifi/ScanResult;
    .registers 2

    .line 1106
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->mResults:[Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1116
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->mResults:[Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1b

    .line 1117
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->mResults:[Landroid/net/wifi/ScanResult;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->mResults:[Landroid/net/wifi/ScanResult;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 1119
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->mResults:[Landroid/net/wifi/ScanResult;

    aget-object v1, v1, v0

    .line 1120
    .local v1, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {v1, p1, p2}, Landroid/net/wifi/ScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1118
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    :cond_1a
    goto :goto_1f

    .line 1123
    :cond_1b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1125
    :goto_1f
    return-void
.end method
