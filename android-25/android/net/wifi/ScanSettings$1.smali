.class final Landroid/net/wifi/ScanSettings$1;
.super Ljava/lang/Object;
.source "ScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanSettings;
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
        "Landroid/net/wifi/ScanSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanSettings;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 72
    new-instance v0, Landroid/net/wifi/ScanSettings;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/ScanSettings;-><init>()V

    #@5
    .line 73
    .local v0, "settings":Landroid/net/wifi/ScanSettings;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v1

    #@9
    .line 74
    .local v1, "size":I
    if-lez v1, :cond_0

    #@b
    .line 75
    new-instance v3, Ljava/util/ArrayList;

    #@d
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@10
    iput-object v3, v0, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    #@12
    move v2, v1

    #@13
    .line 76
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    #@15
    .end local v2    # "size":I
    .restart local v1    # "size":I
    if-lez v2, :cond_0

    #@17
    .line 77
    iget-object v4, v0, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    #@19
    sget-object v3, Landroid/net/wifi/WifiChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Landroid/net/wifi/WifiChannel;

    #@21
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@24
    move v2, v1

    #@25
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0

    #@26
    .line 79
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanSettings;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/ScanSettings;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 84
    new-array v0, p1, [Landroid/net/wifi/ScanSettings;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 83
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanSettings$1;->newArray(I)[Landroid/net/wifi/ScanSettings;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
