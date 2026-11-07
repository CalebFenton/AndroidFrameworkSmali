.class Landroid/location/SatellitePvt$1;
.super Ljava/lang/Object;
.source "SatellitePvt.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/SatellitePvt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/SatellitePvt;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/SatellitePvt;
    .registers 21
    .param p1, "in"    # Landroid/os/Parcel;

    .line 625
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 626
    .local v2, "flags":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 627
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const-class v3, Landroid/location/SatellitePvt$PositionEcef;

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/SatellitePvt$PositionEcef;

    .line 629
    .local v3, "positionEcef":Landroid/location/SatellitePvt$PositionEcef;
    const-class v4, Landroid/location/SatellitePvt$VelocityEcef;

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/SatellitePvt$VelocityEcef;

    .line 631
    .local v4, "velocityEcef":Landroid/location/SatellitePvt$VelocityEcef;
    const-class v5, Landroid/location/SatellitePvt$ClockInfo;

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/SatellitePvt$ClockInfo;

    .line 633
    .local v5, "clockInfo":Landroid/location/SatellitePvt$ClockInfo;
    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 634
    .local v6, "ionoDelayMeters":D
    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 635
    .local v8, "tropoDelayMeters":D
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 636
    .local v10, "toc":J
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 637
    .local v12, "toe":J
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 638
    .local v14, "iodc":I
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 639
    .local v15, "iode":I
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 641
    .local v16, "ephemerisSource":I
    move-object/from16 v17, v1

    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .local v17, "classLoader":Ljava/lang/ClassLoader;
    new-instance v1, Landroid/location/SatellitePvt;

    move-object/from16 v18, v17

    .end local v17    # "classLoader":Ljava/lang/ClassLoader;
    .local v18, "classLoader":Ljava/lang/ClassLoader;
    const/16 v17, 0x0

    invoke-direct/range {v1 .. v17}, Landroid/location/SatellitePvt;-><init>(ILandroid/location/SatellitePvt$PositionEcef;Landroid/location/SatellitePvt$VelocityEcef;Landroid/location/SatellitePvt$ClockInfo;DDJJIIILandroid/location/SatellitePvt-IA;)V

    return-object v1
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

    .line 621
    invoke-virtual {p0, p1}, Landroid/location/SatellitePvt$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/SatellitePvt;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/SatellitePvt;
    .registers 3
    .param p1, "size"    # I

    .line 657
    new-array v0, p1, [Landroid/location/SatellitePvt;

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

    .line 621
    invoke-virtual {p0, p1}, Landroid/location/SatellitePvt$1;->newArray(I)[Landroid/location/SatellitePvt;

    move-result-object p1

    return-object p1
.end method
