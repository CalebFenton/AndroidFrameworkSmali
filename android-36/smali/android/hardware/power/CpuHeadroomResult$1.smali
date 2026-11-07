.class Landroid/hardware/power/CpuHeadroomResult$1;
.super Ljava/lang/Object;
.source "CpuHeadroomResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/power/CpuHeadroomResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/power/CpuHeadroomResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/power/CpuHeadroomResult;
    .registers 4
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 59
    new-instance v0, Landroid/hardware/power/CpuHeadroomResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/power/CpuHeadroomResult;-><init>(Landroid/os/Parcel;Landroid/hardware/power/CpuHeadroomResult-IA;)V

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

    .line 56
    invoke-virtual {p0, p1}, Landroid/hardware/power/CpuHeadroomResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/power/CpuHeadroomResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/power/CpuHeadroomResult;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 63
    new-array v0, p1, [Landroid/hardware/power/CpuHeadroomResult;

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

    .line 56
    invoke-virtual {p0, p1}, Landroid/hardware/power/CpuHeadroomResult$1;->newArray(I)[Landroid/hardware/power/CpuHeadroomResult;

    move-result-object p1

    return-object p1
.end method
