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
    .line 287
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
    .line 290
    new-instance v0, Landroid/net/wifi/RttManager$RttCapabilities;

    #@4
    invoke-direct {v0}, Landroid/net/wifi/RttManager$RttCapabilities;-><init>()V

    #@7
    .line 291
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
    .line 292
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
    .line 293
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
    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v1

    #@26
    if-ne v1, v2, :cond_3

    #@28
    move v1, v2

    #@29
    :goto_3
    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    #@2b
    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v1

    #@2f
    iput v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    #@31
    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v1

    #@35
    iput v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    #@37
    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v1

    #@3b
    if-ne v1, v2, :cond_4

    #@3d
    move v1, v2

    #@3e
    :goto_4
    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->responderSupported:Z

    #@40
    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@43
    move-result v1

    #@44
    if-ne v1, v2, :cond_5

    #@46
    :goto_5
    iput-boolean v2, v0, Landroid/net/wifi/RttManager$RttCapabilities;->secureRttSupported:Z

    #@48
    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v1

    #@4c
    iput v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->mcVersion:I

    #@4e
    .line 300
    return-object v0

    #@4f
    :cond_0
    move v1, v3

    #@50
    .line 291
    goto :goto_0

    #@51
    :cond_1
    move v1, v3

    #@52
    .line 292
    goto :goto_1

    #@53
    :cond_2
    move v1, v3

    #@54
    .line 293
    goto :goto_2

    #@55
    :cond_3
    move v1, v3

    #@56
    .line 294
    goto :goto_3

    #@57
    :cond_4
    move v1, v3

    #@58
    .line 297
    goto :goto_4

    #@59
    :cond_5
    move v2, v3

    #@5a
    .line 298
    goto :goto_5
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 289
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
    .line 305
    new-array v0, p1, [Landroid/net/wifi/RttManager$RttCapabilities;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 304
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$RttCapabilities$1;->newArray(I)[Landroid/net/wifi/RttManager$RttCapabilities;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
