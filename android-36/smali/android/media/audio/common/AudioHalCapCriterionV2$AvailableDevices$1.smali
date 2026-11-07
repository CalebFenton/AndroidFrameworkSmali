.class Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices$1;
.super Ljava/lang/Object;
.source "AudioHalCapCriterionV2.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 407
    new-instance v0, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;

    invoke-direct {v0}, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;-><init>()V

    .line 408
    .local v0, "_aidl_out":Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;
    invoke-virtual {v0, p1}, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;->readFromParcel(Landroid/os/Parcel;)V

    .line 409
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

    .line 404
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 413
    new-array v0, p1, [Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;

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

    .line 404
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices$1;->newArray(I)[Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;

    move-result-object p1

    return-object p1
.end method
