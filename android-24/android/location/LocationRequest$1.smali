.class final Landroid/location/LocationRequest$1;
.super Ljava/lang/Object;
.source "LocationRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationRequest;
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
        "Landroid/location/LocationRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/LocationRequest;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 592
    new-instance v1, Landroid/location/LocationRequest;

    #@4
    invoke-direct {v1}, Landroid/location/LocationRequest;-><init>()V

    #@7
    .line 593
    .local v1, "request":Landroid/location/LocationRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v4

    #@b
    invoke-virtual {v1, v4}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    #@e
    .line 594
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@11
    move-result-wide v4

    #@12
    invoke-virtual {v1, v4, v5}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    #@15
    .line 595
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@18
    move-result-wide v4

    #@19
    invoke-virtual {v1, v4, v5}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    #@1c
    .line 596
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@1f
    move-result-wide v4

    #@20
    invoke-virtual {v1, v4, v5}, Landroid/location/LocationRequest;->setExpireAt(J)Landroid/location/LocationRequest;

    #@23
    .line 597
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v4

    #@27
    invoke-virtual {v1, v4}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    #@2a
    .line 598
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@2d
    move-result v4

    #@2e
    invoke-virtual {v1, v4}, Landroid/location/LocationRequest;->setSmallestDisplacement(F)Landroid/location/LocationRequest;

    #@31
    .line 599
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_0

    #@37
    const/4 v3, 0x1

    #@38
    :cond_0
    invoke-virtual {v1, v3}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    #@3b
    .line 600
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    .line 601
    .local v0, "provider":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@41
    invoke-virtual {v1, v0}, Landroid/location/LocationRequest;->setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;

    #@44
    .line 602
    :cond_1
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@47
    move-result-object v2

    #@48
    check-cast v2, Landroid/os/WorkSource;

    #@4a
    .line 603
    .local v2, "workSource":Landroid/os/WorkSource;
    if-eqz v2, :cond_2

    #@4c
    invoke-virtual {v1, v2}, Landroid/location/LocationRequest;->setWorkSource(Landroid/os/WorkSource;)V

    #@4f
    .line 604
    :cond_2
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 591
    invoke-virtual {p0, p1}, Landroid/location/LocationRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/LocationRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/location/LocationRequest;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 608
    new-array v0, p1, [Landroid/location/LocationRequest;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 607
    invoke-virtual {p0, p1}, Landroid/location/LocationRequest$1;->newArray(I)[Landroid/location/LocationRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
