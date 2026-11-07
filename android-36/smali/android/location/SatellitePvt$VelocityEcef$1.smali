.class Landroid/location/SatellitePvt$VelocityEcef$1;
.super Ljava/lang/Object;
.source "SatellitePvt.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/SatellitePvt$VelocityEcef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/SatellitePvt$VelocityEcef;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/SatellitePvt$VelocityEcef;
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 278
    new-instance v0, Landroid/location/SatellitePvt$VelocityEcef;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    invoke-direct/range {v0 .. v8}, Landroid/location/SatellitePvt$VelocityEcef;-><init>(DDDD)V

    .line 278
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

    .line 275
    invoke-virtual {p0, p1}, Landroid/location/SatellitePvt$VelocityEcef$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/SatellitePvt$VelocityEcef;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/SatellitePvt$VelocityEcef;
    .registers 3
    .param p1, "size"    # I

    .line 288
    new-array v0, p1, [Landroid/location/SatellitePvt$VelocityEcef;

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

    .line 275
    invoke-virtual {p0, p1}, Landroid/location/SatellitePvt$VelocityEcef$1;->newArray(I)[Landroid/location/SatellitePvt$VelocityEcef;

    move-result-object p1

    return-object p1
.end method
