.class Landroid/health/connect/datatypes/ExerciseRoute$Location$1;
.super Ljava/lang/Object;
.source "ExerciseRoute.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/ExerciseRoute$Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/health/connect/datatypes/ExerciseRoute$Location;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/health/connect/datatypes/ExerciseRoute$Location;
    .registers 10
    .param p1, "source"    # Landroid/os/Parcel;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    .line 129
    .local v3, "timestamp":Ljava/time/Instant;
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 130
    .local v4, "lat":D
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 131
    .local v6, "lon":D
    new-instance v2, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;

    invoke-direct/range {v2 .. v7}, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;-><init>(Ljava/time/Instant;DD)V

    .line 132
    .local v2, "builder":Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/health/connect/datatypes/units/Length;->fromMeters(D)Landroid/health/connect/datatypes/units/Length;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->setHorizontalAccuracy(Landroid/health/connect/datatypes/units/Length;)Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;

    .line 135
    :cond_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/health/connect/datatypes/units/Length;->fromMeters(D)Landroid/health/connect/datatypes/units/Length;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->setVerticalAccuracy(Landroid/health/connect/datatypes/units/Length;)Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;

    .line 138
    :cond_37
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/health/connect/datatypes/units/Length;->fromMeters(D)Landroid/health/connect/datatypes/units/Length;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->setAltitude(Landroid/health/connect/datatypes/units/Length;)Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;

    .line 141
    :cond_48
    invoke-virtual {v2}, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->build()Landroid/health/connect/datatypes/ExerciseRoute$Location;

    move-result-object v0

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

    .line 125
    invoke-virtual {p0, p1}, Landroid/health/connect/datatypes/ExerciseRoute$Location$1;->createFromParcel(Landroid/os/Parcel;)Landroid/health/connect/datatypes/ExerciseRoute$Location;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/health/connect/datatypes/ExerciseRoute$Location;
    .registers 3
    .param p1, "size"    # I

    .line 146
    new-array v0, p1, [Landroid/health/connect/datatypes/ExerciseRoute$Location;

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

    .line 125
    invoke-virtual {p0, p1}, Landroid/health/connect/datatypes/ExerciseRoute$Location$1;->newArray(I)[Landroid/health/connect/datatypes/ExerciseRoute$Location;

    move-result-object p1

    return-object p1
.end method
