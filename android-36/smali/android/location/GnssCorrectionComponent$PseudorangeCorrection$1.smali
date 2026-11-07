.class Landroid/location/GnssCorrectionComponent$PseudorangeCorrection$1;
.super Ljava/lang/Object;
.source "GnssCorrectionComponent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 266
    new-instance v0, Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;-><init>(DDD)V

    .line 266
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

    .line 262
    invoke-virtual {p0, p1}, Landroid/location/GnssCorrectionComponent$PseudorangeCorrection$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;
    .registers 3
    .param p1, "size"    # I

    .line 272
    new-array v0, p1, [Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;

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

    .line 262
    invoke-virtual {p0, p1}, Landroid/location/GnssCorrectionComponent$PseudorangeCorrection$1;->newArray(I)[Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;

    move-result-object p1

    return-object p1
.end method
