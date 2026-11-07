.class Landroid/net/wifi/RttManager$RttCapabilities$1;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager$RttCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/RttManager$RttCapabilities;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$RttCapabilities;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 300
    new-instance v0, Landroid/net/wifi/RttManager$RttCapabilities;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$RttCapabilities;-><init>()V

    .line 301
    .local v0, "capabilities":Landroid/net/wifi/RttManager$RttCapabilities;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v1, v3

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_1a

    move v1, v3

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_25

    move v1, v3

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_30

    move v1, v3

    goto :goto_31

    :cond_30
    move v1, v2

    :goto_31
    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_47

    move v1, v3

    goto :goto_48

    :cond_47
    move v1, v2

    :goto_48
    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->responderSupported:Z

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_51

    move v2, v3

    :cond_51
    iput-boolean v2, v0, Landroid/net/wifi/RttManager$RttCapabilities;->secureRttSupported:Z

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->mcVersion:I

    .line 310
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

    .line 297
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$RttCapabilities$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$RttCapabilities;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/RttManager$RttCapabilities;
    .registers 3
    .param p1, "size"    # I

    .line 315
    new-array v0, p1, [Landroid/net/wifi/RttManager$RttCapabilities;

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

    .line 297
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$RttCapabilities$1;->newArray(I)[Landroid/net/wifi/RttManager$RttCapabilities;

    move-result-object p1

    return-object p1
.end method
