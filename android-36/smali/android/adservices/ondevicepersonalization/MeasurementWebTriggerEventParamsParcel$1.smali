.class Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel$1;
.super Ljava/lang/Object;
.source "MeasurementWebTriggerEventParamsParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 234
    new-instance v0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;

    invoke-direct {v0, p1}, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;-><init>(Landroid/os/Parcel;)V

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

    .line 226
    invoke-virtual {p0, p1}, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;
    .registers 3
    .param p1, "size"    # I

    .line 229
    new-array v0, p1, [Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;

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

    .line 226
    invoke-virtual {p0, p1}, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel$1;->newArray(I)[Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;

    move-result-object p1

    return-object p1
.end method
