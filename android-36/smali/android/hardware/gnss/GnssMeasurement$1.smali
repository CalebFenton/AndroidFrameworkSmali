.class Landroid/hardware/gnss/GnssMeasurement$1;
.super Ljava/lang/Object;
.source "GnssMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/GnssMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/gnss/GnssMeasurement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/gnss/GnssMeasurement;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 44
    new-instance v0, Landroid/hardware/gnss/GnssMeasurement;

    invoke-direct {v0}, Landroid/hardware/gnss/GnssMeasurement;-><init>()V

    .line 45
    .local v0, "_aidl_out":Landroid/hardware/gnss/GnssMeasurement;
    invoke-virtual {v0, p1}, Landroid/hardware/gnss/GnssMeasurement;->readFromParcel(Landroid/os/Parcel;)V

    .line 46
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

    .line 41
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/GnssMeasurement$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/gnss/GnssMeasurement;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/gnss/GnssMeasurement;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 50
    new-array v0, p1, [Landroid/hardware/gnss/GnssMeasurement;

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

    .line 41
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/GnssMeasurement$1;->newArray(I)[Landroid/hardware/gnss/GnssMeasurement;

    move-result-object p1

    return-object p1
.end method
