.class final Landroid/location/GpsNavigationMessage$1;
.super Ljava/lang/Object;
.source "GpsNavigationMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsNavigationMessage;
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
        "Landroid/location/GpsNavigationMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsNavigationMessage;
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 250
    new-instance v2, Landroid/location/GpsNavigationMessage;

    #@2
    invoke-direct {v2}, Landroid/location/GpsNavigationMessage;-><init>()V

    #@5
    .line 252
    .local v2, "navigationMessage":Landroid/location/GpsNavigationMessage;
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@8
    move-result v4

    #@9
    invoke-virtual {v2, v4}, Landroid/location/GpsNavigationMessage;->setType(B)V

    #@c
    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@f
    move-result v4

    #@10
    invoke-virtual {v2, v4}, Landroid/location/GpsNavigationMessage;->setPrn(B)V

    #@13
    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v4

    #@17
    int-to-short v4, v4

    #@18
    invoke-virtual {v2, v4}, Landroid/location/GpsNavigationMessage;->setMessageId(S)V

    #@1b
    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v4

    #@1f
    int-to-short v4, v4

    #@20
    invoke-virtual {v2, v4}, Landroid/location/GpsNavigationMessage;->setSubmessageId(S)V

    #@23
    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v1

    #@27
    .line 258
    .local v1, "dataLength":I
    new-array v0, v1, [B

    #@29
    .line 259
    .local v0, "data":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    #@2c
    .line 260
    invoke-virtual {v2, v0}, Landroid/location/GpsNavigationMessage;->setData([B)V

    #@2f
    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    #@32
    move-result v4

    #@33
    const/16 v5, 0x20

    #@35
    if-lt v4, v5, :cond_0

    #@37
    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v3

    #@3b
    .line 264
    .local v3, "status":I
    int-to-short v4, v3

    #@3c
    invoke-virtual {v2, v4}, Landroid/location/GpsNavigationMessage;->setStatus(S)V

    #@3f
    .line 269
    .end local v3    # "status":I
    :goto_0
    return-object v2

    #@40
    .line 266
    :cond_0
    const/4 v4, 0x0

    #@41
    invoke-virtual {v2, v4}, Landroid/location/GpsNavigationMessage;->setStatus(S)V

    #@44
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 249
    invoke-virtual {p0, p1}, Landroid/location/GpsNavigationMessage$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsNavigationMessage;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/location/GpsNavigationMessage;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 274
    new-array v0, p1, [Landroid/location/GpsNavigationMessage;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 273
    invoke-virtual {p0, p1}, Landroid/location/GpsNavigationMessage$1;->newArray(I)[Landroid/location/GpsNavigationMessage;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
