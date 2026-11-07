.class Landroid/location/Criteria$1;
.super Ljava/lang/Object;
.source "Criteria.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Criteria;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/Criteria;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/Criteria;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 362
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 363
    .local v0, "c":Landroid/location/Criteria;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Criteria;->-$$Nest$fputmHorizontalAccuracy(Landroid/location/Criteria;I)V

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Criteria;->-$$Nest$fputmVerticalAccuracy(Landroid/location/Criteria;I)V

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Criteria;->-$$Nest$fputmSpeedAccuracy(Landroid/location/Criteria;I)V

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Criteria;->-$$Nest$fputmBearingAccuracy(Landroid/location/Criteria;I)V

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Criteria;->-$$Nest$fputmPowerRequirement(Landroid/location/Criteria;I)V

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_32

    move v1, v2

    goto :goto_33

    :cond_32
    move v1, v3

    :goto_33
    invoke-static {v0, v1}, Landroid/location/Criteria;->-$$Nest$fputmAltitudeRequired(Landroid/location/Criteria;Z)V

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3e

    move v1, v2

    goto :goto_3f

    :cond_3e
    move v1, v3

    :goto_3f
    invoke-static {v0, v1}, Landroid/location/Criteria;->-$$Nest$fputmBearingRequired(Landroid/location/Criteria;Z)V

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4a

    move v1, v2

    goto :goto_4b

    :cond_4a
    move v1, v3

    :goto_4b
    invoke-static {v0, v1}, Landroid/location/Criteria;->-$$Nest$fputmSpeedRequired(Landroid/location/Criteria;Z)V

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_55

    goto :goto_56

    :cond_55
    move v2, v3

    :goto_56
    invoke-static {v0, v2}, Landroid/location/Criteria;->-$$Nest$fputmCostAllowed(Landroid/location/Criteria;Z)V

    .line 372
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

    .line 359
    invoke-virtual {p0, p1}, Landroid/location/Criteria$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Criteria;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/Criteria;
    .registers 3
    .param p1, "size"    # I

    .line 377
    new-array v0, p1, [Landroid/location/Criteria;

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

    .line 359
    invoke-virtual {p0, p1}, Landroid/location/Criteria$1;->newArray(I)[Landroid/location/Criteria;

    move-result-object p1

    return-object p1
.end method
