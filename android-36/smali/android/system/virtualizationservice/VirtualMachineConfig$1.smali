.class Landroid/system/virtualizationservice/VirtualMachineConfig$1;
.super Ljava/lang/Object;
.source "VirtualMachineConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualizationservice/VirtualMachineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/system/virtualizationservice/VirtualMachineConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/system/virtualizationservice/VirtualMachineConfig;
    .registers 4
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 73
    new-instance v0, Landroid/system/virtualizationservice/VirtualMachineConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/system/virtualizationservice/VirtualMachineConfig;-><init>(Landroid/os/Parcel;Landroid/system/virtualizationservice/VirtualMachineConfig-IA;)V

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

    .line 70
    invoke-virtual {p0, p1}, Landroid/system/virtualizationservice/VirtualMachineConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/system/virtualizationservice/VirtualMachineConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/system/virtualizationservice/VirtualMachineConfig;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 77
    new-array v0, p1, [Landroid/system/virtualizationservice/VirtualMachineConfig;

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

    .line 70
    invoke-virtual {p0, p1}, Landroid/system/virtualizationservice/VirtualMachineConfig$1;->newArray(I)[Landroid/system/virtualizationservice/VirtualMachineConfig;

    move-result-object p1

    return-object p1
.end method
