.class final Landroid/net/wifi/BatchedScanResult$1;
.super Ljava/lang/Object;
.source "BatchedScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/BatchedScanResult;
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
        "Landroid/net/wifi/BatchedScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/BatchedScanResult;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 80
    new-instance v2, Landroid/net/wifi/BatchedScanResult;

    #@4
    invoke-direct {v2}, Landroid/net/wifi/BatchedScanResult;-><init>()V

    #@7
    .line 81
    .local v2, "result":Landroid/net/wifi/BatchedScanResult;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v5

    #@b
    if-ne v5, v3, :cond_0

    #@d
    :goto_0
    iput-boolean v3, v2, Landroid/net/wifi/BatchedScanResult;->truncated:Z

    #@f
    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    .local v0, "count":I
    move v1, v0

    #@14
    .line 83
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    #@16
    .end local v1    # "count":I
    .restart local v0    # "count":I
    if-lez v1, :cond_1

    #@18
    .line 84
    iget-object v4, v2, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    #@1a
    sget-object v3, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c
    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Landroid/net/wifi/ScanResult;

    #@22
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@25
    move v1, v0

    #@26
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_1

    #@27
    .end local v1    # "count":I
    :cond_0
    move v3, v4

    #@28
    .line 81
    goto :goto_0

    #@29
    .line 86
    .restart local v0    # "count":I
    :cond_1
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 79
    invoke-virtual {p0, p1}, Landroid/net/wifi/BatchedScanResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/BatchedScanResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/BatchedScanResult;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 90
    new-array v0, p1, [Landroid/net/wifi/BatchedScanResult;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 89
    invoke-virtual {p0, p1}, Landroid/net/wifi/BatchedScanResult$1;->newArray(I)[Landroid/net/wifi/BatchedScanResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
