.class Landroid/hardware/input/InputSensorInfo$1;
.super Ljava/lang/Object;
.source "InputSensorInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputSensorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/input/InputSensorInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/input/InputSensorInfo;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 314
    new-instance v0, Landroid/hardware/input/InputSensorInfo;

    invoke-direct {v0, p1}, Landroid/hardware/input/InputSensorInfo;-><init>(Landroid/os/Parcel;)V

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

    .line 306
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputSensorInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/input/InputSensorInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/input/InputSensorInfo;
    .registers 3
    .param p1, "size"    # I

    .line 309
    new-array v0, p1, [Landroid/hardware/input/InputSensorInfo;

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

    .line 306
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputSensorInfo$1;->newArray(I)[Landroid/hardware/input/InputSensorInfo;

    move-result-object p1

    return-object p1
.end method
