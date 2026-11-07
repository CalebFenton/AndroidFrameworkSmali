.class Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses$1;
.super Ljava/lang/Object;
.source "AudioHalCapCriterionV2.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 474
    new-instance v0, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;

    invoke-direct {v0}, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;-><init>()V

    .line 475
    .local v0, "_aidl_out":Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;
    invoke-virtual {v0, p1}, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;->readFromParcel(Landroid/os/Parcel;)V

    .line 476
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

    .line 471
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 480
    new-array v0, p1, [Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;

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

    .line 471
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses$1;->newArray(I)[Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevicesAddresses;

    move-result-object p1

    return-object p1
.end method
