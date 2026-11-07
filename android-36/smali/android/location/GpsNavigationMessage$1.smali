.class Landroid/location/GpsNavigationMessage$1;
.super Ljava/lang/Object;
.source "GpsNavigationMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsNavigationMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GpsNavigationMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsNavigationMessage;
    .registers 7
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 253
    new-instance v0, Landroid/location/GpsNavigationMessage;

    invoke-direct {v0}, Landroid/location/GpsNavigationMessage;-><init>()V

    .line 255
    .local v0, "navigationMessage":Landroid/location/GpsNavigationMessage;
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GpsNavigationMessage;->setType(B)V

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GpsNavigationMessage;->setPrn(B)V

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Landroid/location/GpsNavigationMessage;->setMessageId(S)V

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Landroid/location/GpsNavigationMessage;->setSubmessageId(S)V

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 261
    .local v1, "dataLength":I
    new-array v2, v1, [B

    .line 262
    .local v2, "data":[B
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 263
    invoke-virtual {v0, v2}, Landroid/location/GpsNavigationMessage;->setData([B)V

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 266
    .local v3, "status":I
    int-to-short v4, v3

    invoke-virtual {v0, v4}, Landroid/location/GpsNavigationMessage;->setStatus(S)V

    .line 268
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

    .line 250
    invoke-virtual {p0, p1}, Landroid/location/GpsNavigationMessage$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsNavigationMessage;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GpsNavigationMessage;
    .registers 3
    .param p1, "size"    # I

    .line 273
    new-array v0, p1, [Landroid/location/GpsNavigationMessage;

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

    .line 250
    invoke-virtual {p0, p1}, Landroid/location/GpsNavigationMessage$1;->newArray(I)[Landroid/location/GpsNavigationMessage;

    move-result-object p1

    return-object p1
.end method
