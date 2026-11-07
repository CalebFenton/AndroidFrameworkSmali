.class Landroid/hardware/radio/data/QosFilterTypeOfService$1;
.super Ljava/lang/Object;
.source "QosFilterTypeOfService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/data/QosFilterTypeOfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/radio/data/QosFilterTypeOfService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/data/QosFilterTypeOfService;
    .registers 4
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 76
    new-instance v0, Landroid/hardware/radio/data/QosFilterTypeOfService;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/radio/data/QosFilterTypeOfService;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/data/QosFilterTypeOfService-IA;)V

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

    .line 73
    invoke-virtual {p0, p1}, Landroid/hardware/radio/data/QosFilterTypeOfService$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/data/QosFilterTypeOfService;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/radio/data/QosFilterTypeOfService;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 80
    new-array v0, p1, [Landroid/hardware/radio/data/QosFilterTypeOfService;

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

    .line 73
    invoke-virtual {p0, p1}, Landroid/hardware/radio/data/QosFilterTypeOfService$1;->newArray(I)[Landroid/hardware/radio/data/QosFilterTypeOfService;

    move-result-object p1

    return-object p1
.end method
