.class Landroid/hardware/location/ActivityChangedEvent$1;
.super Ljava/lang/Object;
.source "ActivityChangedEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ActivityChangedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/location/ActivityChangedEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/ActivityChangedEvent;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "activityRecognitionEventsLength":I
    new-array v1, v0, [Landroid/hardware/location/ActivityRecognitionEvent;

    .line 56
    .local v1, "activityRecognitionEvents":[Landroid/hardware/location/ActivityRecognitionEvent;
    sget-object v2, Landroid/hardware/location/ActivityRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 58
    new-instance v2, Landroid/hardware/location/ActivityChangedEvent;

    invoke-direct {v2, v1}, Landroid/hardware/location/ActivityChangedEvent;-><init>([Landroid/hardware/location/ActivityRecognitionEvent;)V

    return-object v2
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

    .line 50
    invoke-virtual {p0, p1}, Landroid/hardware/location/ActivityChangedEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/ActivityChangedEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/location/ActivityChangedEvent;
    .registers 3
    .param p1, "size"    # I

    .line 63
    new-array v0, p1, [Landroid/hardware/location/ActivityChangedEvent;

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

    .line 50
    invoke-virtual {p0, p1}, Landroid/hardware/location/ActivityChangedEvent$1;->newArray(I)[Landroid/hardware/location/ActivityChangedEvent;

    move-result-object p1

    return-object p1
.end method
