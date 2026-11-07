.class Landroid/system/virtualmachine/VirtualMachineDescriptor$1;
.super Ljava/lang/Object;
.source "VirtualMachineDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachineDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/system/virtualmachine/VirtualMachineDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/system/virtualmachine/VirtualMachineDescriptor;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineDescriptor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/system/virtualmachine/VirtualMachineDescriptor;-><init>(Landroid/os/Parcel;Landroid/system/virtualmachine/VirtualMachineDescriptor-IA;)V

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

    .line 67
    invoke-virtual {p0, p1}, Landroid/system/virtualmachine/VirtualMachineDescriptor$1;->createFromParcel(Landroid/os/Parcel;)Landroid/system/virtualmachine/VirtualMachineDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/system/virtualmachine/VirtualMachineDescriptor;
    .registers 3
    .param p1, "size"    # I

    .line 73
    new-array v0, p1, [Landroid/system/virtualmachine/VirtualMachineDescriptor;

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

    .line 67
    invoke-virtual {p0, p1}, Landroid/system/virtualmachine/VirtualMachineDescriptor$1;->newArray(I)[Landroid/system/virtualmachine/VirtualMachineDescriptor;

    move-result-object p1

    return-object p1
.end method
