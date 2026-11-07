.class public Landroid/system/virtualizationservice/VirtualMachineAppConfig;
.super Ljava/lang/Object;
.source "VirtualMachineAppConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/virtualizationservice/VirtualMachineAppConfig$DebugLevel;,
        Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;,
        Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/system/virtualizationservice/VirtualMachineAppConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist apk:Landroid/os/ParcelFileDescriptor;

.field public blacklist boostUclamp:Z

.field public blacklist cpuOptions:Landroid/system/virtualizationservice/CpuOptions;

.field public blacklist customConfig:Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;

.field public blacklist debugLevel:B

.field public blacklist encryptedStorageImage:Landroid/os/ParcelFileDescriptor;

.field public blacklist extraIdsigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist hugePages:Z

.field public blacklist idsig:Landroid/os/ParcelFileDescriptor;

.field public blacklist instanceId:[B

.field public blacklist instanceImage:Landroid/os/ParcelFileDescriptor;

.field public blacklist memoryMib:I

.field public blacklist name:Ljava/lang/String;

.field public blacklist osName:Ljava/lang/String;

.field public blacklist payload:Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;

.field public blacklist protectedVm:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig$1;

    invoke-direct {v0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$1;-><init>()V

    sput-object v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "microdroid"

    iput-object v0, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->osName:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->debugLevel:B

    .line 48
    iput-boolean v0, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->protectedVm:Z

    .line 53
    iput v0, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->memoryMib:I

    .line 64
    iput-boolean v0, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->hugePages:Z

    .line 66
    iput-boolean v0, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->boostUclamp:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 6
    .param p1, "_v"    # Ljava/lang/Object;

    .line 163
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 164
    :cond_4
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_21

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "_mask":I
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 167
    .local v2, "o":Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v0, v3

    .line 168
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_10

    .line 169
    :cond_20
    return v0

    .line 171
    .end local v0    # "_mask":I
    :cond_21
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_2d

    .line 172
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 174
    :cond_2d
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->apk:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 153
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->idsig:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 154
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->extraIdsigs:Ljava/util/List;

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 155
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->instanceImage:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 156
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->encryptedStorageImage:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 157
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->payload:Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 158
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->cpuOptions:Landroid/system/virtualizationservice/CpuOptions;

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 159
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->customConfig:Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 160
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 107
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 109
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_20a

    .line 110
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 143
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 146
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 110
    return-void

    .line 144
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->name:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 143
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 146
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 112
    return-void

    .line 144
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_42
    :try_start_42
    const-class v2, [B

    const/16 v5, 0x40

    filled-new-array {v5}, [I

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->instanceId:[B

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_56
    .catchall {:try_start_42 .. :try_end_56} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_68

    .line 143
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_62

    .line 146
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 114
    return-void

    .line 144
    :cond_62
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_68
    :try_start_68
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->apk:Landroid/os/ParcelFileDescriptor;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_76
    .catchall {:try_start_68 .. :try_end_76} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_88

    .line 143
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_82

    .line 146
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 116
    return-void

    .line 144
    :cond_82
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_88
    :try_start_88
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->idsig:Landroid/os/ParcelFileDescriptor;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_96
    .catchall {:try_start_88 .. :try_end_96} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_a8

    .line 143
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a2

    .line 146
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 118
    return-void

    .line 144
    :cond_a2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_a8
    :try_start_a8
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->extraIdsigs:Ljava/util/List;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b4
    .catchall {:try_start_a8 .. :try_end_b4} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c6

    .line 143
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c0

    .line 146
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 120
    return-void

    .line 144
    :cond_c0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_c6
    :try_start_c6
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->instanceImage:Landroid/os/ParcelFileDescriptor;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d4
    .catchall {:try_start_c6 .. :try_end_d4} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e6

    .line 143
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e0

    .line 146
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 122
    return-void

    .line 144
    :cond_e0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_e6
    :try_start_e6
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->encryptedStorageImage:Landroid/os/ParcelFileDescriptor;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f4
    .catchall {:try_start_e6 .. :try_end_f4} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_106

    .line 143
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_100

    .line 146
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 124
    return-void

    .line 144
    :cond_100
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_106
    :try_start_106
    sget-object v2, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->payload:Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_114
    .catchall {:try_start_106 .. :try_end_114} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_126

    .line 143
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_120

    .line 146
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 126
    return-void

    .line 144
    :cond_120
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_126
    :try_start_126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->osName:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_130
    .catchall {:try_start_126 .. :try_end_130} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_142

    .line 143
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_13c

    .line 146
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 128
    return-void

    .line 144
    :cond_13c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 129
    :cond_142
    :try_start_142
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->debugLevel:B

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14c
    .catchall {:try_start_142 .. :try_end_14c} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15e

    .line 143
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_158

    .line 146
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 130
    return-void

    .line 144
    :cond_158
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    :cond_15e
    :try_start_15e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->protectedVm:Z

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_168
    .catchall {:try_start_15e .. :try_end_168} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_17a

    .line 143
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_174

    .line 146
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 132
    return-void

    .line 144
    :cond_174
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    :cond_17a
    :try_start_17a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->memoryMib:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_184
    .catchall {:try_start_17a .. :try_end_184} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_196

    .line 143
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_190

    .line 146
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 134
    return-void

    .line 144
    :cond_190
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_196
    :try_start_196
    sget-object v2, Landroid/system/virtualizationservice/CpuOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/virtualizationservice/CpuOptions;

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->cpuOptions:Landroid/system/virtualizationservice/CpuOptions;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1a4
    .catchall {:try_start_196 .. :try_end_1a4} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1b6

    .line 143
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1b0

    .line 146
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 136
    return-void

    .line 144
    :cond_1b0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    :cond_1b6
    :try_start_1b6
    sget-object v2, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;

    iput-object v2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->customConfig:Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1c4
    .catchall {:try_start_1b6 .. :try_end_1c4} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1d6

    .line 143
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1d0

    .line 146
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 138
    return-void

    .line 144
    :cond_1d0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_1d6
    :try_start_1d6
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->hugePages:Z

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1e0
    .catchall {:try_start_1d6 .. :try_end_1e0} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1f2

    .line 143
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1ec

    .line 146
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 140
    return-void

    .line 144
    :cond_1ec
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_1f2
    :try_start_1f2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->boostUclamp:Z
    :try_end_1f8
    .catchall {:try_start_1f2 .. :try_end_1f8} :catchall_208

    .line 143
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_202

    .line 146
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 147
    nop

    .line 148
    return-void

    .line 144
    :cond_202
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :catchall_208
    move-exception v2

    goto :goto_212

    .line 109
    :cond_20a
    :try_start_20a
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/system/virtualizationservice/VirtualMachineAppConfig;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_212
    .catchall {:try_start_20a .. :try_end_212} :catchall_208

    .line 143
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/system/virtualizationservice/VirtualMachineAppConfig;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_212
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_21b

    .line 144
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :cond_21b
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 147
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 82
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->instanceId:[B

    const/16 v2, 0x40

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {p1, v1, p2, v2}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 85
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->apk:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 86
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->idsig:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 87
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->extraIdsigs:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 88
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->instanceImage:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 89
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->encryptedStorageImage:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 90
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->payload:Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 91
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->osName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-byte v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->debugLevel:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 93
    iget-boolean v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->protectedVm:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 94
    iget v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->memoryMib:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->cpuOptions:Landroid/system/virtualizationservice/CpuOptions;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 96
    iget-object v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->customConfig:Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 97
    iget-boolean v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->hugePages:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 98
    iget-boolean v1, p0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->boostUclamp:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 100
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 101
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 103
    return-void
.end method
