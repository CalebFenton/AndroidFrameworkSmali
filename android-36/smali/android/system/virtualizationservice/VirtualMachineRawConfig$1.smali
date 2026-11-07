.class Landroid/system/virtualizationservice/VirtualMachineRawConfig$1;
.super Ljava/lang/Object;
.source "VirtualMachineRawConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualizationservice/VirtualMachineRawConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/system/virtualizationservice/VirtualMachineRawConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/system/virtualizationservice/VirtualMachineRawConfig;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 92
    new-instance v0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;

    invoke-direct {v0}, Landroid/system/virtualizationservice/VirtualMachineRawConfig;-><init>()V

    .line 93
    .local v0, "_aidl_out":Landroid/system/virtualizationservice/VirtualMachineRawConfig;
    invoke-virtual {v0, p1}, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->readFromParcel(Landroid/os/Parcel;)V

    .line 94
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

    .line 89
    invoke-virtual {p0, p1}, Landroid/system/virtualizationservice/VirtualMachineRawConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/system/virtualizationservice/VirtualMachineRawConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/system/virtualizationservice/VirtualMachineRawConfig;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 98
    new-array v0, p1, [Landroid/system/virtualizationservice/VirtualMachineRawConfig;

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

    .line 89
    invoke-virtual {p0, p1}, Landroid/system/virtualizationservice/VirtualMachineRawConfig$1;->newArray(I)[Landroid/system/virtualizationservice/VirtualMachineRawConfig;

    move-result-object p1

    return-object p1
.end method
