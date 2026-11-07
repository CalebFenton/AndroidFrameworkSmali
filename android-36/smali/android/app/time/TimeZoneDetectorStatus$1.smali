.class Landroid/app/time/TimeZoneDetectorStatus$1;
.super Ljava/lang/Object;
.source "TimeZoneDetectorStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/time/TimeZoneDetectorStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/time/TimeZoneDetectorStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneDetectorStatus;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .local v0, "detectorStatus":I
    nop

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    .line 80
    .local v1, "telephonyTimeZoneAlgorithmStatus":Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;
    nop

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    .line 83
    .local v2, "locationTimeZoneAlgorithmStatus":Landroid/app/time/LocationTimeZoneAlgorithmStatus;
    new-instance v3, Landroid/app/time/TimeZoneDetectorStatus;

    invoke-direct {v3, v0, v1, v2}, Landroid/app/time/TimeZoneDetectorStatus;-><init>(ILandroid/app/time/TelephonyTimeZoneAlgorithmStatus;Landroid/app/time/LocationTimeZoneAlgorithmStatus;)V

    return-object v3
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

    .line 73
    invoke-virtual {p0, p1}, Landroid/app/time/TimeZoneDetectorStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneDetectorStatus;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/time/TimeZoneDetectorStatus;
    .registers 3
    .param p1, "size"    # I

    .line 89
    new-array v0, p1, [Landroid/app/time/TimeZoneDetectorStatus;

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

    .line 73
    invoke-virtual {p0, p1}, Landroid/app/time/TimeZoneDetectorStatus$1;->newArray(I)[Landroid/app/time/TimeZoneDetectorStatus;

    move-result-object p1

    return-object p1
.end method
