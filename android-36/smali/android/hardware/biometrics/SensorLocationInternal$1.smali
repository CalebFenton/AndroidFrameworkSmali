.class Landroid/hardware/biometrics/SensorLocationInternal$1;
.super Ljava/lang/Object;
.source "SensorLocationInternal.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/SensorLocationInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/biometrics/SensorLocationInternal;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/biometrics/SensorLocationInternal;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 97
    new-instance v0, Landroid/hardware/biometrics/SensorLocationInternal;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/SensorLocationInternal;-><init>(Landroid/os/Parcel;)V

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

    .line 94
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/SensorLocationInternal$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/biometrics/SensorLocationInternal;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/biometrics/SensorLocationInternal;
    .registers 3
    .param p1, "size"    # I

    .line 102
    new-array v0, p1, [Landroid/hardware/biometrics/SensorLocationInternal;

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

    .line 94
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/SensorLocationInternal$1;->newArray(I)[Landroid/hardware/biometrics/SensorLocationInternal;

    move-result-object p1

    return-object p1
.end method
