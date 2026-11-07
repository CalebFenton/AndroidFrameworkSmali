.class Landroid/location/GnssAutomaticGainControl$1;
.super Ljava/lang/Object;
.source "GnssAutomaticGainControl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssAutomaticGainControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssAutomaticGainControl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssAutomaticGainControl;
    .registers 9
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 108
    new-instance v0, Landroid/location/GnssAutomaticGainControl;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/location/GnssAutomaticGainControl;-><init>(DIJLandroid/location/GnssAutomaticGainControl-IA;)V

    .line 108
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

    .line 104
    invoke-virtual {p0, p1}, Landroid/location/GnssAutomaticGainControl$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssAutomaticGainControl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GnssAutomaticGainControl;
    .registers 3
    .param p1, "i"    # I

    .line 114
    new-array v0, p1, [Landroid/location/GnssAutomaticGainControl;

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

    .line 104
    invoke-virtual {p0, p1}, Landroid/location/GnssAutomaticGainControl$1;->newArray(I)[Landroid/location/GnssAutomaticGainControl;

    move-result-object p1

    return-object p1
.end method
