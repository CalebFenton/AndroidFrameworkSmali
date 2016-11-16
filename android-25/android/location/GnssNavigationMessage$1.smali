.class final Landroid/location/GnssNavigationMessage$1;
.super Ljava/lang/Object;
.source "GnssNavigationMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssNavigationMessage;
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
        "Landroid/location/GnssNavigationMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssNavigationMessage;
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 372
    new-instance v2, Landroid/location/GnssNavigationMessage;

    #@2
    invoke-direct {v2}, Landroid/location/GnssNavigationMessage;-><init>()V

    #@5
    .line 374
    .local v2, "navigationMessage":Landroid/location/GnssNavigationMessage;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v3

    #@9
    invoke-virtual {v2, v3}, Landroid/location/GnssNavigationMessage;->setType(I)V

    #@c
    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v3

    #@10
    invoke-virtual {v2, v3}, Landroid/location/GnssNavigationMessage;->setSvid(I)V

    #@13
    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v3

    #@17
    invoke-virtual {v2, v3}, Landroid/location/GnssNavigationMessage;->setMessageId(I)V

    #@1a
    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v3

    #@1e
    invoke-virtual {v2, v3}, Landroid/location/GnssNavigationMessage;->setSubmessageId(I)V

    #@21
    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v1

    #@25
    .line 379
    .local v1, "dataLength":I
    new-array v0, v1, [B

    #@27
    .line 380
    .local v0, "data":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    #@2a
    .line 381
    invoke-virtual {v2, v0}, Landroid/location/GnssNavigationMessage;->setData([B)V

    #@2d
    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v3

    #@31
    invoke-virtual {v2, v3}, Landroid/location/GnssNavigationMessage;->setStatus(I)V

    #@34
    .line 384
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 371
    invoke-virtual {p0, p1}, Landroid/location/GnssNavigationMessage$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssNavigationMessage;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/location/GnssNavigationMessage;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 389
    new-array v0, p1, [Landroid/location/GnssNavigationMessage;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 388
    invoke-virtual {p0, p1}, Landroid/location/GnssNavigationMessage$1;->newArray(I)[Landroid/location/GnssNavigationMessage;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
