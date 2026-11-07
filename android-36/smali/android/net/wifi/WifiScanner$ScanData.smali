.class public Landroid/net/wifi/WifiScanner$ScanData;
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
    name = "ScanData"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiScanner$ScanData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mBucketsScanned:I

.field private greylist-max-o mFlags:I

.field private greylist-max-o mId:I

.field private final blacklist mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mScannedBands:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1030
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanData$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanData$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner$ScanData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 908
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:Ljava/util/List;

    .line 909
    return-void
.end method

.method public constructor blacklist <init>(IIIILjava/util/List;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "flags"    # I
    .param p3, "bucketsScanned"    # I
    .param p4, "bandsScanned"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 925
    .local p5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 926
    iput p1, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    .line 927
    iput p2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    .line 928
    iput p3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    .line 929
    iput p4, p0, Landroid/net/wifi/WifiScanner$ScanData;->mScannedBands:I

    .line 930
    iput-object p5, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:Ljava/util/List;

    .line 931
    return-void
.end method

.method public constructor blacklist <init>(IIII[Landroid/net/wifi/ScanResult;)V
    .registers 12
    .param p1, "id"    # I
    .param p2, "flags"    # I
    .param p3, "bucketsScanned"    # I
    .param p4, "bandsScanned"    # I
    .param p5, "results"    # [Landroid/net/wifi/ScanResult;

    .line 920
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "id":I
    .end local p2    # "flags":I
    .end local p3    # "bucketsScanned":I
    .end local p4    # "bandsScanned":I
    .local v1, "id":I
    .local v2, "flags":I
    .local v3, "bucketsScanned":I
    .local v4, "bandsScanned":I
    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(IIIILjava/util/List;)V

    .line 921
    return-void
.end method

.method public constructor whitelist <init>(II[Landroid/net/wifi/ScanResult;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "flags"    # I
    .param p3, "results"    # [Landroid/net/wifi/ScanResult;

    .line 911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 912
    iput p1, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    .line 913
    iput p2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    .line 914
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:Ljava/util/List;

    .line 915
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/WifiScanner$ScanData;)V
    .registers 6
    .param p1, "s"    # Landroid/net/wifi/WifiScanner$ScanData;

    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 934
    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    .line 935
    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    .line 936
    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    .line 937
    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanData;->mScannedBands:I

    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mScannedBands:I

    .line 938
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:Ljava/util/List;

    .line 939
    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanData;->mResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 940
    .local v1, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:Ljava/util/List;

    new-instance v3, Landroid/net/wifi/ScanResult;

    invoke-direct {v3, v1}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 941
    .end local v1    # "scanResult":Landroid/net/wifi/ScanResult;
    goto :goto_20

    .line 942
    :cond_37
    return-void
.end method


# virtual methods
.method public blacklist addResults(Landroid/net/wifi/WifiScanner$ScanData;)V
    .registers 4
    .param p1, "s"    # Landroid/net/wifi/WifiScanner$ScanData;

    .line 1003
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mScannedBands:I

    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanData;->mScannedBands:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mScannedBands:I

    .line 1004
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    .line 1005
    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiScanner$ScanData;->addResults([Landroid/net/wifi/ScanResult;)V

    .line 1006
    return-void
.end method

.method public blacklist addResults([Landroid/net/wifi/ScanResult;)V
    .registers 7
    .param p1, "newResults"    # [Landroid/net/wifi/ScanResult;

    .line 996
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_13

    aget-object v2, p1, v1

    .line 997
    .local v2, "result":Landroid/net/wifi/ScanResult;
    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:Ljava/util/List;

    new-instance v4, Landroid/net/wifi/ScanResult;

    invoke-direct {v4, v2}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 996
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 999
    :cond_13
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1016
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getBucketsScanned()I
    .registers 2

    .line 954
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    return v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 949
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    return v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 945
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    return v0
.end method

.method public whitelist getResults()[Landroid/net/wifi/ScanResult;
    .registers 3

    .line 991
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/net/wifi/ScanResult;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method public whitelist getScannedBands()I
    .registers 2

    .line 978
    invoke-virtual {p0}, Landroid/net/wifi/WifiScanner$ScanData;->getScannedBandsInternal()I

    move-result v0

    return v0
.end method

.method public blacklist getScannedBandsInternal()I
    .registers 2

    .line 987
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mScannedBands:I

    return v0
.end method

.method public blacklist isFullBandScanResults()Z
    .registers 3

    .line 1010
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mScannedBands:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mScannedBands:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1021
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1022
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1023
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mScannedBands:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1025
    new-instance v0, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 1026
    .local v0, "parceledListSlice":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {v0, p1, p2}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1027
    return-void
.end method
