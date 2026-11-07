.class Landroid/location/GnssNavigationMessage$1;
.super Ljava/lang/Object;
.source "GnssNavigationMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssNavigationMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssNavigationMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssNavigationMessage;
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 469
    new-instance v0, Landroid/location/GnssNavigationMessage;

    invoke-direct {v0}, Landroid/location/GnssNavigationMessage;-><init>()V

    .line 471
    .local v0, "navigationMessage":Landroid/location/GnssNavigationMessage;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GnssNavigationMessage;->setType(I)V

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GnssNavigationMessage;->setSvid(I)V

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GnssNavigationMessage;->setMessageId(I)V

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GnssNavigationMessage;->setSubmessageId(I)V

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 476
    .local v1, "dataLength":I
    new-array v2, v1, [B

    .line 477
    .local v2, "data":[B
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 478
    invoke-virtual {v0, v2}, Landroid/location/GnssNavigationMessage;->setData([B)V

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/location/GnssNavigationMessage;->setStatus(I)V

    .line 481
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

    .line 466
    invoke-virtual {p0, p1}, Landroid/location/GnssNavigationMessage$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssNavigationMessage;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GnssNavigationMessage;
    .registers 3
    .param p1, "size"    # I

    .line 486
    new-array v0, p1, [Landroid/location/GnssNavigationMessage;

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

    .line 466
    invoke-virtual {p0, p1}, Landroid/location/GnssNavigationMessage$1;->newArray(I)[Landroid/location/GnssNavigationMessage;

    move-result-object p1

    return-object p1
.end method
