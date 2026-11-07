.class public Landroid/system/virtualizationservice/VirtualMachineRawConfig;
.super Ljava/lang/Object;
.source "VirtualMachineRawConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/system/virtualizationservice/VirtualMachineRawConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist audioConfig:Landroid/system/virtualizationservice/AudioConfig;

.field public blacklist balloon:Z

.field public blacklist boostUclamp:Z

.field public blacklist bootloader:Landroid/os/ParcelFileDescriptor;

.field public blacklist consoleInputDevice:Ljava/lang/String;

.field public blacklist cpuOptions:Landroid/system/virtualizationservice/CpuOptions;

.field public blacklist customMemoryBackingFiles:[Landroid/system/virtualizationservice/CustomMemoryBackingFile;

.field public blacklist devices:Landroid/system/virtualizationservice/AssignedDevices;

.field public blacklist disks:[Landroid/system/virtualizationservice/DiskImage;

.field public blacklist displayConfig:Landroid/system/virtualizationservice/DisplayConfig;

.field public blacklist enableHypervisorSpecificAuthMethod:Z

.field public blacklist gdbPort:I

.field public blacklist gpuConfig:Landroid/system/virtualizationservice/GpuConfig;

.field public blacklist hugePages:Z

.field public blacklist initrd:Landroid/os/ParcelFileDescriptor;

.field public blacklist inputDevices:[Landroid/system/virtualizationservice/InputDevice;

.field public blacklist instanceId:[B

.field public blacklist kernel:Landroid/os/ParcelFileDescriptor;

.field public blacklist memoryMib:I

.field public blacklist name:Ljava/lang/String;

.field public blacklist networkSupported:Z

.field public blacklist params:Ljava/lang/String;

.field public blacklist platformVersion:Ljava/lang/String;

.field public blacklist protectedVm:Z

.field public blacklist sharedPaths:[Landroid/system/virtualizationservice/SharedPath;

.field public blacklist swiotlbMib:I

.field public blacklist teeServices:[Ljava/lang/String;

.field public blacklist usbConfig:Landroid/system/virtualizationservice/UsbConfig;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 89
    new-instance v0, Landroid/system/virtualizationservice/VirtualMachineRawConfig$1;

    invoke-direct {v0}, Landroid/system/virtualizationservice/VirtualMachineRawConfig$1;-><init>()V

    sput-object v0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->protectedVm:Z

    .line 42
    iput v0, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->memoryMib:I

    .line 44
    iput v0, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->swiotlbMib:I

    .line 56
    iput v0, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->gdbPort:I

    .line 63
    iput-boolean v0, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->hugePages:Z

    .line 70
    iput-boolean v0, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->networkSupported:Z

    .line 74
    iput-boolean v0, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->boostUclamp:Z

    .line 77
    iput-boolean v0, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->balloon:Z

    .line 86
    iput-boolean v0, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->enableHypervisorSpecificAuthMethod:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 226
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 227
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 230
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 229
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 232
    :cond_19
    return v1

    .line 234
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 235
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 237
    :cond_26
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->kernel:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 211
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->initrd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 212
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->bootloader:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 213
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->disks:[Landroid/system/virtualizationservice/DiskImage;

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 214
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->sharedPaths:[Landroid/system/virtualizationservice/SharedPath;

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 215
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->cpuOptions:Landroid/system/virtualizationservice/CpuOptions;

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 216
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->devices:Landroid/system/virtualizationservice/AssignedDevices;

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 217
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->displayConfig:Landroid/system/virtualizationservice/DisplayConfig;

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 218
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->inputDevices:[Landroid/system/virtualizationservice/InputDevice;

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 219
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->gpuConfig:Landroid/system/virtualizationservice/GpuConfig;

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 220
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->audioConfig:Landroid/system/virtualizationservice/AudioConfig;

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 221
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->usbConfig:Landroid/system/virtualizationservice/UsbConfig;

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 222
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->customMemoryBackingFiles:[Landroid/system/virtualizationservice/CustomMemoryBackingFile;

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 223
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 141
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 143
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_370

    .line 144
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 144
    return-void

    .line 202
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->name:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 146
    return-void

    .line 202
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_42
    :try_start_42
    const-class v2, [B

    const/16 v5, 0x40

    filled-new-array {v5}, [I

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->instanceId:[B

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_56
    .catchall {:try_start_42 .. :try_end_56} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_68

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_62

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 148
    return-void

    .line 202
    :cond_62
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    :cond_68
    :try_start_68
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->kernel:Landroid/os/ParcelFileDescriptor;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_76
    .catchall {:try_start_68 .. :try_end_76} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_88

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_82

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 150
    return-void

    .line 202
    :cond_82
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    :cond_88
    :try_start_88
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->initrd:Landroid/os/ParcelFileDescriptor;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_96
    .catchall {:try_start_88 .. :try_end_96} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_a8

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a2

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 152
    return-void

    .line 202
    :cond_a2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :cond_a8
    :try_start_a8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->params:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b2
    .catchall {:try_start_a8 .. :try_end_b2} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c4

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_be

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 154
    return-void

    .line 202
    :cond_be
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_c4
    :try_start_c4
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->bootloader:Landroid/os/ParcelFileDescriptor;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d2
    .catchall {:try_start_c4 .. :try_end_d2} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e4

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_de

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 156
    return-void

    .line 202
    :cond_de
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_e4
    :try_start_e4
    sget-object v2, Landroid/system/virtualizationservice/DiskImage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/system/virtualizationservice/DiskImage;

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->disks:[Landroid/system/virtualizationservice/DiskImage;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f2
    .catchall {:try_start_e4 .. :try_end_f2} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_104

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_fe

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 158
    return-void

    .line 202
    :cond_fe
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_104
    :try_start_104
    sget-object v2, Landroid/system/virtualizationservice/SharedPath;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/system/virtualizationservice/SharedPath;

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->sharedPaths:[Landroid/system/virtualizationservice/SharedPath;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_112
    .catchall {:try_start_104 .. :try_end_112} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_124

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11e

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 160
    return-void

    .line 202
    :cond_11e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_124
    :try_start_124
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->protectedVm:Z

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_12e
    .catchall {:try_start_124 .. :try_end_12e} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_140

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_13a

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 162
    return-void

    .line 202
    :cond_13a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    :cond_140
    :try_start_140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->memoryMib:I

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14a
    .catchall {:try_start_140 .. :try_end_14a} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15c

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_156

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 164
    return-void

    .line 202
    :cond_156
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    :cond_15c
    :try_start_15c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->swiotlbMib:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_166
    .catchall {:try_start_15c .. :try_end_166} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_178

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_172

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 166
    return-void

    .line 202
    :cond_172
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_178
    :try_start_178
    sget-object v2, Landroid/system/virtualizationservice/CpuOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/virtualizationservice/CpuOptions;

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->cpuOptions:Landroid/system/virtualizationservice/CpuOptions;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_186
    .catchall {:try_start_178 .. :try_end_186} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_198

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_192

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 168
    return-void

    .line 202
    :cond_192
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    :cond_198
    :try_start_198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->platformVersion:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1a2
    .catchall {:try_start_198 .. :try_end_1a2} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1b4

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1ae

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 170
    return-void

    .line 202
    :cond_1ae
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    :cond_1b4
    :try_start_1b4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->gdbPort:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1be
    .catchall {:try_start_1b4 .. :try_end_1be} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1d0

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1ca

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 172
    return-void

    .line 202
    :cond_1ca
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :cond_1d0
    :try_start_1d0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->hugePages:Z

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1da
    .catchall {:try_start_1d0 .. :try_end_1da} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1ec

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1e6

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 174
    return-void

    .line 202
    :cond_1e6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_1ec
    :try_start_1ec
    sget-object v2, Landroid/system/virtualizationservice/AssignedDevices;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/virtualizationservice/AssignedDevices;

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->devices:Landroid/system/virtualizationservice/AssignedDevices;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1fa
    .catchall {:try_start_1ec .. :try_end_1fa} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_20c

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_206

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 176
    return-void

    .line 202
    :cond_206
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_20c
    :try_start_20c
    sget-object v2, Landroid/system/virtualizationservice/DisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/virtualizationservice/DisplayConfig;

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->displayConfig:Landroid/system/virtualizationservice/DisplayConfig;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_21a
    .catchall {:try_start_20c .. :try_end_21a} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_22c

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_226

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 178
    return-void

    .line 202
    :cond_226
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    :cond_22c
    :try_start_22c
    sget-object v2, Landroid/system/virtualizationservice/InputDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/system/virtualizationservice/InputDevice;

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->inputDevices:[Landroid/system/virtualizationservice/InputDevice;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_23a
    .catchall {:try_start_22c .. :try_end_23a} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_24c

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_246

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 180
    return-void

    .line 202
    :cond_246
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    :cond_24c
    :try_start_24c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->networkSupported:Z

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_256
    .catchall {:try_start_24c .. :try_end_256} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_268

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_262

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 182
    return-void

    .line 202
    :cond_262
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    :cond_268
    :try_start_268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->consoleInputDevice:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_272
    .catchall {:try_start_268 .. :try_end_272} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_284

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_27e

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 184
    return-void

    .line 202
    :cond_27e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_284
    :try_start_284
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->boostUclamp:Z

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_28e
    .catchall {:try_start_284 .. :try_end_28e} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2a0

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_29a

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 186
    return-void

    .line 202
    :cond_29a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 187
    :cond_2a0
    :try_start_2a0
    sget-object v2, Landroid/system/virtualizationservice/GpuConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/virtualizationservice/GpuConfig;

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->gpuConfig:Landroid/system/virtualizationservice/GpuConfig;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2ae
    .catchall {:try_start_2a0 .. :try_end_2ae} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2c0

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2ba

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 188
    return-void

    .line 202
    :cond_2ba
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_2c0
    :try_start_2c0
    sget-object v2, Landroid/system/virtualizationservice/AudioConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/virtualizationservice/AudioConfig;

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->audioConfig:Landroid/system/virtualizationservice/AudioConfig;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2ce
    .catchall {:try_start_2c0 .. :try_end_2ce} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2e0

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2da

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 190
    return-void

    .line 202
    :cond_2da
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    :cond_2e0
    :try_start_2e0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->balloon:Z

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2ea
    .catchall {:try_start_2e0 .. :try_end_2ea} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2fc

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2f6

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 192
    return-void

    .line 202
    :cond_2f6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 193
    :cond_2fc
    :try_start_2fc
    sget-object v2, Landroid/system/virtualizationservice/UsbConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/virtualizationservice/UsbConfig;

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->usbConfig:Landroid/system/virtualizationservice/UsbConfig;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30a
    .catchall {:try_start_2fc .. :try_end_30a} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_31c

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_316

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 194
    return-void

    .line 202
    :cond_316
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    :cond_31c
    :try_start_31c
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->teeServices:[Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_326
    .catchall {:try_start_31c .. :try_end_326} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_338

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_332

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 196
    return-void

    .line 202
    :cond_332
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    :cond_338
    :try_start_338
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->enableHypervisorSpecificAuthMethod:Z

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_342
    .catchall {:try_start_338 .. :try_end_342} :catchall_36e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_354

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_34e

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 198
    return-void

    .line 202
    :cond_34e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    :cond_354
    :try_start_354
    sget-object v2, Landroid/system/virtualizationservice/CustomMemoryBackingFile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/system/virtualizationservice/CustomMemoryBackingFile;

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->customMemoryBackingFiles:[Landroid/system/virtualizationservice/CustomMemoryBackingFile;
    :try_end_35e
    .catchall {:try_start_354 .. :try_end_35e} :catchall_36e

    .line 201
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_368

    .line 204
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 205
    nop

    .line 206
    return-void

    .line 202
    :cond_368
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    :catchall_36e
    move-exception v2

    goto :goto_378

    .line 143
    :cond_370
    :try_start_370
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/system/virtualizationservice/VirtualMachineRawConfig;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_378
    .catchall {:try_start_370 .. :try_end_378} :catchall_36e

    .line 201
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/system/virtualizationservice/VirtualMachineRawConfig;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_378
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_381

    .line 202
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    :cond_381
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 205
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 104
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->instanceId:[B

    const/16 v2, 0x40

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {p1, v1, p2, v2}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 107
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->kernel:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 108
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->initrd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 109
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->params:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->bootloader:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 111
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->disks:[Landroid/system/virtualizationservice/DiskImage;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 112
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->sharedPaths:[Landroid/system/virtualizationservice/SharedPath;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 113
    iget-boolean v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->protectedVm:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 114
    iget v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->memoryMib:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->swiotlbMib:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->cpuOptions:Landroid/system/virtualizationservice/CpuOptions;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 117
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->platformVersion:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->gdbPort:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-boolean v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->hugePages:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 120
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->devices:Landroid/system/virtualizationservice/AssignedDevices;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 121
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->displayConfig:Landroid/system/virtualizationservice/DisplayConfig;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 122
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->inputDevices:[Landroid/system/virtualizationservice/InputDevice;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 123
    iget-boolean v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->networkSupported:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 124
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->consoleInputDevice:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-boolean v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->boostUclamp:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 126
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->gpuConfig:Landroid/system/virtualizationservice/GpuConfig;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 127
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->audioConfig:Landroid/system/virtualizationservice/AudioConfig;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 128
    iget-boolean v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->balloon:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 129
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->usbConfig:Landroid/system/virtualizationservice/UsbConfig;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 130
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->teeServices:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 131
    iget-boolean v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->enableHypervisorSpecificAuthMethod:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 132
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->customMemoryBackingFiles:[Landroid/system/virtualizationservice/CustomMemoryBackingFile;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 134
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 135
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 137
    return-void
.end method
