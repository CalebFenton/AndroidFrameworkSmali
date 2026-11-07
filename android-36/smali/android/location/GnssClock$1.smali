.class Landroid/location/GnssClock$1;
.super Ljava/lang/Object;
.source "GnssClock.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssClock;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssClock;
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 658
    new-instance v0, Landroid/location/GnssClock;

    invoke-direct {v0}, Landroid/location/GnssClock;-><init>()V

    .line 660
    .local v0, "gpsClock":Landroid/location/GnssClock;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssClock;->-$$Nest$fputmFlags(Landroid/location/GnssClock;I)V

    .line 661
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssClock;->-$$Nest$fputmLeapSecond(Landroid/location/GnssClock;I)V

    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->-$$Nest$fputmTimeNanos(Landroid/location/GnssClock;J)V

    .line 663
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->-$$Nest$fputmTimeUncertaintyNanos(Landroid/location/GnssClock;D)V

    .line 664
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->-$$Nest$fputmFullBiasNanos(Landroid/location/GnssClock;J)V

    .line 665
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->-$$Nest$fputmBiasNanos(Landroid/location/GnssClock;D)V

    .line 666
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->-$$Nest$fputmBiasUncertaintyNanos(Landroid/location/GnssClock;D)V

    .line 667
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->-$$Nest$fputmDriftNanosPerSecond(Landroid/location/GnssClock;D)V

    .line 668
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->-$$Nest$fputmDriftUncertaintyNanosPerSecond(Landroid/location/GnssClock;D)V

    .line 669
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssClock;->-$$Nest$fputmHardwareClockDiscontinuityCount(Landroid/location/GnssClock;I)V

    .line 670
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->-$$Nest$fputmElapsedRealtimeNanos(Landroid/location/GnssClock;J)V

    .line 671
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->-$$Nest$fputmElapsedRealtimeUncertaintyNanos(Landroid/location/GnssClock;D)V

    .line 672
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssClock;->-$$Nest$fputmReferenceConstellationTypeForIsb(Landroid/location/GnssClock;I)V

    .line 673
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->-$$Nest$fputmReferenceCarrierFrequencyHzForIsb(Landroid/location/GnssClock;D)V

    .line 674
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/location/GnssClock;->-$$Nest$fputmReferenceCodeTypeForIsb(Landroid/location/GnssClock;Ljava/lang/String;)V

    .line 676
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

    .line 655
    invoke-virtual {p0, p1}, Landroid/location/GnssClock$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssClock;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GnssClock;
    .registers 3
    .param p1, "size"    # I

    .line 681
    new-array v0, p1, [Landroid/location/GnssClock;

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

    .line 655
    invoke-virtual {p0, p1}, Landroid/location/GnssClock$1;->newArray(I)[Landroid/location/GnssClock;

    move-result-object p1

    return-object p1
.end method
