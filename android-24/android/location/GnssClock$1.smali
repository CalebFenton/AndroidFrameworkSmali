.class final Landroid/location/GnssClock$1;
.super Ljava/lang/Object;
.source "GnssClock.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssClock;
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
        "Landroid/location/GnssClock;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssClock;
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 434
    new-instance v0, Landroid/location/GnssClock;

    #@2
    invoke-direct {v0}, Landroid/location/GnssClock;-><init>()V

    #@5
    .line 436
    .local v0, "gpsClock":Landroid/location/GnssClock;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v1

    #@9
    invoke-static {v0, v1}, Landroid/location/GnssClock;->-set4(Landroid/location/GnssClock;I)I

    #@c
    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v1

    #@10
    invoke-static {v0, v1}, Landroid/location/GnssClock;->-set7(Landroid/location/GnssClock;I)I

    #@13
    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@16
    move-result-wide v2

    #@17
    invoke-static {v0, v2, v3}, Landroid/location/GnssClock;->-set8(Landroid/location/GnssClock;J)J

    #@1a
    .line 439
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@1d
    move-result-wide v2

    #@1e
    invoke-static {v0, v2, v3}, Landroid/location/GnssClock;->-set9(Landroid/location/GnssClock;D)D

    #@21
    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@24
    move-result-wide v2

    #@25
    invoke-static {v0, v2, v3}, Landroid/location/GnssClock;->-set5(Landroid/location/GnssClock;J)J

    #@28
    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@2b
    move-result-wide v2

    #@2c
    invoke-static {v0, v2, v3}, Landroid/location/GnssClock;->-set0(Landroid/location/GnssClock;D)D

    #@2f
    .line 442
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@32
    move-result-wide v2

    #@33
    invoke-static {v0, v2, v3}, Landroid/location/GnssClock;->-set1(Landroid/location/GnssClock;D)D

    #@36
    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@39
    move-result-wide v2

    #@3a
    invoke-static {v0, v2, v3}, Landroid/location/GnssClock;->-set2(Landroid/location/GnssClock;D)D

    #@3d
    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@40
    move-result-wide v2

    #@41
    invoke-static {v0, v2, v3}, Landroid/location/GnssClock;->-set3(Landroid/location/GnssClock;D)D

    #@44
    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v1

    #@48
    invoke-static {v0, v1}, Landroid/location/GnssClock;->-set6(Landroid/location/GnssClock;I)I

    #@4b
    .line 447
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 433
    invoke-virtual {p0, p1}, Landroid/location/GnssClock$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssClock;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/location/GnssClock;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 452
    new-array v0, p1, [Landroid/location/GnssClock;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 451
    invoke-virtual {p0, p1}, Landroid/location/GnssClock$1;->newArray(I)[Landroid/location/GnssClock;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
