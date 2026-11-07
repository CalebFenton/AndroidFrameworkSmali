.class Landroid/net/wifi/BatchedScanResult$1;
.super Ljava/lang/Object;
.source "BatchedScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/BatchedScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/BatchedScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/BatchedScanResult;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 84
    new-instance v0, Landroid/net/wifi/BatchedScanResult;

    invoke-direct {v0}, Landroid/net/wifi/BatchedScanResult;-><init>()V

    .line 85
    .local v0, "result":Landroid/net/wifi/BatchedScanResult;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    iput-boolean v2, v0, Landroid/net/wifi/BatchedScanResult;->truncated:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .local v1, "count":I
    :goto_14
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "count":I
    .local v2, "count":I
    if-lez v1, :cond_27

    .line 88
    iget-object v1, v0, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    sget-object v3, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_14

    .line 90
    :cond_27
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

    .line 82
    invoke-virtual {p0, p1}, Landroid/net/wifi/BatchedScanResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/BatchedScanResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/BatchedScanResult;
    .registers 3
    .param p1, "size"    # I

    .line 94
    new-array v0, p1, [Landroid/net/wifi/BatchedScanResult;

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

    .line 82
    invoke-virtual {p0, p1}, Landroid/net/wifi/BatchedScanResult$1;->newArray(I)[Landroid/net/wifi/BatchedScanResult;

    move-result-object p1

    return-object p1
.end method
