.class final Landroid/location/GpsClock$1;
.super Ljava/lang/Object;
.source "GpsClock.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsClock;
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
        "Landroid/location/GpsClock;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsClock;
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 400
    new-instance v0, Landroid/location/GpsClock;

    #@2
    invoke-direct {v0}, Landroid/location/GpsClock;-><init>()V

    #@5
    .line 402
    .local v0, "gpsClock":Landroid/location/GpsClock;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v1

    #@9
    int-to-short v1, v1

    #@a
    invoke-static {v0, v1}, Landroid/location/GpsClock;->-set4(Landroid/location/GpsClock;S)S

    #@d
    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v1

    #@11
    int-to-short v1, v1

    #@12
    invoke-static {v0, v1}, Landroid/location/GpsClock;->-set6(Landroid/location/GpsClock;S)S

    #@15
    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@18
    move-result v1

    #@19
    invoke-static {v0, v1}, Landroid/location/GpsClock;->-set9(Landroid/location/GpsClock;B)B

    #@1c
    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@1f
    move-result-wide v2

    #@20
    invoke-static {v0, v2, v3}, Landroid/location/GpsClock;->-set7(Landroid/location/GpsClock;J)J

    #@23
    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@26
    move-result-wide v2

    #@27
    invoke-static {v0, v2, v3}, Landroid/location/GpsClock;->-set8(Landroid/location/GpsClock;D)D

    #@2a
    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@2d
    move-result-wide v2

    #@2e
    invoke-static {v0, v2, v3}, Landroid/location/GpsClock;->-set5(Landroid/location/GpsClock;J)J

    #@31
    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@34
    move-result-wide v2

    #@35
    invoke-static {v0, v2, v3}, Landroid/location/GpsClock;->-set0(Landroid/location/GpsClock;D)D

    #@38
    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@3b
    move-result-wide v2

    #@3c
    invoke-static {v0, v2, v3}, Landroid/location/GpsClock;->-set1(Landroid/location/GpsClock;D)D

    #@3f
    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@42
    move-result-wide v2

    #@43
    invoke-static {v0, v2, v3}, Landroid/location/GpsClock;->-set2(Landroid/location/GpsClock;D)D

    #@46
    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@49
    move-result-wide v2

    #@4a
    invoke-static {v0, v2, v3}, Landroid/location/GpsClock;->-set3(Landroid/location/GpsClock;D)D

    #@4d
    .line 413
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 399
    invoke-virtual {p0, p1}, Landroid/location/GpsClock$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsClock;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/location/GpsClock;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 418
    new-array v0, p1, [Landroid/location/GpsClock;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 417
    invoke-virtual {p0, p1}, Landroid/location/GpsClock$1;->newArray(I)[Landroid/location/GpsClock;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
