.class final Landroid/net/wifi/RttManager$RttCapabilities$1;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager$RttCapabilities;
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
        "Landroid/net/wifi/RttManager$RttCapabilities;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$RttCapabilities;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 271
    new-instance v0, Landroid/net/wifi/RttManager$RttCapabilities;

    #@4
    invoke-direct {v0}, Landroid/net/wifi/RttManager$RttCapabilities;-><init>()V

    #@7
    .line 272
    .local v0, "capabilities":Landroid/net/wifi/RttManager$RttCapabilities;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v1

    #@b
    if-ne v1, v2, :cond_0

    #@d
    move v1, v2

    #@e
    :goto_0
    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    #@10
    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v1

    #@14
    if-ne v1, v2, :cond_1

    #@16
    move v1, v2

    #@17
    :goto_1
    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    #@19
    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v1

    #@1d
    if-ne v1, v2, :cond_2

    #@1f
    move v1, v2

    #@20
    :goto_2
    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    #@22
    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v1

    #@26
    if-ne v1, v2, :cond_3

    #@28
    :goto_3
    iput-boolean v2, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    #@2a
    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v1

    #@2e
    iput v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    #@30
    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v1

    #@34
    iput v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    #@36
    .line 278
    return-object v0

    #@37
    :cond_0
    move v1, v3

    #@38
    .line 272
    goto :goto_0

    #@39
    :cond_1
    move v1, v3

    #@3a
    .line 273
    goto :goto_1

    #@3b
    :cond_2
    move v1, v3

    #@3c
    .line 274
    goto :goto_2

    #@3d
    :cond_3
    move v2, v3

    #@3e
    .line 275
    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 270
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$RttCapabilities$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$RttCapabilities;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/RttManager$RttCapabilities;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 283
    new-array v0, p1, [Landroid/net/wifi/RttManager$RttCapabilities;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 282
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$RttCapabilities$1;->newArray(I)[Landroid/net/wifi/RttManager$RttCapabilities;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
